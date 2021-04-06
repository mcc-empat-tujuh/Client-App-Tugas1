-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2021 at 04:25 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `address_id` int(3) NOT NULL,
  `street1` varchar(255) DEFAULT NULL,
  `street2` varchar(255) DEFAULT NULL,
  `village_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`address_id`, `street1`, `street2`, `village_id`) VALUES
(1, 'Komplek Rs. Islam Blok J No.7 RT 003 RW 001', NULL, 5),
(2, 'Dayung 3C No.13 RT 004 RW 006', NULL, 9),
(3, 'Jend Sudirman No.1 RT 001 RW 003', NULL, 6),
(4, 'H.Selong Gg.Marzuki RT 001 RW 001', NULL, 3),
(5, 'Dsn. Kauman Lor No.15 RT 010 RW 001', NULL, 7),
(6, 'Paus Komplek Benni No.15 RT 004 RW 004', NULL, 10),
(7, 'Jatinegara No.230/125 RT 008 RW 002', NULL, 8),
(8, 'Kaliurang km 10,5 Gadingan RT 003 RW 008', NULL, 12),
(9, 'Dr. Susilo V No.80 RT 003 RW 005', NULL, 9),
(10, 'Ancol Utara 1 No.78A RT 002 RW 007', NULL, 1),
(11, 'Tipar Cakung RT 005 RW 009', NULL, 2),
(12, 'Masda No 25 B RT 005 RW 009', NULL, 11),
(13, 'KI Hajar Dewantara KP sukamantri RT 004 RW 001', NULL, 13),
(14, 'jalan jalan', NULL, 4),
(15, 'jalan jalan', NULL, 5),
(16, NULL, NULL, 11),
(17, NULL, NULL, 11),
(18, NULL, NULL, 11);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(3) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `linkedin` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contact_id`, `phone`, `linkedin`) VALUES
(1, '087708771440', 'linkedin.com/in/ikhsansyahbanu/'),
(2, '08998463015', 'linkedin.com/in/ristia-panji/'),
(3, '089565447621', 'linkedin.com/in/fadelmnst/'),
(4, '081261119417', 'linkedin.com/in/rafimdifany/'),
(5, '085730796818', 'linkedin.com/in/christina-regita-kumala-sari/'),
(6, '082289756578', 'linkedin.com/in/yosie-fridolin/'),
(7, '082214687574 ', 'linkedin.com/in/braja98/'),
(8, '081392578786', 'linkedin.com/in/florentinavela/'),
(9, '0895606123796', 'linkedin.com/in/jedwins/'),
(10, '08561389666', 'linkedin.com/in/zahrazakiyahsalsabilakurnia/'),
(11, '089696262649', 'linkedin.com/in/auliasyifa30/'),
(12, '087782082058', 'linkedin/williamyangjaya'),
(13, '089614533736', 'linkedin.com/in/arnumsari17/'),
(14, '0892929292', 'test'),
(15, '089614533736', 'linkedin/arnum'),
(16, '08472021', 'mcc472021'),
(17, '08170845', 'mcc170845'),
(18, '08080808080', 'linkedin id');

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE `district` (
  `district_id` int(3) NOT NULL,
  `kota_kab` varchar(10) NOT NULL,
  `district_name` varchar(50) NOT NULL,
  `province_id` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`district_id`, `kota_kab`, `district_name`, `province_id`) VALUES
(1, 'Kota', 'Bandung', 4),
(2, 'Kota', 'Bekasi', 4),
(3, 'Kab.', 'Bekasi', 4),
(4, 'Kota', 'Jakarta Barat', 3),
(5, 'Kota', 'Jakarta Timur', 3),
(6, 'Kota', 'Jakarta Utara', 3),
(7, 'Kota', 'Palembang', 7),
(8, 'Kota', 'Pekanbaru', 6),
(9, 'Kab.', 'Semarang', 5),
(10, 'Kab.', 'Sleman', 2),
(11, 'Kab.', 'Tangerang', 1);

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `education_id` int(3) NOT NULL,
  `degree` enum('D3','D4','S1','S2','S3') DEFAULT NULL,
  `major_id` int(2) NOT NULL,
  `university_id` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`education_id`, `degree`, `major_id`, `university_id`) VALUES
