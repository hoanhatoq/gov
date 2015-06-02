-- phpMyAdmin SQL Dump
-- version 4.4.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 02, 2015 at 05:22 PM
-- Server version: 5.5.43
-- PHP Version: 5.4.41

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `msc_dev`
--
CREATE DATABASE IF NOT EXISTS `msc_dev` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `msc_dev`;

-- --------------------------------------------------------

--
-- Table structure for table `linh_vuc_thong_bao_tbl`
--

DROP TABLE IF EXISTS `linh_vuc_thong_bao_tbl`;
CREATE TABLE IF NOT EXISTS `linh_vuc_thong_bao_tbl` (
  `lvtb_id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `ten_linh_vuc` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '0: disable, 1: enable',
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `linh_vuc_thong_bao_tbl`
--

INSERT INTO `linh_vuc_thong_bao_tbl` (`lvtb_id`, `ten_linh_vuc`, `status`, `create_time`, `update_time`) VALUES
('2c1d46de-08fd-11e5-bef1-000c2957f470', 'Hàng hóa', 1, '2015-06-02 00:00:00', '2015-06-02 00:00:00'),
('90e7d289-08fd-11e5-bef1-000c2957f470', 'Xây lắp', 1, '2015-06-02 00:00:00', '2015-06-02 00:00:00'),
('90eaf9cd-08fd-11e5-bef1-000c2957f470', 'Tư vấn - Thông thường', 1, '2015-06-02 00:00:00', '2015-06-02 00:00:00'),
('90eb2ca0-08fd-11e5-bef1-000c2957f470', 'Hỗn hợp', 1, '2015-06-02 00:00:00', '2015-06-02 00:00:00'),
('90eb59e5-08fd-11e5-bef1-000c2957f470', 'Phi tư vấn', 1, '2015-06-02 00:00:00', '2015-06-02 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `thong_bao_moi_thau_tbl`
--

DROP TABLE IF EXISTS `thong_bao_moi_thau_tbl`;
CREATE TABLE IF NOT EXISTS `thong_bao_moi_thau_tbl` (
  `tbmt_id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `lvtb_id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `so_tbmt` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `loai_thong_bao` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `hinh_thuc_thong_bao` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `goi_thau` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `thuoc_du_an` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nguon_von` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ben_moi_thau` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hinh_thuc_lua_chon_nha_thau` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `thoi_gian_ban_hs_tu` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `thoi_gian_ban_hs_den` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dia_diem` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gia_ban` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `thoi_diem_dong_thau` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `ho_so_moi_thau` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `thong_bao_moi_thau_tbl`
--

INSERT INTO `thong_bao_moi_thau_tbl` (`tbmt_id`, `lvtb_id`, `so_tbmt`, `loai_thong_bao`, `hinh_thuc_thong_bao`, `goi_thau`, `thuoc_du_an`, `nguon_von`, `ben_moi_thau`, `hinh_thuc_lua_chon_nha_thau`, `thoi_gian_ban_hs_tu`, `thoi_gian_ban_hs_den`, `dia_diem`, `gia_ban`, `thoi_diem_dong_thau`, `ho_so_moi_thau`, `status`, `create_time`, `update_time`) VALUES
('315cfe75-0900-11e5-bef1-000c2957f470', '90e7d289-08fd-11e5-bef1-000c2957f470', '20150600947-00', 'Thông báo thực', 'Đăng lần đầu', 'Toàn bộ phần xây dựng công trình: Hạ tầng kỹ thuật khu đấu giá quyền sử dụng đất X38 thôn Sở Hạ, xã Ninh Sở, huyện Thường Tín, thành phố Hà Nội; Hạng mục: San nền, rãnh thoát nước, đường bê tông.', 'Hạ tầng kỹ thuật khu đấu giá quyền sử dụng đất X38 thôn Sở Hạ, xã Ninh Sở, huyện Thường Tín, thành phố Hà Nội', 'Ngân sách Nhà nước', 'Z012792 - Trung tâm phát triển quỹ đất huyện Thường Tín', 'Đấu thầu rộng rãi ( Không sơ tuyển - Chỉ chọn nhà thầu trong nước )', '08/06/2015 - 08:30', '18/06/2015 - 09:00', 'Trung tâm Phát triển quỹ đất huyện Thường Tín.', '1.000.000 VND', '18/06/2015 - 09:00', NULL, 1, '2015-06-02 00:00:00', '2015-06-02 00:00:00'),
('72a3e6d5-0900-11e5-bef1-000c2957f470', '2c1d46de-08fd-11e5-bef1-000c2957f470', '20150600965 - 00', 'Thông báo thực', 'Đăng lại', 'Mua sắm trang bị 01 xe ôtô 07 chỗ ngồi phục vụ công tác của Trường đại học Đồng Nai', NULL, 'Ngân sách tỉnh năm 2015', 'Z011068 - Công ty Cổ phần Tư vấn Đầu tư Xây dựng Thiên Nam', 'Chào hàng cạnh tranh ( Không sơ tuyển - Chỉ chọn nhà thầu trong nước )', '05/06/2015 - 16:00', '12/06/2015 - 16:00', 'Tổ 16, khu phố 3, phường Trảng Dài, thành phố Biên Hòa', '1.000.000 VND', '12/06/2015 - 16:00', NULL, 1, '2015-06-02 00:00:00', '2015-06-02 00:00:00'),
('7b4498fd-08ff-11e5-bef1-000c2957f470', '90eb2ca0-08fd-11e5-bef1-000c2957f470', '20150506305-00', 'Thông báo thực', 'Đăng lần đầu', 'số 03: Toàn bộ phần xây lắp và thiết bị của dự án', 'Xây dựng Trung tâm Thông tin chỉ huy Công an thành phố Huế', 'Ngân sách cấp theo kế hoạch vốn', 'Z010808 - Ban Đầu tư và Xây dựng thành phố Huế', 'Chào hàng cạnh tranh ( Không sơ tuyển - Chỉ chọn nhà thầu trong nước )', '10/06/2015 - 08:00', '24/06/2015 - 14:00', 'Ban Đầu tư và Xây dựng thành phố Huế; 24 Tố Hữu, thành phố Huế; Số điện thoại: 0543 624458', '1.000.000 VND', '24/06/2015 - 14:00', NULL, 1, '2015-06-02 00:00:00', '2015-06-02 00:00:00'),
('aa9747f2-08fe-11e5-bef1-000c2957f470', '90eb59e5-08fd-11e5-bef1-000c2957f470', '20150600971-00', 'Thông báo thực', 'Đăng lần đầu', 'Cung cấp dịch vụ bảo dưỡng máy sắc ký lỏng HP-LC và máy sắc ký lỏng khối phổ 3 lần tứ cực nối tiếp LC-MS/MS cho Trung tâm Phân tích Phân loại hàng hóa xuất nhập khẩu', '', 'Ngân sách nhà nước', 'Z011198 - Trung tâm Phân tích Phân loại hàng hóa xuất nhập khẩu', 'Chào hàng cạnh tranh ( Không sơ tuyển - Chỉ chọn nhà thầu trong nước )', '08/06/2015 - 08:30', '15/06/2015 - 08:30', 'Trung tâm Phân tích Phân loại hàng hóa xuất nhập khẩu, 162 Nguyễn Văn Cừ, Long Biên, Hà Nội', 'Miễn phí', '15/06/2015 - 08:30', NULL, 1, '2015-06-02 00:00:00', '2015-06-02 00:00:00'),
('e1a92ff7-08ff-11e5-bef1-000c2957f470', '90eaf9cd-08fd-11e5-bef1-000c2957f470', '20150600922-00', 'Thông báo thực', 'Đăng lần đầu', 'Chuyên gia Đào tạo, tập huấn về các khái niệm BLG/BLGĐ và các hệ thống biểu mẫu thu thập số liệu và báo cáo thống kê số liệu nạn nhân bị bạo lực giới/bạo lực gia đình tại các cơ sở khám bệnh, chữa bệnh cho tỉnh Hải Dương và Bến Tre" (Hình thức đấu thầu: T', 'Ban quản lý dự án VNM8P02', 'UNFPA', 'Ban quản lý dự án VNM8P02', 'Đấu thầu rộng rãi ( Không sơ tuyển - Chỉ chọn nhà thầu trong nước )', '02/06/2015 - 09:00', '08/06/2015 - 09:00', 'Phòng 510, Vụ Kế hoạch – Tài chính, 138A, Giảng Võ, Ba Đình, Hà Nội., Điện thoại: 0912183255', 'Miễn phí', '08/06/2015 - 09:00', NULL, 1, '2015-06-02 00:00:00', '2015-06-02 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `linh_vuc_thong_bao_tbl`
--
ALTER TABLE `linh_vuc_thong_bao_tbl`
  ADD PRIMARY KEY (`lvtb_id`);

--
-- Indexes for table `thong_bao_moi_thau_tbl`
--
ALTER TABLE `thong_bao_moi_thau_tbl`
  ADD PRIMARY KEY (`tbmt_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
