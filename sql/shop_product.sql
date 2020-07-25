-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: shop
-- ------------------------------------------------------
-- Server version	5.6.48-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `product_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category_id` bigint(20) DEFAULT NULL,
  `product_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_image` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_price` double DEFAULT NULL,
  `product_description` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=998 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,1,'Váy chống nắng','images/1.jpg',120000,'Váy chống nắng chất liệu từ polyme'),(2,1,'Váy công sở','images/2.jpg',350000,'Một bộ váy dùng để đi làm'),(3,6,'Đồng hồ casio','images/3.jpg',145000,'Đồng hồ với thương hiệu casio nổi tiếng'),(4,4,'Vest công sở','images/4.jpg',250000,'Bộ vest chất liệu cao cấp'),(5,2,'Dây nịt đầm','images/5.jpg',350000,'Phụ kiện trang trí'),(6,2,'Túi xách','images/6.jpg',480000,'Phụ kiện trang trí'),(7,4,'Áo lồng vest','images/7.jpg',200000,'Áo lồng cho các bộ vest'),(8,4,'Vest cho nữ','images/8.jpg',350000,'Vest cho nữ'),(9,3,'Áo sơ mi hồng','images/9.jpg',480000,'Áo sơ mi đi kèm với các bộ vest'),(10,3,'Áo sơ mi trắng','images/10.jpg',140000,'Áo sơ mi đi kèm với các bộ vest'),(11,2,'Đầm midi sát nách','images/damhong.jpg',120000,'Thiết kế basic không thể thiếu trong tủ đồ của các cô nàng yêu thời trang. Kiểu dáng tinh tế, nhẹ nhàng, thích hợp đi chơi, đi làm, chất liệu linen tự nhiên, thấm hút tốt mang lại sự thoải mái tuyệt đối cho người mặc.'),(12,2,'ĐẦM 2 DÂY ĐÍNH NƠ','images/damvang.jpg',390000,' Đầm 2 dây họa tiết sọc thanh mảnh. Điểm nhấn là phần nơ lớn ở ngực, được luồng dây tạo thành 1 phần của dây đầm, thân đầm được xếp ly hộp đối xứng để tạo độ rộng cho tùng không bị gò bó mà vô cùng thoải mái khi mặc.'),(13,2,'ĐẦM 2 DÂY XẾP LI NGỰC','images/damxanh.jpg',360000,'Đầm 2 dây form xòe là 1 item ko thể thiếu cho các nàng điệu đà. Mẫu đầm 2 dây này được biến tấu mới lạ hơn với chi tiết xếp li ngực tạo cảm giác trẻ trung, năng động và nữ tính cho người mặc. Họa tiết vẽ tay độc đáo, dễ thương trên mẫu đầm này cũng là họa tiết đang hot.'),(14,1,'Váy A Đou Soc','images/vay2manh.jpg',290000,'Một thiết kế mới lạ dựa trên kiểu dáng quen thuộc. Chân váy A vốn là item không thể thiếu của các nàng, nay được cách điệu, nhấn nhá từ chất liệu cho đến những chi tiết nhỏ xinh, chắc chắn sẽ càng khiến các nàng của MARC xiêu lòng'),(15,1,'Váy tulip lai xéo','images/vaytulip.jpg',290000,'Một thiết kế mới lạ dựa trên kiểu dáng quen thuộc. Chân váy A vốn là item không thể thiếu của các nàng, nay được cách điệu, nhấn nhá từ chất liệu cho đến những chi tiết nhỏ xinh, chắc chắn sẽ càng khiến các nàng của MARC xiêu lòng'),(16,1,'Váy nhùn','images/vaynhun.jpg',290000,'Một thiết kế mới lạ dựa trên kiểu dáng quen thuộc. Chân váy A vốn là item không thể thiếu của các nàng, nay được cách điệu, nhấn nhá từ chất liệu cho đến những chi tiết nhỏ xinh, chắc chắn sẽ càng khiến các nàng của MARC xiêu lòng'),(17,5,'Quần culotte lưng nhún','images/quanculotte.jpg',300000,'Những mẫu quần culottes đang dần trở thành must-have items của các tín đồ thời trang. Với thiết kế đề cao sự thoải mái nhưng vẫn thanh lịch, chỉn chu này, các nàng có thể diện đi làm, đi chơi đều cực sành điệu. MARC mang đến cho nàng 2 màu sắc mới lạ nhưng dễ dàng phối được với nhiều gam màu khác.'),(18,5,'Quần short','images/quanshort.jpg',295000,'Những mẫu quần culottes đang dần trở thành must-have items của các tín đồ thời trang. Với thiết kế đề cao sự thoải mái nhưng vẫn thanh lịch, chỉn chu này, các nàng có thể diện đi làm, đi chơi đều cực sành điệu. MARC mang đến cho nàng 2 màu sắc mới lạ nhưng dễ dàng phối được với nhiều gam màu khác.'),(19,5,'Quần xếp ly','images/quanxep.jpg',290000,'Những mẫu quần culottes đang dần trở thành must-have items của các tín đồ thời trang. Với thiết kế đề cao sự thoải mái nhưng vẫn thanh lịch, chỉn chu này, các nàng có thể diện đi làm, đi chơi đều cực sành điệu. MARC mang đến cho nàng 2 màu sắc mới lạ nhưng dễ dàng phối được với nhiều gam màu khác.'),(20,5,'Quần culotte lưng nhún','images/quanculotte.jpg',300000,'Những mẫu quần culottes đang dần trở thành must-have items của các tín đồ thời trang. Với thiết kế đề cao sự thoải mái nhưng vẫn thanh lịch, chỉn chu này, các nàng có thể diện đi làm, đi chơi đều cực sành điệu. MARC mang đến cho nàng 2 màu sắc mới lạ nhưng dễ dàng phối được với nhiều gam màu khác.'),(21,6,'Đồng hồ casio','images/3.jpg',1450000,'Đồng hồ với thương hiệu casio nổi tiếng'),(397,3,'Áo sơ mi cổ lật','images/aosomicolat.jpg',285000,'<p>M&agrave;u Sắc Sản Phẩm: BE, ĐEN<br />\r\n- Gi&aacute; B&aacute;n Sản Phẩm: 285.000đ<br />\r\n- Số Đo V&ograve;ng Ngực: 92CM<br />\r\n- Số Đo Lai: 91CM<br />\r\n- Chiều D&agrave;i &Aacute;o: 60CM<br />\r\n- Số Đo Ngang Vai: 34CM<br />\r\n- Số Đo D&agrave;i Tay: 57CM<br />\r\n- Số Đo Cửa Tay: 20CM</p>\r\n');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-25 18:56:00
