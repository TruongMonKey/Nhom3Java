
-- https://www.phpmyadmin.net/



SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";




CREATE TABLE `grade` (
  `id` int(11) NOT NULL,
  `MaSV` varchar(150) NOT NULL,
  `HoTenSV` varchar(150) NOT NULL,
  `TiengAnh` double NOT NULL,
  `TinHoc` double NOT NULL,
  `GDTC` double NOT NULL,
  `DiemTB` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO `grade` (`id`, `MaSV`, `HoTenSV`, `TiengAnh`, `TinHoc`, `GDTC`, `DiemTB`) VALUES
(4, 'PD54', 'Tran Viet Truong', 9, 9, 10, 9.333333333333334),
(5, 'PD57', 'Nguyen Thi Thanh Thao', 10, 10, 10, 10),
(6, 'PD55', 'Mac Van Quan', 8.5, 10, 10, 9.5),
(7, 'PD56', 'Phuong Nga', 10, 10, 10, 5.333333333333333);

-- --------------------------------------------------------



CREATE TABLE `loginfrom` (
  `id` int(11) DEFAULT NULL,
  `usename` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `role` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `loginfrom` (`id`, `usename`, `password`, `role`) VALUES
(1, 'admin', '1', 'qlnv'),
(2, 'truong', '1', 'qlnv'),
(5,'nga','1','qlnv'),
(3, 'thao', '1', 'qlnv'),
(4, 'quan', '1', 'qld');

-- --------------------------------------------------------

--
-- Table structure for table `sinhvien`
--

CREATE TABLE `sinhvien` (
  `id` int(11) NOT NULL,
  `MaSV` varchar(150) NOT NULL,
  `HoTen` varchar(150) NOT NULL,
  `Email` varchar(150) NOT NULL,
  `SDT` int(11) NOT NULL,
  `GioTinh` varchar(150) NOT NULL,
  `DiaChi` varchar(250) NOT NULL,
  `HinhAnh` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sinhvien`
--

INSERT INTO `sinhvien` (`id`, `MaSV`, `HoTen`, `Email`, `SDT`, `GioTinh`, `DiaChi`, `HinhAnh`) VALUES
(2, 'PD54', 'Bui Viet Phi', 'buivietphi@gmail.com', 967329308, 'Nam', 'Quang Ngai', 

);
INSERT INTO `sinhvien` (`id`, `MaSV`, `HoTen`, `Email`, `SDT`, `GioTinh`, `DiaChi`, `HinhAnh`) VALUES
(5, 'PD55', 'Phi Dep Trai', 'Phideptrai@gmail.com', 967329308, 'Nam', 'Binh Son', );
INSERT INTO `sinhvien` (`id`, `MaSV`, `HoTen`, `Email`, `SDT`, `GioTinh`, `DiaChi`, `HinhAnh`) VALUES
(6, 'PD56', 'Banh Thi Lo Lieu', 'lolieu113@gmail.com', 65558844, 'Nu', 'Ca Li Phot Ni A', );
INSERT INTO `sinhvien` (`id`, `MaSV`, `HoTen`, `Email`, `SDT`, `GioTinh`, `DiaChi`, `HinhAnh`) VALUES
(7, 'PD57', 'Mong Thi Loi', 'macloiroi@gmail.com', 7755445, 'Nu', 'Cam Bu Chia', );

--
-- Indexes for dumped tables
--

--
-- Indexes for table `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sinhvien`
--
ALTER TABLE `sinhvien`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `grade`
--
ALTER TABLE `grade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sinhvien`
--
ALTER TABLE `sinhvien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
