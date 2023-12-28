-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 28, 2023 lúc 02:59 PM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `amthuctv`
--
CREATE DATABASE IF NOT EXISTS `amthuctv` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `amthuctv`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danh_muc_mon_an`
--

CREATE TABLE `danh_muc_mon_an` (
  `id` int(11) NOT NULL,
  `ten_danh_muc` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `danh_muc_mon_an`
--

INSERT INTO `danh_muc_mon_an` (`id`, `ten_danh_muc`) VALUES
(1, 'Món ăn chính'),
(2, 'Món ăn vặt'),
(3, 'Trái cây'),
(4, 'Món ăn kèm');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `diem_phuc_vu`
--

CREATE TABLE `diem_phuc_vu` (
  `id` int(11) NOT NULL,
  `ten_quan` varchar(255) DEFAULT NULL,
  `gioi_thieu_chung` text DEFAULT NULL,
  `dia_chi_quan` varchar(255) DEFAULT NULL,
  `gio_mo_cua` time DEFAULT NULL,
  `mon_an_id` int(11) DEFAULT NULL,
  `gio_dong_cua` time DEFAULT NULL,
  `hinh_anh` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_estonian_ci DEFAULT NULL,
  `so_dien_thoai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `diem_phuc_vu`
--

INSERT INTO `diem_phuc_vu` (`id`, `ten_quan`, `gioi_thieu_chung`, `dia_chi_quan`, `gio_mo_cua`, `mon_an_id`, `gio_dong_cua`, `hinh_anh`, `so_dien_thoai`) VALUES
(1, 'Quán Cây Sung', '<p>Qu&aacute;n C&acirc;y Sung - B&uacute;n Nước L&egrave;o l&agrave; một địa điểm được sắp xếp trong danh mục M&oacute;n Ăn v&agrave; Qu&aacute;n C&acirc;y Sung - B&uacute;n Nước L&egrave;o nằm ở địa chỉ 676, V&otilde; Nguy&ecirc;n Gi&aacute;p, Phường 8, Tr&agrave; Vinh. Ngo&agrave;i ra bạn cũng c&oacute; thể t&igrave;m kiếm th&ocirc;ng tin của doanh nghiệp trong khu vực từ c&aacute;c li&ecirc;n kết. Đ&acirc;y l&agrave; một trang web rất hữu &iacute;ch gi&uacute;p bạn t&igrave;m kiếm th&ocirc;ng tin chi tiết của một địa điểm v&agrave; chỉ dẫn đường đi đến Qu&aacute;n C&acirc;y Sung - B&uacute;n Nước L&egrave;o</p>\r\n', ' 676 Võ Nguyên Giáp, Phường 8, Trà Vinh.', '07:00:00', 1, '19:00:00', '2019-07-19.jpg', NULL),
(2, 'Quán Ngọc Tiền', '<p>Qu&aacute;n Ăn &amp; Karaoke Gia Đ&igrave;nh Ngọc Ti&ecirc;n l&agrave; một địa điểm được sắp xếp trong danh mục Nh&agrave; H&agrave;ng v&agrave; Qu&aacute;n Ăn &amp; Karaoke Gia Đ&igrave;nh Ngọc Ti&ecirc;n nằm ở địa chỉ Tr&agrave; C&uacute;. Ngo&agrave;i ra bạn cũng c&oacute; thể t&igrave;m kiếm th&ocirc;ng tin của doanh nghiệp trong khu vực từ c&aacute;c li&ecirc;n kết. Đ&acirc;y l&agrave; một trang web rất hữu &iacute;ch gi&uacute;p bạn t&igrave;m kiếm th&ocirc;ng tin chi tiết của một địa điểm v&agrave; chỉ dẫn đường đi đến Qu&aacute;n Ăn &amp; Karaoke Gia Đ&igrave;nh Ngọc Ti&ecirc;n.</p>\r\n', 'Hàm Tân, Trà Cú, Trà Vinh', '08:00:00', 2, '22:20:00', 'IMG_20220828_065854.jpg', NULL),
(3, 'Bánh canh Bến Có Út Hảo', '<p>Đến với Tr&agrave; Vinh th&igrave; chắc chắn bạn sẽ nghe nhắc ngay đến m&oacute;n b&aacute;nh canh Bến C&oacute;, một trong những m&oacute;n ăn đặc sản tạo n&ecirc;n thương hiệu của v&ugrave;ng đất t&igrave;nh đất t&igrave;nh người n&agrave;y. B&aacute;nh được l&agrave;m từ bột gạo, m&agrave;u trắng, thơm m&ugrave;i dịu v&agrave; ăn rất dai, nước l&egrave;o ngọt thanh. Khi ăn, trong t&ocirc; b&aacute;nh canh c&ograve;n c&oacute; nhiều thứ kh&aacute;c hấp dẫn như l&ograve;ng, ruột, tim heo, gi&ograve; heo v&agrave; một &iacute;t rau thơm. B&aacute;nh Canh Bến C&oacute; &Uacute;t Hảo l&agrave; một trong những qu&aacute;n được y&ecirc;u th&iacute;ch nhất của thực kh&aacute;ch khi đến với Tr&agrave; Vinh.</p>\r\n\r\n<p>Hương vị nước l&egrave;o nấu từ thịt heo đậm đ&agrave;. Sợi b&aacute;nh canh được l&agrave;m nguy&ecirc;n chất từ bột gạo, nhờ đ&oacute; m&agrave; c&oacute; được độ dai mềm, vị b&ugrave;i, m&ugrave;i thơm của gạo. Nước l&egrave;o nh&igrave;n trong vắt nhưng c&oacute; vị thanh ngọt từ xương heo. Ngo&agrave;i ra, đội ngũ nh&acirc;n viện nhiệt t&igrave;nh, tận t&acirc;m v&agrave; chu đ&aacute;o sẽ mang đến cho thực kh&aacute;ch nhựng gi&acirc;y ph&uacute;t thư gi&atilde;n tuyệt vời v&agrave; ho&agrave;n to&agrave;n h&agrave;i l&ograve;ng về B&aacute;nh Canh Bến C&oacute; &Uacute;t Hảo. Qu&aacute;n c&oacute; kh&ocirc;ng gian rộng r&atilde;i, l&uacute;c n&agrave;o cũng tấp nập kh&aacute;ch ra v&agrave;o, kh&ocirc;ng chỉ kh&aacute;ch địa phương m&agrave; c&ograve;n du kh&aacute;ch tỉnh kh&aacute;c lẫn nước ngo&agrave;i. Qu&aacute;n c&ograve;n b&aacute;n th&ecirc;m b&aacute;nh t&eacute;t Tr&agrave; Cu&ocirc;n ngon nức tiếng của đất Tr&agrave; Vinh.</p>\r\n', 'QL53, Nguyệt Hoá, Châu Thành, Trà Vinh.', '06:00:00', 3, '18:00:00', 'Annotation 2023-12-28 032014.jpg', NULL),
(4, 'Bún suông Hùi Yến', '<p>Qu&aacute;n Ăn &amp; Karaoke Gia Đ&igrave;nh Ngọc Ti&ecirc;n l&agrave; một địa điểm được sắp xếp trong danh mục Nh&agrave; H&agrave;ng v&agrave; Qu&aacute;n Ăn &amp; Karaoke Gia Đ&igrave;nh Ngọc Ti&ecirc;n nằm ở địa chỉ Tr&agrave; C&uacute;. Ngo&agrave;i ra bạn cũng c&oacute; thể t&igrave;m kiếm th&ocirc;ng tin của doanh nghiệp trong khu vực từ c&aacute;c li&ecirc;n kết. Đ&acirc;y l&agrave; một trang web rất hữu &iacute;ch gi&uacute;p bạn t&igrave;m kiếm th&ocirc;ng tin chi tiết của một địa điểm v&agrave; chỉ dẫn đường đi đến Qu&aacute;n Ăn &amp; Karaoke Gia Đ&igrave;nh Ngọc Ti&ecirc;n.</p>\r\n', '56 Hùng Vương, Phường 3, Trà Vinh', '06:00:00', 4, '20:30:00', '2023-05-03.jpg', NULL),
(5, 'Dừa sáp Cầu Kè Duy Nhất', 'Chuyên bán dừa sáp, món trái cây nổi tiếng của huyện Cầu Kè thuộc tỉnh Trà Vinh', 'Ấp Vĩnh Trường, Châu Thành, Trà Vinh.', '06:00:00', 5, '23:00:00', NULL, NULL),
(6, 'Dừa sáp Thi Thi', ' Chuyên bán món trái cây là dừa sáp đặc trưng của tỉnh, được trồng chủ yếu ở huyện Cầu Kè vùng đất của cây ăn quả.', 'Số 171 Quốc lộ 60, khóm 3, Trà Vinh', '06:00:00', 5, '23:00:00', NULL, NULL),
(7, 'Tôm khô Vinh Kim Dì Hai Khâm', 'Chuyên bán món tôm khô nhà làm nổi tiếng của huyện Cầu Ngang', 'Ấp Chà Và, xã Vinh Kim, huyện Cầu Ngang, tỉnh Trà Vinh', '06:00:00', 6, '23:00:00', NULL, NULL),
(8, 'Cửa hàng bánh tét Trà Cuôn', 'Chuyên bán món bánh tét Trà Cuôn đặc sản trứ danh của tỉnh Trà Vinh', '72/4 đường Phạm Ngũ Lão, phường 1, Trà Vinh', '07:00:00', 8, '22:00:00', NULL, NULL),
(9, 'Nước mắm Rươi Long Vinh', 'Chuyên bán món nước chấm để ăn kèm cùng các món ăn giúp các món ăn có thêm hương vị thơm ngon', 'Phường 1, TX, Duyên Hải, Trà Vinh', '06:00:00', 9, '19:00:00', NULL, NULL),
(10, 'Đặc sản Việt', '  Chuyên bán các loại đặc sản đặc biệt là trái quách, loại trái cây nhìn vào thì có vẻ là chẳng có gì bắt mắt nhưng lại là món khiến người ăn ấn tượng vì hương vị.', '97 Lê Quốc Hưng, P.12, Q.4, Tp.HCM', '07:00:00', 7, '21:00:00', NULL, NULL),
(11, 'Vựa Chuối - Mít Diễm Châu', 'Chuyên bán các loại trái cây, đặc biệt là món trái cây đặc sản của tỉnh là chuối tá quạ khổng lồ', 'Lê Lợi, Phường 1, Trà Vinh', '06:00:00', 10, '22:00:00', NULL, NULL),
(12, 'Chả hoa Năm Thụy', 'Chuyên bán món chả hoa nổi tiếng với những nguyên liệu khác biệt không lẫn vào đâu được', 'Số 44 Phạm Thái Bường, Phường 3, thành phố Trà Vinh', '06:00:00', 11, '21:00:00', NULL, NULL),
(13, 'Xái Pấu Chịt Sa', 'Chuyên kinh doạnh Củ cải muối Chịt Sa hay còn gọi là Xá Pấu Chịt Sa', 'Hoà ân, Cầu Kè, Trà Vinh', '06:00:00', 12, '17:30:00', NULL, NULL),
(15, 'Cô Hường 2', 'Chuyên bán các loại bánh tét bánh ú nổi tiếng đặc sản của tỉnh Trà Vinh', 'Số 37, ấp Hương Phụ A, Đa Lộc, Châu Thành, Trà Vinh', '05:00:00', 14, '20:00:00', NULL, NULL),
(16, 'Quán cháo cá lóc Vân Anh', 'Chuyên phục vụ món cháo ám được nấu từ nguyên liệu chính là cá lóc theo phương pháp chế biến đặc trung mang đậm dấu ấn Trà Vinh', 'Thạch Thị Thanh, Trà Vinh', '08:00:00', 16, '21:00:00', NULL, NULL),
(17, 'CSSX cốm dẹp Hùng Tuyền', '  Chuyên bán món cốm dẹp độc đáo, người dùng có thể mua về và tự chế biến tùy theo sở thích của mình', ' Số 2 Lý Tự Trọng, phường 1, TP. Trà Vinh, T. Trà Vinh.', '07:00:00', 15, '21:00:00', NULL, NULL),
(18, 'Bún mắm 476', 'Chuyên phục vụ món bún mắm được nấu từ những nguyên liệu tươi mới tạo nên hương vị lôi cuốn ', '476A Đ. Nguyễn Đáng, khóm 3, Trà Vinh', '08:00:00', 17, '20:00:00', NULL, NULL),
(19, 'Cù lao Tân Quy', 'Tại đây có các vườn trồng trái cây đặc biệt là chôm chôm, du khách có thể chọn mua tại vườn theo ý muốn', 'Cù lao Tân Quy, An Phú Tân, Cầu Kè, Trà Vinh', '06:00:00', 18, '21:00:00', NULL, NULL),
(50, 'Bún nước lèo Cô Ba', '<p>K&iacute;nh mời qu&yacute; kh&aacute;ch đến thưởng thức tại qu&aacute;n B&uacute;n Nước L&egrave;o C&ocirc; Ba tr&ecirc;n đường Mười Ch&iacute;n Th&aacute;ng Năm, Phường 1, th&agrave;nh phố Tr&agrave; Vinh. B&uacute;n nước l&egrave;o Tr&agrave; Vinh l&agrave; một m&oacute;n ăn d&acirc;n d&atilde; của địa phương, với hương vị đặc biệt.</p>\r\n', 'Đường Mười Chín Tháng Năm, Phường 1, Trà Vinh', '06:30:00', 1, '19:30:00', '2023-05-02.jpg', NULL),
(51, 'Bún nước lèo Dũng Chưởng', '', '94a Đ. Đồng Khởi, Phường 6, Trà Vinh', '10:00:00', 1, '18:30:00', '2023-06-05.jpg', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hinh_anh`
--

CREATE TABLE `hinh_anh` (
  `id` int(11) NOT NULL,
  `hinh_anh` text DEFAULT NULL,
  `mon_an_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `hinh_anh`
--

INSERT INTO `hinh_anh` (`id`, `hinh_anh`, `mon_an_id`) VALUES
(1, 'banhcanh.jpg', 3),
(2, 'banhu.jpg', 14),
(3, 'bunnuocleo.jpg', 1),
(4, 'caimuoi.jpg', 12),
(5, 'chuoi.jpg', 10),
(6, 'chuu.jpg', 2),
(7, 'dua.jpg', 5),
(8, 'hoa.jpg', 11),
(9, 'nuocmam.jpg', 9),
(10, 'quach.jpg', 7),
(11, 'suong.jpg', 4),
(12, 'tet.jpg', 8),
(13, 'tomkho.jpg', 6),
(15, 'comdep.jpg', 15),
(16, 'chaoam.jpg', 16),
(18, 'mam.jpg', 17),
(19, 'chom.jpg', 18),
(22, 'trang.jpg', 20);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mon_an`
--

CREATE TABLE `mon_an` (
  `id` int(11) NOT NULL,
  `ten_mon_an` varchar(255) DEFAULT NULL,
  `gia_ban` varchar(50) DEFAULT NULL,
  `mo_ta` text DEFAULT NULL,
  `danh_muc_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `mon_an`
--

INSERT INTO `mon_an` (`id`, `ten_mon_an`, `gia_ban`, `mo_ta`, `danh_muc_id`) VALUES
(1, 'Bún Nước Lèo', '20.000 - 25.000 đồng', '<p>L&agrave; một đặc sản ẩm thực xuất xứ từ người Khmer, trong qu&aacute; tr&igrave;nh cộng cư của c&aacute;c d&acirc;n tộc Khmer, Việt, Hoa v&agrave; sự giao thoa trong ẩm thực, b&uacute;n nước l&egrave;o trở th&agrave;nh m&oacute;n ăn chung của c&aacute;c d&acirc;n tộc miền Nam Việt Nam với nguy&ecirc;n liệu, quy tr&igrave;nh chế biến v&agrave; thưởng thức, khẩu vị về cơ bản l&agrave; giống nhau.</p>\r\n\r\n<p>Nước l&egrave;o được nấu từ một số loại mắm th&ocirc;ng thường như mắm c&aacute; sặc, mắm c&aacute; linh,ri&ecirc;ng người Khmer thường nấu bằng mắm b&ograve; h&oacute;c (pro-hốk) c&aacute; k&egrave;o, c&aacute; l&oacute;c hoặc lươn. Mắm b&ograve; h&oacute;c xuất xứ từ người Khmer đ&atilde; lan rộng đến văn h&oacute;a ẩm thực của cộng đồng người Việt miền Nam Việt Nam. C&aacute;c loại c&aacute; nước ngọt loại nhỏ như c&aacute; l&oacute;c, c&aacute; r&ocirc;, c&aacute; sặc, c&aacute; k&egrave;o đều c&oacute; thể l&agrave;m mắm v&agrave; quy tr&igrave;nh l&agrave;m mắm về cơ bản l&agrave; giống nhau: c&aacute; để cho chết v&agrave; hơi ươn, ủ muối theo tỷ lệ nhất định, sấy kh&ocirc; theo c&aacute;ch để v&agrave;o bao vải v&agrave; dằn cho rỏ nước. Nước chảy c&oacute; nồng độ muối v&agrave; đạm cao, c&oacute; thể d&ugrave;ng l&agrave;m nước mắm, c&ograve;n x&aacute;c c&aacute; cho v&agrave;o hũ phơi chừng ba th&aacute;ng l&agrave; th&agrave;nh con mắm ăn được.</p>\r\n\r\n<p>Những con mắm c&aacute; được r&atilde; trong nước, gia th&ecirc;m củ sả đập dập, ớt băm nhuyễn để lấy hương vị, ng&atilde;i b&uacute;n (một loại củ giống củ nghệ, m&agrave;u hơi đậm hơn nghệ) d&ugrave;ng để khử m&ugrave;i tanh của mắm v&agrave; n&ecirc;m đường, bột ngọt cho vừa ăn. C&oacute; thể d&ugrave;ng nước dừa xi&ecirc;m, thậm ch&iacute; cả một ch&uacute;t nước cốt dừa, gia th&ecirc;m v&agrave;o nồi nước l&egrave;o thay thế cho đường.</p>\r\n', 1),
(2, 'Chù Ụ Rang Me', '100.000 - 120.000 đồng / 500g', '<p>Tr&agrave; Vinh l&agrave; miền đất kh&ocirc;ng chỉ thu h&uacute;t nhiều du kh&aacute;ch bốn phương, v&igrave; cảnh đẹp thơ mộng. M&agrave; nơi đ&acirc;y cũng biết đến từ những m&oacute;n ăn ngon đặc sắc, mang đậm hương vị của v&ugrave;ng qu&ecirc; s&ocirc;ng nước. Nếu Ba kh&iacute;a được biết l&agrave; đặc sản của Bến Tre th&igrave; Tr&agrave; Vinh ch&ugrave; ụ rang me l&agrave; một trong những m&oacute;n &ldquo;hot&rdquo;, hầu hết c&aacute;c nh&agrave; h&agrave;ng tại đ&acirc;y đều c&oacute; trong menu.</p>\r\n\r\n<p>Ch&ugrave; ụ l&agrave; một động vật gi&aacute;p x&aacute;c thuộc họ nh&agrave; cua. Nếu nh&igrave;n lần đầu, ch&uacute;ng ta thường nhầm lẫn n&oacute; l&agrave; con Ba kh&iacute;a. Nhưng th&acirc;n h&igrave;nh ch&ugrave; ụ lại cục mịch v&agrave; khả năng di chuyển của n&oacute; chậm chạp hơn con Ba kh&iacute;a rất nhiều. Gh&eacute; thăm Tr&agrave; vinh, được tham quan, trải nghiệm ở c&aacute;c b&atilde;i bồi nước lợ, hay ch&egrave;o thuyền đi dọc rừng ven biển, bạn sẽ bắt gặp ch&ugrave; ụ khắp nơi.</p>\r\n', 4),
(3, 'Bánh Canh Bến Có', '25.000 - 35.000 đồng', '<p>B&aacute;nh canh l&agrave; một m&oacute;n ăn Việt Nam. B&aacute;nh canh c&oacute; nguồn gốc từ Đ&ocirc;ng Nam Bộ, sau đ&oacute; phổ biến khắp Việt Nam. B&aacute;nh canh bao gồm nước l&egrave;o được nấu từ t&ocirc;m, c&aacute; v&agrave; gi&ograve; heo th&ecirc;m gia vị t&ugrave;y theo từng loại b&aacute;nh canh. Sợi b&aacute;nh canh c&oacute; thể được l&agrave;m từ bột gạo, bột m&igrave;, bột năng hoặc bột sắn hoặc bột gạo pha bột sắn. B&aacute;nh được l&agrave;m từ bột được c&aacute;n th&agrave;nh tấm v&agrave; cắt ra th&agrave;nh sợi bự v&agrave; ngắn hoặc se tr&ograve;n th&agrave;nh cọng. B&aacute;nh được bỏ v&agrave;o nồi nước d&ugrave;ng đ&atilde; hầm vừa đủ độ v&agrave; đợi cho ch&iacute;n tới. Gia vị cho b&aacute;nh canh thay đổi t&ugrave;y theo m&oacute;n b&aacute;nh canh v&agrave; theo khẩu vị mỗi v&ugrave;ng. B&aacute;nh canh c&oacute; nhiều c&aacute;ch chế biến với c&aacute; đ&atilde; r&oacute;c xương, cua/ghẹ, bột lọc, chả c&aacute;, t&ocirc;m/thịt nhưng phổ biến nhất l&agrave; b&aacute;nh canh gi&ograve; heo.</p>\r\n', 1),
(4, 'Bún Suông', '35.000 - 40.000 đồng', '<p>B&uacute;n su&ocirc;ng c&ograve;n được gọi l&agrave; b&uacute;n đu&ocirc;ng. M&oacute;n ăn c&oacute; xuất xứ từ Tr&agrave; Vinh. Sở dĩ m&oacute;n ăn n&agrave;y c&oacute; t&ecirc;n gọi như vậy l&agrave; xuất ph&aacute;t từ chả t&ocirc;m vừa tươi ngon v&agrave; mềm mịn được tạo h&igrave;nh như những con đu&ocirc;ng. Sự hấp dẫn của m&oacute;n n&agrave;y ch&iacute;nh l&agrave; nước l&egrave;o mang đậm chất Tr&agrave; Vinh. Nước l&egrave;o kh&ocirc;ng trong m&agrave; c&oacute; m&agrave;u n&acirc;u đậm, bởi được th&ecirc;m một &iacute;t me v&agrave; tương hạt vừa tạo n&ecirc;n vị ngọt thanh lại vừa thoang thoảng hương thơm của tương rất hấp dẫn. M&oacute;n n&agrave;y hiện đang được ưa chuộng ở c&aacute;c tỉnh miền Nam, đặc biệt l&agrave; Th&agrave;nh phố Hồ Ch&iacute; Minh. L&agrave; một trong 10 m&oacute;n ngon được Tổ chức kỷ lục Việt Nam đề cử đạt gi&aacute; trị ẩm thực ch&acirc;u &Aacute; lần thứ 2 năm 2013.</p>\r\n', 1),
(5, 'Dừa Sáp', '100.000 đồng / trái', '<p>Dừa s&aacute;p, c&ograve;n gọi l&agrave; dừa đặc ruột, dừa kem, makapuno (Philippines) l&agrave; một ph&acirc;n lo&agrave;i dừa c&oacute; quả đặc ruột, cơm dừa d&agrave;y, mềm dẻo v&agrave; b&eacute;o hơn tr&aacute;i dừa thường, nước dừa đặc lại trong veo như sương sa. L&agrave; đặc sản duy nhất chỉ c&oacute; ở Tr&agrave; Vinh, Việt Nam, dừa được trồng nhiều ở giồng C&acirc;y Xanh, c&aacute;ch thị trấn Cầu K&egrave; (Tr&agrave; Vinh) khoảng 4 km.</p>\r\n', 3),
(6, 'Tôm Khô Vinh Kim', '1.300.000 đồng / kg', '<p>Nhắc đến thực phẩm được chế biến th&agrave;nh đồ kh&ocirc; th&igrave; T&ocirc;m Kh&ocirc; từ l&acirc;u đ&atilde; nổi tiếng v&agrave; trở th&agrave;nh một trong những đặc sản. Đặc biệt T&ocirc;m Kh&ocirc; Vinh Kim hay thương hiệu T&ocirc;m Kh&ocirc; Vinh Kim d&igrave; Hai Kh&acirc;m rất nổi tiếng ở Tr&agrave; Vinh cũng như trong nước v&agrave; l&agrave; Đặc Sản Tr&agrave; Vinh.</p>\r\n\r\n<p>T&ocirc;m kh&ocirc; Vinh Kim được chế biến từ con t&ocirc;m bạc đất được đ&aacute;nh bắt bằng l&uacute;, đ&aacute;y, x&agrave; ng&ocirc;m,&hellip; ở c&aacute;c c&aacute;nh đồng ở Vinh Kim, huyện Cầu Ngang, Tỉnh Tr&agrave; Vinh.</p>\r\n\r\n<p>T&ocirc;m kh&ocirc; Vinh Kim được chế biến qua nhiều c&ocirc;ng đoạn: Chọn con t&ocirc;m, luộc đ&uacute;ng lửa, phơi đ&uacute;ng c&aacute;ch v&agrave; đ&uacute;ng độ nắng. Để phơi t&ocirc;m kh&ocirc; đạt y&ecirc;u cầu, s&acirc;n phơi phải tr&aacute;ng bằng ximăng, đổ t&ocirc;m tr&ecirc;n s&acirc;n n&ecirc;n t&ocirc;m kh&ocirc; giữ nguy&ecirc;n m&agrave;u đỏ, kh&ocirc;ng bị bủn, g&atilde;y đ&acirc;y cũng l&agrave; b&iacute; quyết của l&agrave;ng nghề T&ocirc;m kh&ocirc; Vinh Kim, tạo được hương vị thơm ngon rất ri&ecirc;ng v&agrave; đậm đ&agrave; đặc trưng c&oacute; chất lượng vượt trội so với sản phẩm t&ocirc;m kh&ocirc; c&ugrave;ng loại từ c&aacute;c địa phương kh&aacute;c.</p>\r\n', 4),
(7, 'Trái Quách', '50.000 đồng / trái', '<p>Qu&aacute;ch l&agrave; loại c&acirc;y cao khoảng 7-8m, l&aacute; nhỏ v&agrave; th&acirc;n giống như c&acirc;y cần thăng, trồng khoảng 7 năm th&igrave; cho tr&aacute;i. L&aacute; d&agrave;i 25-35mm v&agrave; rộng 10-20mm. Tr&aacute;i c&oacute; đường k&iacute;nh 5&ndash;9 cm, cơm c&oacute; vị chua ngọt. Khi ch&iacute;n Qu&aacute;ch tự rụng, do c&oacute; vỏ cứng n&ecirc;n n&oacute; kh&oacute; đập vỡ khi rụng. Qu&aacute;ch c&oacute; h&igrave;nh cầu, m&agrave;u x&aacute;m loang lổ kiểu hạt li ti nh&igrave;n giống tr&aacute;i d&acirc;y c&aacute;m, phần thịt b&ecirc;n trong c&oacute; nhiều sợi cứng v&agrave; c&aacute;c hạt b&aacute;m tr&ecirc;n đ&oacute;.[5] Khi tr&aacute;i chưa ch&iacute;n phần thịt c&oacute; m&agrave;u trắng, khi ch&iacute;n phần thịt chuyển sang m&agrave;u n&acirc;u sậm đến đen. Nếu để qu&aacute; ch&iacute;n sẽ bị l&ecirc;n men như mật.</p>\r\n\r\n<p>Tr&aacute;i qu&aacute;ch l&agrave;m thức uống giải kh&aacute;t, theo y học d&acirc;n gian tr&aacute;i qu&aacute;ch c&ograve;n xanh xắt mỏng phơi kh&ocirc; d&ugrave;ng để chữa trị ti&ecirc;u chảy, tr&aacute;i ch&iacute;n chống t&aacute;o b&oacute;n, gi&uacute;p điều h&ograve;a ti&ecirc;u h&oacute;a. Tr&aacute;i qu&aacute;ch ch&iacute;n c&oacute; thể dầm nước đ&aacute; đường v&agrave; để ng&acirc;m rượu. Loại dầm đ&aacute; đường c&oacute; t&aacute;c dụng giải nhiệt.</p>\r\n', 3),
(8, 'Bánh Tét Trà Cuôn', '40.000 đồng / cái', '<p>B&aacute;nh t&eacute;t l&agrave; m&oacute;n ăn đặc trưng của người miền Nam trong ng&agrave;y Tết lẫn ng&agrave;y thường v&agrave; cả ng&agrave;y giỗ chạp. Ở miền T&acirc;y b&aacute;nh t&eacute;t c&oacute; nhiều loại: b&aacute;nh t&eacute;t truyền thống l&agrave;m từ nh&acirc;n đậu xanh v&agrave; thịt mỡ, b&aacute;nh t&eacute;t l&aacute; cẩm, b&aacute;nh t&eacute;t nh&acirc;n s&acirc;m,... đặc biệt nhất phải kể đến b&aacute;nh t&eacute;t Tr&agrave; Cu&ocirc;n - đặc sản v&ugrave;ng đất Tr&agrave; Vinh. B&aacute;nh t&eacute;t Tr&agrave; Cu&ocirc;n xuất ph&aacute;t từ một ấp t&ecirc;n gọi Tr&agrave; Cu&ocirc;n thuộc x&atilde; Kim H&ograve;a, huyện Cầu Ngang, Tr&agrave; Vinh, một địa phương c&oacute; đ&ocirc;ng đồng b&agrave;o Khmer sinh sống.&nbsp;</p>\r\n', 2),
(9, 'Nước Mắm Rươi', '110.000 đồng / lít', '<p>Tr&agrave; Vinh vốn nổi tiếng với nhiều đặc sản lạ miệng hấp dẫn. Ai đ&atilde; từng một lần đến đ&acirc;y sẽ nghe người d&acirc;n nơi đ&acirc;y kh&aacute;o nhau về một loại nước mắm đặc trưng của v&ugrave;ng n&agrave;y. Đ&oacute; ch&iacute;nh l&agrave; đặc sản nước mắm rươi.</p>\r\n\r\n<p>C&ocirc;ng thức l&agrave;m mắm rươi cũng đơn giản như nước mắm c&aacute; cơm hoặc c&aacute; linh, trung b&igrave;nh cứ một đ&ocirc;i rươi bằng 40 l&iacute;t khi mới vớt l&ecirc;n pha với muối hột c&ugrave;ng nước theo liều lượng nhất định, ủ hỗn hợp n&agrave;y trong lu để ngo&agrave;i trời.</p>\r\n\r\n<p>Ngo&agrave;i rươi l&agrave;m mắm cho c&aacute;c bữa ăn ch&iacute;nh trong ng&agrave;y, c&ograve;n được chế biến th&agrave;nh m&oacute;n ăn độc đ&aacute;o như chả rươi, bột rươi. V&igrave; mỗi năm chỉ mua được rươi trong một m&ugrave;a lại được xem như sản vật n&ecirc;n người d&acirc;n ở đ&acirc;y v&ocirc; c&ugrave;ng tr&acirc;n trọng, chỉ khi nh&agrave; c&oacute; kh&aacute;ch qu&yacute; mới đưa ra tiếp đ&atilde;i.</p>\r\n', 4),
(10, 'Chuối Tá Quạ', '25.000 đồng / kg', '<p>Chuối t&aacute;o quạ hay Chuối t&aacute; quạ, chuối nấu, chuối nấu ăn l&agrave; giống chuối trong chi chuối Musa, c&oacute; quả thường được d&ugrave;ng để nấu ăn. Giống chuối n&agrave;y thường chứa nhiều tinh bột, c&oacute; thể được ăn ch&iacute;n hoặc ăn sống. Nhiều loại chuối t&aacute;o quạ được gọi l&agrave; chuối trồng hay chuối xanh. Trong thực vật học, thuật ngữ &quot;chuối trồng&quot; chỉ được sử dụng cho c&aacute;c loại chuối trồng thật, trong khi c&aacute;c giống trồng gi&agrave;u tinh bột kh&aacute;c được sử dụng để nấu ăn được gọi l&agrave; &quot;chuối nấu ăn&quot;.True plantains l&agrave; giống c&acirc;y trồng thuộc Nh&oacute;m AAB, trong khi chuối nấu ăn l&agrave; bất kỳ giống chuối n&agrave;o thuộc nh&oacute;m AAB, AAA, ABB hoặc BBB. T&ecirc;n khoa học hiện được chấp nhận cho tất cả c&aacute;c giống c&acirc;y trồng trong c&aacute;c nh&oacute;m n&agrave;y l&agrave; Musa &times; paradisiaca. Chuối Fe&#39;i (Musa &times; troglodytarum) từ c&aacute;c đảo ở Th&aacute;i B&igrave;nh Dương, thường được ăn rang hoặc luộc, v&agrave; do đ&oacute; thường được gọi một c&aacute;ch kh&ocirc;ng ch&iacute;nh thức l&agrave; &quot;chuối n&uacute;i&quot;, nhưng ch&uacute;ng kh&ocirc;ng thuộc về bất kỳ lo&agrave;i n&agrave;o từ tất cả giống chuối hiện đại.</p>\r\n', 3),
(11, 'Chả Hoa Năm Thụy', '75.000 - 110.000 đồng', '<p>Chả hoa Năm Thụy l&agrave; một trong những đặc sản của đất Tr&agrave; Vinh.&nbsp;Kh&aacute;c với chả lụa truyền thống, chả hoa khi cắt ra tương tự như b&ocirc;ng hoa, ở giữa l&agrave; trứng muối, xung quanh l&agrave; nấm m&egrave;o, chả, cuối c&ugrave;ng l&agrave; lớp trứng g&agrave; đ&aacute;nh tan chi&ecirc;n th&agrave;nh tấm cuộn b&ecirc;n ngo&agrave;i.&nbsp;Hương vị thơm ngon, tinh tế đặc trưng, ph&ugrave; hợp khẩu vị nhiều người.&nbsp;Chả c&oacute; thể được g&oacute;i bằng l&aacute; chuối hoặc cho v&agrave;o t&uacute;i nhựa h&uacute;t ch&acirc;n kh&ocirc;ng.</p>\r\n\r\n<p>Nguy&ecirc;n liệu ch&iacute;nh để l&agrave;m Chả Hoa Trứng Muối Năm Thụy bao gồm da heo, chả, trứng muối, trứng chi&ecirc;n v&agrave; nấm m&egrave;o. Phần quan trọng g&oacute;p phần th&ecirc;m hương vị của Chả Hoa Năm Thụy l&agrave; c&ocirc;ng đoạn chế biến chả, chả được l&agrave;m bằng thịt heo tươi, sau đ&oacute; xay nhuyễn nhiều lần c&ugrave;ng với c&aacute;c gia vị. C&ocirc;ng đoạn phết chả phụ thuộc v&agrave;o kinh nghiệm của người chế biến, th&igrave; chả hoa năm thuỵ l&agrave;m ra mới dai ngon v&agrave; đậm đ&agrave;, mang đậm hương vị của đặc sản Tr&agrave; Vinh</p>\r\n', 4),
(12, 'Củ Cải Muối Chịt Sa', '160.000 đồng / kg', '<p>X&aacute;i Pấu l&agrave; t&ecirc;n gọi theo người Triều Ch&acirc;u, c&ograve;n người Việt gọi l&agrave; &ldquo;củ cải muối&rdquo;, một đặc sản tại v&ugrave;ng đất Cầu K&egrave;, tỉnh Tr&agrave; Vinh</p>\r\n\r\n<p>Để c&oacute; được X&aacute;i Pấu thơm ngon, nguy&ecirc;n liệu ch&iacute;nh l&agrave; củ cải trắng được lấy từ v&ugrave;ng đất giồng Cầu Ngang hay huyện Duy&ecirc;n Hải ven biển, củ cải mới chắc thịt nhưng quan trọng nhất l&agrave; b&iacute; quyết &ldquo;muối cải&rdquo; c&oacute; m&ugrave;i thơm đặc trưng, ăn gi&ograve;n, hương vị đậm đ&agrave;.</p>\r\n', 4),
(14, 'Bánh Ú Đa Lộc', '20.000 đồng / cái', '<p>B&aacute;nh &uacute; ở Đa Lộc c&oacute; nguồn gốc ở ấp Hương Phụ, x&atilde; Đa Lộc, huyện Ch&acirc;u Th&agrave;nh, tỉnh Tr&agrave; Vinh. B&aacute;nh &uacute; Đa Lộc c&oacute; truyền thống l&acirc;u đời, trở th&agrave;nh một m&oacute;n ăn quen thuộc của người d&acirc;n địa phương. Để c&oacute; c&aacute;i b&aacute;nh &uacute; đẹp v&agrave; ngon đ&ograve;i hỏi sự nhọc c&ocirc;ng cũng như sự kh&eacute;o l&eacute;o của người l&agrave;m, nguy&ecirc;n liệu ch&iacute;nh l&agrave;m b&aacute;nh &uacute; l&agrave; từ hạt nếp mộc mạc d&acirc;n d&atilde;, l&aacute; ng&oacute;t để b&aacute;nh c&oacute; m&agrave;u xanh tự nhi&ecirc;n, l&ograve;ng đỏ trứng hột vịt muối, thịt mỡ v&agrave; nh&acirc;n b&aacute;nh được l&agrave;m từ loại đậu xanh nấu ch&iacute;n, nghiền nhuyễn.</p>\r\n\r\n<p>Người Đa Lộc chuy&ecirc;n g&oacute;i b&aacute;nh &uacute; bằng l&aacute; chuối, d&aacute;ng h&igrave;nh v&agrave; m&agrave;u sắc của b&aacute;nh rất quan trọng. V&igrave; vậy, kỹ thuật g&oacute;i b&aacute;nh đ&ograve;i hỏi phải chuẩn từ h&igrave;nh khối lẫn g&oacute;c cạnh, sao cho b&aacute;nh thật kh&iacute;t, thật đều v&agrave; c&acirc;n đối. Ch&iacute;nh b&agrave;n tay kh&eacute;o l&eacute;o v&agrave; nguy&ecirc;n liệu chọn lọc rất kỹ đ&atilde; l&agrave;m cho B&aacute;nh &uacute; khi luộc ch&iacute;n c&oacute; m&agrave;u xanh l&aacute;, c&aacute;i b&aacute;nh dẻo qu&aacute;nh để lại tr&ecirc;n da b&aacute;nh ch&uacute;t xanh phơn phớt rất đẹp chỉ cần cắn một miếng th&ocirc;i m&agrave; như tận hưởng cả m&ugrave;i thơm đặc trưng của qu&ecirc; hương.</p>\r\n', 2),
(15, 'Cốm Dẹp', '15.000 - 20.000 đồng', '<p>Cốm dẹp l&agrave; một m&oacute;n ăn độc đ&aacute;o của người Khmer. Kh&ocirc;ng chỉ l&agrave; m&oacute;n ăn d&acirc;n d&atilde;, đ&acirc;y c&ograve;n l&agrave; m&oacute;n ăn mang &yacute; nghĩa t&acirc;m linh. Đậm n&eacute;t văn h&oacute;a truyền thống của d&acirc;n tộc Khmer. Nếu c&oacute; dịp về Tr&agrave; Vinh, S&oacute;c Trăng, An Giang trước m&ugrave;a gặt, bạn h&atilde;y thưởng thức cốm dẹp để biết th&ecirc;m hương vị cốm mới của người Khmer.</p>\r\n\r\n<p>Nếu ở H&agrave; Nội nổi tiếng với cốm l&agrave;ng V&ograve;ng th&igrave; người Khmer ở Tr&agrave; Vinh, S&oacute;c Trăng, An Giang cũng c&oacute; m&oacute;n cốm dẹp mời kh&aacute;ch phương xa. L&uacute;a nếp trước khi thu hoạch khoảng 10 ng&agrave;y c&ograve;n chưa gi&agrave; sẽ được gặt về. Tuốt lấy hạt ng&acirc;m nước nửa ng&agrave;y rồi vớt ra để r&aacute;o. Nếp kh&ocirc;ng ng&acirc;m qu&aacute; l&acirc;u sẽ l&agrave;m cốm nh&atilde;o, ng&acirc;m thời gian ngắn th&igrave; hạt nếp sẽ kh&ocirc; cứng.</p>\r\n', 2),
(16, 'Cháo Ám', '15.000 - 20.000 đồng', '<p>N&oacute;i về ch&aacute;o th&igrave; ẩm thực Việt Nam đ&atilde; rất phong ph&uacute; với ch&aacute;o l&ograve;ng, ch&aacute;o h&agrave;u,&hellip; nhưng c&oacute; lẽ&nbsp;ch&aacute;o &aacute;m&nbsp;l&agrave; m&oacute;n ăn m&agrave; nhiều người lần đầu nghe qua. Đ&acirc;y l&agrave; m&oacute;n ngon ở Tr&agrave; Vinh được người d&acirc;n địa phương v&agrave; c&aacute;c tỉnh l&acirc;n cận rất y&ecirc;u th&iacute;ch. Thực ra, ch&aacute;o &aacute;m l&agrave; m&oacute;n ch&aacute;o c&aacute; l&oacute;c &ndash; m&oacute;n ăn kh&aacute; quen thuộc với người S&agrave;i G&ograve;n v&agrave; c&aacute;c tỉnh Nam Bộ. Tuy nhi&ecirc;n ở Tr&agrave; Vinh, m&oacute;n ch&aacute;o n&agrave;y lại c&oacute; c&aacute;i t&ecirc;n đặc biệt l&agrave; ch&aacute;o &aacute;m. Nhiều người địa phương kể lại rằng, t&ecirc;n gọi th&uacute; vị kia l&agrave; do m&oacute;n ăn n&agrave;y c&oacute; c&aacute;ch chế biến cầu kỳ, c&ocirc;ng phu mới ngon, mới hấp dẫn. Với những c&ocirc; g&aacute;i ng&agrave;y đầu về nh&agrave; chồng c&ograve;n bỡ ngỡ m&agrave; phải nấu ch&aacute;o n&agrave;y th&igrave; quả thực l&agrave; điều &aacute;m ảnh. C&oacute; lẽ v&igrave; thế m&agrave; ch&aacute;o c&aacute; l&oacute;c được gọi t&ecirc;n ch&aacute;o &aacute;m như một c&aacute;ch &ldquo;nhắc kh&eacute;o&rdquo; đến t&agrave;i nấu ăn của người nội tướng trong mỗi gia đ&igrave;nh.</p>\r\n\r\n<p>M&oacute;n ch&aacute;o c&aacute; l&oacute;c n&agrave;y vốn dĩ kh&ocirc;ng c&oacute; qu&aacute; nhiều bước chế biến. Nhưng để nấu được một nồi ch&aacute;o ngon, đ&ograve;i hỏi người nấu phải c&oacute; kinh nghiệm trong việc chọn gạo, chọn c&aacute; v&agrave; cả c&aacute;ch kết hợp những gia vị, tạo n&ecirc;n được vị ngọt thanh đặc trưng chỉ c&oacute; ở m&oacute;n ngon Tr&agrave; Vinh n&agrave;y m&agrave; th&ocirc;i.&nbsp;&nbsp;</p>\r\n', 1),
(17, 'Bún Mắm', '35.000 - 40.000 đồng', '<p>B&uacute;n mắm l&agrave; một trong số c&aacute;c m&oacute;n ăn đặc sản của miền t&acirc;y Nam bộ Việt Nam. B&uacute;n mắm được nấu bằng mắm c&aacute; linh hay c&aacute; sặc, đ&acirc;y l&agrave; c&aacute;c loại c&aacute; c&oacute; nhiều tại miền T&acirc;y, đặc biệt l&agrave; c&aacute;c tỉnh Tr&agrave; Vinh v&agrave; S&oacute;c Trăng.</p>\r\n\r\n<p>Trước đ&acirc;y, b&uacute;n mắm l&agrave; một m&oacute;n ăn d&acirc;n d&atilde; v&agrave; được chế biến giản dị, n&oacute; thường được d&ugrave;ng cho những bữa ăn nhanh. Con mắm được nấu r&atilde; ra, sau đ&oacute; lọc lấy phần nước trong, cho th&ecirc;m một &iacute;t đường, h&agrave;nh sả v&agrave; d&ugrave;ng chung với b&uacute;n. Về sau để tăng hương vị v&agrave; độ phong ph&uacute; cho b&uacute;n mắm, người ta cho th&ecirc;m miếng c&aacute;, t&ocirc;m, mực v&agrave; heo quay.</p>\r\n\r\n<p>N&eacute;t đặc trưng của b&uacute;n mắm l&agrave; nước l&egrave;o. Nước l&egrave;o thường được l&agrave;m từ mắm c&aacute; linh hay c&aacute; sặc v&agrave; t&ugrave;y theo mỗi người m&agrave; c&oacute; sự n&ecirc;m nếm kh&aacute;c nhau để m&oacute;n b&uacute;n c&oacute; m&ugrave;i thơm đậm đ&agrave;. B&uacute;n mắm thường được ăn với rau muống chẻ, cọng b&ocirc;ng s&uacute;ng, rau đắng, bắp chuối, k&egrave;o n&egrave;o, gi&aacute; v&agrave; rau diếp c&aacute; (dấp c&aacute;).</p>\r\n', 1),
(18, 'Chôm Chôm', '20000 - 30000 đồng / kg', '<p>Ch&ocirc;m ch&ocirc;m l&agrave; lo&agrave;i c&acirc;y thường xanh c&oacute; thể ph&aacute;t triển đến chiều cao 12&ndash;20 m. C&aacute;c l&aacute; mọc so le với nhau, d&agrave;i 10&ndash;30 cm, l&aacute; c&oacute; h&igrave;nh l&ocirc;ng chim với 3 đến 11 l&aacute; rời. Những b&ocirc;ng hoa c&oacute; k&iacute;ch thước nhỏ 2,5&ndash;5 mm. C&acirc;y ch&ocirc;m ch&ocirc;m c&oacute; thể l&agrave; c&acirc;y đực (chỉ sản sinh t&uacute;i phấn hoa do đ&oacute; kh&ocirc;ng đậu quả) hoặc c&acirc;y c&aacute;i (chỉ c&oacute; hoa với chức năng giống c&aacute;i) hoặc lưỡng t&iacute;nh (sản xuất hoa c&aacute;i với một tỷ lệ nhỏ hoa đực).</p>\r\n\r\n<p>Quả h&igrave;nh tr&ograve;n hoặc h&igrave;nh bầu dục, d&agrave;i 3&ndash;6 cm (hiếm khi đến 8 cm) v&agrave; rộng 3&ndash;4 cm, quả được kết v&agrave; lớn dần trong một ch&ugrave;m c&oacute; 10&ndash;20 quả. Vỏ c&oacute; m&agrave;u hơi đỏ (hiếm khi c&oacute; m&agrave;u cam hoặc v&agrave;ng) v&agrave; được bao phủ bởi c&aacute;c gai thịt mềm dẻo, do đ&oacute; c&oacute; t&ecirc;n &#39;l&ocirc;ng&#39;. C&aacute;c gai thịt g&oacute;p phần v&agrave;o qu&aacute; tr&igrave;nh tho&aacute;t hơi nước của quả, c&oacute; thể ảnh hưởng đến chất lượng của quả.</p>\r\n\r\n<p>Phần thịt quả l&agrave; vỏ mềm bao bọc hạt, trong mờ, hơi trắng hoặc hồng nhạt, c&oacute; vị ngọt, chua nhẹ.Hạt đơn d&agrave;i 1&ndash;1,3 cm, c&oacute; vết nứt đ&ocirc;i m&agrave;u trắng ở đ&aacute;y hạt. Hạt mềm v&agrave; chứa c&aacute;c phần chất b&eacute;o b&atilde;o h&ograve;a v&agrave; kh&ocirc;ng b&atilde;o h&ograve;a bằng nhau,[10] hạt c&oacute; thể được nấu ch&iacute;n v&agrave; ăn. Quả đ&atilde; bốc vỏ c&oacute; thể d&ugrave;ng để ăn sống hoặc nấu ch&iacute;n.</p>\r\n', 3),
(20, 'Bánh Tráng Trà Vi', '6.000 đồng / cái', '<p>Chắc hẳn nhiều người đ&atilde; qu&aacute; quen thuộc với c&aacute;c m&oacute;n ăn được chế biến kết hợp với b&aacute;nh tr&aacute;ng bởi ở bất cứ đ&acirc;u m&oacute;n b&aacute;nh n&agrave;y đều được ưa chuộng. B&aacute;nh Tr&aacute;ng Tr&agrave; Vinh c&oacute; nguồn g&oacute;c từ l&agrave;ng nghề l&agrave;m b&aacute;nh nổi tiếng ở x&oacute;m Tr&agrave; Vi với hơn 70 hộ gia đ&igrave;nh sống bằng nghề l&agrave;m b&aacute;nh tr&aacute;ng.</p>\r\n\r\n<p>B&aacute;nh Tr&aacute;ng Tr&agrave; Vi chủ yếu l&agrave;m bằng gạo trắng, b&aacute;nh được l&agrave;m theo phương ph&aacute;p thủ c&ocirc;ng n&ecirc;n c&oacute; m&agrave;u hơi ng&agrave;, mỏng, ngon, dẻo. B&aacute;nh tr&aacute;ng Tr&agrave; Vi c&oacute; mặt trong bữa ăn của người d&acirc;n Tr&agrave; Vinh v&agrave; c&aacute;c tỉnh th&agrave;nh kh&aacute;c, kh&ocirc;ng những thế b&aacute;nh tr&aacute;ng c&ograve;n c&oacute; mặt khắp c&aacute;c nh&agrave; h&agrave;ng, qu&aacute;n ăn lớn ở tr&ecirc;n to&agrave;n l&atilde;nh thổ Việt Nam.</p>\r\n\r\n<p>B&aacute;nh Tr&aacute;ng c&oacute; thể chế biến th&agrave;nh nhiều m&oacute;n ăn như: b&aacute;nh tr&aacute;ng cuốn thịt heo, b&aacute;nh tr&aacute;ng nướng, b&aacute;nh tr&aacute;ng trộn,...bảo đảm chỉ cần thưởng thức một lần l&agrave; bạn c&oacute; thể nhớ ngay đến hương vị của từng m&oacute;n b&aacute;nh tr&aacute;ng.</p>\r\n', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoi_dung`
--

CREATE TABLE `nguoi_dung` (
  `id` int(11) NOT NULL,
  `ten_dang_nhap` varchar(255) DEFAULT NULL,
  `mat_khau` text DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `dia_chi` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nguoi_dung`
--

INSERT INTO `nguoi_dung` (`id`, `ten_dang_nhap`, `mat_khau`, `email`, `dia_chi`) VALUES
(1, 'tunhu', '202cb962ac59075b964b07152d234b70', 'dieptunhu2003@gmail.com', 'Ấp Ô Đùng, Hiếu Tử, Tiểu Cần, Trà Vinh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguyen_lieu`
--

CREATE TABLE `nguyen_lieu` (
  `id` int(11) NOT NULL,
  `ten_nguyen_lieu` varchar(255) DEFAULT NULL,
  `mon_an_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nguyen_lieu`
--

INSERT INTO `nguyen_lieu` (`id`, `ten_nguyen_lieu`, `mon_an_id`) VALUES
(1, 'Cá lóc đồng', 3),
(2, 'Mắm bò hóc', 1),
(3, 'Sả', 1),
(4, 'Bắp chuối', 1),
(5, 'Thịt ba chỉ', 4),
(6, 'Củ cải trắng', 4),
(7, 'Giò heo', 4),
(8, 'Tôm sú', 4),
(9, 'Bánh canh làm từ bột gạo', 3),
(10, 'Xương heo', 3),
(11, 'Lòng heo (tim, gan, cật, ...)', 3),
(12, 'Nếp sáp', 8),
(13, 'Thịt nạc, mỡ heo', 8),
(14, 'Lòng đỏ trứng vịt muối', 8),
(15, 'Gạo nếp', 14),
(16, 'Đậu xanh đãi vỏ', 14),
(17, 'Vỏ bông gòn', 14),
(18, 'Con chù ụ', 2),
(19, 'Nước cốt me', 2),
(20, 'Cá lóc', 16),
(21, 'Rau đắng', 16),
(22, 'Gạo rang', 16),
(23, 'Cốm dẹp', 15),
(24, 'Nước cốt dừa', 15),
(25, 'Dừa khô', 15),
(27, 'Tôm', 17),
(28, 'Bạch tuột', 17),
(29, 'Thịt quay', 17),
(30, 'Gạo trắng', 20),
(31, 'Nước', 20),
(32, 'Chôm chôm', 18),
(33, 'Dừa sáp', 5),
(34, 'Trái quách', 7),
(35, 'Chuối tá quạ', 10),
(36, 'Củ cải trắng', 12),
(37, 'Tôm tươi', 6);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `danh_muc_mon_an`
--
ALTER TABLE `danh_muc_mon_an`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `diem_phuc_vu`
--
ALTER TABLE `diem_phuc_vu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mon_an_id` (`mon_an_id`);

--
-- Chỉ mục cho bảng `hinh_anh`
--
ALTER TABLE `hinh_anh`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mon_an_id` (`mon_an_id`);

--
-- Chỉ mục cho bảng `mon_an`
--
ALTER TABLE `mon_an`
  ADD PRIMARY KEY (`id`),
  ADD KEY `danh_muc_id` (`danh_muc_id`);

--
-- Chỉ mục cho bảng `nguoi_dung`
--
ALTER TABLE `nguoi_dung`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ten_dang_nhap` (`ten_dang_nhap`);

--
-- Chỉ mục cho bảng `nguyen_lieu`
--
ALTER TABLE `nguyen_lieu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mon_an_id` (`mon_an_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `danh_muc_mon_an`
--
ALTER TABLE `danh_muc_mon_an`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `diem_phuc_vu`
--
ALTER TABLE `diem_phuc_vu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT cho bảng `hinh_anh`
--
ALTER TABLE `hinh_anh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `mon_an`
--
ALTER TABLE `mon_an`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `nguoi_dung`
--
ALTER TABLE `nguoi_dung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `nguyen_lieu`
--
ALTER TABLE `nguyen_lieu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `diem_phuc_vu`
--
ALTER TABLE `diem_phuc_vu`
  ADD CONSTRAINT `diem_phuc_vu_ibfk_1` FOREIGN KEY (`mon_an_id`) REFERENCES `mon_an` (`id`);

--
-- Các ràng buộc cho bảng `hinh_anh`
--
ALTER TABLE `hinh_anh`
  ADD CONSTRAINT `hinh_anh_ibfk_1` FOREIGN KEY (`mon_an_id`) REFERENCES `mon_an` (`id`);

--
-- Các ràng buộc cho bảng `mon_an`
--
ALTER TABLE `mon_an`
  ADD CONSTRAINT `mon_an_ibfk_2` FOREIGN KEY (`danh_muc_id`) REFERENCES `danh_muc_mon_an` (`id`);

--
-- Các ràng buộc cho bảng `nguyen_lieu`
--
ALTER TABLE `nguyen_lieu`
  ADD CONSTRAINT `nguyen_lieu_ibfk_1` FOREIGN KEY (`mon_an_id`) REFERENCES `mon_an` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
