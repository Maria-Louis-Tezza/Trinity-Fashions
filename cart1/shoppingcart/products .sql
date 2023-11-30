-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2022 at 08:59 PM
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
  `img1` text NOT NULL,
  `img2` varchar(100) DEFAULT NULL,
  `img3` varchar(100) DEFAULT NULL,
  `img4` varchar(100) DEFAULT NULL,
  `date_added` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `descr`, `reducedprice`, `markedprice`, `quantity`, `img1`, `img2`, `img3`, `img4`, `date_added`) VALUES
(6, 'COFFEE T-SHIRT', 'Men', '<h2>Coffee T Shirt </h2>\r\n<h3> Pure Cotton blend </h3>\r\n<h3>Machine-wash </h3>\r\n<h3> 100% Original Products </h3>', 600, 1200, 50, 'CoffeeTShirt-1.jpg', 'CoffeeTShirt-2.jpg', 'CoffeeTShirt-3.jpg', 'CoffeeTShirt-4.jpg', '2022-10-12'),
(7, 'GHOST T-SHIRT', 'Men', '<h2>Full Sleeves White and Navy Blue shirt</h2>\r\n<h3> 100% Original Products </h3>\r\n<h3> Pure Cotton blend </h3>\r\n<h3>Machine-wash </h3>\r\n', 800, 1600, 20, 'Ghost_TShirt-1.jpg', 'Ghost_TShirt-2.jpg', 'Ghost_TShirt-3.jpg', 'Ghost_TShirt-4.jpg', '2022-10-05'),
(8, 'BEACH GREEN TSHIRT', 'Men', '<h2>Sea Green T-Shirt </h2>\r\n<h3> 100% Original Products </h3>\r\n<h3> Pure Cotton blend </h3>\r\n<h3>Machine-wash </h3>\r\n', 450, 900, 30, 'Green_Beach_TShirt-1.jpg', 'Green_Beach_TShirt-2.jpg', 'Green_Beach_TShirt-2.jpg', 'Green_Beach_TShirt-2.jpg', '2022-10-12'),
(9, 'SUPERMAN TSHIRT', 'Men', '<h2> Blue colour superman T-Shirts<h3> 100% Original Products </h3>\r\n<h3> Pure Cotton blend </h3>\r\n<h3>Machine-wash </h3>\r\n', 300, 600, 50, 'Superman_TShirt-1.jpg', 'Superman_TShirt-2.jpg', 'Superman_TShirt-3.jpg', 'Superman_TShirt-4.jpg', '2022-10-19'),
(10, 'LFC T-SHIRT', 'Men', '<h2>LFC T-SHIRT Red faded Color </h2> \r\n<h3> 100% Original Products </h3>\r\n<h3> Pure Cotton blend </h3>\r\n<h3>Machine-wash </h3>\r\n', 600, 1200, 30, 'LFC_TShirt-1.jpg', 'LFC_TShirt-2.jpg', 'LFC_TShirt-3.jpg', 'LFC_TShirt-4.jpg', '2022-10-13'),
(11, 'TIERRY BORG SHIRT (CASUAL)', 'Men', '<h2> Green Formal Shirt </h2>\r\n<h2>TIERRY BORG SHIRT (CASUAL) </h2>\r\n<h3> 100% Original Products </h3>\r\n<h3> Pure Cotton blend </h3>\r\n<h3>Machine-wash </h3>\r\n', 600, 1200, 30, 'tierre_bottle_green_shirt-1.jpg', 'tierre_bottle_green_shirt-2.jpg', 'tierre_bottle_green_shirt-3.jpg', 'tierre_bottle_green_shirt-4.jpg', '2022-10-05'),
(12, 'CALVIN SEMIFORMAL SHIRT (WHITE)', 'Men', '<h2> CALVIN SEMIFORMAL SHIRTS </h2>\r\n<h2> Pure WHITE</h2>\r\n<h3> 100% Original Products </h3>\r\n<h3> Pure Cotton blend </h3>\r\n<h3>Machine-wash </h3>\r\n', 800, 1600, 50, 'calvin_white_shirt-1.jpg', 'calvin_white_shirt-2.jpg', 'calvin_white_shirt-3.jpg', 'calvin_white_shirt-4.jpg', '2022-10-26'),
(13, 'ARROW STRIPPE-BLACK (FORMAL)', 'Men', '<h2>ARROW STRIPPE-BLACK</h2>\r\n<h2>FORMAL SHIRT</h2>\r\n<h3> 100% Original Products </h3>\r\n<h3> Pure Cotton blend </h3>\r\n<h3>Machine-wash </h3>\r\n', 500, 1000, 25, 'arrowbl-1.jpg', 'arrowbl-2.jpg', 'arrowbl-3.jpg', 'arrowbl-4.jpg', '2022-10-29'),
(14, 'SPREAD COLLAR SHIRT', 'Kids', '<h2>100% Original Products</h2>\r\n<h2>Pure Cotton blend</h2>\r\n<h2>Machine-wash</h2>', 325, 650, 20, 'inf_spread_collar_shirt_1.JPG', 'inf_spread_collar_shirt_2.JPG', 'inf_spread_collar_shirt_3.JPG', 'inf_spread_collar_shirt_4.JPG', '2022-10-30'),
(15, 'PRINTED HOODED SHIRT', 'Kids', ' <h2>100% Original Products</h2>\n<h2>Pure Cotton blend</h2>\n<h2>Machine-wash</h2>', 250, 500, 20, 'inf_printed_hooded_shirt_1.JPG', 'inf_printed_hooded_shirt_2.JPG', 'inf_printed_hooded_shirt_3.JPG', 'inf_printed_hooded_shirt_1.JPG', '2022-10-30'),
(16, 'GRAPHIC PRINT SHIRT WITH HOOD', 'Kids', '<h2>100% Original Products</h2>\n<h2>Pure Cotton blend</h2>\n<h2>Machine-wash</h2>', 240, 480, 20, 'inf_graphic_print_shirt_1.JPG', 'inf_graphic_print_shirt_2.JPG', 'inf_graphic_print_shirt_3.JPG', 'inf_graphic_print_shirt_1.JPG', '2022-10-30'),
(17, 'CHECKED HOODED SHIRT', 'Kids', '<h2>100% Original Products</h2>\r\n<h2>Pure Cotton blend</h2>\r\n<h2>Machine-wash</h2>', 320, 640, 20, 'inf_checked_hooded_shirt_1.JPG', 'inf_checked_hooded_shirt_2.JPG', 'inf_checked_hooded_shirt_3.JPG', 'inf_checked_hooded_shirt_4.JPG', '2022-10-30'),
(18, 'PRINTED SHIRT WITH T-SHIRT', 'Kids', '<h2>100% Original Products</h2>\r\n<h2>Pure Cotton blend</h2>\r\n<h2>Machine-wash</h2>', 300, 600, 20, 'inf_printed_shirt_1.JPG', 'inf_printed_shirt_2.JPG', 'inf_printed_shirt_3.JPG', 'inf_printed_shirt_4.JPG', '2022-10-30'),
(19, 'MICKEY MOUSE PRINT JOGGERS', 'Kids', ' <h2>100% Original Products</h2>\r\n<h2>Pure Cotton blend</h2>\r\n<h2>Machine-wash</h2>', 150, 300, 25, 'inf_mickey_mouse_pant_1.JPG', 'inf_mickey_mouse_pant_2.JPG', 'inf_mickey_mouse_pant_3.JPG', 'inf_mickey_mouse_pant_1.JPG', '2022-10-30'),
(20, 'TYPOGRAPHIC PRINT JOGGERS', 'Kids', ' <h2>100% Original Products</h2>\r\n<h2>Pure Cotton blend</h2>\r\n<h2>Machine-wash</h2>', 120, 240, 30, 'inf_typographic_pant_1.JPG', 'inf_typographic_pant_2.JPG', 'inf_typographic_pant_3.JPG', 'inf_typographic_pant_1.JPG', '2022-10-30'),
(21, 'TRA BABY JOGGERS', 'Kids', '<h2>100% Original Products</h2>\r\n<h2>Pure Cotton blend</h2>\r\n<h2>Machine-wash</h2>', 120, 240, 30, 'inf_tra_baby_pant_1.JPG', 'inf_tra_baby_pant_2.JPG', 'inf_tra_baby_pant_3.JPG', 'inf_tra_baby_pant_1.JPG', '2022-10-30'),
(22, 'GRAPHIC PRINT JOGGERS', 'Kids', ' <h2>100% Original Products</h2>\r\n<h2>Pure Cotton blend</h2>\r\n<h2>Machine-wash</h2>', 125, 250, 25, 'inf_graphic_print_pant_1.JPG', 'inf_graphic_print_pant_2.JPG', 'inf_graphic_print_pant_3.JPG', 'inf_typographic_pant_1.JPG', '2022-10-30'),
(23, 'GAMER PRINT PANT', 'Kids', ' <h2>100% Original Products</h2>\r\n<h2>Pure Cotton blend</h2>\r\n<h2>Machine-wash</h2>', 250, 500, 30, 'inf_gamer_print_pant_1.JPG', 'inf_gamer_print_pant_2.JPG', 'inf_gamer_print_pant_3.JPG', 'inf_gamer_print_pant_4.JPG', '2022-10-30'),
(24, 'Butterfly Studs', 'Accessory', '<p>Gold-toned contemporary butterfly studs, rhodium-plated, \r\nSize & Fit\r\nLength: 3 cm\r\nMaterial & Care\r\nMaterial: Brass\r\nWipe with a clean cotton swab when needed</p>', 200, 400, 30, 'studs-1.jpg', 'studs-1.jpg', 'studs-1.jpg', 'studs-1.jpg', '2022-11-02'),
(25, 'FLOWER STUDS', 'Accessory', '<p>Gold-toned contemporary Flower studs, rhodium-plated, \r\nSize & Fit\r\nLength: 2 cm\r\nMaterial & Care\r\nMaterial: Brass\r\nWipe with a clean cotton swab when needed</p>', 150, 300, 30, 'studs-2.jpg', 'studs-2.jpg', 'studs-2.jpg', 'studs-2.jpg', '2022-11-02'),
(26, 'PEARL STUDS', 'Accessory', ' <p>Gold-toned contemporary Pearl studs, rhodium-plated, \r\nSize & Fit\r\nLength: 5 cm\r\nMaterial & Care\r\nMaterial: Brass coated with gold \r\nWipe with a clean cotton swab when needed</p>', 200, 400, 30, 'studs-3.jpg', 'studs-3.jpg', 'studs-3.jpg', 'studs-3.jpg', '2022-11-02'),
(27, 'WHEEL STUDS', 'Accessory', ' <p>Silver-toned contemporary Wheel studs, rhodium-plated, \r\nSize & Fit\r\nLength: 4 cm\r\nMaterial & Care\r\nMaterial: Brass\r\nWipe with a clean cotton swab when needed</p>', 250, 500, 30, 'studs-4.jpg', 'studs-4.jpg', 'studs-4.jpg', 'studs-4.jpg', '2022-11-02'),
(28, 'STONE STUDS', 'Accessory', ' <p>Gold-toned contemporary Single Stone studs,\r\n rhodium-plated, \r\nSize & Fit\r\nLength: 3 cm\r\nMaterial & Care\r\nMaterial: Brass\r\nWipe with a clean cotton swab when needed</p>', 300, 600, 30, 'studs-5.jpg', 'studs-5.jpg', 'studs-5.jpg', 'studs-5.jpg', '2022-11-02'),
(29, 'GREEN STONE STUDS', 'Accessory', ' <p>Silver-toned contemporary Green Stone studs, rhodium-plated, \r\nSize & Fit\r\nLength: 2 cm\r\nMaterial & Care\r\nMaterial: Brass Coated with Silver\r\nWipe with a clean cotton swab when needed</p>', 150, 300, 40, 'studs-6.jpg', 'studs-6.jpg', 'studs-6.jpg', 'studs-6.jpg', '2022-11-02'),
(30, 'PINEAPPLE STUDS', 'Accessory', ' <p>Silver-toned contemporary Pineapple shaped  studs, rhodium-plated, \r\nSize & Fit\r\nLength: 4 cm\r\nMaterial & Care\r\nMaterial: Brass\r\nWipe with a clean cotton swab when needed</p>', 400, 800, 20, 'studs-7.jpg', 'studs-7.jpg', 'studs-7.jpg', 'studs-7.jpg', '2022-11-02'),
(31, 'PINK STUDS', 'Accessory', ' <p>Gold-toned contemporary Pink studs, rhodium-plated, \r\nSize & Fit\r\nLength: 2 cm\r\nMaterial & Care\r\nMaterial: Brass Outline is coated with small stones \r\nWipe with a clean cotton swab when needed</p>', 200, 400, 50, 'studs-8.jpg', 'studs-8.jpg', 'studs-8.jpg', 'studs-8.jpg', '2022-11-02'),
(32, 'SWAN STUDS', 'Accessory', ' <p>Silver-toned contemporary cute Swan studs, rhodium-plated, \r\nSize & Fit\r\nLength: 4 cm\r\nMaterial & Care\r\nMaterial: Brass Coated with silver swan wings consists of stones\r\nWipe with a clean cotton swab when needed</p>', 250, 500, 40, 'studs-9.jpg', 'studs-9.jpg', 'studs-9.jpg', 'studs-9.jpg', '2022-11-02'),
(33, 'PEARL WHEEL STUDS', 'Accessory', ' <p>Gold-toned contemporary Pearl Wheel studs, rhodium-plated, \r\nSize & Fit\r\nLength: 4 cm\r\nMaterial & Care\r\nMaterial: Brass ,It consist of a beautiful pearl in between the wheel filled with stones\r\nWipe with a clean cotton swab when needed</p>', 450, 900, 50, 'studs-11.jpg', 'studs-11.jpg', 'studs-11.jpg', 'studs-11.jpg', '2022-11-02'),
(34, 'ADDY', 'Women', '<p>Pure Red Frock\r\nFit Type: Regular\r\nStyle: A-Line Sweetheart Neck Cold Shoulder Skater Dress\r\nFit Type: Regular\r\nPattern: Solid/Plain\r\nStitched Type: Fully Stitched\r\nAge Range Description: Adult </p>\r\n', 3500, 7000, 20, 'addy-1.jpg', 'addy-2.jpg', 'addy-3.jpg', 'addy-4.jpg', '2022-11-02'),
(35, 'LYMIO', 'Women', '<p>Cute Pink Frock \r\nFit Type: Regular\r\nStyle: A-Line Sweetheart Neck Cold Shoulder Skater Dress\r\nFit Type: Regular\r\nPattern: Solid/Plain\r\nStitched Type: Fully Stitched\r\nAge Range Description: Adult </p>\r\n', 3000, 6000, 20, 'lymio-1.jpg', 'lymio-2.jpg', 'lymio-3.jpg', 'lymio-4.jpg', '2022-11-02'),
(36, 'MAXFROCK', 'Women', ' <p>White With Black Dots Frock\r\nFit Type: Regular\r\nStyle: V Neck  Dress\r\nFit Type: Regular\r\nPattern: Solid\r\nStitched Type: Fully Stitched\r\nAge Range Description: Adult</p>\r\n', 4000, 8000, 20, 'maxfrock-1.jpg', 'maxfrock-2.jpg', 'maxfrock-3.jpg', 'maxfrock-4.jpg', '2022-11-02'),
(37, 'MYSWAG', 'Women', '<p> Black And White Polka Dots Frock\r\nFit Type: Regular\r\nStyle:  Shoulder Skater Dress\r\nFit Type: Regular\r\nPattern: Solid\r\nStitched Type: Fully Stitched\r\nAge Range Description: Adult</p>\r\n', 3500, 7000, 20, 'myswag-1.jpg', 'myswag-2.jpg', 'myswag-3.jpg', 'myswag-4.jpg', '2022-11-02'),
(38, 'STYLE STORE', 'Women', '<p>Multi Color Frock\r\nFit Type: Regular\r\nStyle: full length multi color frock\r\nFit Type: Regular\r\nPattern: Solid/Plain\r\nStitched Type: Fully Stitched\r\nAge Range Description: Adult </p>\r\n', 3000, 6000, 20, 'stylestore-1.jpg', 'stylestore-2.jpg', 'stylestore-3.jpg', 'stylestore-4.jpg', '2022-11-02'),
(39, 'GENERIC', 'Women', '<p> Blue Jeans\r\nZip fly with button closure\r\n5-pocket styling\r\nBelt loops\r\nPackage contains: 1 pair of jeans\r\nMachine wash warm\r\nMid Rise\r\nCotton Blend </p>', 2000, 4000, 30, 'generic-1.jpg', 'generic-2.jpg', 'generic-3.jpg', 'generic-4.jpg', '2022-11-02'),
(40, 'JANNON', 'Women', '<p>Pure White Jeans\r\nZip fly with button closure\r\n5-pocket styling\r\nBelt loops\r\nPackage contains: 1 pair of jeans\r\nMachine wash warm\r\nMid Rise\r\nCotton Blend</p>', 2500, 5000, 20, 'jannon-1.jpg', 'jannon-2.jpg', 'jannon-3.jpg', 'jannon-4.jpg', '2022-11-02'),
(41, 'KOTTY', 'Women', '<p> Black Jeans\r\nZip fly with button closure\r\n4-pocket styling\r\nBelt loops\r\nPackage contains: 1 pair of jeans\r\nMachine wash warm\r\nMid Rise\r\nCotton Blend </p>', 2200, 4400, 20, 'kotty-1.jpg', 'kotty-2.jpg', 'kotty-3.jpg', 'kotty-4.jpg', '2022-11-02'),
(42, 'MISS CHASE', 'Women', '<p>Brown Jeans\r\nZip fly with button closure\r\n5-pocket styling\r\nBelt loops\r\nPackage contains: 1 pair of jeans\r\nMachine wash warm\r\nMid Rise\r\nCotton Blend</p>', 2500, 5000, 20, 'misschase-1.jpg', 'misschase-2.jpg', 'misschase-3.jpg', 'misschase-4.jpg', '2022-11-02'),
(43, 'SYMBOL', 'Women', '<p> Dark Blue Jeans\r\nZip fly with button closure\r\n4-pocket styling\r\nBelt loops\r\nPackage contains: 1 pair of jeans\r\nMachine wash warm\r\nMid Rise\r\nCotton Blend </p>', 2300, 4600, 20, 'symbol-1.jpg', 'symbol-2.jpg', 'symbol-3.jpg', 'symbol-4.jpg', '2022-11-02'),
(44, 'MAX BLACK', 'Women', '<h2> Max Black Tom Printed T-Shirt </h2>\r\n <h3>100% Original Products </h3>\r\n<h3> Pure Cotton blend </h3>\r\n<h3>Machine-wash </h3>\r\n', 1500, 3000, 20, 'maxblack-1.jpg', 'maxblack-2.jpg', 'maxblack-3.jpg', 'maxblack-4.jpg', '2022-11-02'),
(45, 'MAX BLUE', 'Women', '<h2>Panda Printed Blue T-Shirts <h2>\r\n<h3>100% Original Products </h3>\r\n<h3> Pure Cotton blend </h3>\r\n<h3>Machine-wash </h3>\r\n', 1400, 2800, 20, 'maxblue-1.jpg', 'maxpink-2.jpg', 'maxpink-3.jpg', 'maxpink-4.jpg', '2022-11-02'),
(46, 'MAX PINK', 'Women', '<h2> Printed Pink T-Shirt </h2>\r\n <h3>100% Original Products </h3>\r\n<h3> Pure Cotton blend </h3>\r\n<h3>Machine-wash </h3>\r\n', 1700, 3400, 20, 'maxpink-1.jpg', 'maxpink-2.jpg', 'maxpink-3.jpg', 'maxpink-4.jpg', '2022-11-02'),
(47, 'MAX WHITE', 'Women', '<h2>Printed Max White T-Shirt </h2>\r\n<h3>100% Original Products </h3>\r\n<h3> Pure Cotton blend </h3>\r\n<h3>Machine-wash </h3>\r\n', 1500, 3000, 20, 'maxwhite-1.jpg', 'maxwhite-2.jpg', 'maxwhite-3.jpg', 'maxwhite-4.jpg', '2022-11-02'),
(48, 'MAX YELLOW', 'Women', '<h2> Yellow Printed POO T-Shirt </h2> \r\n<h3>100% Original Products </h3>\r\n<h3> Pure Cotton blend </h3>\r\n<h3>Machine-wash </h3>\r\n', 2500, 5000, 20, 'maxyellow-1.jpg', 'maxyellow-2.jpg', 'maxyellow-3.jpg', 'maxyellow-4.jpg', '2022-11-02'),
(49, 'TUTU DRESS', 'Kids', ' <h2>100% Original Products</h2>\r\n<h2>Pure Cotton blend</h2>\r\n<h2>Machine-wash</h2>', 500, 1000, 20, 'inf_crock_tutu_dress_1.JPG', 'inf_crock_tutu_dress_2.JPG', 'inf_crock_tutu_dress_3.JPG', 'inf_crock_tutu_dress_4.JPG', '2022-11-02'),
(50, 'FLORAL PRINT DRESS', 'Kids', ' <h2>100% Original Products</h2>\r\n<h2>Pure Cotton blend</h2>\r\n<h2>Machine-wash</h2>', 325, 650, 20, 'pb_floral_crock_dress_1.JPG', 'pb_floral_crock_dress_2.JPG', 'pb_floral_crock_dress_3.JPG', 'pb_floral_crock_dress_4.JPG', '2022-11-02'),
(51, 'SLEEVELESS FIT', 'Kids', ' <h2>100% Original Products</h2>\r\n<h2>Pure Cotton blend</h2>\r\n<h2>Machine-wash</h2>', 375, 750, 20, 'inf_sleeveless_crock_dress_1.JPG', 'inf_sleeveless_crock_dress_2.JPG', 'inf_sleeveless_crock_dress_3.JPG', 'inf_sleeveless_crock_dress_4.JPG', '2022-11-02'),
(52, 'GLITTER PRINT', 'Kids', ' <h2>100% Original Products</h2>\r\n<h2>Pure Cotton blend</h2>\r\n<h2>Machine-wash</h2>', 400, 800, 20, 'inf_glitter_print_crock_dress_1.JPG', 'inf_glitter_print_crock_dress_2.JPG', 'inf_glitter_print_crock_dress_3.JPG', 'inf_glitter_print_crock_dress_1.JPG', '2022-11-03'),
(53, 'LAYERED FIT', 'Kids', ' <h2>100% Original Products</h2>\r\n<h2>Pure Cotton blend</h2>\r\n<h2>Machine-wash</h2>', 500, 1000, 20, 'inf_layered_fit_crock_dress_1.JPG', 'inf_layered_fit_crock_dress_2.JPG', 'inf_layered_fit_crock_dress_3.JPG', 'inf_layered_fit_crock_dress_1.JPG', '2022-11-03'),
(54, 'CUFFED HEM LEGGINGS', 'Kids', ' <h2>100% Original Products</h2>\r\n<h2>Pure Cotton blend</h2>\r\n<h2>Machine-wash</h2>', 400, 800, 20, 'inf_cuffed_hem_leggings_1.JPG', 'inf_cuffed_hem_leggings_2.JPG', 'inf_cuffed_hem_leggings_3.JPG', 'inf_cuffed_hem_leggings_4.JPG', '2022-11-03'),
(55, 'PRINTED LEGGINGS', 'Kids', ' <h2>100% Original Products</h2>\r\n<h2>Pure Cotton blend</h2>\r\n<h2>Machine-wash</h2>', 340, 680, 30, 'inf_printed_leggings_1.JPG', 'inf_printed_leggings_2.JPG', 'inf_printed_leggings_3.JPG', 'inf_printed_leggings_4.JPG', '2022-11-03'),
(56, 'MARIE CAT LEGGINGS', 'Kids', ' <h2>100% Original Products</h2>\r\n<h2>Pure Cotton blend</h2>\r\n<h2>Machine-wash</h2>', 100, 200, 30, 'inf_marie_cat_leggings_1.JPG', 'inf_marie_cat_leggings_2.JPG', 'inf_marie_cat_leggings_3.JPG', 'inf_marie_cat_leggings_1.JPG', '2022-11-03'),
(57, 'DRAWSTRING LEGGINGS', 'Kids', ' <h2>100% Original Products</h2>\r\n<h2>Pure Cotton blend</h2>\r\n<h2>Machine-wash</h2>', 150, 300, 25, 'inf_patch_pockets_leggings_1.JPG', 'inf_patch_pockets_leggings_2.JPG', 'inf_patch_pockets_leggings_3.JPG', 'inf_patch_pockets_leggings_1.JPG', '2022-11-03'),
(58, 'ELASTICATED LEGGINGS', 'Kids', ' <h2>100% Original Products</h2>\r\n<h2>Pure Cotton blend</h2>\r\n<h2>Machine-wash</h2>', 100, 200, 45, 'inf_elasticated_waistband_leggings_1.JPG', 'inf_elasticated_waistband_leggings_2.JPG', 'inf_elasticated_waistband_leggings_3.JPG', 'inf_elasticated_waistband_leggings_1.JPG', '2022-11-03'),
(218, 'MOON DANGLES', 'Accessory', 'Gold-toned contemporary moon dangles rhodium-plated, Size & Fit Length: 6 cm Material & Care Material: Brass ,It consist of a beautiful stones in between the moon  Wipe with a clean cotton swab when needed', 200, 500, 20, 'dangles-1.jpg', 'dangles-1.jpg', 'dangles-1.jpg', 'dangles-1.jpg', '2022-11-12'),
(219, 'BOW DANGLES', 'Accessory', 'Gold-toned contemporary bow dangles rhodium-plated, Size & Fit Length: 6 cm Material & Care Material: Brass ,It consist of a beautiful stones in between the bow  Wipe with a clean cotton swab when needed', 200, 400, 20, 'dangles-9.jpg', 'dangles-9.jpg', 'dangles-9.jpg', 'dangles-9.jpg', '2022-11-13'),
(220, 'CLOVER DANGLES', 'Accessory', 'Silver-toned contemporary clover dangles rhodium-plated, Size & Fit Length: 6 cm Material & Care Material: Brass ,It consist of a beautiful stones in between the moon  Wipe with a clean cotton swab when needed', 300, 600, 15, 'dangles-3.jpg', 'dangles-3.jpg', 'dangles-3.jpg', 'dangles-3.jpg', '2022-11-13'),
(221, 'FEATHER DANGLES', 'Accessory', 'Silver-toned contemporary feather dangles rhodium-plated, Size & Fit Length: 6 cm Material & Care Material: Brass ,It consist of a beautiful blue stone  Wipe with a clean cotton swab when needed', 200, 400, 20, 'dangles-6.jpg', 'dangles-6.jpg', 'dangles-6.jpg', 'dangles-6.jpg', '2022-11-13'),
(222, 'GOLDEN LEAF DANGLES', 'Accessory', 'Gold-toned contemporary leaf dangles rhodium-plated, Size & Fit Length: 6 cm Material & Care Material: Brass ,It consist of a beautiful white stone  Wipe with a clean cotton swab when needed', 225, 450, 26, 'dangles-4.jpg', 'dangles-4.jpg', 'dangles-4.jpg', 'dangles-4.jpg', '2022-11-13'),
(223, 'GOLD PEACOCK DROPS', 'Accessory', 'Gold-toned contemporary peacock drops rhodium-plated, Size & Fit Length: 7 cm Material & Care Material: Brass ,It consist of a beautiful blue stone  Wipe with a clean cotton swab when needed', 300, 600, 25, 'drops-2.jpg', 'drops-2.jpg', 'drops-2.jpg', 'drops-2.jpg', '2022-11-13'),
(224, 'PEACOCK DROPS', 'Accessory', 'Silver-toned contemporary peacock drops rhodium-plated, Size & Fit Length: 6 cm Material & Care Material: Brass ,It consist of a beautiful sea green stone  Wipe with a clean cotton swab when needed', 250, 300, 20, 'drops-7.jpg', 'drops-7.jpg', 'drops-7.jpg', 'drops-7.jpg', '2022-11-13'),
(225, 'STAR DROPS', 'Accessory', 'Gold-toned contemporary star drops rhodium-plated, Size & Fit Length: 6 cm Material & Care Material: Brass ,It consist of a beautiful white stone  Wipe with a clean cotton swab when needed', 300, 600, 30, 'drops-9.jpg', 'drops-9.jpg', 'drops-9.jpg', 'drops-9.jpg', '2022-11-13'),
(226, 'MANIPURA DROPS', 'Accessory', 'Silver-toned contemporary Manipura drops rhodium-plated, Size & Fit Length: 5 cm Material & Care Material: Brass , Wipe with a clean cotton swab when needed', 350, 700, 25, 'drops-11.jpg', 'drops-11.jpg', 'drops-11.jpg', 'drops-11.jpg', '2022-11-13'),
(227, 'WHITE PEARL DROPS', 'Accessory', 'Silver-toned contemporary pearl drops rhodium-plated, Size & Fit Length: 6 cm Material & Care Material: Brass ,It consist of a beautiful pearl Wipe with a clean cotton swab when needed', 300, 600, 30, 'drops-12.jpg', 'drops-12.jpg', 'drops-12.jpg', 'drops-12.jpg', '2022-11-13'),
(229, 'RED KURTA SET', 'Women', '<h2>\r\nCare Instructions: Hand Wash Only\r\nFit Type: Straight\r\nNeckline: Sweatheart neck Sleeve: 3/4th sleeves Care: Dry Clean Only Model Size: Model is wearing S Size Model Height: 5\'5\"\r\n</h2>', 1500, 3000, 30, 'redkurta-1.jpg', 'redkurta-2.jpg', 'redkurta-3.jpg', 'redkurta-4.jpg', '2022-11-13'),
(230, 'PINK KURTA SET', 'Women', '<h2>Care Instructions: Hand Wash Only\r\nFit Type: Straight\r\nThis three piece set includes kurta, Pant and dupatta.\r\nKurti Description - Rayon pink Kurti in hand block print Palazzo Description - Solid Rayon Pant. Dupatta Description - Beige Digital Printed dupatta.\r\n</h2>', 1500, 300, 30, 'pinkkurta-1.jpg', 'pinkkurta-2.jpg', 'pinkkurta-3.jpg', 'pinkkurta-4.jpg', '2022-11-13'),
(231, 'BLUE KURTA SET', 'Women', ' <h2>Care Instructions: Hand Wash Only\r\nFit Type: Straight\r\nThis three piece set includes kurta, Pant and dupatta.\r\nKurti Description - Rayon blue Kurti in hand block print Palazzo Description - Solid Rayon Pant. Dupatta Description - Beige Digital Printed dupatta.\r\n</h2>', 1400, 2800, 20, 'kurta-1.jpg', 'kurta-2.jpg', 'kurta-3.jpg', 'kurta-4.jpg', '2022-11-13'),
(232, 'CUTE PINK FROCK', 'Women', '<h2>\r\nWomen party wear \r\nMaterial: Cotton \r\nHandwash \r\nDry in shade\r\n</h2>', 2500, 5000, 20, 'cutepink-1.jpg', 'cutepink-2.jpg', 'cutepink-3.jpg', 'cutepink-4.jpg', '2022-11-13'),
(233, 'GREEN COTTON TOP', 'Women', ' <h2>\r\nWomen free top\r\nMaterial : cotton \r\nHand and machine wash \r\nAll sizes are available\r\n</h2>', 1300, 2600, 20, 'cottontop-1.jpg', 'cottontop-2.jpg', 'cottontop-3.jpg', 'cottontop-4.jpg', '2022-11-13'),
(234, 'DENNIS LINGO SHIRT (CASUAL)', 'Men', ' <h2> Green Casual Shirt </h2>\n<h3> 100% Original Products </h3>\n<h3> Pure Cotton blend </h3>\n<h3>Machine-wash </h3>', 1500, 3000, 20, 'Green_shirt_men_1.jpg', 'Green_shirt_men_2.jpg', 'Green_shirt_men_3.jpg', 'Green_shirt_men_4.jpg', '2022-11-13'),
(235, 'NETPLAY BLACK SHIRT (CASUAL)', 'Men', ' <h2> black casual Shirt </h2>\n<h3> 100% Original Products </h3>\n<h3> Pure Cotton blend </h3>\n<h3>Machine-wash </h3>', 900, 1800, 30, 'black_slim_fit_shirt_1.jpg', 'black_slim_fit_shirt_2.jpg', 'black_slim_fit_shirt_3.jpg', 'black_slim_fit_shirt_4.jpg', '2022-11-13'),
(236, 'HENRY SANDAL PANT', 'Men', ' <h2>\r\nSlim Fit</h2>\r\n<h2>Machine wash</h2>\r\n<h2>100% Cotton</h2>\r\n<h2>Mid Rise</h2>\r\n', 700, 1400, 20, 'dockers-1.jpg', 'dockers-2.jpg', 'dockers-3.jpg', 'dockers-4.jpg', '2022-11-13'),
(237, 'RAW GREY PANT', 'Men', ' <h2>\r\nSlim Fit</h2>\r\n<h2>Machine wash</h2>\r\n<h2>100% Cotton</h2>\r\n<h2>Mid Rise</h2>\r\n<h2>Polyester viscose blend\r\n</h2>', 950, 1900, 20, 'rawgrey-1.jpg', 'rawgrey-2.jpg', 'rawgrey-3.jpg', 'rawgrey-4.jpg', '2022-11-13'),
(238, 'LEE BROWN PANT', 'Men', '<h2>insert pockets, back welt pockets</h2>\r\n<h2>Button closure</h2>\r\n<h2>Belt loops</h2>\r\n<h2>Tapered Fit</h2>\r\n<h2>Machine wash cold</h2>\r\n<h2>Mid Rise</h2>', 1000, 2000, 30, 'leebrown-1.jpg', 'leebrown-2.jpg', 'leebrown-3.jpg', 'leebrown-4.jpg', '2022-11-13'),
(239, 'BURBERRY PANT', 'Men', ' <h2>back welt pockets</h2>\r\n<h2>Button closure</h2>\r\n<h2>Belt loops</h2>\r\n<h2>Machine wash cold</h2>\r\n<h2>Mid Rise</h2>\r\n<h2>98% cotton, 2% elastane</h2>\r\n', 800, 1600, 30, 'burberry-1.jpg', 'burberry-2.jpg', 'burberry-3.jpg', 'burberry-4.jpg', '2022-11-13'),
(240, 'WINGS BROWN PANT', 'Men', '<h1>\r\nInsert pockets, back welt pockets</h1>\r\n<h1>Designed with flat-front styling</h1>\r\n<h1>\r\nSlim Fit</h1><h1>\r\nMachine wash</h1><h1>\r\nMid Rise</h1><h1>\r\n99% cotton, 1% Lycra</h1>', 900, 1800, 20, 'raw-1.jpg', 'raw-2.jpg', 'raw-3.jpg', 'raw-4.jpg', '2022-11-13'),
(241, 'SYMBOL BLUE JEAN', 'Men', ' <h1>Machine wash warm</h1>\r\n<h1>Low Rise</h1>\r\n<h1>88% cotton, 11% polyester, 1% elastane</h1>', 1000, 2000, 20, 'symbolblue-1.jpg', 'symbolblue-2.jpg', 'symbolblue-3.jpg', 'symbolblue-4.jpg', '2022-11-14'),
(242, 'MADEWELL JEAN', 'Men', ' <h1> 5-pocket styling </h1>\r\n <h1>Zip fly and button closure </h1>\r\n <h1>Machine wash </h1>\r\n <h1>Mid Rise </h1>\r\n <h1>Cotton Blend </h1>', 1200, 2400, 20, 'madewell-1.jpg', 'madewell-2.jpg', 'madewell-3.jpg', 'madewell-4.jpg', '2022-11-14'),
(243, 'LEE JEAN', 'Men', '<h1>100% COTTON</h1>\r\n<h1>Hand wash</h1>\r\n<h1>Mid Rise</h1>', 1500, 3000, 20, 'lee-1.jpg', 'lee-2.jpg', 'lee-3.jpg', 'lee-4.jpg', '2022-11-14'),
(244, 'SYMBOL BLACK JEAN', 'Men', ' <h1>Machine wash </h1>\r\n <h1>Cotton </h1>\r\n <h1>Low Rise </h1>', 1500, 3000, 20, 'symbolblack-1.jpg', 'symbolblack-2.jpg', 'symbolblack-3.jpg', 'symbolblack-4.jpg', '2022-11-14'),
(245, 'FLYING MACHINE JEAN', 'Men', '<h1>Zip fly with button closure</h1>\r\n<h1>Machine wash</h1>\r\n<h1>Mid Rise</h1>\r\n<h1>Cotton Blend</h1>\r\n', 1300, 2600, 25, 'flying_machine_1.jpg', 'flying_machine_2.jpg', 'flying_machine_3.jpg', 'flying_machine_4.jpg', '2022-11-14');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2362;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
