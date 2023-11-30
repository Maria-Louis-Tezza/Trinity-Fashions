-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2022 at 04:12 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `minorprg`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `category` varchar(10) DEFAULT NULL,
  `descr` text DEFAULT NULL,
  `reducedprice` float DEFAULT NULL,
  `markedprice` float DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `img` text NOT NULL,
  `date_added` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `descr`, `reducedprice`, `markedprice`, `quantity`, `img`, `date_added`) VALUES
(1, 'Smart Watch', 'accessory', '<p>Unique watch made with stainless steel, ideal for those that prefer interative watches.</p>\r\n<h3>Features</h3>\r\n<ul>\r\n<li>Powered by Android with built-in apps.</li>\r\n<li>Adjustable to fit most.</li>\r\n<li>Long battery life, continuous wear for up to 2 days.</li>\r\n<li>Lightweight design, comfort on your wrist.</li>\r\n</ul>', 29.99, 0, 10, 'watch.jpg', '2019-03-13'),
(2, 'Wallet', 'accessory', '', 14.99, 19.99, 34, 'wallet.jpg', '2019-03-13'),
(3, 'Headphones', 'accessory', 'this is a apple airpod', 19.99, 0, 23, 'headphones.jpg', '2019-03-13'),
(4, 'Digital Camera', 'accessory', '', 69.99, 0, 7, 'camera.jpg', '2019-03-13'),
(5, 'Calvin Klien T-Shirt', 'Men', 'this T-shirt is designed by calvin klien which was also awarded as one of the best summer collection in 2022', 400, 800, 80, 'calvin-klien1.png', '2022-10-08'),
(6, 'COFFEE T-SHIRT', 'Men', '', 600, 1200, 50, 'CoffeeTShirt-1.jpg', '2022-10-12'),
(7, 'COFFEE T-SHIRT', '', '', NULL, NULL, NULL, 'CoffeeTShirt-2.jpg', NULL),
(8, 'COFFEE T-SHIRT', '', '', NULL, NULL, NULL, 'CoffeeTShirt-3.jpg', NULL),
(9, 'COFFEE T-SHIRT', '', '', NULL, NULL, NULL, 'CoffeeTShirt-4.jpg', NULL),
(10, 'GHOST T-SHIRT', 'Men', '', 800, 1600, 20, 'Ghost_TShirt-1.jpg', '2022-10-05'),
(11, 'GHOST T-SHIRT', '', '', NULL, NULL, NULL, 'Ghost_TShirt-2.jpg', NULL),
(12, 'GHOST T-SHIRT', '', '', NULL, NULL, NULL, 'Ghost_TShirt-3.jpg', NULL),
(13, 'GHOST T-SHIRT', '', '', NULL, NULL, NULL, 'Ghost_TShirt-4.jpg', NULL),
(14, 'BEACH GREEN TSHIRT', 'Men', '', 450, 900, 30, 'Green_Beach_TShirt-1.jpg', '2022-10-12'),
(15, 'BEACH GREEN TSHIRT', '', '', NULL, NULL, NULL, 'Green_Beach_TShirt-2.jpg', NULL),
(16, 'BEACH GREEN TSHIRT', '', '', NULL, NULL, NULL, 'Green_Beach_TShirt-3.jpg', NULL),
(17, 'BEACH GREEN TSHIRT', '', '', NULL, NULL, NULL, 'Green_Beach_TShirt-4.jpg', NULL),
(18, 'SUPERMAN TSHIRT', 'Men', NULL, 300, 600, 50, 'Superman_TShirt-1.jpg', '2022-10-19'),
(19, 'SUPERMAN TSHIRT', '', NULL, NULL, NULL, NULL, 'Superman_TShirt-2.jpg', NULL),
(20, 'SUPERMAN TSHIRT', '', NULL, NULL, NULL, NULL, 'Superman_TShirt-3.jpg', NULL),
(21, 'SUPERMAN TSHIRT', '', NULL, NULL, NULL, NULL, 'Superman_TShirt-4.jpg', NULL),
(22, 'LFC T-SHIRTS', 'Men', ' ', 600, 1200, 30, 'LFC_TShirt-1.jpg', '2022-10-13'),
(23, 'LFC T-SHIRTS', NULL, NULL, NULL, NULL, NULL, 'LFC_TShirt-2.jpg', NULL),
(24, 'LFC T-SHIRTS', NULL, NULL, NULL, NULL, NULL, 'LFC_TShirt-3.jpg', NULL),
(25, 'LFC T-SHIRTS', NULL, NULL, NULL, NULL, NULL, 'LFC_TShirt-4.jpg', NULL),
(26, 'TIERRY BORG SHIRT (CASUAL)', 'Men', ' ', 600, 1200, 30, 'tierre_bottle_green_shirt-1.jpg', '2022-10-05'),
(27, 'TIERRY BORG SHIRT (CASUAL)', NULL, NULL, NULL, NULL, NULL, 'tierre_bottle_green_shirt-2.jpg', NULL),
(28, 'TIERRY BORG SHIRT (CASUAL)', NULL, NULL, NULL, NULL, NULL, 'tierre_bottle_green_shirt-3.jpg', NULL),
(29, 'TIERRY BORG SHIRT (CASUAL)', NULL, NULL, NULL, NULL, NULL, 'tierre_bottle_green_shirt-4.jpg', NULL),
(30, 'CALVIN SEMIFORMAL SHIRTS (WHITE)', 'Men', ' ', 800, 1600, 50, 'calvin_white_shirt-1.jpg', '2022-10-26'),
(31, 'CALVIN SEMIFORMAL SHIRTS (WHITE)', NULL, NULL, NULL, NULL, NULL, 'calvin_white_shirt-2.jpg', NULL),
(32, 'CALVIN SEMIFORMAL SHIRTS (WHITE)', NULL, NULL, NULL, NULL, NULL, 'calvin_white_shirt-3.jpg', NULL),
(33, 'CALVIN SEMIFORMAL SHIRTS (WHITE)', NULL, NULL, NULL, NULL, NULL, 'calvin_white_shirt-4.jpg', NULL),
(34, 'ARROW STRIPPE-BLACK(FORMAL)', 'Men', ' ', 500, 1000, 25, 'arrowbl-1.jpg', '2022-10-29'),
(35, 'ARROW STRIPPE-BLACK(FORMAL)', NULL, NULL, NULL, NULL, NULL, 'arrowbl-2.jpg', NULL),
(36, 'ARROW STRIPPE-BLACK(FORMAL)', NULL, NULL, NULL, NULL, NULL, 'arrowbl-3.jpg', NULL),
(37, 'ARROW STRIPPE-BLACK(FORMAL)', NULL, NULL, NULL, NULL, NULL, 'arrowbl-4.jpg', NULL),
(38, 'SPREAD COLLAR SHIRT', 'Kids', ' ', 325, 650, 20, 'inf_spread_collar_shirt_1.JPG', '2022-10-30'),
(39, 'SPREAD COLLAR SHIRT', NULL, NULL, NULL, NULL, NULL, 'inf_spread_collar_shirt_2.JPG', NULL),
(40, 'SPREAD COLLAR SHIRT', NULL, NULL, NULL, NULL, NULL, 'inf_spread_collar_shirt_3.JPG', NULL),
(41, 'SPREAD COLLAR SHIRT', NULL, NULL, NULL, NULL, NULL, 'inf_spread_collar_shirt_4.JPG', NULL),
(42, 'PRINTED HOODED SHIRT', 'Kids', ' ', 250, 500, 20, 'inf_printed_hooded_shirt_1.JPG', '2022-10-30'),
(43, 'PRINTED HOODED SHIRT', NULL, NULL, NULL, NULL, NULL, 'inf_printed_hooded_shirt_2.JPG', NULL),
(44, 'PRINTED HOODED SHIRT', NULL, NULL, NULL, NULL, NULL, 'inf_printed_hooded_shirt_3.JPG', NULL),
(45, 'PRINTED HOODED SHIRT', NULL, NULL, NULL, NULL, NULL, ' ', NULL),
(46, 'GRAPHIC PRINT SHIRT WITH HOOD', 'Kids', ' ', 240, 480, 20, 'inf_graphic_print_shirt_1.JPG', '2022-10-30'),
(47, 'GRAPHIC PRINT SHIRT WITH HOOD', NULL, NULL, NULL, NULL, NULL, 'inf_graphic_print_shirt_2.JPG', NULL),
(48, 'GRAPHIC PRINT SHIRT WITH HOOD', NULL, NULL, NULL, NULL, NULL, 'inf_graphic_print_shirt_3.JPG', NULL),
(49, 'GRAPHIC PRINT SHIRT WITH HOOD', NULL, NULL, NULL, NULL, NULL, ' ', NULL),
(50, 'CHECKED HOODED SHIRT', 'Kids', ' ', 320, 640, 20, 'inf_checked_hooded_shirt_1.JPG', '2022-10-30'),
(51, 'CHECKED HOODED SHIRT', NULL, NULL, NULL, NULL, NULL, 'inf_checked_hooded_shirt_2.JPG', NULL),
(52, 'CHECKED HOODED SHIRT', NULL, NULL, NULL, NULL, NULL, 'inf_checked_hooded_shirt_3.JPG', NULL),
(53, 'CHECKED HOODED SHIRT', NULL, NULL, NULL, NULL, NULL, 'inf_checked_hooded_shirt_4.JPG', NULL),
(54, 'PRINTED SHIRT WITH T-SHIRT', 'Kids', ' ', 300, 600, 20, 'inf_printed_shirt_1.JPG', '2022-10-30'),
(55, 'PRINTED SHIRT WITH T-SHIRT', NULL, NULL, NULL, NULL, NULL, 'inf_printed_shirt_2.JPG', NULL),
(56, 'PRINTED SHIRT WITH T-SHIRT', NULL, NULL, NULL, NULL, NULL, 'inf_printed_shirt_3.JPG', NULL),
(57, 'PRINTED SHIRT WITH T-SHIRT', NULL, NULL, NULL, NULL, NULL, 'inf_printed_shirt_4.JPG', NULL),
(58, 'MICKEY MOUSE PRINT JOGGERS', 'Kids', ' ', 150, 300, 25, 'inf_mickey_mouse_pant_1.JPG', '2022-10-30'),
(59, 'MICKEY MOUSE PRINT JOGGERS', NULL, NULL, NULL, NULL, NULL, 'inf_mickey_mouse_pant_2.JPG', NULL),
(60, 'MICKEY MOUSE PRINT JOGGERS', NULL, NULL, NULL, NULL, NULL, 'inf_mickey_mouse_pant_3.JPG', NULL),
(61, 'MICKEY MOUSE PRINT JOGGERS', NULL, NULL, NULL, NULL, NULL, ' ', NULL),
(62, 'TYPOGRAPHIC PRINT JOGGERS', 'Kids', ' ', 120, 240, 30, 'inf_typographic_pant_1.JPG', '2022-10-30'),
(63, 'TYPOGRAPHIC PRINT JOGGERS', NULL, NULL, NULL, NULL, NULL, 'inf_typographic_pant_2.JPG', NULL),
(64, 'TYPOGRAPHIC PRINT JOGGERS', NULL, NULL, NULL, NULL, NULL, 'inf_typographic_pant_3.JPG', NULL),
(65, 'TYPOGRAPHIC PRINT JOGGERS', NULL, NULL, NULL, NULL, NULL, ' ', NULL),
(66, 'TRA BABY JOGGERS', 'Kids', ' ', 120, 240, 30, 'inf_tra_baby_pant_1.JPG', '2022-10-30'),
(67, 'TRA BABY JOGGERS', NULL, NULL, NULL, NULL, NULL, 'inf_tra_baby_pant_2.JPG', NULL),
(68, 'TRA BABY JOGGERS', NULL, NULL, NULL, NULL, NULL, 'inf_tra_baby_pant_3.JPG', NULL),
(69, 'TRA BABY JOGGERS', NULL, NULL, NULL, NULL, NULL, ' ', NULL),
(70, 'GRAPHIC PRINT JOGGERS', 'Kids', ' ', 125, 250, 25, 'inf_graphic_print_pant_1.JPG', '2022-10-30'),
(71, 'GRAPHIC PRINT JOGGERS', NULL, NULL, NULL, NULL, NULL, 'inf_graphic_print_pant_2.JPG', NULL),
(72, 'GRAPHIC PRINT JOGGERS', NULL, NULL, NULL, NULL, NULL, 'inf_graphic_print_pant_3.JPG', NULL),
(73, 'GRAPHIC PRINT JOGGERS', NULL, NULL, NULL, NULL, NULL, ' ', NULL),
(74, 'GAMER PRINT PANT', 'Kids', ' ', 250, 500, 30, 'inf_gamer_print_pant_1.JPG', '2022-10-30'),
(75, 'GAMER PRINT PANT', NULL, NULL, NULL, NULL, NULL, 'inf_gamer_print_pant_2.JPG', NULL),
(76, 'GAMER PRINT PANT', NULL, NULL, NULL, NULL, NULL, 'inf_gamer_print_pant_3.JPG', NULL),
(77, 'GAMER PRINT PANT', NULL, NULL, NULL, NULL, NULL, 'inf_gamer_print_pant_4.JPG', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