(1, 'S1', 6, 5),
(2, 'S1', 3, 7),
(3, 'S1', 2, 13),
(4, 'S1', 6, 2),
(5, 'S1', 6, 9),
(6, 'D4', 6, 3),
(7, 'S1', 1, 12),
(8, 'S1', 4, 6),
(9, 'S1', 5, 1),
(10, 'D4', 7, 4),
(11, 'S1', 6, 10),
(12, 'S1', 1, 8),
(13, 'S1', 1, 11),
(14, NULL, 3, 2),
(15, NULL, 3, 2),
(16, NULL, 1, 8),
(17, NULL, 1, 8),
(18, NULL, 1, 8);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employee_id` int(3) NOT NULL,
  `employee_name` varchar(50) NOT NULL,
  `birth_date` date NOT NULL,
  `gender` enum('Laki-laki','Perempuan') NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employee_id`, `employee_name`, `birth_date`, `gender`, `email`) VALUES
(1, 'Ikhsan Nur Syahbanu', '1997-12-28', 'Laki-laki', 'ikhsan.syahbanu@mii.co.id'),
(2, 'Ristia Muhamamd Panji Winarrman', '1998-10-05', 'Laki-laki', 'ristiapanji@gmail.com'),
(3, 'Fadel Muhammad Nasution', '1992-02-29', 'Laki-laki', 'fadelmn21@gmail.com'),
(4, 'Rafi Mufadhal Difany', '1998-05-08', 'Laki-laki', 'rafimdifany@gmail.com'),
(5, 'Christina Regita Kumala Sari', '1997-04-24', 'Perempuan', 'christinaregita24@gmail.com'),
(6, 'Yosie Fridolin', '1998-06-01', 'Perempuan', 'yosiefridolin01@gmail.com'),
(7, 'Jaka Brajadenta', '1998-04-04', 'Laki-laki', 'jakabrajadenta@gmail.com'),
(8, 'Florentina Vela Nindyasari', '1998-07-20', 'Perempuan', 'florentinavela.n@gmail.com'),
(9, 'Jarister Edwins Silalahi', '1998-03-25', 'Laki-laki', 'jarister.silalahi@ms.mii.co.id'),
(10, 'Zahra Zakiyah Salsabila Kurnia', '1997-09-27', 'Perempuan', 'zahrazakiyahsk@gmail.com'),
(11, 'Aulia Syifa', '1999-06-30', 'Perempuan', 'auliasyifa346@gmail.com'),
(12, 'William Yangjaya', '1997-03-01', 'Laki-laki', 'william.yangjaya@ms.mii.co.id'),
(13, 'Arnum Sari Khoirunnisa', '1998-04-17', 'Perempuan', 'arnum.khoirunnisa@ms.mii.co.id'),
(14, 'test1', '2021-04-01', 'Laki-laki', 'test1@gmail.com'),
(15, 'test2', '2021-04-01', 'Perempuan', 'test2@gmail.com'),
(16, 'mcc472021', '2021-05-05', 'Laki-laki', 'mcc472021@gmail.com'),
(17, 'merdeka', '2021-03-03', 'Laki-laki', 'mcc170845@gmail.com'),
(18, 'merdeka55', '2021-01-01', 'Laki-laki', 'mcc555@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `major`
--

CREATE TABLE `major` (
  `major_id` int(2) NOT NULL,
  `major_name` varchar(50) NOT NULL,
  `count` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `major`
--

INSERT INTO `major` (`major_id`, `major_name`, `count`) VALUES
(1, 'Fisika', 3),
(2, 'Matematika', 1),
(3, 'Sistem Informasi', 1),
(4, 'Teknik Fisika', 1),
(5, 'Teknik Geofisika', 1),
(6, 'Teknik Informatika', 5),
(7, 'Teknik Telekomunikasi', 1);

-- --------------------------------------------------------

--
-- Table structure for table `privilege`
--

CREATE TABLE `privilege` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `privilege`
--

INSERT INTO `privilege` (`id`, `name`) VALUES
(1, 'CREATE_PRIVILEGE'),
(2, 'READ_PRIVILEGE'),
(3, 'UPDATE_PRIVILEGE'),
(4, 'DELETE_PRIVILEGE');

-- --------------------------------------------------------

--
-- Table structure for table `province`
--

CREATE TABLE `province` (
  `province_id` int(2) NOT NULL,
  `province_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `province`
--

INSERT INTO `province` (`province_id`, `province_name`) VALUES
(1, 'Banten'),
(2, 'DIY'),
(3, 'DKI Jakarta'),
(4, 'Jawa Barat'),
(5, 'Jawa Tengah'),
(6, 'Riau'),
(7, 'Sumatera Selatan');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'ROLE_ADMIN'),
(2, 'ROLE_USER'),
(3, 'ROLE_USER'),
(4, 'ROLE_USER'),
(5, 'ROLE_USER');

-- --------------------------------------------------------

--
-- Table structure for table `roles_privileges`
--

CREATE TABLE `roles_privileges` (
  `role_id` int(11) NOT NULL,
  `privilege_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles_privileges`
--

INSERT INTO `roles_privileges` (`role_id`, `privilege_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `subdistrict`
--

CREATE TABLE `subdistrict` (
  `subdistrict_id` int(4) NOT NULL,
  `subdistrict_name` varchar(50) NOT NULL,
  `district_id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subdistrict`
--

INSERT INTO `subdistrict` (`subdistrict_id`, `subdistrict_name`, `district_id`) VALUES
(1, 'Batununggal', 1),
(2, 'Bekasi Utara', 2),
(3, 'Cakung', 5),
(4, 'Cengkareng', 4),
(5, 'Grogol Petamburan', 4),
(6, 'Kalidoni', 7),
(7, 'Karang Bahagia', 3),
(8, 'Kelapa Dua', 11),
(9, 'Ngaglik', 10),
(10, 'Pabelan', 9),
(11, 'Penjaringan', 6),
(12, 'Regol', 1),
(13, 'Rumbai', 8);

-- --------------------------------------------------------

--
-- Table structure for table `university`
--

CREATE TABLE `university` (
  `university_id` int(2) NOT NULL,
  `university_name` varchar(50) NOT NULL,
  `counts` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `university`
--

INSERT INTO `university` (`university_id`, `university_name`, `counts`) VALUES
(1, 'Institut Teknologi Bandung', 1),
(2, 'Institut Teknologi PLN', 1),
(3, 'Politeknik Caltex Riau', 1),
(4, 'Politeknik Negeri Bandung', 1),
(5, 'Universitas Amikom Yogyakarta', 1),
(6, 'Universitas Gadjah Mada', 1),
(7, 'Universitas Gunadarma', 1),
(8, 'Universitas Indonesia', 1),
(9, 'Universitas Kristen Satya Wacana', 1),
(10, 'Universitas Muhammadiyah Jakarta', 1),
(11, 'Universitas Negeri Yogyakarta', 1),
(12, 'Universitas Pendidikan Indonesia', 1),
(13, 'Universitas Sriwijaya', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `account_non_expired` bit(1) NOT NULL,
  `account_non_locked` bit(1) NOT NULL,
  `credentials_non_expired` bit(1) NOT NULL,
  `enabled` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `password`, `username`, `account_non_expired`, `account_non_locked`, `credentials_non_expired`, `enabled`) VALUES
(1, '$2y$10$VFSy/2LU/Lnscx5ZI6Os3.4FPrpxHkM9sefPk/Cg40blkTgb3Co7m', 'ikhsan', b'1', b'1', b'1', b'1'),
(2, '$2a$10$6C9sSWNNx7dbU/X8KvV2S.Zd8tEA1HmGJMisi3qNpUeSzAmrNVUPW', 'panji', b'1', b'1', b'1', b'1'),
(3, '$2y$10$XgyuAd3dvu3LCR.TibvOh.GWDcA0EmlMYVgakMrqv6eij5sU6eqYq', 'fadel', b'1', b'1', b'1', b'1'),
(4, '$2y$10$DiA8rRJAAZMPCBxtmW6AWOLWrr5vpPVllYPQXHYEkOjIldtlhSoFC', 'rafi', b'1', b'1', b'1', b'1'),
(5, '$2y$10$P1hqIo.qRKQ.5KivueIEo.1tSwe4mWCNytm20gHbG5.z3DDmBFCUC', 'regita', b'1', b'1', b'1', b'1'),
(6, '$2y$10$nAF/XV6vXayf4Y1NtH97KuODCe1rqggOPf9NdEC87U71Qyzt0hvHO', 'yosie', b'1', b'1', b'1', b'1'),
(7, '$2y$10$lHnKYLnnCdeAZTc/aKt3OefCCxyl33K.9BUTyn9i8Gyntfai8Tinu', 'jaka', b'1', b'1', b'1', b'1'),
(8, '$2y$10$ai4li0qtObjNqODaiDLnkeOV46lPylfQDFfmTrvGl6yCGXcWVG0i.', 'vela', b'1', b'1', b'1', b'1'),
(9, '$2y$10$uiOrNmZ2mioNEKd5bgILTOaMv6GpWoaDF.u4WLYJgYi2CaaNTClvW', 'edwin', b'1', b'1', b'1', b'1'),
(10, '$2y$10$zlOkm3jicmauZuqG7ljm1ugWAYWeesrTHfULr4I8fH00DR7TadtKC', 'zaki', b'1', b'1', b'1', b'1'),
(11, '$2y$10$wkgqRNIWVDxIrmlZGPR8AOBYs.uMdtsYQ4WSo4NeLWDTSJZXho3Rm', 'aul', b'1', b'1', b'1', b'1'),
(12, '$2y$10$fkFBXzXq6iwuOCDpSuVHKuQWXXSH3fQLOT6KlP6/TTVF5nEDrpKJC', 'william', b'1', b'1', b'1', b'1'),
(13, '$2y$10$unxp3op/wsEqt4NukjKsx.GKnbV8ryqmEJZclgrqbrKpZwT3HrLBe', 'arnum', b'1', b'1', b'1', b'1'),
(14, '$2y$10$f0qfAhojC2P0cWaLE3a5cekYtT01gvKpe43wZl62isY7gZp8s8Y0m', 'test1', b'1', b'1', b'1', b'1'),
(15, '$2y$10$CWkl/iNm/uvecLDziKgfJ.JxKcj0RoiQkDMCLOt3kxcguISzWOCOe', 'test', b'1', b'1', b'1', b'1'),
(16, '$2a$10$StuQQ2GUhi1/AYNipPtkc.5F3rJkDgbwV0b1GNjNn4wB/Aacb0dA6', 'mcc', b'0', b'0', b'0', b'0'),
(17, '$2a$10$AhHunLxKN//iLcR4wyLuie4rR59tl5LlfaV1CpYmC7.4YMm.NFKtW', 'merdeka', b'0', b'0', b'0', b'0'),
(18, '$2a$10$RADv0gwDnDF9xIjUuWxX1OBeltkYIf2i63KFuj6HcLJOvup2gdzl2', 'merdeka5', b'0', b'0', b'0', b'0');

-- --------------------------------------------------------

--
-- Table structure for table `users_roles`
--

CREATE TABLE `users_roles` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_roles`
--

INSERT INTO `users_roles` (`user_id`, `role_id`) VALUES
(1, 1),
(2, 2),
(3, 1),
(4, 2),
(5, 1),
(6, 2),
(7, 1),
(8, 2),
(9, 1),
(10, 2),
(11, 1),
(12, 2),
(13, 1),
(14, 2),
(15, 1),
(16, 3),
(17, 4),
(18, 5);

-- --------------------------------------------------------

--
-- Table structure for table `village`
--

CREATE TABLE `village` (
  `village_id` int(5) NOT NULL,
  `village_name` varchar(50) NOT NULL,
  `zip_code` varchar(5) NOT NULL,
  `subdistrict_id` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `village`
--

INSERT INTO `village` (`village_id`, `village_name`, `zip_code`, `subdistrict_id`) VALUES
(1, 'Balonggede', '40215', 12),
(2, 'Cakung Barat', '13910', 3),
(3, 'Durikosambi', '11750', 4),
(4, 'Grogol', '11450', 5),
(5, 'Harapan Jaya', '17124', 2),
(6, 'Kalidoni', '30119', 6),
(7, 'Kauman', '50771', 10),
(8, 'Kebonwaru', '40272', 1),
(9, 'Kelapa Dua', '15811', 8),
(10, 'Limbungan Baru', '28261', 13),
(11, 'Pejagalan', '14450', 11),
(12, 'Sinduharjo', '55581', 9),
(13, 'Sukaraya', '17530', 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `village_id` (`village_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`district_id`),
  ADD KEY `province_id` (`province_id`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`education_id`),
  ADD KEY `major_id` (`major_id`),
  ADD KEY `education_id` (`education_id`),
  ADD KEY `university_id` (`university_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `major`
--
ALTER TABLE `major`
  ADD PRIMARY KEY (`major_id`);

--
-- Indexes for table `privilege`
--
ALTER TABLE `privilege`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`province_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles_privileges`
--
ALTER TABLE `roles_privileges`
  ADD KEY `FK5yjwxw2gvfyu76j3rgqwo685u` (`privilege_id`),
  ADD KEY `FK9h2vewsqh8luhfq71xokh4who` (`role_id`);

--
-- Indexes for table `subdistrict`
--
ALTER TABLE `subdistrict`
  ADD PRIMARY KEY (`subdistrict_id`),
  ADD KEY `district_id` (`district_id`);

--
-- Indexes for table `university`
--
ALTER TABLE `university`
  ADD PRIMARY KEY (`university_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_roles`
--
ALTER TABLE `users_roles`
  ADD KEY `FKt4v0rrweyk393bdgt107vdx0x` (`role_id`),
  ADD KEY `FKgd3iendaoyh04b95ykqise6qh` (`user_id`);

--
-- Indexes for table `village`
--
ALTER TABLE `village`
  ADD PRIMARY KEY (`village_id`),
  ADD KEY `subdistrict_id` (`subdistrict_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `address_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `district`
--
ALTER TABLE `district`
  MODIFY `district_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `education_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `employee_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `major`
--
ALTER TABLE `major`
  MODIFY `major_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `privilege`
--
ALTER TABLE `privilege`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `province`
--
ALTER TABLE `province`
  MODIFY `province_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `subdistrict`
--
ALTER TABLE `subdistrict`
  MODIFY `subdistrict_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `university`
--
ALTER TABLE `university`
  MODIFY `university_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `village`
--
ALTER TABLE `village`
  MODIFY `village_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `addess_aid_fk` FOREIGN KEY (`address_id`) REFERENCES `employee` (`employee_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `village_vid_fk` FOREIGN KEY (`village_id`) REFERENCES `village` (`village_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `contact`
--
ALTER TABLE `contact`
  ADD CONSTRAINT `contact_cid_fk` FOREIGN KEY (`contact_id`) REFERENCES `employee` (`employee_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `district`
--
ALTER TABLE `district`
  ADD CONSTRAINT `province_pid_fk` FOREIGN KEY (`province_id`) REFERENCES `province` (`province_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `education`
--
ALTER TABLE `education`
  ADD CONSTRAINT `education_eid_fk` FOREIGN KEY (`education_id`) REFERENCES `employee` (`employee_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `major_mid_fk` FOREIGN KEY (`major_id`) REFERENCES `major` (`major_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `university_uid_fk` FOREIGN KEY (`university_id`) REFERENCES `university` (`university_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `roles_privileges`
--
ALTER TABLE `roles_privileges`
  ADD CONSTRAINT `FK5yjwxw2gvfyu76j3rgqwo685u` FOREIGN KEY (`privilege_id`) REFERENCES `privilege` (`id`),
  ADD CONSTRAINT `FK9h2vewsqh8luhfq71xokh4who` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);

--
-- Constraints for table `subdistrict`
--
ALTER TABLE `subdistrict`
  ADD CONSTRAINT `district_did_fk` FOREIGN KEY (`district_id`) REFERENCES `district` (`district_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_uid_fk` FOREIGN KEY (`id`) REFERENCES `employee` (`employee_id`);

--
-- Constraints for table `users_roles`
--
ALTER TABLE `users_roles`
  ADD CONSTRAINT `FKgd3iendaoyh04b95ykqise6qh` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FKt4v0rrweyk393bdgt107vdx0x` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);

--
-- Constraints for table `village`
--
ALTER TABLE `village`
  ADD CONSTRAINT `subdistrict_sid_fk` FOREIGN KEY (`subdistrict_id`) REFERENCES `subdistrict` (`subdistrict_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
