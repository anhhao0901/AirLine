-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2022 at 05:51 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `airline`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 NOT NULL,
  `password` varchar(100) CHARACTER SET utf8 NOT NULL,
  `admin_name` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `email`, `password`, `admin_name`) VALUES
(1, 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'Tiểu Băng');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_baiviet`
--

CREATE TABLE `tbl_baiviet` (
  `baiviet_id` int(11) NOT NULL,
  `tenbaiviet` varchar(100) CHARACTER SET utf8 NOT NULL,
  `tomtat` text CHARACTER SET utf8 NOT NULL,
  `noidung` text CHARACTER SET utf8 NOT NULL,
  `danhmuctin_id` int(11) NOT NULL,
  `baiviet_image` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_baiviet`
--

INSERT INTO `tbl_baiviet` (`baiviet_id`, `tenbaiviet`, `tomtat`, `noidung`, `danhmuctin_id`, `baiviet_image`) VALUES
(12, 'Cháy máy với 5 địa điểm check-in sống ảo Cần thơ 2023', 'Không mang một vẻ đẹp xa hoa lộng lẫy như các thành phố du lịch khác của Việt Nam, tuy nhiên, thành phố Cần Thơ vẫn toát lên một nét đẹp thanh bình, trữ tình với cảnh sắc đặc trưng của miền quê sông nước miền Tây. Bạn sẽ chụp cháy máy với danh sách 10 địa điểm check in sống ảo Cần Thơ đẹp mà BHlines gợi ý dưới đây.', '<p style=\"margin-top:6.0pt; margin-right:0in; margin-bottom:.0001pt; margin-left:0in; margin:0in 0in 8pt\"><span style=\"font-size:22px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><strong><span style=\"line-height:120%\"><span style=\"color:black\">1. Cầu đi bộ</span></span></strong>&nbsp;</span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt 160px;\"><img alt=\"\" src=\"http://localhost/Airline/uploads/images/tin1_1(1).jpg\" style=\"width: 800px; height: 450px;\" /></p>\r\n\r\n<p style=\"margin-top:6.0pt; margin-right:0in; margin-bottom:.0001pt; margin-left:0in; margin:0in 0in 8pt\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">Tuy chỉ mới xuất hiện từ năm 2016 nhưng cầu đi bộ này đã trở thành địa điểm yêu thích và cho ra đời những bức hình “so deep” của giới trẻ. Nơi đây còn được mệnh danh là “cầu tình yêu” khi đã chứng kiến những buổi hẹn hò đầy lãng mạn của biết bao cặp đôi. Giữa cầu còn có hình ảnh 2 đóa hoa sen tượng trưng cho vẻ đẹp của miền sông nước cùng hình dáng chữ S mềm mại.</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-top:6.0pt; margin-right:0in; margin-bottom:.0001pt; margin-left:0in; margin:0in 0in 8pt\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><strong><span style=\"line-height:120%\"><span style=\"color:black\">Địa chỉ:</span></span></strong><span style=\"line-height:120%\"><span style=\"color:black\">&nbsp;Hai Bà Trưng, Ninh Kiều, Cần Thơ.</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-top:6.0pt; margin-right:0in; margin-bottom:.0001pt; margin-left:0in; margin:0in 0in 8pt\"><strong><span style=\"font-size:22px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">2.&nbsp;Bến Ninh Kiều</span></span></span></span></span></strong></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt 400px;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><em><span style=\"line-height:120%\"><span style=\"color:black\">&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; “Cần Thơ có bến Ninh Kiều</span></span></em></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt 400px;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><em><span style=\"line-height:120%\"><span style=\"color:black\">Có dòng sông đẹp với nhiều giai nhân”</span></span></em>&nbsp;</span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt 240px;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><img alt=\"\" src=\"http://localhost/Airline/uploads/images/tin1_1_1.jpg\" style=\"width: 600px; height: 450px;\" /></span></span></span></p>\r\n\r\n<p style=\"margin-top:6.0pt; margin-right:0in; margin-bottom:.0001pt; margin-left:0in; margin:0in 0in 8pt\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">Bến Ninh Kiều không chỉ nổi tiếng là một cảnh sắc hữu tình đi vào thơ, vào nhạc, mà còn là biểu tượng của xứ Tây Đô. &nbsp;Nằm nép mình bên bờ sông Hậu hiền hòa, bến Ninh Kiều mang đến hương vị sông nước, là nơi tụ tập của nhiều bạn trẻ đến ngắm cảnh. Xung quanh khu vực bến Ninh Kiều có cả một con phố ăn uống với nhiều đặc sản và đồ ăn vặt. Do đó bến Ninh Kiều là địa điểm sống ảo và tụ tập của nhiều bạn trẻ với bộ sưu tập đủ phong cách khác nhau.</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-top:6.0pt; margin-right:0in; margin-bottom:.0001pt; margin-left:0in; margin:0in 0in 8pt\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">&nbsp;<strong>Địa chỉ:</strong>&nbsp;106 Hai Bà Trưng, Ninh Kiều, Cần Thơ.</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-top:6.0pt; margin-right:0in; margin-bottom:.0001pt; margin-left:0in; margin:0in 0in 8pt\"><strong><span style=\"font-size:22px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">3.&nbsp;Chợ nổi Cái Răng&nbsp;</span></span></span></span></span></strong></p>\r\n\r\n<p style=\"margin-top:6.0pt; margin-right:0in; margin-bottom:.0001pt; margin-left:0in; margin:0in 0in 8pt\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">Đã đến Cần Thơ là phải ghé thăm Chợ nổi Cái Răng.&nbsp;Nếu muốn ghé chợ thì nên lưu ý đi từ sớm các bạn nhé, vì khoảng 9h là chợ tan. Thời điểm họp chợ tấp nập, cũng là lúc có được nhiều tấm hình đẹp là vào khoảng 5-6h.&nbsp;</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-top:6.0pt; margin-right:0in; margin-bottom:.0001pt; margin-left:0in; margin:0in 0in 8pt\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">Hãy thử dậy sớm để đi chợ và lưu lại những bức ảnh độc đáo ở đây nhé!</span></span></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt 280px;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\"><img alt=\"\" src=\"http://localhost/Airline/uploads/images/tin1_1_2.jpg\" style=\"width: 600px; height: 450px;\" /></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-top:6.0pt; margin-right:0in; margin-bottom:.0001pt; margin-left:0in; margin:0in 0in 8pt\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">&nbsp;<strong>Địa chỉ:</strong>&nbsp;46 Hai Bà Trưng, Tân An, Ninh Kiều, Cần Thơ.</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-top:6.0pt; margin-right:0in; margin-bottom:.0001pt; margin-left:0in; margin:0in 0in 8pt\"><strong><span style=\"font-size:22px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">4.&nbsp;Nhà cổ Bình Thủy</span></span></span></span></span></strong></p>\r\n\r\n<p style=\"margin-top:6.0pt; margin-right:0in; margin-bottom:.0001pt; margin-left:0in; margin:0in 0in 8pt\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">Nếu yêu thích vẻ đẹp cổ kính và cho ra những bức hình “có 1 – 0 – 2” thì đừng quên ghé thăm nhà cổ Bình Thủy. Ngôi nhà này đã có lịch sử hàng trăm năm và vẫn giữ lại được những nét kiến trúc thời Pháp lúc mới xây dựng.</span></span></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt 280px;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\"><img alt=\"\" src=\"http://localhost/Airline/uploads/images/tin1_1_3.jpg\" style=\"width: 600px; height: 449px;\" /></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-top:6.0pt; margin-right:0in; margin-bottom:.0001pt; margin-left:0in; margin:0in 0in 8pt\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">Từng chi tiết, đường nét chạm khắc và nội thất bên trong đều thấm màu hoài cổ. Vẻ đẹp và giá trị lịch sử của nhà cổ Bình Thủy đã thu hút hàng ngàn khách du lịch trong và ngoài nước đến tham quan.</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-top:6.0pt; margin-right:0in; margin-bottom:.0001pt; margin-left:0in; margin:0in 0in 8pt\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">&nbsp;<strong>Địa chỉ:</strong>&nbsp;144 Bùi Hữu Nghĩa, Bình Thủy, Cần Thơ.</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-top:6.0pt; margin-right:0in; margin-bottom:.0001pt; margin-left:0in; margin:0in 0in 8pt\"><strong><span style=\"font-size:22px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">5.&nbsp;Chùa Ông</span></span></span></span></span></strong></p>\r\n\r\n<p style=\"margin-top:6.0pt; margin-right:0in; margin-bottom:.0001pt; margin-left:0in; margin:0in 0in 8pt\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">Nằm ngay trung tâm thành phố Cần Thơ, nhìn ra Bến Ninh Kiều lộng gió, chùa Ông – còn có tên Quảng Triệu Hội Quán – là ngôi chùa cổ hiếm hoi của thành phố Cần Thơ giữ được nguyên hiện trạng từ ngày lập chùa. Công trình 114 tuổi mang đậm dấu ấn văn hóa dân tộc Hoa này được công nhận là di tích lịch sử văn hóa cấp quốc gia vào năm 1993.</span></span></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt 200px;\"><img alt=\"\" src=\"http://localhost/Airline/uploads/images/tin1_1_4(1).jpg\" style=\"width: 801px; height: 450px;\" /></p>\r\n\r\n<p style=\"margin-top:6.0pt; margin-right:0in; margin-bottom:.0001pt; margin-left:0in; margin:0in 0in 8pt\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">Với kiến trúc đẹp cổ kính pha lẫn tâm linh nên vào dịp lễ tết các bạn trẻ thường đến dâng hương cầu an và chụp những bức hình tuyệt đẹp với ngôi chùa nổi tiếng này.</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-top:6.0pt; margin-right:0in; margin-bottom:.0001pt; margin-left:0in; margin:0in 0in 8pt\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">&nbsp;<strong>Địa chỉ:</strong>&nbsp;32, Hai Bà Trưng, Tân An, Ninh Kiều, Cần Thơ.</span></span></span></span></span></p>\r\n', 3, 'tin1.jpg'),
(13, 'Đừng bỏ qua những địa chỉ mua sắm này khi du lịch Thái Lan', 'Không chỉ có Hong Kong, Malaysia hay Paris, Milan mới là những thiên đường mua sắm nổi tiếng. Ngay tại Đông Nam Á, những tín đồ shopping cũng có thể dễ dàng đắm chìm trong hàng muôn vạn sắc màu của các món đồ, các mặt hàng để thỏa mãn đam mê của mình. Hãy thẳng tiến những địa chỉ mua sắm khi du lịch Thái Lan bạn nhé.', '<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:22px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><strong><span style=\"line-height:120%\"><span style=\"color:black\">1. Trung tâm mua sắm Siam Paragon</span></span></strong></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt 240px; text-align: justify;\"><span style=\"font-size:22px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><strong><span style=\"line-height:120%\"><span style=\"color:black\"><img alt=\"\" src=\"http://localhost/Airline/uploads/images/tin1_2_1.jpg\" style=\"width: 719px; height: 400px;\" /></span></span></strong></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">Khi nhắc đến shopping ở xứ sở Chùa Vàng chắc chắn không thể không nhắc tới cái tên Siam Paragon thuộc thủ đô Bangkok. Với diện tích mặt bằng 80.000 mét vuông, lớn nhất trong số các trung tâm thương mại của Thái Lan, Siam Paragon là nơi hội tụ của vô số các thương hiệu cao cấp và nổi tiếng như Chanel, Versace, Dolce & Gabbana, Escada, Gucci,… Đặc biệt tại trung tâm này còn có nhà hát Siam Opera với sức chứa gần 2.000 người.</span></span></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">Nếu bạn không phải là một người có kinh tế thì đừng lo. Siam Paragon không chỉ có các mặt hàng cao cấp mà còn bày bán rất nhiều mặt hàng bình dân, làm hài lòng mọi đối tượng khách mua sắm tại đây.</span></span></span></span></span><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"> </span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:22px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><strong><span style=\"line-height:120%\"><span style=\"color:black\">2. Trung tâm mua sắm Central World</span></span></strong></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt 140px; text-align: justify;\"><span style=\"font-size:22px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><strong><span style=\"line-height:120%\"><span style=\"color:black\"><img alt=\"\" src=\"http://localhost/Airline/uploads/images/tin1_2_2.jpg\" style=\"width: 900px; height: 300px;\" /></span></span></strong></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"> </p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">Cũng là trung tâm thương mại nổi tiếng nhưng Central World lại mang sắc màu cá tính của riêng mình. Đó là một tổ hợp các cửa hàng thời trang cùng rạp chiếu phim, khu ẩm thực, khu giải trí và cả cửa hàng miễn thuế. </span></span></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">Ghé thăm Central World, bạn không chỉ thỏa mãn nhu cầu mua sắm mà còn thuận tiện vui chơi giải trí ngay bên trong trung tâm, không mất quá nhiều thời gian để di chuyển cũng như chọn lựa nơi vui chơi, ăn uống.</span></span></span></span></span><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"> </span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:22px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><strong><span style=\"line-height:120%\"><span style=\"color:black\">3. Trung tâm thời trang Platinum</span></span></strong></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt 200px; text-align: justify;\"><img alt=\"\" src=\"http://localhost/Airline/uploads/images/tin1_2_3(1).jpg\" style=\"width: 800px; height: 450px;\" /></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"> </p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">Siam Paragon - trung tâm mua sắm nổi tiếng nhất tại Thái Lan</span></span></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">Mặc dù không “đóng mác” xa hoa và tráng lệ như Siam Paragon, nhưng các tín đồ mua sắm cũng không thể bỏ quên trung tâm Platinum. Điểm thú vị ở nơi đây không chỉ là phong cách thời trang luôn bắt kịp xu hướng của thời đại, mà còn ở mức giá vô cùng hợp lý. Các mặt hàng ở Platinum theo đánh giá của các du khách là hầu hết thấp hơn so với thị trường bên ngoài. Như vậy, đây sẽ là địa chỉ yêu thích dành cho nhiều đối tượng khách mua sắm. </span></span></span></span></span><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"> </span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:22px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><strong><span style=\"line-height:120%\"><span style=\"color:black\">4. Các khu chợ Thái Lan nổi tiếng</span></span></strong></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">Để có thể hiểu nhiều hơn về thị trường mua sắm cũng như phong cách, đời sống của người dân Thái đừng nên chỉ ghé thăm các trung tâm thương mại tráng lệ. Bạn nhất định hãy tới các khu chợ của Thái Lan bởi ở đây chứa đựng vô vàn điều thú vị và độc đáo. </span></span></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt 40px; text-align: justify;\"><span style=\"font-size:20px;\"><strong><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">- Chợ cuối tuần Chatuchak</span></span></span></span></strong></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt 200px; text-align: justify;\"><span style=\"font-size:20px;\"><strong><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\"><img alt=\"\" src=\"http://localhost/Airline/uploads/images/tin1_2_4.jpg\" style=\"width: 808px; height: 450px;\" /></span></span></span></span></strong></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"> </p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">Nói đến chợ ở Thái Lan thì cái tên đầu tiên phải nhắc tới chính là chợ cuối tuần Chatuchak. Nói là chợ cuối tuần bởi phiên chợ ở đây chỉ diễn ra vào thứ 7 và chủ nhật hàng tuần. Bạn có thể mua sắm đủ các loại quần áo, giày dép, phụ kiện, thậm chí là cả đồ nội thất, cây cảnh cũng có. Điểm đặc biệt ở đây chính là, nếu chịu khó tìm tòi, bạn có thể sở hữu được những món đồ không chỉ rẻ mà còn cực độc và đẹp đấy.</span></span></span></span></span><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"> </span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt 40px; text-align: justify;\"><span style=\"font-size:20px;\"><strong><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">- Chợ Or Tor Kor</span></span></span></span></strong></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt 200px; text-align: justify;\"><span style=\"font-size:20px;\"><strong><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\"><img alt=\"\" src=\"http://localhost/Airline/uploads/images/tin1_2_5.jpg\" style=\"width: 822px; height: 400px;\" /></span></span></span></span></strong></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:107%\"><span style=\"color:black\">Chợ Or Tor Kor nổi tiếng ở Thái Lan là địa chỉ nhập khẩu và buôn bán các loại rau củ quả. Không chỉ vậy, nếu bạn là tín đồ của các món ăn đường phố thì nhất định không thể bỏ qua địa chỉ này đâu nhé. Nơi đây là thiên đường của các loại đồ ăn vặt, trong đó có những món cực đỉnh như: cà ri Thái, thịt heo chiên…</span></span></span></span></p>\r\n', 3, 'tin1.2.png'),
(14, 'Top 6 thứ quà gây thương nhớ của Hà Nội mỗi khi thu sang', 'Liệu rằng bạn có biết những món ngon mùa thu Hà Nội được bao người thương nhớ là gì? Nếu có ý định du lịch Hà Nội vào đúng dịp thu sang, đừng bỏ qua bài viết này của Elines nhé, bởi vì khám phá ẩm thực cũng là một trải nghiệm thú vị đó!', '<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><strong><span style=\"font-size:22px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">1. Cốm xanh – Thức quà quý đại diện cho mùa thu thủ đô</span></span></span></span></span></strong></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">Nói đến văn hóa ẩm thực Hà Nội, những người am hiểu chắc chắn sẽ nói đến cốm như một điều rất tự nhiên. Cốm là của riêng Hà Nội, là một thức ăn vặt rất “độc” được lưu giữ bao đời nay rồi. “Hà Nội mùa thu, hoa sữa phơi hương, xanh màu cốm mới...\".</span></span></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt 120px; text-align: justify;\"><img alt=\"\" src=\"http://localhost/Airline/uploads/images/tin1_3_11.jpg\" style=\"width: 938px; height: 450px;\" /></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span new=\"\" roman=\"\" style=\"font-family: \" times=\"\">Cốm xanh không phải là món sơn hào hải vị, ấy vậy mà vẫn luôn thu hút sự chú ý của mọi người đến thế. Nếu có dịp đến thủ đô vào đúng ngày thu sang, khi đi loanh quanh khắp những tuyến phố, bạn sẽ dễ dàng nhìn thấy hình ảnh các bà, các cô gánh trên vai món ngon mùa thu Hà Nội bình dị nhưng hấp dẫn này đó.&nbsp;</span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:22px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><b><span style=\"line-height:120%\"><span style=\"color:black\">2. Sấu chín - một món quà thu của Hà Nội gây lưu luyến</span></span></b></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt 160px; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><img alt=\"\" src=\"http://localhost/Airline/uploads/images/tin1_3_2.jpg\" style=\"width: 781px; height: 450px;\" /></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">Cứ độ thu sang, người Hà Nội lại nhớ đến thứ quà thời trân mộc mạc, giản dị. Trái sấu chín vàng ươm, mỡ màng không còn vị chua chát của trái sấu non mà lẫn vị ngọt thanh, chua nhẹ và giữ được độ giòn, mùi thơm đặc trưng. Sấu chín vàng được gọt lớp vỏ bên ngoài, dầm với đường, muối và ớt bột trở thành thức quà đặc biệt trong những thức quà Hà Nội.</span></span></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:22px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><b><span style=\"line-height:120%\"><span style=\"color:black\">3 Chả rươi – Món ngon mùa thu Hà Nội nếu không nhanh chân sẽ chẳng thể thưởng thức</span></span></b></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt 240px; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><img alt=\"\" src=\"http://localhost/Airline/uploads/images/tin1_3_3.jpg\" style=\"width: 675px; height: 450px;\" /></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">Rươi sau khi mang về sẽ đem đi sơ chế, chiên cùng trứng và thịt heo băm, thêm tí hành lá lại càng đậm đà và hấp dẫn. Những miếng chả được chiên trong chảo dầu sôi già nên có lớp vỏ bên ngoài vàng ươm bắt mắt nhưng phần thịt heo cùng rươi bên trong vẫn còn giữ được độ mọng nước hoàn hảo. </span></span></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">Tuy nhiên, bởi vì mùa rươi tương đối ngắn ngày và chỉ xuất hiện vào mùa thu, thế nên giá thành của món ăn này cũng tương đối nhỉnh hơn một xíu. Thế nhưng, để có thể thưởng thức trọn vẹn hương vị của món ngon mùa thu Hà Nội thì quả thật cũng rất xứng đáng đúng không bạn nhỉ?</span></span></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:22px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><b><span style=\"line-height:120%\"><span style=\"color:black\">4. Bánh Tôm Hồ Tây - Đặc Sản đi dọc thời gian của Người Hà Nội</span></span></b></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">Thuở xưa, bánh tôm được gánh trên những gánh hàng rong bán dọc theo con đường Cổ Ngư (nay gọi là đường Thanh Niên) và không biết từ bao giờ món ăn chơi này đã trở thành món ăn đắt giá mà mỗi du khách đến với nơi đây đều muốn nếm thử một lần.</span></span></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">Từng chiếc bánh tôm Hồ Tây được chiên trong chảo dầu sôi già thêm có lớp vỏ giòn tan, khi dọn ra phục vụ thực khách vẫn còn nóng hôi hổi rất ngon. Ngay từ lần đầu tiên thưởng thức, bạn sẽ có thể dễ dàng cảm nhận được độ giòn của bột bánh, chút ngọt của tôm tươi còn nguyên vỏ nên ăn rất vui miệng.&nbsp;Dạo quanh hồ Tây hóng gió, trò chuyện và nhâm nhi chút bánh tôm giòn tan thì quả thật là một trải nghiệm tuyệt vời mà BH Elines.vn tin rằng sẽ thật đáng tiếc nếu như bạn bỏ lỡ.</span></span></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:22px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><b><span style=\"line-height:120%\"><span style=\"color:black\">5. Bún ốc nguội</span></span></b></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt 240px; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><img alt=\"\" src=\"http://localhost/Airline/uploads/images/tin1_3_4.jpg\" style=\"width: 674px; height: 450px;\" /></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">Bún ốc nguội là một nét ẩm thực rất riêng của đất Hà Thành mà bạn khó có thể tìm thấy món này ở bất kỳ nơi nào khác. Ngay ở Hà Nội, để tìm một quán bún ốc nguội thật ngon cũng rất khó, chỉ đếm trên đầu ngón tay.</span></span></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">Được ví von là “nàng thơ” của ẩm thực mùa thu Hà Nội, bún ốc là món ăn tuy trông có vẻ đơn giản nhưng hương vị hóa ra lại chẳng giản đơn tí nào.&nbsp;</span></span></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">Gói gọn trong bát bún nhỏ ấy là hương vị ngọt thanh của nước dùng, chút dai giòn sần sật của thịt ốc tươi và chút bùi của sợi bún trắng ngần. Tất cả hứa hẹn mang đến cho thực khách những trải nghiệm thú vị nếu như có dịp thưởng thức món ngon mùa thu Hà Nội này khi ghé thăm thủ đô.&nbsp;</span></span></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:22px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><b><span style=\"line-height:120%\"><span style=\"color:black\">6. Cà phê trứng</span></span></b></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt 240px; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><img alt=\"\" src=\"http://localhost/Airline/uploads/images/tin1_3_5.jpg\" style=\"width: 678px; height: 450px;\" /></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">Dường như Hà Nội là “cái nôi” của món cà phê béo ngậy với hương thơm lựng quyến rũ ấy. Chút đậm đà của cà phê phin vừa pha, kết hợp với hương vị béo béo của trứng gà, tất cả hứa hẹn mang đến cho thực khách những trải nghiệm ẩm thực khó quên.</span></span></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">Sẽ không khó để bạn có thể tìm thấy một cửa hàng bán món cà phê trứng tại các con phố ở thủ đô. Thế nhưng nếu muốn được thưởng thức hương vị chuẩn chỉnh của món ngon mùa thu Hà Nội này, Café Giảng, Café Đinh, Café phố cổ, v.v. là những cái tên bạn có thể cân nhắc.</span></span></span></span></span></p>\r\n', 3, 'tin1.3.jpg'),
(15, 'Điều kiện nhập cảnh Việt Nam trong giai đoạn phòng chống dịch Covid-19', '', '<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:22px;\"><strong><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">1. Đối tượng:</span></span></span></span></strong></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">Hành khách quốc tịch Việt Nam</span></span></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">Hành khách là người nước ngoài, người Việt nam định cư ở nước ngoài cùng thân nhân mang giấy tờ nhập cảnh hợp lệ (thẻ thường trú, thẻ tạm trú, thị thực, giấy miễn thị thực còn giá trị) được phép nhập cảnh vào Việt Nam. Những hành khách này không cần phải làm lại thủ tục kiểm tra nhân sự cấp thị thực/ giấy miễn thị thực, không cần xin phê duyệt chủ trương nhập cảnh của bộ, ngành, địa phương.</span></span></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">Miễn thị thực cho công dân các nước: Cộng Hòa liên bang Đức, Cộng hòa Pháp, Cộng hòa I-ta-li-a, Vương quốc Tây Ban Nha, Liên hiệp Vương quốc Anh và Bắc Ai-len, Liên bang Nga, Nhật Bản, Đại Hàn Dân Quốc, Vương quốc Đan Mạch, Vương quốc Thụy Điển, Vương quốc Na-uy, Cộng hòa Phần Lan và Cộng hòa Bê-la-rút khi nhập cảnh Việt Nam với thời hạn tạm trú 15 ngày kể từ ngày nhập cảnh, không phân biệt loại hộ chiếu, mục đích nhập cảnh, trên cơ sở đáp ứng đầy đủ các điều kiện theo quy định của pháp luật Việt Nam. Hiệu lực áp dụng từ ngày 15/03/2022 đến hết ngày 14/03/2025. </span></span></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">Phục hồi việc miễn thị thực cho người nước ngoài theo các điều ước quốc tế mà Việt Nam là thành viên hoặc miễn thị thực trên cơ sở có đi có lại <span style=\"color:black\"></span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:22px;\"><strong><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">2. Trước khi nhập cảnh vào Việt Nam</span></span></span></span></strong></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">Yêu cầu về tiêm phòng: Không yêu cầu phải có giấy xác nhận tiêm phòng. </span></span></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">Khai báo y tế: Hành khách nhập cảnh Việt Nam không cần khai báo y tế từ ngày 27/04/2022.</span></span></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">Yêu cầu xét nghiệm: Không yêu cầu xét nghiệm nhanh/PCR từ ngày 15/05/2022.</span></span></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt 160px; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\"><img alt=\"\" src=\"http://localhost/Airline/uploads/images/tin2_1.jpg\" style=\"width: 800px; height: 450px;\" /></span></span></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:22px;\"><strong><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">3. Sau khi nhập cảnh vào Việt Nam</span></span></span></span></strong></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">- Theo dõi sức khỏe tại cửa khẩu sân bay đến:</span></span></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">Nếu khách du lịch có triệu chứng nhiễm SARS-CoV-2 (sốt; ho; đau họng; chảy nước mũi; nghẹt mũi; đau người; mệt mỏi; ớn lạnh; giảm hoặc mất vị giác; giảm hoặc mất khứu giác; đau; nhức đầu; tiêu chảy; khó thở; viêm đường hô hấp …) báo ngay cho cơ quan y tế tại cửa khẩu để thực hiện các biện pháp y tế theo quy định.</span></span></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">- Quy định cách ly:</span></span></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">Trong thời gian 10 ngày kể từ ngày nhập cảnh, hành khách tự theo dõi sức khỏe. Nếu có các triệu chứng nghi nhiễm SARS-CoV-2 (sốt; ho; đau họng; chảy nước mũi, nghẹt mũi; đau người, mệt mỏi, ớn lạnh; giảm hoặc mất vị giác; giảm hoặc mất khứu giác; đau, nhức đầu; tiêu chảy; khó thở; viêm đường hô hấp...) thì phải thông báo ngay cho cơ sở y tế nơi gần nhất để được hướng dẫn, quản lý kịp thời; thực hiện các biện pháp phòng bệnh: thường xuyên đeo khẩu trang, sát khuẩn tay bằng dung dịch sát khuẩn.</span></span></span></span></span></p>\r\n', 1, 'tin2.jpg');
INSERT INTO `tbl_baiviet` (`baiviet_id`, `tenbaiviet`, `tomtat`, `noidung`, `danhmuctin_id`, `baiviet_image`) VALUES
(16, 'Đi máy bay quốc tế cần giấy tờ gì và những lưu ý bạn nên biết', 'Lần đầu tiên đi máy bay ra nước ngoài chắc chắn bạn sẽ có rất nhiều điều cảm thấy bỡ ngỡ, ngoài việc lo nghĩ về việc sẽ phải giao tiếp như thế nào đối với những người nước ngoài, thì vấn đề mà nhiều người lo lắng khi lần đầu đi máy bay sang nước ngoài đó chính là vấn đề giấy tờ và thủ tục. Vậy thì khi đi máy bay quốc tế cần giấy tờ gì?', '<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">Theo như quy định của Bộ giao thông vận tải thì khi thực hiện chuyến bay quốc tế thì công dân Việt Nam phải xuất trình các loại giấy tờ sau tại cửa hải quan: Hộ chiếu; giấy thông hành; các loại giấy tờ khác có giá trị xuất, nhập cảnh theo quy định của pháp luật như thị thực rời, thẻ thường trú, thẻ tạm trí, thẻ căn cước công dân; đối với trẻ em không có họ chiểu riêng thì họ tên và ngày tháng năm sinh cùng với ảnh của bé cần được ghi và dán vào hộ chiếu của người đại diện của bé theo pháp luật như: cha đẻ, mẹ đẻ, cha nuôi mẹ nuôi hoặc người giám hộ theo pháp luật.</span></span></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:22px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><strong><span style=\"line-height:120%\"><span style=\"color:black\">Quy định về giấy tờ cần mang theo khi đi máy bay đối với hành khác từ 14 tuổi trở lên quốc tịch nước ngoài</span></span></strong></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">- Hộ chiếu nước ngoài, giấy thông hành, hoặc thị thực rời;</span></span></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">- Thẻ thường trú, thẻ tạm trú</span></span></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">- Các loại chứng minh thư/ thẻ căn cước công dân do cơ quan ngoại giao, cơ quan lãnh sự quán cấp cho thành viên của cơ quan đại diện ngoại giao, cơ quan lãnh sự, hay cơ quan đại diện của tổ chức quốc tế;</span></span></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt 160px; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\"><img alt=\"\" src=\"http://localhost/Airline/uploads/images/tin2_2_2.jpg\" style=\"width: 767px; height: 400px;\" /></span></span></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">- Giấy phép lái xe ô tô, mô tô do bộ giao thông vận tải của Việt Nam cấp.</span></span></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">- Thẻ kiểm soát an ninh tại cảng hàng không, sân bay loại có giá trị sử dụng lâu dài.</span></span></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">- Thẻ nhận dạng của các hãng hàng không quốc gia Việt Nam;</span></span></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">- Trong trường hợp hành khách bị mất hộ chiếu thì phải có công hàm của cơ quan ngoại giao, hay lãnh sự của quốc gia mà hành khách mang quốc tịch hoặc công văn của sở ngoại vụ xác nhận về nhân thân và việc bị mất hộ chiếu của hành khách, trên công văn có dán ảnh, dấu giáp lai. Công hàm, công văn xác nhận phải có giá trị sử dụng 30 ngày kể từ ngày xác nhận.</span></span></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:22px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><strong><span style=\"line-height:120%\"><span style=\"color:black\">Những loại giấy tờ cần mang theo khi đi máy bay đối với những công dân Việt Nam từ 14 tuổi trở lên</span></span></strong></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">- Hộ chiếu/ giấy thông hành;</span></span></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">- Thị thực rời hoặc thẻ thường trú, hoặc thẻ tạm trú;</span></span></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">- Thẻ căn cước công dân hoặc giấy chứng minh nhân dân; giấy chứng nhận của công an nhân dân, quân đội nhân dân Việt Nam.</span></span></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">- Thẻ đại biểu quốc hội/ thẻ đảng viên/ thẻ nhà báo/ giấy phép lái xe/&nbsp;</span></span></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">- Thẻ kiểm soát an ninh của cảng hàng không, sân bay loại có thời gian sử dụng lâu dài.</span></span></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">- Thẻ UB An Ninh hàng không dân dụng quốc tế.</span></span></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">- Thẻ nhận dạng của các hãng hàng không Việt Nam.</span></span></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">- Giấy xác nhận nhân thân do công an phường, xã nơi hành khách đăng ký thường trú hoặc tạm trú xác nhận (giấy xác nhận sẽ ghi đầy đủ những thông tin thể hiện nội dung như sau: cơ quan xác nhận, người xác nhận;ngày, tháng, năm xác nhận; họ và tên của người được, ngày tháng năm sinh, giới tính, quê quán, nơi thường trú của người được xác nhận; lý do xác nhận ); Trên các giấy xác nhận, chứng nhận này có dán ảnh, đóng dấu giáp lai và chỉ có giá trị trong 30 ngày kể từ ngày xác nhận, chứng nhận.</span></span></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">- Giấy chứng nhận vừa chấp hành xong bản án của cơ quan thẩm quyền.</span></span></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt 200px; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\"><img alt=\"\" src=\"http://localhost/Airline/uploads/images/tin2_2_1.jpg\" style=\"width: 600px; height: 450px;\" /></span></span></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:22px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><strong><span style=\"line-height:120%\"><span style=\"color:black\">&nbsp;Quy định về các loại giấy tờ cần mang theo đối với những hành khách trẻ em dưới 14 tuổi</span></span></strong></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">- Hộ chiếu riêng, nếu không có thì đi kèm theo hộ chiếu của cha mẹ, người đại diện theo pháp luật.</span></span></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">- Giấy khai sinh/ giấy chứng sinh ( đối với trường hợp dưới 1 tháng tuổi và chưa có giấy khai sinh).</span></span></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">- Đối trẻ em do các tổ chức xã hội đang nuôi dưỡng thì cần phải có giấy xác nhận của tổ chức xã hội nuôi dưỡng. Giấy xác nhận chỉ có thời hạn sử dụng trong 6 tháng kể từ ngày xác nhận.</span></span></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:22px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><strong><span style=\"line-height:120%\"><span style=\"color:black\">Điều kiện hợp lệ giấy tờ của hành khách khi đi máy bay</span></span></strong></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><strong><span style=\"line-height:120%\"><span style=\"color:black\">-&nbsp;</span></span></strong><span style=\"line-height:120%\"><span style=\"color:black\">Các loại giấy tờ mà hành khách mang theo cần phải là bản chính và phải còn giá trị sử dụng.&nbsp;</span></span></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">- Giấy khai sinh/ giấy chứng sinh phải là bản chính hoặc bản sao có chứng thực của cơ quan nhà nước theo quy định của pháp luật.</span></span></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">-Các loại giấy tờ không có ảnh hoặc không đúng theo quy định của pháp luật sẽ không được chấp nhận.</span></span></span></span></span></p>\r\n', 1, 'tin2.2.jpg'),
(17, 'Đặt vé máy bay Tết: Giá ưu đãi mới nhất và cách săn vé rẻ', 'Tết Nguyên Đán là kỳ nghỉ dài nhất trong năm, cũng là dịp mà các thành viên trong gia đình sum họp, kể cho nhau nghe những gì đã xảy ra trong một năm qua. Đặc biệt với những người học tập và làm việc xa xứ, cảm giác lại càng nôn nao, trông ngóng và muốn tìm đường về quê nhanh nhất. Để đặt vé máy bay tết với mức giá rẻ cùng nhiều ưu đãi hấp dẫn, bạn nhất định phải biết những mẹo dưới đây.', '<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:22px;\"><strong><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">1. Bảng giá vé máy bay Tết 2023 BH airlines&nbsp; mới nhất</span></span></span></span></strong></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">Dưới đây là bảng cập nhật giá vé mới nhất của các chặng bay phổ biến</span></span></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt 120px; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\">&nbsp;<img alt=\"\" src=\"http://localhost/Airline/uploads/images/tin3_1_1.jpg\" style=\"width: 793px; height: 261px;\" /></span></span></span><span style=\"font-family: &quot;Times New Roman&quot;, Times, serif; font-size: 20px;\">&nbsp;</span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt 160px; text-align: justify;\"><span style=\"font-family: &quot;Times New Roman&quot;, Times, serif; font-size: 20px;\"><img alt=\"\" src=\"http://localhost/Airline/uploads/images/tin3_1_2.jpg\" style=\"width: 758px; height: 260px;\" /></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt 160px; text-align: justify;\"><span style=\"font-family: &quot;Times New Roman&quot;, Times, serif; font-size: 20px;\"><img alt=\"\" src=\"http://localhost/Airline/uploads/images/tin3_1_3.jpg\" style=\"width: 765px; height: 260px;\" /></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:22px;\"><strong><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">2. Đôi nét về Tết Quý Mão 2023</span></span></span></span></strong></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">Kì nghỉ tết Nguyên Đán năm 2023 sẽ bắt đầu từ thứ 6, ngày 20/01/2023 (29 tết) đến thứ 3, ngày 26/01/2023 (mùng 5 tết). Như vậy, công chức viên chức sẽ chính thức được nghỉ Tết 7 ngày.</span></span></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">Năm 2023 là năm con mèo, vì vậy người phương đông còn gọi Tết âm lịch 2023 là Tết Quý Mão. Đây là ngày Tết cổ truyền lớn và quan trọng nhất trong văn hóa truyền thống của người Việt Nam nói riêng và một số nước châu Á nói chung. Tết Nguyên Đán Việt Nam được chia thành ba giai đoạn bao gồm trước Tết bắt đầu từ ngày 23 tháng Chạp là các hoạt động cúng tiễn ông công ông táo về chầu trời, dọn dẹp nhà cửa, chuẩn bị hành trang về nhà… Giai đoạn thứ 2 là chuẩn bị mâm cơm cúng tổ tiên, mâm ngũ quả cúng giao thừa và bánh mứt ngày tết. Cuối cùng là những cuộc sum vầy, tề tụ bên người thân, bạn bè trong ngày đầu năm để gửi cho nhau lời chúc tết, mừng tuổi và cầu mong một năm thuận lợi, bình an...</span></span></span></span></span></p>\r\n', 2, 'tin3.1.png'),
(18, 'Đặt vé máy bay đi Phú Quốc siêu rẻ, khám phá nhiều điều mới mẻ', 'Phú Quốc chính là một trong những điểm đến đẳng cấp quốc tế mà bất cứ ai cũng nên khám phá ít nhất một lần trong đời. Nếu bạn muốn thư giãn - đã có biển xanh, nắng vàng. Nếu bạn muốn nghỉ dưỡng - không thiếu những khu resort sang trọng. Còn nếu bạn muốn bay thẳng đến Phú Quốc - đã có BH airlines lo. Hẹn hò ngay với thiên đường đảo ngọc thôi nào! Đặt vé máy bay đi Phú Quốc siêu thích, muôn vàn tiện ích.', '<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:22px;\"><strong><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">1. Giá vé máy bay đi Phú Quốc bao nhiêu tiền?</span></span></span></span></strong></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">Bảng giá vé máy bay đến Phú Quốc mới nhất của BH airlines:</span></span></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt 120px; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"> <img alt=\"\" src=\"http://localhost/Airline/uploads/images/tin3_2_3.jpg\" style=\"width: 760px; height: 228px;\" /></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><strong><span style=\"line-height:120%\"><span style=\"color:black\">* Lưu ý:</span></span></strong></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">Giá vé chưa bao gồm thuế, phí và các dịch vụ bổ sung (nếu có).</span></span></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">Giá vé có thể thay đổi tùy vào từng thời điểm. Để biết giá vé chính xác nhất, quý khách vui lòng liên hệ tổng đài BH <strong>090798XXXX.</strong></span></span></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:22px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><strong><span style=\"line-height:120%\"><span style=\"color:black\">2. Tìm hiểu sân bay Phú Quốc</span></span></strong></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">Điểm đáp của máy bay BH airlines đến đảo ngọc chính là <strong>Cảng Hàng Không Quốc Tế Phú Quốc.</strong></span></span></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><strong><span style=\"line-height:120%\"><span style=\"color:black\">Vị trí: </span></span></strong><span style=\"line-height:120%\"><span style=\"color:black\">Sân bay tọa lạc tại xã Dương Tơ, nằm ở khu vực phía Nam của đảo Phú Quốc và cách trung tâm thị trấn Dương Đông khoảng 10 - 14km.</span></span></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><strong><span style=\"line-height:120%\"><span style=\"color:black\">Cơ sở hạ tầng:</span></span></strong></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">Đường băng hạ cất cánh dài 3.000m, rộng 45m.</span></span></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">Sân đậu máy bay có 8 vị trí đậu cho máy bay A320- A321 vào giờ cao điểm với diện tích 39.400m2.</span></span></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">Công suất phục vụ 2,65 triệu khách/năm.</span></span></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">Đài kiểm soát không lưu, nhà ga hành khách, phòng chờ… được thiết kế hiện đại theo tiêu chuẩn quốc tế.</span></span></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">Đây cũng là 1 trong 5 sân bay đầu tiên tại Việt Nam được Hội đồng sân bay quốc tế cấp chứng nhận<strong> AHA </strong>cam kết cung cấp các tiêu chuẩn cao về sức khỏe và vệ sinh phù hợp với tiêu chí toàn cầu.</span></span></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt 160px; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"> <img alt=\"\" src=\"http://localhost/Airline/uploads/images/tin3_2_1.jpg\" style=\"width: 677px; height: 450px;\" /></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"> </p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:22px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><strong><span style=\"line-height:120%\"><span style=\"color:black\">3. Thông tin di chuyển từ sân bay Phú Quốc đến trung tâm</span></span></strong></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">Khoảng cách từ sân bay Phú Quốc đến trung tâm thị trấn Dương Đông từ 10 - 14km, thời gian đi khoảng 20 - 30 phút.</span></span></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">- Bạn có thể chọn các phương tiện di chuyển sau:</span></span></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><strong><span style=\"line-height:120%\"><span style=\"color:black\">Taxi:</span></span></strong><span style=\"line-height:120%\"><span style=\"color:black\"> Đây là phương tiện được nhiều hành khách lựa chọn nhất. Đặc biệt là đoàn hành khách có người già hoặc trẻ nhỏ thì càng nên chọn phương tiện này. Một số hãng taxi phổ biến như: Taxi Hoàng Long, Taxi Vinasun Phú Quốc,… Giá taxi dao động khoảng 180.000 - 220.000đ/lượt</span></span></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><strong><span style=\"line-height:120%\"><span style=\"color:black\">Xe bus:</span></span></strong><span style=\"line-height:120%\"><span style=\"color:black\"> Phương tiện công cộng thuộc Công ty Cổ Phần Xe Buýt Phú Quốc, khoảng 20.000đ/khách. Để di chuyển bằng cách này, bạn hãy đến bãi đỗ xe tại sân bay Phú Quốc và chọn tuyến xe số 11 để trở về thị trấn Dương Đông - điểm dừng cuối cùng là số 126 Nguyễn Trung Trực, Thị trấn Dương Đông.</span></span></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><strong><span style=\"line-height:120%\"><span style=\"color:black\">Xe hợp đồng dịch vụ:</span></span></strong><span style=\"line-height:120%\"><span style=\"color:black\"> Nếu hành khách đi theo gia đình hoặc nhóm người đông thì có thể lựa chọn dịch vụ thuê xe riêng đưa đón từ sân bay Phú Quốc đến thị trấn Dương Đông hoặc bất kỳ nơi nào khác với mức giá thỏa thuận<strong>4. Một vài bí quyết “săn” vé máy bay đi Phú Quốc giá rẻ</strong></span></span></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><span style=\"line-height:120%\"><span style=\"color:black\">- Để có thể cầm trên tay tấm vé máy bay đi Phú Quốc siêu rẻ, bạn đừng quên “bỏ túi” một số bí quyết sau:</span></span></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><strong><span style=\"line-height:120%\"><span style=\"color:black\">Không bỏ lỡ chương trình khuyến mãi:</span></span></strong><span style=\"line-height:120%\"><span style=\"color:black\"> BH luôn dành tặng khách hàng nhiều chương trình khuyến mãi như vé 0 đồng, mở bán loạt vé bay đồng giá chỉ từ 10.000 đồng vào những dịp cuối năm, hoặc nhiều ưu đãi khác khi khai trương đường bay mới đến Phú Quốc.</span></span></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"><strong><span style=\"line-height:120%\"><span style=\"color:black\">“Săn” vé máy bay theo khung giờ vàng:</span></span></strong><span style=\"line-height:120%\"><span style=\"color:black\"> Thông thường vào thời điểm 12h - 14h trong ngày, BH sẽ cung cấp giá vé siêu ưu đãi. </span></span></span></span></span></p>\r\n\r\n<p style=\"text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><strong><span style=\"line-height:107%\"><span style=\"color:black\">Đặt vé vào mùa thấp điểm:</span></span></strong><span style=\"line-height:107%\"><span style=\"color:black\"> Mùa thấp điểm là thời điểm tốt nhất để bạn sở hữu vé máy bay “giá hời”. Hoặc bạn cũng có thể chọn lịch bay vào những ngày bình thường (thay vì cuối tuần hoặc ngày lễ, Tết) để tiết kiệm tối đa chi phí</span></span></span></span></p>\r\n\r\n<p style=\"margin: 0in 0in 8pt 160px; text-align: justify;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:120%\"> <img alt=\"\" src=\"http://localhost/Airline/uploads/images/tin3_2_2.png\" style=\"width: 677px; height: 450px;\" /></span></span></span></p>\r\n', 2, 'tin3.2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_chuyenbay`
--

CREATE TABLE `tbl_chuyenbay` (
  `chuyenbay_id` int(11) NOT NULL,
  `danhmuc_id` int(11) NOT NULL,
  `tuyenbay_id` int(11) NOT NULL,
  `chuyenbay_tenmaybay` text CHARACTER SET utf8 NOT NULL,
  `chuyenbay_gia` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `chuyenbay_giakhuyenmai` varchar(100) CHARACTER SET utf8 NOT NULL,
  `ngaydi` date NOT NULL DEFAULT current_timestamp(),
  `ngayden` date NOT NULL DEFAULT current_timestamp(),
  `chuyenbay_hot` int(11) NOT NULL,
  `chuyenbay_soghe` int(11) NOT NULL,
  `giokhoihanh` time NOT NULL,
  `thoigiandukien` time NOT NULL,
  `chuyenbay_image` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_chuyenbay`
--

INSERT INTO `tbl_chuyenbay` (`chuyenbay_id`, `danhmuc_id`, `tuyenbay_id`, `chuyenbay_tenmaybay`, `chuyenbay_gia`, `chuyenbay_giakhuyenmai`, `ngaydi`, `ngayden`, `chuyenbay_hot`, `chuyenbay_soghe`, `giokhoihanh`, `thoigiandukien`, `chuyenbay_image`) VALUES
(32, 2, 7, 'A370', '1250000', '1057000', '2022-12-01', '2022-12-01', 1, 90, '05:50:00', '07:15:00', 'danang.jpg'),
(33, 2, 8, 'A321', '1290000', '969000', '2022-12-01', '2022-12-02', 0, 120, '23:00:00', '01:15:00', 'hcm.jpeg'),
(34, 2, 9, 'A321', '2050000', '1531000', '2022-12-01', '2022-12-01', 1, 140, '09:25:00', '11:40:00', 'danang7.jpg'),
(35, 3, 10, 'A431', '877000', '677000', '2022-12-01', '2022-12-02', 0, 80, '00:30:00', '01:25:00', 'phuquoc1.jpg'),
(36, 2, 11, 'Boing730', '2250000', '1852000', '2022-12-02', '2022-12-02', 1, 90, '13:00:00', '14:40:00', 'phuquoc7.jpg'),
(37, 1, 12, 'Boing350', '4390000', '4130000', '2022-12-02', '2022-12-03', 1, 150, '22:55:00', '02:00:00', 'bangkok.jpg'),
(38, 1, 13, 'A431', '1170000', '977000', '2022-12-02', '2022-12-02', 0, 80, '20:30:00', '23:35:00', 'hcm7.jpg'),
(39, 3, 14, 'Boing721', '2550000', '2150000', '2022-12-06', '2022-12-07', 1, 120, '15:55:00', '04:20:00', 'hue7.jpg'),
(50, 2, 17, 'A431', '1565000', '1250000', '2022-12-03', '2022-12-04', 0, 120, '23:30:00', '02:00:00', 'hue.jpg'),
(51, 1, 18, 'Boing730', '3570000', '3250000', '2022-12-04', '2022-12-05', 1, 240, '16:00:00', '00:30:00', 'nhat7.png'),
(52, 1, 15, 'Boing751', '2500000', '2250000', '2022-12-06', '2022-12-06', 1, 230, '07:00:00', '11:30:00', 'nhat.jpg'),
(53, 3, 16, 'A425', '965000', '850000', '2022-12-08', '2022-12-08', 0, 150, '10:45:00', '13:00:00', 'hochiminh.jpg'),
(54, 3, 17, 'A431', '890000', '678000', '2022-12-01', '2022-12-01', 0, 140, '20:55:00', '10:10:00', 'hue7.jpg'),
(55, 1, 18, 'Boing730', '7550000', '7333000', '2022-12-02', '2022-12-02', 0, 240, '19:35:00', '11:45:00', 'nhat1.jpg'),
(56, 2, 20, 'A450', '560000', '399000', '2022-12-03', '2022-12-03', 1, 150, '00:40:00', '13:50:00', 'cantho1.jpg'),
(57, 3, 20, 'A431', '560000', '299000', '2022-12-05', '2022-12-05', 0, 120, '07:15:00', '09:00:00', 'cantho2.jpg'),
(58, 2, 21, 'A431', '1370000', '1069000', '2022-12-04', '2022-12-04', 1, 120, '05:35:00', '07:55:00', 'hanoi1.jpg'),
(59, 3, 21, 'A350', '1200000', '738000', '2022-12-07', '2022-12-07', 0, 150, '05:45:00', '07:55:00', 'hanoi2.jpg'),
(60, 2, 22, 'A350', '1560000', '1348000', '2022-12-05', '2022-12-05', 1, 120, '15:25:00', '16:35:00', 'pleiku.jpg'),
(61, 1, 23, 'Boing730', '2530000', '2250000', '2022-12-04', '2022-12-04', 0, 200, '08:00:00', '11:30:00', 'thailan.jpg'),
(62, 1, 24, 'Boing450', '2890000', '2530000', '2022-12-08', '2022-12-09', 0, 240, '22:30:00', '02:00:00', 'thailan7.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_danhmuc`
--

CREATE TABLE `tbl_danhmuc` (
  `danhmuc_id` int(11) NOT NULL,
  `danhmuc_name` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_danhmuc`
--

INSERT INTO `tbl_danhmuc` (`danhmuc_id`, `danhmuc_name`) VALUES
(1, 'Vé Quốc Tế'),
(2, 'Vé Nội Địa'),
(3, 'Vé Sale');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_danhmuc_tin`
--

CREATE TABLE `tbl_danhmuc_tin` (
  `danhmuctin_id` int(11) NOT NULL,
  `tendanhmuc` varchar(150) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_danhmuc_tin`
--

INSERT INTO `tbl_danhmuc_tin` (`danhmuctin_id`, `tendanhmuc`) VALUES
(1, 'Tin Nhanh'),
(2, 'Săn Vé Rẻ'),
(3, 'Địa Điểm Du Lịch Không Thể Bỏ Qua');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hoadon`
--

CREATE TABLE `tbl_hoadon` (
  `hoadon_id` int(11) NOT NULL,
  `chuyenbay_id` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `magiaodich` varchar(50) CHARACTER SET utf8 NOT NULL,
  `khachhang_id` int(11) NOT NULL,
  `khoang_id` int(11) NOT NULL,
  `ngaythang` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tongtien` int(11) NOT NULL,
  `tinhtrang` int(11) NOT NULL,
  `huydon` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_hoadon`
--

INSERT INTO `tbl_hoadon` (`hoadon_id`, `chuyenbay_id`, `soluong`, `magiaodich`, `khachhang_id`, `khoang_id`, `ngaythang`, `tongtien`, `tinhtrang`, `huydon`) VALUES
(27, 37, 1, '332', 9, 2, '2022-11-18 02:51:10', 5984000, 1, 2),
(28, 35, 2, '332', 9, 1, '2022-11-18 02:51:10', 5984000, 1, 2),
(29, 34, 2, '5670', 3, 2, '2022-11-18 02:48:52', 4062000, 0, 0),
(30, 33, 1, '5265', 3, 2, '2022-11-18 10:03:35', 1469000, 0, 0),
(31, 37, 3, '9804', 10, 2, '2022-11-19 10:05:59', 13890000, 0, 0),
(36, 32, 2, '4737', 10, 2, '2022-11-29 19:10:44', 3114000, 1, 0),
(37, 56, 2, '4751', 9, 2, '2022-11-24 20:40:59', 8797000, 0, 0),
(38, 51, 2, '4751', 9, 2, '2022-11-24 20:40:59', 8797000, 0, 0),
(39, 57, 1, '4751', 9, 1, '2022-11-24 20:40:59', 8797000, 0, 0),
(42, 38, 1, '384', 30, 2, '2022-11-30 15:25:10', 1277000, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_image`
--

CREATE TABLE `tbl_image` (
  `image_id` int(11) NOT NULL,
  `image_name` varchar(50) NOT NULL,
  `image_active` int(11) NOT NULL,
  `image_caption` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_image`
--

INSERT INTO `tbl_image` (`image_id`, `image_name`, `image_active`, `image_caption`) VALUES
(1, 'a1.png', 1, ''),
(2, 'a2.jpg', 0, ''),
(3, 'a3.jpg', 1, ''),
(4, 'a4.jpg', 1, ''),
(5, 'slider.jpg', 1, ''),
(6, 'a12.jpg', 1, ''),
(15, 'a5.jpg', 1, ''),
(16, 'a6.jpg', 1, ''),
(17, 'a7.jpg', 1, ''),
(18, 'bia4.jpg', 1, ''),
(19, 'datve1.jpg', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_khachhang`
--

CREATE TABLE `tbl_khachhang` (
  `khachhang_id` int(11) NOT NULL,
  `name` varchar(150) CHARACTER SET utf8 NOT NULL,
  `cccd` varchar(15) NOT NULL,
  `phone` varchar(50) CHARACTER SET utf8 NOT NULL,
  `address` varchar(200) CHARACTER SET utf8 NOT NULL,
  `note` text CHARACTER SET utf8 NOT NULL,
  `email` varchar(150) CHARACTER SET utf8 NOT NULL,
  `password` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_khachhang`
--

INSERT INTO `tbl_khachhang` (`khachhang_id`, `name`, `cccd`, `phone`, `address`, `note`, `email`, `password`) VALUES
(3, 'Lê Thị Tiểu Băng', '341999562', '0907986036', 'Ninh Kiều, Cần Thơ', '', 'bang@gmail.com', '250cf8b51c773f3f8dc8b4be867a9a02'),
(9, 'Huỳnh Anh Hào', '1234567890', '0987654321', 'Ninh Kiều, Cần Thơ', '', 'haohuynh9101@gmail.com', '202cb962ac59075b964b07152d234b70'),
(10, 'Huỳnh Lê Cạp', '1234567890', '0987654321', 'Cần Thơ', 'aa', 'cap@gmail.com', '202cb962ac59075b964b07152d234b70'),
(30, 'Đỗ Phước Thạnh', '1234567890', '0987654321', 'Cần Thơ', 'hh', 'thanh@gmail.com', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_khoang`
--

CREATE TABLE `tbl_khoang` (
  `khoang_id` int(11) NOT NULL,
  `tenkhoang` varchar(150) CHARACTER SET utf8 NOT NULL,
  `giakhoang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_khoang`
--

INSERT INTO `tbl_khoang` (`khoang_id`, `tenkhoang`, `giakhoang`) VALUES
(1, 'Phổ Thông', 0),
(2, 'Thương Gia', 300000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_lienhe`
--

CREATE TABLE `tbl_lienhe` (
  `lienhe_id` int(11) NOT NULL,
  `lienhe_name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `lienhe_email` varchar(100) CHARACTER SET utf8 NOT NULL,
  `lienhe_noidung` text CHARACTER SET utf8 NOT NULL,
  `ngaythang` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_lienhe`
--

INSERT INTO `tbl_lienhe` (`lienhe_id`, `lienhe_name`, `lienhe_email`, `lienhe_noidung`, `ngaythang`) VALUES
(2, 'Huỳnh Anh Hào', 'haohuynh9101@gmail.com', 'hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh', '2022-11-24 20:55:41'),
(3, 'Huỳnh Lê Cạp', 'cap@gmail.com', 'Con xài web nè mẹ ơiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii', '2022-11-24 20:56:47');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `slider_id` int(11) NOT NULL,
  `slider_image` varchar(100) CHARACTER SET utf8 NOT NULL,
  `slider_caption` text CHARACTER SET utf8 DEFAULT NULL,
  `slider_active` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`slider_id`, `slider_image`, `slider_caption`, `slider_active`) VALUES
(8, 'slider.jpg', '', 1),
(9, 'muave.jpg', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tuyenbay`
--

CREATE TABLE `tbl_tuyenbay` (
  `tuyenbay_id` int(11) NOT NULL,
  `tuyenbay_name` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_tuyenbay`
--

INSERT INTO `tbl_tuyenbay` (`tuyenbay_id`, `tuyenbay_name`) VALUES
(7, 'Hà Nội ➔ Đà Nẵng'),
(8, 'Hà Nội ➔ TP Hồ Chí Minh'),
(9, 'TP Hồ Chí Minh ➔ Đà Nẵng'),
(10, 'Hà Nội ➔ Phú Quốc'),
(11, 'Cần Thơ ➔ Phú Quốc'),
(12, 'TP Hồ Chí Minh ➔ BangKok'),
(13, 'Seoul ➔ TP Hồ Chí Minh'),
(14, 'Cần Thơ ➔ Huế'),
(15, 'Hà Nội ➔ Nhật Bản'),
(16, 'Cần Thơ ➔ TP Hồ Chí Minh'),
(17, 'Phú Quốc ➔ Huế'),
(18, 'TP Hồ Chí Minh ➔ Nhật Bản'),
(20, 'Phú Quốc ➔ Cần Thơ'),
(21, 'TP Hồ Chí Minh ➔ Hà Nội'),
(22, 'Hải Phòng ➔ Pleiku'),
(23, 'TP Hồ Chí Minh ➔ Thái Lan'),
(24, 'Hà Nội ➔ Thái Lan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  ADD PRIMARY KEY (`baiviet_id`),
  ADD KEY `FK_danhmuctin_id` (`danhmuctin_id`);

--
-- Indexes for table `tbl_chuyenbay`
--
ALTER TABLE `tbl_chuyenbay`
  ADD PRIMARY KEY (`chuyenbay_id`),
  ADD KEY `FK_danhmuc_id` (`danhmuc_id`),
  ADD KEY `FK_tuyenbay_id` (`tuyenbay_id`);

--
-- Indexes for table `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  ADD PRIMARY KEY (`danhmuc_id`);

--
-- Indexes for table `tbl_danhmuc_tin`
--
ALTER TABLE `tbl_danhmuc_tin`
  ADD PRIMARY KEY (`danhmuctin_id`);

--
-- Indexes for table `tbl_hoadon`
--
ALTER TABLE `tbl_hoadon`
  ADD PRIMARY KEY (`hoadon_id`),
  ADD KEY `FK_chuyenbay_id` (`chuyenbay_id`),
  ADD KEY `FK_khachhang_id` (`khachhang_id`),
  ADD KEY `FK_khoangid` (`khoang_id`);

--
-- Indexes for table `tbl_image`
--
ALTER TABLE `tbl_image`
  ADD PRIMARY KEY (`image_id`);

--
-- Indexes for table `tbl_khachhang`
--
ALTER TABLE `tbl_khachhang`
  ADD PRIMARY KEY (`khachhang_id`);

--
-- Indexes for table `tbl_khoang`
--
ALTER TABLE `tbl_khoang`
  ADD PRIMARY KEY (`khoang_id`);

--
-- Indexes for table `tbl_lienhe`
--
ALTER TABLE `tbl_lienhe`
  ADD PRIMARY KEY (`lienhe_id`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Indexes for table `tbl_tuyenbay`
--
ALTER TABLE `tbl_tuyenbay`
  ADD PRIMARY KEY (`tuyenbay_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  MODIFY `baiviet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_chuyenbay`
--
ALTER TABLE `tbl_chuyenbay`
  MODIFY `chuyenbay_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  MODIFY `danhmuc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_danhmuc_tin`
--
ALTER TABLE `tbl_danhmuc_tin`
  MODIFY `danhmuctin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_hoadon`
--
ALTER TABLE `tbl_hoadon`
  MODIFY `hoadon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `tbl_image`
--
ALTER TABLE `tbl_image`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_khachhang`
--
ALTER TABLE `tbl_khachhang`
  MODIFY `khachhang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tbl_khoang`
--
ALTER TABLE `tbl_khoang`
  MODIFY `khoang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_lienhe`
--
ALTER TABLE `tbl_lienhe`
  MODIFY `lienhe_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_tuyenbay`
--
ALTER TABLE `tbl_tuyenbay`
  MODIFY `tuyenbay_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  ADD CONSTRAINT `FK_danhmuctin_id` FOREIGN KEY (`danhmuctin_id`) REFERENCES `tbl_danhmuc_tin` (`danhmuctin_id`);

--
-- Constraints for table `tbl_chuyenbay`
--
ALTER TABLE `tbl_chuyenbay`
  ADD CONSTRAINT `FK_danhmuc_id` FOREIGN KEY (`danhmuc_id`) REFERENCES `tbl_danhmuc` (`danhmuc_id`),
  ADD CONSTRAINT `FK_tuyenbay_id` FOREIGN KEY (`tuyenbay_id`) REFERENCES `tbl_tuyenbay` (`tuyenbay_id`);

--
-- Constraints for table `tbl_hoadon`
--
ALTER TABLE `tbl_hoadon`
  ADD CONSTRAINT `FK_chuyenbay_id` FOREIGN KEY (`chuyenbay_id`) REFERENCES `tbl_chuyenbay` (`chuyenbay_id`),
  ADD CONSTRAINT `FK_khachhang_id` FOREIGN KEY (`khachhang_id`) REFERENCES `tbl_khachhang` (`khachhang_id`),
  ADD CONSTRAINT `FK_khoangid` FOREIGN KEY (`khoang_id`) REFERENCES `tbl_khoang` (`khoang_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
