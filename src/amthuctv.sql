-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 26, 2023 lúc 12:47 PM
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
  `hinh_anh` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_estonian_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `diem_phuc_vu`
--

INSERT INTO `diem_phuc_vu` (`id`, `ten_quan`, `gioi_thieu_chung`, `dia_chi_quan`, `gio_mo_cua`, `mon_an_id`, `gio_dong_cua`, `hinh_anh`) VALUES
(1, 'Quán Cây Sung', '   Chuyên phục vụ món bún nước lèo được nấu từ một nguyên liệu đặc trưng của tỉnh Trà Vinh đó là mắm bò hóc.', ' 676 Võ Nguyên Giáp, Phường 8, Trà Vinh.', '07:00:00', 1, '19:00:00', NULL),
(2, 'Quán Ngọc Tiền', ' Chuyên phục vụ các món ngon được làm từ con Chù Ụ', 'Hàm Tân, Trà Cú, Trà Vinh', '08:00:00', 2, '22:20:00', NULL),
(3, 'Bánh canh Bến Có Út Hảo', ' Chuyên phục vụ món bánh canh nổi tiếng đặc trưng của tỉnh Trà Vinh', 'QL53, Nguyệt Hoá, Châu Thành, Trà Vinh.', '06:00:00', 3, '18:00:00', NULL),
(4, 'Bún suông Hùi Yến', '  Chuyên phục vụ món bún suông thơm ngon nức tiếng, được kết hợp từ những nguyên liệu vô cùng đặc biệt và tươi mới', '56 Hùng Vương, Phường 3, Trà Vinh', '06:00:00', 4, '20:30:00', NULL),
(5, 'Dừa sáp Cầu Kè Duy Nhất', 'Chuyên bán dừa sáp, món trái cây nổi tiếng của huyện Cầu Kè thuộc tỉnh Trà Vinh', 'Ấp Vĩnh Trường, Châu Thành, Trà Vinh.', '06:00:00', 5, '23:00:00', NULL),
(6, 'Dừa sáp Thi Thi', ' Chuyên bán món trái cây là dừa sáp đặc trưng của tỉnh, được trồng chủ yếu ở huyện Cầu Kè vùng đất của cây ăn quả.', 'Số 171 Quốc lộ 60, khóm 3, Trà Vinh', '06:00:00', 5, '23:00:00', NULL),
(7, 'Tôm khô Vinh Kim Dì Hai Khâm', 'Chuyên bán món tôm khô nhà làm nổi tiếng của huyện Cầu Ngang', 'Ấp Chà Và, xã Vinh Kim, huyện Cầu Ngang, tỉnh Trà Vinh', '06:00:00', 6, '23:00:00', NULL),
(8, 'Cửa hàng bánh tét Trà Cuôn', 'Chuyên bán món bánh tét Trà Cuôn đặc sản trứ danh của tỉnh Trà Vinh', '72/4 đường Phạm Ngũ Lão, phường 1, Trà Vinh', '07:00:00', 8, '22:00:00', NULL),
(9, 'Nước mắm Rươi Long Vinh', 'Chuyên bán món nước chấm để ăn kèm cùng các món ăn giúp các món ăn có thêm hương vị thơm ngon', 'Phường 1, TX, Duyên Hải, Trà Vinh', '06:00:00', 9, '19:00:00', NULL),
(10, 'Đặc sản Việt', '  Chuyên bán các loại đặc sản đặc biệt là trái quách, loại trái cây nhìn vào thì có vẻ là chẳng có gì bắt mắt nhưng lại là món khiến người ăn ấn tượng vì hương vị.', '97 Lê Quốc Hưng, P.12, Q.4, Tp.HCM', '07:00:00', 7, '21:00:00', NULL),
(11, 'Vựa Chuối - Mít Diễm Châu', 'Chuyên bán các loại trái cây, đặc biệt là món trái cây đặc sản của tỉnh là chuối tá quạ khổng lồ', 'Lê Lợi, Phường 1, Trà Vinh', '06:00:00', 10, '22:00:00', NULL),
(12, 'Chả hoa Năm Thụy', 'Chuyên bán món chả hoa nổi tiếng với những nguyên liệu khác biệt không lẫn vào đâu được', 'Số 44 Phạm Thái Bường, Phường 3, thành phố Trà Vinh', '06:00:00', 11, '21:00:00', NULL),
(13, 'Xái Pấu Chịt Sa', 'Chuyên kinh doạnh Củ cải muối Chịt Sa hay còn gọi là Xá Pấu Chịt Sa', 'Hoà ân, Cầu Kè, Trà Vinh', '06:00:00', 12, '17:30:00', NULL),
(14, 'Làng nghề bánh tráng Trà Vi', ' Chuyên bán món bánh tráng nổi tiếng ở Trà Vinh, chủ yếu làm bằng gạo trắng, bánh được làm theo phương pháp thủ công.', 'xã Việt Hóa, Châu Thành, Trà Vinh', '06:00:00', 13, '21:00:00', NULL),
(15, 'Cô Hường 2', 'Chuyên bán các loại bánh tét bánh ú nổi tiếng đặc sản của tỉnh Trà Vinh', 'Số 37, ấp Hương Phụ A, Đa Lộc, Châu Thành, Trà Vinh', '05:00:00', 14, '20:00:00', NULL),
(16, 'Quán cháo cá lóc Vân Anh', 'Chuyên phục vụ món cháo ám được nấu từ nguyên liệu chính là cá lóc theo phương pháp chế biến đặc trung mang đậm dấu ấn Trà Vinh', 'Thạch Thị Thanh, Trà Vinh', '08:00:00', 16, '21:00:00', NULL),
(17, 'CSSX cốm dẹp Hùng Tuyền', '  Chuyên bán món cốm dẹp độc đáo, người dùng có thể mua về và tự chế biến tùy theo sở thích của mình', ' Số 2 Lý Tự Trọng, phường 1, TP. Trà Vinh, T. Trà Vinh.', '07:00:00', 15, '21:00:00', NULL),
(18, 'Bún mắm 476', 'Chuyên phục vụ món bún mắm được nấu từ những nguyên liệu tươi mới tạo nên hương vị lôi cuốn ', '476A Đ. Nguyễn Đáng, khóm 3, Trà Vinh', '08:00:00', 17, '20:00:00', NULL),
(19, 'Cù lao Tân Quy', 'Tại đây có các vườn trồng trái cây đặc biệt là chôm chôm, du khách có thể chọn mua tại vườn theo ý muốn', 'Cù lao Tân Quy, An Phú Tân, Cầu Kè, Trà Vinh', '06:00:00', 18, '21:00:00', NULL),
(46, 'Cô Tư', 'cghfyukjg', 'vhtf', '04:06:00', 6, '06:05:00', ''),
(47, 'Bún nước lèo', 'iugbui', 'nmbliu', '23:05:00', 1, '06:36:00', ''),
(48, 'Cô Tư', 'gjgu', 'jkgukik', '03:52:00', 4, '03:16:00', '623beec6ee77a4acd5482fd93645add4.jpg');

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
(14, 'trang.jpg', 13),
(15, 'comdep.jpg', 15),
(16, 'chaoam.jpg', 16),
(18, 'mam.jpg', 17),
(19, 'chom.jpg', 18);

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
(1, 'Bún Nước Lèo', '20.000 - 25.000 đồng', 'Bún nước lèo sở hữu nước dùng vô cùng đậm đà, kết hợp với thịt quay và chả giò thơm nứt mũi. Ngoài ra đừng quên ăn kèm rau sống để làm tăng hương vị món ăn.\" \" ', 1),
(2, 'Chù Ụ Rang Me', '100.000 - 120.000 đồng / 500g', 'Chù ụ rang me là một trong những đặc sản nhiều người nên thử qua khi đến với Trà Vinh. Chù ụ thuộc họ cua, thân vuông nhỏ và có đôi mắt hơi sụp. Món ăn là sự kết hợp với vị chua ngọt của nước sốt me khiến ai thử rồi cũng phải thích mê.', 4),
(3, 'Bánh Canh Bến Có', '25.000 - 35.000 đồng', 'Bánh canh Bến Có là món ăn được nhiều du khách biết đến của Trà Vinh. Nước hầm xương ngọt thanh được ninh trong nhiều giờ kết hợp với hương vị đặc trưng của rau ngò và tiêu xay.', 1),
(4, 'Bún Suông', '35.000 - 40.000 đồng', 'Bún suông hay còn gọi là bún đuông. Món ăn có tên gọi đặc biệt này là do chả tôm được tạo hình như những con đuông. Món ăn là sự kết hợp của nhiều hương vị khác nhau như vị ngọt, vị chua và vị cay, đậm chất Trà Vinh.', 1),
(5, 'Dừa Sáp', '100.000 đồng / trái', 'Dừa sáp là một đặc sản hiếm có và thơm ngon tại Trà Vinh mà bạn không thể bỏ lỡ. Dừa sáp có điểm đặc biệt là cơm rất dẻo và thơm, rất khác với các loại dừa thông thường.', 3),
(6, 'Tôm Khô Vinh Kim', '1.300.000 đồng / kg', 'Nếu đến đặc sản Trà Vinh và có dịp ghé huyện Cầu Ngang, bạn đừng quên mua về cho gia đình và người thân đặc sản tôm khô ngon nức tiếng nhé! Tôm khô Vinh Kim tự hào là sản phẩm được nhiều người dân Trà Vinh và du khách yêu thích bởi độ ngọt tự nhiên của tôm, đồng thời thịt tôm khá dày và chắc.', 4),
(7, 'Trái Quách', '50.000 đồng / trái', 'Trái quách chính là một loại trái cây độc đáo mà bạn nên thử khi đến với Trà Vinh. Trái quách tuy có vỏ ngoài hơi cứng nhưng khi tách vỏ ra và lấy phần thịt và hạt bên trong mang đi chế biến thì vô cùng hấp dẫn. Bạn có thể dùng trái quách làm quách dầm sinh tố, quách trộn với mắm cá sặc hay quách dùng để ngâm rượu.', 3),
(8, 'Bánh Tét Trà Cuôn', '40.000 đồng / cái', 'Bánh tét Trà Cuôn là một đặc sản trứ danh của tỉnh Trà Vinh. Bạn không chỉ mua được bánh tét vào dịp Tết mà đến với Trà Vinh mùa nào cũng có bánh tét bởi nơi đây có hẳn một địa danh làm bánh tét quanh năm đó là Trà Cuôn. Bánh tét thơm dẻo và có nhân đa dạng, vô cùng béo ngậy đậm đà.', 2),
(9, 'Nước Mắm Rươi', '110.000 đồng / lít', 'Nước mắm rươi Long Vinh là một trong những đặc sản Trà Vinh có nguyên liệu là những con rươi được người dân Trà Vinh trực tiếp đánh bắt và chế biến, ủ thành nước mắm. Nước mắm rươi có độ đạm cao, khi dùng ăn có vị đậm đà và hương thơm nhất định.', 4),
(10, 'Chuối Tá Quạ', '25.000 đồng / kg', 'Chuối Tá Quạ là một loại trái cây khổng lồ nổi tiếng của Trà Vinh. Thông thường, một quả chuối có trọng lượng khoảng 500gr. Ngoài việc có thể trực tiếp thưởng thức chuối Tá Quạ thì bạn có thể mua chuối về làm quà cũng rất tốt nhé!', 3),
(11, 'Chả Hoa Năm Thụy', '75.000 - 110.000 đồng', 'Chả hoa Năm Thụy là một đặc sản Trà Vinh làm quà được nhiều người yêu thích, nó có hương vị đặc biệt, được chế biến dựa trên công thức chả truyền thống, kết hợp thêm nấm mèo và nhân trứng muối hấp dẫn. ', 4),
(12, 'Củ Cải Muối Chịt Sa', '160.000 đồng / kg', 'Củ cải muối Chịt Sa là món ăn độc đáo của người dân Trà Vinh. Với cách làm dân dã và hương vị đậm đà, đây là món ăn không thể thiếu trong những dịp lễ Tết của người dân nơi đây và cũng chính là món đặc sản mà ai đến với Trà Vinh cũng nên tìm mua về thử.', 4),
(13, 'Bánh Tráng Trà Vi', '6.000 đồng / cái', 'Điểm đặc biệt của bánh tráng Trà Vi là được làm từ bột gạo xay, trải qua rất nhiều công đoạn khá cầu kỳ, công phu và phơi trực tiếp dưới ánh nắng giòn tan của đất trời Trà Vinh. Vì vậy bánh tráng khi nướng lên rất thơm và có độ giòn nhất định. ', 2),
(14, 'Bánh Ú Đa Lộc', '20.000 đồng / cái', 'Bánh ú Đa Lộc hay còn có tên gọi khác là bánh bá trạng, là một món ăn quen thuộc của người dân Trà Vinh. Đặc biệt, bánh ú là món quà không thể thiếu của người dân mỗi ngày Tết Đoan Ngọ mùng 5 tháng 5 âm lịch.', 2),
(15, 'Cốm Dẹp', '15.000 - 20.000 đồng', 'Cốm dẹp khi ăn sẽ được trộn cùng với dừa nạo sợi, đường và ít nước dừa. Tất cả được trộn đều lại với nhau để sau khoảng 2h là có thể ăn, khi ăn sẽ cảm nhận được miếng cốm mềm, thịt dừa giòn giòn, ngọt ngọt. Ít ai tưởng tượng được từ những nguyên liệu dân giã như vậy lại có thể tạo nên hương vị đi vào lòng người.', 2),
(16, 'Cháo Ám', '15.000 - 20.000 đồng', 'Đây là món ăn với cái tên nghe khá lạ với thực khách, nhưng thực chất món này chính là cháo cá lóc được chế biến mang hương vị riêng của người Trà Vinh. Nguyên liệu cá lóc được lựa chọn kỹ càng, đảm bảo tươi ngon, mang đi luộc và tách bỏ xương, xào cùng hành để tăng độ thơm ngon.', 1),
(17, 'Bún Mắm', '35.000 - 40.000 đồng', 'Là món ăn được kết hợp của nhiều nguyên liệu đặc biệt như: tôm, bạch tuột, thịt quay, trứng lộn ốp mề, huyết, ớt nhồi chả, chả cá tạo nên hương vị đậm đà, hấp dẫn người dùng', 1),
(18, 'Chôm Chôm', '20000 - 30000 đồng / kg', 'Là loại trái cây ngọt mát, mọng nước với phần vỏ màu đỏ và thịt màu trắng', 3);

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
(29, 'Thịt quay', 17);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT cho bảng `hinh_anh`
--
ALTER TABLE `hinh_anh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `mon_an`
--
ALTER TABLE `mon_an`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `nguoi_dung`
--
ALTER TABLE `nguoi_dung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `nguyen_lieu`
--
ALTER TABLE `nguyen_lieu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

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
