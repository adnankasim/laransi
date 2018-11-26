-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 06, 2018 at 10:32 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravote`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_admin` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username_admin` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_admin` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `login_terakhir_admin` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `nama_admin`, `username_admin`, `password_admin`, `login_terakhir_admin`) VALUES
(1, 'Dr. Kris Willms', 'martin92', '90+CyU9!E=>s6ph~f', '2018-11-06 14:17:14'),
(2, 'Dr. Monserrat Wisoky III', 'vida53', 'w^kQLu2', '2018-11-06 14:17:14'),
(3, 'Mr. Pedro Labadie I', 'elda.mclaughlin', '^e{FcHE)m9z)l9x2q', '2018-11-06 14:17:14'),
(4, 'Jaleel Crist', 'annetta.cruickshank', 'r`.6T:F,', '2018-11-06 14:17:14'),
(5, 'Prof. Lonnie Miller', 'lilian.ruecker', '~*qYpDW[Vj{v', '2018-11-06 14:17:14'),
(6, 'Dr. Eudora Stanton Sr.', 'mcasper', 'rn@x)j5-/<Q@D!`:', '2018-11-06 14:17:14'),
(7, 'Adell Kassulke Sr.', 'josiane96', '6fa{$@', '2018-11-06 14:17:14'),
(8, 'Hayley Muller', 'pmarks', '%|HsmhA?=', '2018-11-06 14:17:14'),
(9, 'Clementine Weber', 'merle.goldner', '#o+P^ksHAo0Bx', '2018-11-06 14:17:14'),
(10, 'Dr. Ida Howell', 'maudie.kemmer', 'q9XF)kbOf', '2018-11-06 14:17:14');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2018_10_31_042855_create_admin_table', 1),
(2, '2018_10_31_043234_create_operator_table', 1),
(3, '2018_10_31_044101_create_pemilihan_table', 1),
(4, '2018_10_31_044158_create_pemilih_table', 1),
(5, '2018_10_31_044319_create_paslon_table', 1),
(6, '2018_10_31_044516_create_provinsi_table', 1),
(7, '2018_11_05_082158_create_status_pemilihan_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `operator`
--

CREATE TABLE `operator` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_operator` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username_operator` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_operator` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `login_terakhir_operator` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_provinsi` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `operator`
--

INSERT INTO `operator` (`id`, `nama_operator`, `username_operator`, `password_operator`, `login_terakhir_operator`, `id_provinsi`) VALUES
(1, 'Betsy Jacobson', 'stehr.joannie', '-fS&3]hCMP>w', '2018-11-06 14:17:14', 1),
(2, 'Rebeca Streich', 'amir63', ']|?Otm', '2018-11-06 14:17:14', 2),
(3, 'Kira Satterfield', 'gcrist', 'hSU%T6]JG', '2018-11-06 14:17:14', 3),
(4, 'Ciara Hirthe', 'lpurdy', 'Mt+Qv>xKX', '2018-11-06 14:17:14', 4),
(5, 'Dr. Margarette Torp', 'etoy', 'v17Rno5qZt~bZt=', '2018-11-06 14:17:14', 5),
(6, 'Johann Effertz', 'nwisozk', 'Lo#Lrd{~^U', '2018-11-06 14:17:14', 6),
(7, 'Burley Sipes Jr.', 'cartwright.sandrine', 'q{Uwu*~oq@', '2018-11-06 14:17:14', 7),
(8, 'Dr. Gretchen Graham', 'marilie.hackett', '{%!es^<w*;w)m0(]\\;/>', '2018-11-06 14:17:14', 8),
(9, 'Dr. Oliver Mayer PhD', 'sdenesik', ':ykNc2d`BQ[$3kks', '2018-11-06 14:17:14', 9),
(10, 'Prof. Marco Weissnat', 'larson.kristy', '5o]Y^{^\"80D/j~9x', '2018-11-06 14:17:14', 10),
(11, 'Prof. Gennaro King II', 'thickle', '3HD;\"*|lW*eeTO+u!Wf', '2018-11-06 14:17:14', 11),
(12, 'Mrs. Sophie Wyman', 'aiden.pacocha', 'Ws5v9VYyNrx\\', '2018-11-06 14:17:14', 12),
(13, 'Waldo Schinner DVM', 'wiley.brown', '8\"s%\"Y*$#H}y%h!\\', '2018-11-06 14:17:14', 13),
(14, 'Peggie Sipes', 'lawson61', 'cWhOCdxJ>\"O+\\P(_5\"', '2018-11-06 14:17:14', 14),
(15, 'Javier Kling', 'pmarks', '[Rxs1bq\\$6<v^', '2018-11-06 14:17:14', 15),
(16, 'Taya Reichert IV', 'jacquelyn.brekke', '=|EQ!=I^o', '2018-11-06 14:17:14', 16),
(17, 'Abdullah McKenzie', 'joany32', '+)ghUY>RP^jpw2nG', '2018-11-06 14:17:14', 17),
(18, 'Mrs. Theresa Jacobs', 'thea76', 'ffXxQ<Tt(+;;J|', '2018-11-06 14:17:14', 18),
(19, 'Meaghan Armstrong MD', 'spinka.alfonso', '(xGK3CP~eDw`1Sw', '2018-11-06 14:17:14', 19),
(20, 'Helga Schinner', 'xrussel', '~*a8Uk\"\'=', '2018-11-06 14:17:14', 20),
(21, 'Brain Jenkins', 'xfadel', 'G3f+/3y:sg9ZB?KUz', '2018-11-06 14:17:14', 21),
(22, 'Judah Reinger', 'esenger', 'z?wT&a(6Kh3G', '2018-11-06 14:17:14', 22),
(23, 'Alvena Spinka', 'champlin.myriam', '|Z}J0P})|hPC', '2018-11-06 14:17:14', 23),
(24, 'Faye Bernhard III', 'dfeeney', '19XT~Pt$,+f', '2018-11-06 14:17:14', 24),
(25, 'Mrs. Winnifred Thiel Jr.', 'audrey80', 'TU\\[)H5EF&\"d(S', '2018-11-06 14:17:14', 25),
(26, 'Ofelia O\'Reilly', 'stanton.darrick', 'tg~bBpq]}s:)]$auIqc?', '2018-11-06 14:17:14', 26),
(27, 'Josefina Feeney', 'veda.cronin', '9\\gNF[|2BR[', '2018-11-06 14:17:14', 27),
(28, 'Miss Claudia Ondricka', 'wolf.yoshiko', 'i>L~~y2\"`leb#!J\"K&', '2018-11-06 14:17:14', 28),
(29, 'Miss Melba Lowe', 'lsenger', ';L!RbERC+K=,/C', '2018-11-06 14:17:14', 29),
(30, 'Tavares Glover', 'destiney.watsica', '~,=lg]n|J0.DM', '2018-11-06 14:17:14', 30),
(31, 'Helene D\'Amore', 'schuppe.marlen', '^Pf<o(:gxV\"`Ez', '2018-11-06 14:17:14', 31),
(32, 'Skylar Kutch', 'leuschke.lexus', '(4.YFcE@Wu', '2018-11-06 14:17:14', 32),
(33, 'Adelbert McLaughlin', 'carter.phyllis', '{_Bf_6/~Dwquq(', '2018-11-06 14:17:14', 33),
(34, 'Prof. Jabari Lynch I', 'laisha.west', ';f&Vu#US{ecK)F,KU\'', '2018-11-06 14:17:14', 34);

-- --------------------------------------------------------

--
-- Table structure for table `paslon`
--

CREATE TABLE `paslon` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_paslon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slogan` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parpol_koalisi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor_urut` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visi_misi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `paslon`
--

INSERT INTO `paslon` (`id`, `nama_paslon`, `slogan`, `parpol_koalisi`, `nomor_urut`, `visi_misi`, `foto`) VALUES
(1, 'Jokowi - Ma\'aruf', 'Untuk UNG Berprestasi 2019!', 'PDI-P, GOLKAR, NASDEM, PPP, HANURA, PSI, PKB, PKPI, PERINDO', '1', 'Visi -> Ut pariatur cupidatat laboris id incididunt ullamco non aliquip ex deserunt dolor Lorem. Misi > Velit enim culpa non mollit. Ullamco sit dolore occaecat veniam et non voluptate sint nisi. Laboris consectetur occaecat esse velit ullamco sunt quis incididunt incididunt.', 'Jokowi-Maruf-Amin-3.jpg'),
(2, 'Prabowo - Sandi', 'UNG Jaya dan Gemilang', 'GERINDRA, PKS, PAN, DEMOKRAT, BERKARYA', '2', 'Visi -> Ut pariatur cupidatat laboris id incididunt ullamco non aliquip ex deserunt dolor Lorem. Misi > Velit enim culpa non mollit. Ullamco sit dolore occaecat veniam et non voluptate sint nisi. Laboris consectetur occaecat esse velit ullamco sunt quis incididunt incididunt.', 'prabowo-sandi.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `pemilih`
--

CREATE TABLE `pemilih` (
  `id` int(10) UNSIGNED NOT NULL,
  `nik_pemilih` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_pemilih` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token_pemilih` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telah_memilih` enum('ya','tidak') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'tidak',
  `id_provinsi` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pemilih`
--

INSERT INTO `pemilih` (`id`, `nik_pemilih`, `nama_pemilih`, `token_pemilih`, `telah_memilih`, `id_provinsi`) VALUES
(1, '7199111413210630', 'Alysa Thompson IV', '7yosmrilXL', 'ya', 19),
(2, '71218581870198', 'Bernadine Conroy', '0ZrpwLMG4k', 'ya', 29),
(3, '2121714991517365', 'Darren Volkman', 'jLrbVvhmlr', 'ya', 19),
(4, '6459073312580585', 'Bartholome Macejkovic', 'zL2AFu4yDv', 'ya', 4),
(5, '5877444129437208', 'Giles Hodkiewicz', '8UOt594aLc', 'ya', 20),
(6, '5053132930770516', 'Ashleigh Bergstrom III', 'MFxo5KWe0A', 'ya', 14),
(7, '5093006091192365', 'Alexandrine Ziemann', 'VGpylajOhN', 'ya', 10),
(8, '5019970606081188', 'Prof. Cletus Kemmer', 'DdHkwAQyy8', 'ya', 27),
(9, '1723791402764618', 'Marion Kuphal', '3KqF9ItwdE', 'ya', 34),
(10, '2279494050890207', 'Giovanna Lubowitz', 'JAbsmqwqhc', 'ya', 1),
(11, '1221653758548200', 'Finn Cartwright', 'Zz3GLxJWxK', 'ya', 32),
(12, '7973862802609801', 'Ruben Bogisich', 'Ygaf7kbYXV', 'ya', 13),
(13, '7135250000283122', 'Citlalli Ledner', 'T8PdrTlWys', 'ya', 2),
(14, '2151758996769786', 'Margarita Collins', '4NRJ5PdN5k', 'ya', 8),
(15, '7225841777399182', 'Maude Altenwerth', 'm2SG8vBkOa', 'ya', 16),
(16, '5312598459422588', 'Dr. Gage Crooks II', '00g3yeVnBr', 'ya', 8),
(17, '5192677071318030', 'Meaghan Witting', 'vPS7x1t7Gf', 'ya', 16),
(18, '9020177437923848', 'Idell Smitham PhD', '81DuxLx7L1', 'ya', 9),
(19, '2888127341866493', 'Daniela Leffler', 'OZrxIJiL3G', 'ya', 22),
(20, '5014511039480567', 'Filomena Fadel', 'ddAKUM0QyU', 'ya', 29),
(21, '2757413033396005', 'Jewell Murazik', 'pGKs5JDzwE', 'ya', 13),
(22, '671204184181988', 'Prof. Orin Torp PhD', '5LvrQ0ewVq', 'ya', 27),
(23, '3392455666325986', 'Alena Murazik', 'pmstd5Zzqq', 'ya', 7),
(24, '3522403948009014', 'Arvilla Kihn', 'AAveUoDLqP', 'ya', 5),
(25, '5006095175631344', 'Audreanne Barrows', 'anQTmTTN45', 'ya', 29),
(26, '6498200525529683', 'Jake Sipes', 'dnDufiJ2tI', 'ya', 31),
(27, '1481588743627071', 'Mrs. Jailyn Haley IV', 'xLD6V7Kxmy', 'ya', 20),
(28, '688658459112048', 'Estell Kuhlman', 'BXD1107tlM', 'ya', 8),
(29, '3864064631052315', 'Cassidy Hand', 'Fa6ZtPo3Ex', 'ya', 27),
(30, '4667601287364960', 'Mrs. Era Schamberger PhD', '9nHtSRL3HD', 'ya', 12),
(31, '8502662531100214', 'Carson Christiansen', 'zyPhtVwYvV', 'ya', 6),
(32, '1978394729085266', 'Luisa Boehm', 'hbR4HrUv9X', 'ya', 16),
(33, '9238116256892682', 'Kimberly Weber', 'BPwJEb8wxC', 'ya', 1),
(34, '2976227002218365', 'Elmer Koelpin DVM', 'FGxmwJV0XE', 'ya', 8),
(35, '411703726276755', 'Prof. Elinor Braun', 'hhuiH9Tov1', 'ya', 15),
(36, '3590114526450634', 'Dr. Jarret King V', 'AOBAEcSd67', 'ya', 7),
(37, '1588187892921269', 'Prof. Jermaine Hettinger III', 'zHGGiU7Nh6', 'ya', 21),
(38, '2103941617533564', 'Prof. Rowena Gulgowski', '2416GTGhVI', 'ya', 14),
(39, '5896790046244860', 'Dr. Arvilla Gislason', 'KV6qhdPdVZ', 'ya', 22),
(40, '8723237733356655', 'Ariel Spencer', 'MA48VB041e', 'ya', 32),
(41, '9276548083871604', 'Chelsey Feest', 'IGOUs0liAE', 'ya', 6),
(42, '4434054787270725', 'Laron Stehr', 'ECYlVulgOd', 'ya', 34),
(43, '3483241167850792', 'Hildegard Steuber', 'ez4D3KECcn', 'ya', 21),
(44, '2839495502412319', 'Porter White', 'vRnWIBUdc1', 'ya', 22),
(45, '9997973898425698', 'Constantin Dooley V', '0pASN1rJQC', 'ya', 29),
(46, '1344136628322303', 'Ms. Jane Moen DDS', 'jTgnpP3399', 'ya', 1),
(47, '1034169215708971', 'Leone Paucek', '10hwcYESu4', 'ya', 20),
(48, '7457987167872488', 'Dr. Maribel Fay', 'OE2aa2an1d', 'ya', 10),
(49, '2986690145917237', 'Prof. Beau Corwin', '9lL4JxJXb8', 'ya', 23),
(50, '9621271789073944', 'Aliyah Hudson', 'VzWqkQB2eu', 'ya', 23),
(51, '5530902631580830', 'Rhoda Hand', 'S4plArSpGa', 'ya', 21),
(52, '2028983398340642', 'Alanna Ondricka', '3wRLP7Ca0x', 'ya', 26),
(53, '3136631408706307', 'Dr. Kaitlin Cartwright', 'Px3sPmYSG4', 'ya', 1),
(54, '4120776779018342', 'Prof. Alicia Rohan PhD', 'kcinhn6sow', 'ya', 25),
(55, '1379874758422374', 'Cathy Prohaska', 'vFX7R5OdKC', 'ya', 29),
(56, '9867055998183786', 'Shayna Raynor', 'C7egW7RZZ1', 'ya', 19),
(57, '1629887246526777', 'Alivia Stoltenberg', 'CAdkyORQCK', 'ya', 10),
(58, '2779153119772672', 'Orrin Stiedemann', 'oQBJf0aRmP', 'ya', 5),
(59, '7074736068025231', 'Johnny Koelpin', 'MKAshPnfUc', 'ya', 3),
(60, '1429566415026784', 'Marion Bernier', '4xwGSxHtu3', 'ya', 20),
(61, '806736960075795', 'Zack Kulas', 'U21GfobX8Y', 'ya', 14),
(62, '3851188663393259', 'Levi Ledner', 'HGGX214cpX', 'ya', 11),
(63, '4835204156115651', 'Miss Elna Schneider V', 'Nh9XVR7MHw', 'ya', 18),
(64, '4686609706841409', 'Charlotte Harris', 'gzOaT6Laxm', 'ya', 21),
(65, '7986226896755397', 'Judy Klein', 'EbZIHKbh4i', 'ya', 11),
(66, '6218432942405343', 'Clotilde Stehr', 'eZ32WxSjRn', 'ya', 22),
(67, '3272626032121479', 'Jacinthe Stoltenberg', 'ONJaPhGnYb', 'ya', 25),
(68, '8167250133119524', 'Wade Kozey', 'PB6D6JowOP', 'ya', 28),
(69, '4580674441531301', 'Thelma Reilly DDS', 'IeRswHwo06', 'ya', 1),
(70, '1850233958102762', 'Theodore Kemmer', 'QlCpcpIyqb', 'ya', 11),
(71, '9862405606545508', 'Rolando Kilback MD', 'LS8uIfvyOL', 'ya', 32),
(72, '7686284501105547', 'Prof. Caleigh Legros', '1OT7vedfV4', 'ya', 12),
(73, '8385753463953733', 'Palma Lind', 'xUYHQOBaVF', 'ya', 34),
(74, '8566709584556520', 'Marielle Kreiger', 'nN4uvgYayI', 'ya', 28),
(75, '3273737682029605', 'Roselyn Prohaska', 'nuLxLz4oyY', 'ya', 3),
(76, '5398322306573391', 'Mr. Vidal Stoltenberg', 'zg6HGXo1wi', 'ya', 23),
(77, '3601621687412262', 'Dr. Joanne Runolfsson', 'bRf7NlpFhv', 'ya', 10),
(78, '2911514537408948', 'Dudley Rowe', 'HtQrQ4TlZC', 'ya', 22),
(79, '1978561207652092', 'Prof. Samir Abbott Jr.', 'LWZrwpJTRZ', 'ya', 7),
(80, '2126394514925778', 'Joanne Christiansen', 'C1ykWlpuwE', 'ya', 28),
(81, '2228674935176968', 'Tristin Cremin', '14JHwDqp0s', 'ya', 20),
(82, '8412352469749749', 'Prof. Carolyne Bechtelar Jr.', 'ay2pvuXrmr', 'ya', 20),
(83, '1938082766719162', 'Dr. Rosella Rohan', 'lee8563VKP', 'ya', 3),
(84, '8390815719030797', 'Madie Luettgen', 'c2zrViUjS3', 'ya', 11),
(85, '3166516921482980', 'Shayna Batz', 'Vdgwg6cxjT', 'ya', 6),
(86, '97014750353991', 'Mitchell Schoen IV', 'jAu7fgW5ER', 'ya', 24),
(87, '5068571083247662', 'Linnie Beahan', 'aK70rkGP2l', 'ya', 33),
(88, '1317567080259323', 'Mr. Santino Muller DDS', 'GCP2pRuKeP', 'ya', 16),
(89, '2912528631277382', 'Lenny Gusikowski', 'K7okuPp2Jf', 'ya', 34),
(90, '4664640859700739', 'Marianna Bins', 'ZTwiseKbjx', 'ya', 6),
(91, '3025177111849189', 'Yadira Yost III', 'AqjySBtLqE', 'ya', 29),
(92, '6006441088393331', 'Gabriel Russel III', 'BTNZz8Us97', 'ya', 20),
(93, '6750445044599473', 'Mrs. Dolores Pagac', 'TgrzoYqPwp', 'ya', 4),
(94, '2539270422421396', 'Frederic White PhD', 'oavTPhxa1U', 'ya', 5),
(95, '5430915188044310', 'Prof. Erin Morissette', 'nTWWuWiXA0', 'ya', 8),
(96, '1996557074598968', 'Clifford Koelpin', 'h1s50JGKiD', 'ya', 4),
(97, '3622401179745793', 'Ms. Edyth Zemlak', '8zOHvMYRzG', 'ya', 6),
(98, '3856896162033081', 'Adell Schulist PhD', 'enmXDGZmIo', 'ya', 4),
(99, '9578761821612716', 'Prof. Tristin Lakin IV', 'qL5N9K1K7s', 'ya', 2),
(100, '1489424053579568', 'Miss Sienna Greenholt', 'wB0QAQp355', 'ya', 3),
(101, '3070213249884546', 'Arlie Wunsch', 'v6C66CeHAu', 'ya', 26),
(102, '334904058836400', 'Tara Hills', 'ZvDUpeYaUD', 'ya', 25),
(103, '4473246778361499', 'Dr. Brandon Ledner MD', '5N26jo6tZm', 'ya', 15),
(104, '6147881173528731', 'Jaylon Torphy', 'rGEnK7dUtH', 'ya', 31),
(105, '5499285934492946', 'Santina Bosco', 'PGSYeaMCjq', 'ya', 29),
(106, '7747053825296462', 'Bianka Marvin III', 'HlvelP2o7m', 'ya', 7),
(107, '5426087509840727', 'Laisha Von', 'KbAUNwX302', 'ya', 6),
(108, '8032988910563290', 'Prof. Madelyn Rutherford III', 'puYSaFCTHI', 'ya', 11),
(109, '3870300762355327', 'Mr. Kane Kreiger', 'BgVyeXRAwM', 'ya', 19),
(110, '7077209022827446', 'Kiera Halvorson IV', 'UNeRVZ4fil', 'ya', 8),
(111, '9539732174016536', 'Ms. Jena Rolfson', 'bjaVYdSLQ5', 'ya', 13),
(112, '7808696539141238', 'Willie Cormier', 'n3W5CQAWqF', 'ya', 1),
(113, '974577949382364', 'Dr. Ila Donnelly', 'wRbWWan8jW', 'ya', 26),
(114, '599262160249054', 'Javon Weissnat', 'yMQNXFISXi', 'ya', 12),
(115, '6895053456537426', 'Madilyn Jakubowski', 'rtt0jZdYP6', 'ya', 32),
(116, '578771512955427', 'Gunnar Mante', 'EVz8TJgEtC', 'ya', 24),
(117, '3746452056802809', 'Dr. Litzy Boyer I', 'GEcfKYf8I8', 'ya', 8),
(118, '5862177340313792', 'Jalen Streich', 'va6LodCbwE', 'ya', 27),
(119, '2409141785465181', 'Dr. Bryce Torp', 'FcW0TjN2x5', 'ya', 16),
(120, '6072543920017779', 'Mr. Florian Schumm', 'xXZkCYbyYl', 'ya', 9),
(121, '7721703862771392', 'Kaela Morar', 'VAbF3laFak', 'ya', 34),
(122, '7727766898460686', 'Prof. Eugene Connelly I', 'izUkMkhZWV', 'ya', 30),
(123, '2668034844100475', 'Jeffry Toy', 'KMCCrXhoGi', 'tidak', 1),
(124, '6844431753270328', 'Alessandro Schumm', 'Eat54abofW', 'tidak', 16),
(125, '4746416015550494', 'Rebekah Feeney', 'leWzx8LbsK', 'tidak', 25),
(126, '5249695945531130', 'Delia Weimann', 'vt4XreuMjT', 'tidak', 4),
(127, '5810048184357584', 'Janick Bogisich II', 'JNfu0OcwD7', 'tidak', 3),
(128, '1704292013309896', 'Ryan Gaylord', 'eFL2pMre3x', 'tidak', 34),
(129, '9440275533124804', 'Amie Leannon', 'X5WrXk4VWt', 'tidak', 15),
(130, '2081944798119366', 'Prof. Carli Ullrich MD', 'AIP7UuLVSg', 'tidak', 21),
(131, '7650558236055076', 'Marques Champlin DDS', 'qmWUKeeWFo', 'tidak', 2),
(132, '8717440851032734', 'Bria Walker', 'I54szTRAzY', 'tidak', 2),
(133, '3803747743368149', 'Evalyn Beatty', 'SirbGIPbX8', 'tidak', 12),
(134, '547312335111200', 'Mason Rodriguez', 'AgGPamsHrU', 'tidak', 20),
(135, '1333237579092383', 'Greta Lowe', 'BuqtYiRG1c', 'tidak', 25),
(136, '9279426266439260', 'Mr. Randi Stark IV', 'ioOlvpEIN1', 'tidak', 8),
(137, '3083635666407644', 'Aida Greenfelder', 'kKqcoSQCed', 'tidak', 12),
(138, '5084281675517559', 'Tito Ritchie', 'IETWFqqZHh', 'tidak', 27),
(139, '4464421202428639', 'Jordi Brakus III', 'Iga4vgiHQv', 'tidak', 2),
(140, '6896232743747532', 'Corbin Mayert', 'Hu3ZmHIuJ9', 'tidak', 4),
(141, '3661276563070714', 'Talon Spencer', 'MzADpAH8Rw', 'tidak', 21),
(142, '121231651864945', 'Fannie Bailey', 'cgsERlg1F2', 'tidak', 30),
(143, '7906431136652827', 'Mr. Johnathan Corkery', 'EhC8jCEmL5', 'tidak', 33),
(144, '7545062876306474', 'Dr. Ebony Collins DDS', 'BjWLdqFaz2', 'tidak', 28),
(145, '8053424223326147', 'Mr. Nash Robel', 'gXVUMCBM2g', 'tidak', 12),
(146, '1319097066298127', 'Jocelyn Dach', 'jjs6NWhA1o', 'tidak', 12),
(147, '7285766010172665', 'Payton Kertzmann Jr.', 'fMCXzYt0kt', 'tidak', 2),
(148, '9506252198480070', 'Dr. Bennett Kling IV', 'zNMJpDXQPM', 'tidak', 25),
(149, '8984107961878181', 'Lisandro Mueller IV', '7MocBMbvgp', 'tidak', 33),
(150, '8565164022147655', 'Geovany Feeney', 'bCSsKUxq3E', 'tidak', 18),
(151, '6745211421512067', 'Damien Conroy', '4PM44opmS7', 'tidak', 22),
(152, '9674007189460098', 'Jaunita Reinger Jr.', '74UVSLaQwl', 'tidak', 24),
(153, '6222393629141152', 'Prof. Milan Wolff', 'dHnE4zhB6S', 'tidak', 8),
(154, '6242243591696024', 'Prof. Lyric Toy', 'TxAjjZKSd6', 'tidak', 6),
(155, '4770727320574224', 'Mrs. Vena Hyatt', 'zCsVCWTsLn', 'tidak', 13),
(156, '9576364164240658', 'Dr. Laisha Lakin', 'foXMglDoQ0', 'tidak', 20),
(157, '5079206861555576', 'Aliyah Klocko', 'BEunZ8J3jc', 'tidak', 2),
(158, '6207725298590958', 'Esperanza Brakus', 'LgqOE1snpQ', 'tidak', 33),
(159, '2181737078353762', 'Jillian Gislason', '40mOraQ1n4', 'ya', 6),
(160, '1533485930413007', 'Dr. Maximus Nikolaus IV', 'M9GxDTzP63', 'tidak', 4),
(161, '58220038190484', 'Prof. Jaylan Feil', '2VFO2RwkHy', 'tidak', 25),
(162, '8174496106803417', 'Toby Morissette PhD', 'ue0Vwx0zRj', 'tidak', 12),
(163, '5242060329765081', 'Leola Sipes', '5mjsZHlcs9', 'tidak', 33),
(164, '7654759637080133', 'Lottie Gutkowski IV', 'cPjG7qzf3z', 'tidak', 29),
(165, '5086289932951331', 'Brett Bashirian', 'S3ErlQackC', 'tidak', 19),
(166, '5803994946181774', 'Dayton Heaney', 'D0HhS0kAwH', 'tidak', 21),
(167, '4562287270091474', 'Kendrick Herman', 'hY5V2rDtls', 'tidak', 34),
(168, '9807255896739662', 'Eriberto Mosciski', 'lNsLglj2Pa', 'tidak', 8),
(169, '6094766105525196', 'Miss Leora Jacobson DDS', '63XPHJgeEC', 'tidak', 17),
(170, '3037659735418856', 'Prof. Abigale Lowe', 'r8Q1folQOA', 'tidak', 19),
(171, '3099409765563905', 'Ursula McDermott', 'ISp6kwy439', 'tidak', 26),
(172, '7868102919310331', 'Dr. Geovany Kemmer', '524zwzbEST', 'tidak', 34),
(173, '7959744161926210', 'Mr. Vincenzo Fritsch', 'jIBCHk4DiR', 'tidak', 28),
(174, '5935840830206871', 'Mr. Hilton Connelly', 'aE4nRVeD0Q', 'tidak', 9),
(175, '7315885480493307', 'Bo McGlynn', 'rIJrFzdkr9', 'tidak', 24),
(176, '1565937874838709', 'Lukas Fahey', '3i5oDMPRQM', 'tidak', 24),
(177, '3454720331355929', 'Prof. Loma Marks', 'Xy8zj9UBB6', 'tidak', 4),
(178, '9806892420165240', 'Breanna Miller', 'zJvKWvmZVr', 'tidak', 32),
(179, '1706058043055236', 'Dianna Nicolas', '2Sbv8rFHsv', 'tidak', 8),
(180, '7164185456931591', 'Cierra Gleason', 'FDiBwyL5FB', 'tidak', 19),
(181, '4616545597091317', 'Oren Blanda', '0fyfYgzsQu', 'tidak', 14),
(182, '6063090111128986', 'Prof. Mauricio Lemke DDS', 'Me9dTRf5e0', 'tidak', 33),
(183, '9373500952497124', 'Magdalena Nader Sr.', 'mu8NXjhhH8', 'tidak', 4),
(184, '5589274400845170', 'Estelle Wyman', '9pZMfmYMJ2', 'tidak', 28),
(185, '8474725615233183', 'Kendrick Pfannerstill', '7GE2ImHiHC', 'tidak', 18),
(186, '1549572166986763', 'Jamar Mohr', 'yavsnuMHBI', 'tidak', 26),
(187, '2249210355803370', 'Dr. Teagan Dickens', 'TpK9JaFsuZ', 'tidak', 10),
(188, '3334356518462300', 'Lonnie Wyman V', 'ztjuLmQHM7', 'tidak', 13),
(189, '7957799583673477', 'Prof. Kirk Anderson II', '5WLKAp8wbQ', 'tidak', 1),
(190, '1996288541704416', 'Elisha Considine', 'Iyvz46YVYD', 'tidak', 33),
(191, '5850341306068003', 'Lia Paucek Sr.', 'JCylfDTt4f', 'tidak', 30),
(192, '5408487818203866', 'Chaim Towne Jr.', 'IHdbnhMdE6', 'tidak', 3),
(193, '5654419572092593', 'Seth Jast MD', 'NGtrICHbfM', 'tidak', 28),
(194, '2778922691941261', 'Miss Kirstin Zieme I', '3UoRIfvEt7', 'tidak', 30),
(195, '6259648376144469', 'Stephen Hettinger', '4fwfoO7u1q', 'tidak', 13),
(196, '7440362223424017', 'Zane Erdman', 'PYrDRXVDYa', 'tidak', 22),
(197, '6896351869218051', 'Adeline Lind', 'rwJcVJrexr', 'tidak', 32),
(198, '504765948280692', 'Golden Botsford', 'QqRol5tMbt', 'tidak', 24),
(199, '1867119180969894', 'Dr. Damon Stroman III', 'j9nnYeUB7t', 'tidak', 20),
(200, '3473087148740887', 'Prof. Geoffrey Robel I', 'lfNygp0TVy', 'tidak', 28),
(201, '4638892114162445', 'Lucie Tillman', 'vJY5WqEeS2', 'tidak', 16),
(202, '569089232012629', 'Stacey Abbott', '0Iy6ZZm26B', 'tidak', 2),
(203, '5850918199867010', 'Raquel Stracke I', 'Ar1ylTasgg', 'tidak', 9),
(204, '2199495211243', 'Llewellyn Marvin DDS', '3ajqa4g24U', 'tidak', 1),
(205, '3747214511968195', 'Prof. Aglae Kuphal', 'l7GkawMtRs', 'tidak', 33),
(206, '3472104524262249', 'Prof. Dillan Dach III', '4t6VWWk7EB', 'tidak', 24),
(207, '1544616967439651', 'Elyse Waters III', 'sK5LGi5KIZ', 'tidak', 23),
(208, '6970948036760092', 'Joel Kuhn', 'NN3PcMRGpf', 'tidak', 21),
(209, '9268729654140770', 'Milford Schneider', 'H0BbKmL99Z', 'tidak', 17),
(210, '5580908283591270', 'Mr. Dee McKenzie DDS', 'sdM3JZ8u0G', 'tidak', 3),
(211, '7350233457982540', 'Nelle Vandervort', 'wxVrQ6Fn76', 'tidak', 17),
(212, '7188260857947171', 'Jonatan Wintheiser MD', 'BZ1R7hXPYS', 'tidak', 10),
(213, '7556174751371145', 'Mallory Heathcote', '4YfbZlEs2C', 'tidak', 17),
(214, '4774095914326608', 'Florence Stanton', 'kLKc7sKKz2', 'tidak', 30),
(215, '6300674872472882', 'Ally Runolfsson', 'DiCLC2SeNJ', 'tidak', 33),
(216, '1176312784664332', 'Alana Mann', 'HYUNksci6j', 'tidak', 30),
(217, '2631505448371172', 'Katlynn Gaylord', 'kkuUquVMlF', 'tidak', 2),
(218, '2240362926386296', 'Mr. Jorge Hoeger', 'YNd3joSjTC', 'tidak', 23),
(219, '9593228152953088', 'Myrtice Torphy', '5gjpNxjkXM', 'tidak', 13),
(220, '9315239316783846', 'Vella Hoeger', 'iFn8pKNTcn', 'tidak', 14),
(221, '1397528355009853', 'Ashlynn Collier', 'v1bEzRfDZf', 'tidak', 10),
(222, '4548236462287605', 'Mr. Wallace Hartmann II', 'yEZvMimB9I', 'tidak', 28),
(223, '9995376653969288', 'Madge McLaughlin', 'uOshoe7Fdh', 'tidak', 28),
(224, '3539522709324956', 'Narciso Witting Jr.', 'EUNjcAOdCA', 'tidak', 32),
(225, '6696868888102472', 'Dean Hane', 'BzPXtniw6R', 'tidak', 2),
(226, '116424206644296', 'Hilma Nienow', 't5gLGI4zir', 'tidak', 19),
(227, '2019376782700419', 'Franz Windler', 'FddgciMRo8', 'tidak', 33),
(228, '6237967442721128', 'Horace Bode', 'RnBC72JocT', 'tidak', 17),
(229, '7745948559604585', 'Mr. Casper Nolan', 'mWCsNqzOFU', 'tidak', 20),
(230, '2229019990190863', 'D\'angelo Douglas', 'bQ8GPLV6MU', 'tidak', 22),
(231, '1166629437357187', 'Triston Rodriguez', 'FLRYz7czpn', 'tidak', 3),
(232, '7050443193875253', 'Dr. Delbert Schulist', 'qHAWrqiSnr', 'tidak', 4),
(233, '1822570711374282', 'Ahmad Beier', 'I7s3fl2yIO', 'tidak', 11),
(234, '3553669569082558', 'Kallie VonRueden', 'aBdIGbxNcc', 'tidak', 32),
(235, '7445648494176567', 'Prof. Armand Kulas III', 'ejYdj5RyNg', 'tidak', 30),
(236, '9814528324641288', 'Vito Romaguera Sr.', 'gdLZN1ViCx', 'tidak', 14),
(237, '9603020851500332', 'Nathan Gulgowski IV', '0P3jE3bYDk', 'tidak', 10),
(238, '3024558303877711', 'Francesca Lubowitz', 'Grl5CWkJmK', 'tidak', 10),
(239, '8159570316784084', 'Prof. Adolphus Gerhold DVM', 'O9Axfm206B', 'tidak', 23),
(240, '8621519347652793', 'Ms. Hellen Graham Sr.', 'mzcnsOML3a', 'tidak', 5),
(241, '3231576383113861', 'Dr. Brendan Tremblay III', 'zI9wBqvcO1', 'tidak', 22),
(242, '2296906183473766', 'Dorothy Spencer', 'hKTKBKTV1Q', 'tidak', 4),
(243, '9859990621916950', 'Benedict Kohler', 'cz0nplr1gU', 'tidak', 11),
(244, '897904671728611', 'Jaiden Anderson', 'AAhkwnZYvM', 'tidak', 26),
(245, '9526693411171436', 'Baby Wilkinson', 'QTQ7rJRQZB', 'tidak', 7),
(246, '8927201144397259', 'Telly Konopelski', 'Am46GxHx2w', 'tidak', 3),
(247, '4282014742493629', 'Prof. Theodore Zieme', 'DPqIvjXSk4', 'tidak', 10),
(248, '9148216666653752', 'Prof. Bridgette Kirlin V', 'vQtQssOABo', 'tidak', 16),
(249, '5649991314858198', 'Dr. Jena Auer IV', 'dhxmM6wy1j', 'tidak', 22),
(250, '4735275078564882', 'Mrs. Alexanne Rohan V', 'fuK78PzwBj', 'tidak', 21),
(251, '4384676958434283', 'Abigale Lehner', 'xynnpkp7DV', 'tidak', 20),
(252, '7707055886276066', 'Pierre Schultz', '6da8siP57L', 'tidak', 2),
(253, '674994755536317', 'Eda O\'Connell', 'PpvoXpgGeV', 'tidak', 7),
(254, '3143074442632496', 'Zula Zemlak', 'qzXQflSGvk', 'tidak', 30),
(255, '4545093975029886', 'Maximo Mitchell', 'Nl4SZpdTg5', 'tidak', 33),
(256, '6178583768196404', 'Buddy Kemmer', 'Ax5aasCmHs', 'tidak', 27),
(257, '3120732777751982', 'Prof. Jose Kris I', 'FCwXfl7lYy', 'tidak', 8),
(258, '9422267666086554', 'Kenneth Hayes V', 'MZWwllzVyI', 'tidak', 3),
(259, '9911657203920186', 'Dr. Angeline DuBuque', 'pVRUnUHyUF', 'tidak', 30),
(260, '4904696452431381', 'Prince Kertzmann', 'xgE71UwwG9', 'tidak', 12),
(261, '7491492806002498', 'Nels Nikolaus', 'c6KYfLqODK', 'tidak', 22),
(262, '9755732766352594', 'Dr. Dorothy Stiedemann', 'Wd0g3VfDf6', 'tidak', 30),
(263, '9305237322114408', 'Roderick Beer', 'BjQv2vwMzm', 'tidak', 16),
(264, '7470321846194565', 'Amelia Haley', 'VCxr6CP6Ro', 'tidak', 8),
(265, '4863290074281394', 'Gilda Brakus III', 'Tv0AlqWCpY', 'tidak', 4),
(266, '9300941154360772', 'Orion Conn', 'lH1qklw9eF', 'tidak', 6),
(267, '8926356183364987', 'Millie Dare', 'bjDMEH6UKd', 'tidak', 2),
(268, '7117318450473249', 'Sammie Parisian', 'PZO7sPMyyz', 'tidak', 11),
(269, '6642256090417504', 'Dr. Arvid Bogan', 'sGm5HRDHca', 'tidak', 22),
(270, '966850891709327', 'Yoshiko Grady', 'fd6j0XBtCf', 'tidak', 31),
(271, '7582278540357947', 'Oswald Beier', 'kbhfIIzH56', 'tidak', 6),
(272, '1125409658998251', 'Vanessa Purdy', 'iESfR2SHo6', 'tidak', 27),
(273, '252646855078637', 'Alexandrine Lockman', '1pV6hqqhZQ', 'tidak', 13),
(274, '9300833321176470', 'Mrs. Ruthie Weissnat', '6hfJHds69N', 'tidak', 7),
(275, '241291015408933', 'Monserrat Collier', 'dzh6NxPWHe', 'tidak', 32),
(276, '8416392728686333', 'Annabel Lind DDS', 'WQJ4wI5cH9', 'tidak', 25),
(277, '7318014660850167', 'Uriah Weissnat', 'Wex7IbaCz8', 'tidak', 13),
(278, '9990439456887544', 'Aliya Bechtelar', '0LqX2bRZn4', 'tidak', 30),
(279, '6636842088773847', 'Bennie Pouros', 'afU81hYOzi', 'tidak', 15),
(280, '5008931914344430', 'Arne O\'Reilly', 'UpKzaEGMwn', 'tidak', 1),
(281, '840606568381190', 'Johnathon Kris', 'Jgt9Ey8LZK', 'tidak', 33),
(282, '6738302018493414', 'Shyann Corwin', 'gVx7KtDcec', 'tidak', 11),
(283, '605194652453064', 'Herman Waelchi III', 'lfYBpkQ4m0', 'tidak', 13),
(284, '5676766498945653', 'Bethany Satterfield', 'PosMGLIrUb', 'tidak', 29),
(285, '8108582831919193', 'Ms. Meghan Runolfsdottir DVM', 'evBbNPKUxS', 'tidak', 22),
(286, '518662664107978', 'Camryn Stokes', 'T5tQu4dFaP', 'tidak', 26),
(287, '213651857338845', 'Elody Okuneva II', 'B18Y32FerN', 'tidak', 19),
(288, '9457502453587950', 'Diana Ziemann', '2p849I7XJi', 'tidak', 12),
(289, '7019111476838589', 'Mrs. Hilda Schroeder PhD', '5u1VfoPj8s', 'tidak', 19),
(290, '8556334814056754', 'Dangelo Lemke', 'gCIUPtLM2i', 'tidak', 26),
(291, '18722363747656', 'Prof. Newton Gusikowski MD', '8T5vCElGt5', 'tidak', 34),
(292, '9061221489682794', 'Cheyanne Hagenes', 'DRrXjkrrlH', 'tidak', 28),
(293, '5037269266322255', 'Charlie Lemke', 'BBq8sFSTI8', 'tidak', 2),
(294, '3931144536472857', 'Rodrigo Hamill', 'lUUsCrWJfC', 'tidak', 10),
(295, '9218853348866106', 'Kasandra Zieme', 'G6PcmAJkpR', 'tidak', 20),
(296, '6803845353424549', 'Hardy Dickinson', 'epDoUqIy3l', 'tidak', 17),
(297, '4215500624850392', 'Daija Beer', 'P8dnuPgUG9', 'tidak', 32),
(298, '7257381398230791', 'Lucio DuBuque', 'LOjgd8iXgT', 'tidak', 16),
(299, '424750410020351', 'Prof. Dora Runolfsson', 'wYL5EYjepp', 'tidak', 24),
(300, '6100812284275889', 'Raul Crona', 'FqMN1Sk1ar', 'tidak', 28);

-- --------------------------------------------------------

--
-- Table structure for table `pemilihan`
--

CREATE TABLE `pemilihan` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_pemilih` int(10) UNSIGNED NOT NULL,
  `id_paslon` int(10) UNSIGNED NOT NULL,
  `waktu_pemilihan` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pemilihan`
--

INSERT INTO `pemilihan` (`id`, `id_pemilih`, `id_paslon`, `waktu_pemilihan`) VALUES
(1, 1, 1, '2018-11-06 14:17:15'),
(2, 2, 1, '2018-11-06 14:17:15'),
(3, 3, 1, '2018-11-06 14:17:15'),
(4, 4, 1, '2018-11-06 14:17:15'),
(5, 5, 1, '2018-11-06 14:17:15'),
(6, 6, 1, '2018-11-06 14:17:15'),
(7, 7, 1, '2018-11-06 14:17:15'),
(8, 8, 1, '2018-11-06 14:17:15'),
(9, 9, 1, '2018-11-06 14:17:15'),
(10, 10, 1, '2018-11-06 14:17:15'),
(11, 11, 1, '2018-11-06 14:17:15'),
(12, 12, 1, '2018-11-06 14:17:15'),
(13, 13, 1, '2018-11-06 14:17:15'),
(14, 14, 1, '2018-11-06 14:17:15'),
(15, 15, 1, '2018-11-06 14:17:15'),
(16, 16, 1, '2018-11-06 14:17:15'),
(17, 17, 1, '2018-11-06 14:17:15'),
(18, 18, 1, '2018-11-06 14:17:15'),
(19, 19, 1, '2018-11-06 14:17:15'),
(20, 20, 1, '2018-11-06 14:17:15'),
(21, 21, 1, '2018-11-06 14:17:15'),
(22, 22, 1, '2018-11-06 14:17:15'),
(23, 23, 1, '2018-11-06 14:17:15'),
(24, 24, 1, '2018-11-06 14:17:15'),
(25, 25, 1, '2018-11-06 14:17:15'),
(26, 26, 1, '2018-11-06 14:17:15'),
(27, 27, 1, '2018-11-06 14:17:15'),
(28, 28, 1, '2018-11-06 14:17:15'),
(29, 29, 1, '2018-11-06 14:17:15'),
(30, 30, 1, '2018-11-06 14:17:15'),
(31, 31, 1, '2018-11-06 14:17:15'),
(32, 32, 1, '2018-11-06 14:17:15'),
(33, 33, 1, '2018-11-06 14:17:15'),
(34, 34, 1, '2018-11-06 14:17:15'),
(35, 35, 1, '2018-11-06 14:17:15'),
(36, 36, 1, '2018-11-06 14:17:15'),
(37, 37, 1, '2018-11-06 14:17:15'),
(38, 38, 1, '2018-11-06 14:17:15'),
(39, 39, 1, '2018-11-06 14:17:15'),
(40, 40, 1, '2018-11-06 14:17:15'),
(41, 41, 1, '2018-11-06 14:17:15'),
(42, 42, 1, '2018-11-06 14:17:15'),
(43, 43, 1, '2018-11-06 14:17:15'),
(44, 44, 1, '2018-11-06 14:17:15'),
(45, 45, 1, '2018-11-06 14:17:15'),
(46, 46, 1, '2018-11-06 14:17:15'),
(47, 47, 1, '2018-11-06 14:17:15'),
(48, 48, 1, '2018-11-06 14:17:15'),
(49, 49, 1, '2018-11-06 14:17:15'),
(50, 50, 1, '2018-11-06 14:17:15'),
(51, 51, 1, '2018-11-06 14:17:15'),
(52, 52, 1, '2018-11-06 14:17:15'),
(53, 53, 1, '2018-11-06 14:17:15'),
(54, 54, 1, '2018-11-06 14:17:15'),
(55, 55, 1, '2018-11-06 14:17:15'),
(56, 56, 1, '2018-11-06 14:17:15'),
(57, 57, 1, '2018-11-06 14:17:15'),
(58, 58, 1, '2018-11-06 14:17:15'),
(59, 59, 1, '2018-11-06 14:17:15'),
(60, 60, 1, '2018-11-06 14:17:15'),
(61, 61, 1, '2018-11-06 14:17:15'),
(62, 62, 1, '2018-11-06 14:17:15'),
(63, 63, 1, '2018-11-06 14:17:15'),
(64, 64, 1, '2018-11-06 14:17:15'),
(65, 65, 1, '2018-11-06 14:17:15'),
(66, 66, 1, '2018-11-06 14:17:15'),
(67, 67, 1, '2018-11-06 14:17:15'),
(68, 68, 1, '2018-11-06 14:17:15'),
(69, 69, 1, '2018-11-06 14:17:15'),
(70, 70, 1, '2018-11-06 14:17:15'),
(71, 71, 1, '2018-11-06 14:17:15'),
(72, 72, 1, '2018-11-06 14:17:15'),
(73, 73, 1, '2018-11-06 14:17:15'),
(74, 74, 1, '2018-11-06 14:17:15'),
(75, 75, 1, '2018-11-06 14:17:15'),
(76, 76, 2, '2018-11-06 14:17:15'),
(77, 77, 2, '2018-11-06 14:17:15'),
(78, 78, 2, '2018-11-06 14:17:15'),
(79, 79, 2, '2018-11-06 14:17:15'),
(80, 80, 2, '2018-11-06 14:17:15'),
(81, 81, 2, '2018-11-06 14:17:15'),
(82, 82, 2, '2018-11-06 14:17:15'),
(83, 83, 2, '2018-11-06 14:17:15'),
(84, 84, 2, '2018-11-06 14:17:15'),
(85, 85, 2, '2018-11-06 14:17:15'),
(86, 86, 2, '2018-11-06 14:17:15'),
(87, 87, 2, '2018-11-06 14:17:15'),
(88, 88, 2, '2018-11-06 14:17:15'),
(89, 89, 2, '2018-11-06 14:17:15'),
(90, 90, 2, '2018-11-06 14:17:15'),
(91, 91, 2, '2018-11-06 14:17:15'),
(92, 92, 2, '2018-11-06 14:17:15'),
(93, 93, 2, '2018-11-06 14:17:15'),
(94, 94, 2, '2018-11-06 14:17:15'),
(95, 95, 2, '2018-11-06 14:17:15'),
(96, 96, 2, '2018-11-06 14:17:15'),
(97, 97, 2, '2018-11-06 14:17:15'),
(98, 98, 2, '2018-11-06 14:17:15'),
(99, 99, 2, '2018-11-06 14:17:15'),
(100, 100, 2, '2018-11-06 14:17:15'),
(101, 101, 2, '2018-11-06 14:17:15'),
(102, 102, 2, '2018-11-06 14:17:15'),
(103, 103, 2, '2018-11-06 14:17:15'),
(104, 104, 2, '2018-11-06 14:17:15'),
(105, 105, 2, '2018-11-06 14:17:15'),
(106, 106, 2, '2018-11-06 14:17:15'),
(107, 107, 2, '2018-11-06 14:17:15'),
(108, 108, 2, '2018-11-06 14:17:15'),
(109, 109, 2, '2018-11-06 14:17:15'),
(110, 110, 2, '2018-11-06 14:17:15'),
(111, 111, 2, '2018-11-06 14:17:15'),
(112, 112, 2, '2018-11-06 14:17:15'),
(113, 113, 2, '2018-11-06 14:17:15'),
(114, 114, 2, '2018-11-06 14:17:15'),
(115, 115, 2, '2018-11-06 14:17:15'),
(116, 116, 2, '2018-11-06 14:17:15'),
(117, 117, 2, '2018-11-06 14:17:15'),
(118, 118, 2, '2018-11-06 14:17:15'),
(119, 119, 2, '2018-11-06 14:17:15'),
(120, 120, 2, '2018-11-06 14:17:15'),
(121, 121, 2, '2018-11-06 14:17:15'),
(122, 122, 2, '2018-11-06 14:17:15'),
(123, 159, 2, '2018-11-06 17:29:20');

-- --------------------------------------------------------

--
-- Table structure for table `provinsi`
--

CREATE TABLE `provinsi` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_provinsi` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias_provinsi` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `provinsi`
--

INSERT INTO `provinsi` (`id`, `nama_provinsi`, `alias_provinsi`) VALUES
(1, 'Aceh', 'ACEH'),
(2, 'Sumatera Utara', 'SUMUT'),
(3, 'Sumatera Barat', 'SUMBAR'),
(4, 'Riau', 'RIAU'),
(5, 'Kepualauan Riau', 'KEP. RIAU'),
(6, 'Jambi', 'JAMBI'),
(7, 'Sumatera Selatan', 'SUMSEL'),
(8, 'Bangka Belitung', 'BABEL'),
(9, 'Bengkulu', 'Bengkulu'),
(10, 'Lampung', 'Lampung'),
(11, 'DKI Jakarta', 'JAKARTA'),
(12, 'Jawa Barat', 'JABAR'),
(13, 'Banten', 'BANTEN'),
(14, 'Jawa Tengah', 'JATENG'),
(15, 'D.I. Yogyakarta', 'YOGYAKARTA'),
(16, 'Jawa Timur', 'JATIM'),
(17, 'Bali', 'Bali'),
(18, 'Nusa Tenggara Barat', 'NTB'),
(19, 'Nusa Tenggara Timur', 'NTT'),
(20, 'Kalimantan Utara', 'KALTARA'),
(21, 'Kalimantan Barat', 'KALBAR'),
(22, 'Kalimantan Tengah', 'KALTENG'),
(23, 'Kalimantan Selatan', 'KALSEL'),
(24, 'Kalimantan Timur', 'KALTIM'),
(25, 'Sulawesi Utara', 'SULUT'),
(26, 'Sulawesi Barat', 'SULBAR'),
(27, 'Sulawesi Tengah', 'SULTENG'),
(28, 'Sulawesi Tenggara', 'SULTARA'),
(29, 'Sulawesi Selatan', 'SULSEL'),
(30, 'Gorontalo', 'GORONTALO'),
(31, 'Maluku', 'MALUKU'),
(32, 'Maluku Utara', 'MALUT'),
(33, 'Papua Barat', 'PAPUA BARAT'),
(34, 'Papua', 'PAPUA');

-- --------------------------------------------------------

--
-- Table structure for table `status_pemilihan`
--

CREATE TABLE `status_pemilihan` (
  `id` int(10) UNSIGNED NOT NULL,
  `tahun_pemilihan` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telah_selesai` enum('ya','tidak') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'tidak'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `status_pemilihan`
--

INSERT INTO `status_pemilihan` (`id`, `tahun_pemilihan`, `telah_selesai`) VALUES
(1, '2018', 'ya');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `operator`
--
ALTER TABLE `operator`
  ADD PRIMARY KEY (`id`),
  ADD KEY `operator_id_provinsi_foreign` (`id_provinsi`);

--
-- Indexes for table `paslon`
--
ALTER TABLE `paslon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pemilih`
--
ALTER TABLE `pemilih`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pemilih_id_provinsi_foreign` (`id_provinsi`);

--
-- Indexes for table `pemilihan`
--
ALTER TABLE `pemilihan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pemilihan_id_pemilih_foreign` (`id_pemilih`),
  ADD KEY `pemilihan_id_paslon_foreign` (`id_paslon`);

--
-- Indexes for table `provinsi`
--
ALTER TABLE `provinsi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_pemilihan`
--
ALTER TABLE `status_pemilihan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `operator`
--
ALTER TABLE `operator`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `paslon`
--
ALTER TABLE `paslon`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pemilih`
--
ALTER TABLE `pemilih`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;

--
-- AUTO_INCREMENT for table `pemilihan`
--
ALTER TABLE `pemilihan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `provinsi`
--
ALTER TABLE `provinsi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `status_pemilihan`
--
ALTER TABLE `status_pemilihan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `operator`
--
ALTER TABLE `operator`
  ADD CONSTRAINT `operator_id_provinsi_foreign` FOREIGN KEY (`id_provinsi`) REFERENCES `provinsi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pemilih`
--
ALTER TABLE `pemilih`
  ADD CONSTRAINT `pemilih_id_provinsi_foreign` FOREIGN KEY (`id_provinsi`) REFERENCES `provinsi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pemilihan`
--
ALTER TABLE `pemilihan`
  ADD CONSTRAINT `pemilihan_id_paslon_foreign` FOREIGN KEY (`id_paslon`) REFERENCES `paslon` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pemilihan_id_pemilih_foreign` FOREIGN KEY (`id_pemilih`) REFERENCES `pemilih` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
