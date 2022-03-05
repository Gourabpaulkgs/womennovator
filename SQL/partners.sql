-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 05, 2022 at 04:30 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `womennovator`
--

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` int(11) NOT NULL,
  `poc_name` varchar(255) NOT NULL,
  `poc_email` varchar(255) NOT NULL,
  `business_name` varchar(255) NOT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `provider_id` int(11) DEFAULT NULL,
  `contribution` varchar(50) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `partnership_agreement` varchar(50) DEFAULT NULL,
  `interact_as_partner_others` varchar(255) DEFAULT NULL,
  `program_updates` varchar(50) DEFAULT NULL,
  `social_handles` varchar(255) DEFAULT NULL,
  `nominate` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `is_fillup` int(11) NOT NULL DEFAULT 0,
  `temp_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `poc_name`, `poc_email`, `business_name`, `mobile`, `provider_id`, `contribution`, `logo`, `partnership_agreement`, `interact_as_partner_others`, `program_updates`, `social_handles`, `nominate`, `created_at`, `updated_at`, `state_id`, `city_id`, `status`, `is_fillup`, `temp_id`) VALUES
(1, 'Lorenza Haag', 'jaeden.ziemann@example.org', 'nulla', '(239) 621-7765', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 1, 0, NULL),
(2, 'Dr. Hellen Reichel V', 'leone.johns@example.net', 'qui', '928-527-7413', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 1, 0, NULL),
(3, 'Ella Hickle', 'aubrey40@example.com', 'impedit', '657.925.8631', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 1, 0, NULL),
(4, 'Freddy Wilkinson', 'kenna72@example.net', 'dolores', '1-561-858-2495', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 1, 0, NULL),
(5, 'Hassan O\'Hara', 'asauer@example.org', 'impedit', '341-340-3703', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 1, 0, NULL),
(6, 'Florian Anderson', 'johnathan.yundt@example.net', 'accusamus', '440-229-4495', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 1, 0, NULL),
(7, 'Sidney Marquardt Jr.', 'milford.keebler@example.net', 'ut', '754.253.2867', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 1, 0, NULL),
(8, 'Prof. Gene Wilderman', 'dave.dietrich@example.com', 'harum', '1-309-691-4473', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 1, 0, NULL),
(9, 'Emilio Abshire', 'elvis.gerlach@example.net', 'possimus', '303.343.3484', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 1, 0, NULL),
(10, 'Tressa Keebler', 'mkshlerin@example.net', 'ut', '929.852.5861', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 1, 0, NULL),
(11, 'Otho Reichert', 'landen.auer@example.org', 'ratione', '+18545540952', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 1, 0, NULL),
(12, 'Giuseppe Swaniawski', 'wiza.jadon@example.net', 'eaque', '445-518-8810', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 1, 0, NULL),
(13, 'Marilie Gulgowski', 'fay.ansley@example.org', 'perspiciatis', '+19854888468', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(14, 'Megane Halvorson', 'boyer.graciela@example.net', 'non', '+1-707-877-3371', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(15, 'Monserrat Will MD', 'nader.lauriane@example.net', 'rerum', '+1 (380) 368-5632', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(16, 'Elna Frami', 'schimmel.wilhelmine@example.org', 'natus', '(754) 285-9644', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(17, 'Prof. Taylor Ruecker II', 'green.hirthe@example.org', 'sit', '1-870-855-4109', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(18, 'Foster Metz DDS', 'lessie.ryan@example.org', 'veritatis', '(445) 612-7876', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(19, 'Zetta Larson', 'gus.fritsch@example.net', 'aut', '(253) 786-1162', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(20, 'Fritz Koch IV', 'hagenes.neoma@example.org', 'ut', '612-741-6343', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(21, 'Ansley Johnson', 'runte.brant@example.net', 'pariatur', '218.524.2629', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(22, 'Vincent Bechtelar', 'watsica.elisha@example.net', 'ut', '(570) 784-4081', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(23, 'Dr. Rose Gaylord', 'loraine.kertzmann@example.org', 'consequatur', '+1-458-636-2567', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(24, 'Mr. Anastacio Wolff V', 'lsanford@example.org', 'ducimus', '1-225-988-8453', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(25, 'Emmet Thiel', 'noel.labadie@example.net', 'deleniti', '(775) 289-9472', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(26, 'Cletus Streich', 'bahringer.ian@example.net', 'nihil', '+1-680-278-4519', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(27, 'Elda Rippin II', 'jaclyn90@example.net', 'dicta', '1-845-419-0549', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(28, 'Zita DuBuque', 'kolson@example.net', 'eos', '+1.575.535.9839', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(29, 'Gregory Weissnat I', 'ulices.williamson@example.com', 'laboriosam', '+17064022462', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(30, 'Ms. Brenda Terry PhD', 'vboyer@example.com', 'fugit', '628-335-2080', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(31, 'Bulah Cormier', 'herbert80@example.com', 'qui', '+1-651-807-7183', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(32, 'Prof. Marlin Russel', 'mariana.hirthe@example.net', 'repellat', '(831) 405-9850', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(33, 'Jedediah Hermann', 'vjast@example.org', 'fuga', '+1-260-775-4096', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(34, 'Albin Borer', 'brielle.runolfsson@example.com', 'qui', '1-940-245-7718', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(35, 'Myrtis Braun', 'wlangworth@example.com', 'veritatis', '267-320-6040', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(36, 'Makenna Friesen', 'cassandre.yundt@example.net', 'et', '+1-706-558-2661', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(37, 'Bert Doyle', 'crutherford@example.com', 'mollitia', '1-629-559-4241', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(38, 'Gwen Brown', 'lehner.jailyn@example.org', 'velit', '304.439.8758', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(39, 'Mr. Wilmer Stiedemann', 'frussel@example.org', 'delectus', '+1.518.728.9878', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(40, 'Koby Kerluke', 'eddie89@example.net', 'sit', '+1 (612) 933-2721', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(41, 'Fausto Gerlach', 'pgrant@example.com', 'eius', '980-407-5064', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(42, 'Ottilie Kassulke PhD', 'laney.murphy@example.net', 'voluptas', '+1-332-447-5882', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(43, 'Kiarra Langosh', 'keeling.torey@example.com', 'et', '(870) 825-9399', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(44, 'Adolfo Hoppe', 'regan.mueller@example.org', 'esse', '(805) 606-4350', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(45, 'Rosario Kilback II', 'kellie.moore@example.com', 'fugiat', '+1.206.509.7868', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(46, 'Elta Gleason', 'cordia43@example.org', 'officiis', '(929) 438-9021', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(47, 'Shirley Renner V', 'dennis.hoppe@example.org', 'deleniti', '531-368-3658', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(48, 'Mr. Braeden Klocko', 'bernice86@example.org', 'alias', '551.287.1535', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(49, 'Mr. Hollis Hegmann', 'viva.deckow@example.org', 'fugit', '1-973-532-6409', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(50, 'Prof. Titus Abernathy V', 'sparisian@example.com', 'fugit', '1-580-608-8741', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(51, 'Laney Toy', 'boyd41@example.net', 'voluptatum', '+1 (608) 999-3862', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(52, 'Ms. Chanelle Morar', 'hherzog@example.net', 'ex', '1-351-261-3191', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(53, 'Prof. Estefania Bernier Sr.', 'greenholt.shea@example.com', 'assumenda', '+1-463-546-4916', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(54, 'Dr. Sammy Hintz', 'citlalli62@example.net', 'minima', '+18064965741', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(55, 'Kiana Beier', 'roderick.stehr@example.org', 'aut', '865-551-9513', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(56, 'Prof. Grace O\'Keefe', 'ncole@example.net', 'soluta', '+1-689-729-2629', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(57, 'Gregg Kovacek', 'schmidt.elnora@example.org', 'magnam', '+1 (541) 677-6484', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(58, 'Jaylan Mueller', 'elaina.schneider@example.org', 'sapiente', '615.413.4861', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(59, 'Dr. Idella Swift', 'vterry@example.com', 'aut', '1-484-480-1563', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(60, 'Harvey Bahringer', 'west.lavern@example.com', 'ut', '541-417-4431', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(61, 'Catharine Pagac', 'gaston.armstrong@example.org', 'illum', '+1-469-850-6593', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(62, 'Waldo Donnelly', 'anastasia.thiel@example.net', 'quam', '551.209.9814', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(63, 'Alba Fritsch', 'cronin.guadalupe@example.org', 'dolore', '(757) 203-0028', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(64, 'Khalid Larkin', 'maxime.ankunding@example.org', 'tenetur', '(806) 732-6248', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(65, 'Teagan Haag', 'collins.justice@example.org', 'culpa', '+1.757.807.8914', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(66, 'Shad Brekke', 'cassandra57@example.org', 'nihil', '+1.347.201.8157', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(67, 'Cory Kohler', 'adela72@example.org', 'ducimus', '(346) 752-8800', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(68, 'Liam Kling', 'hauck.dennis@example.com', 'fuga', '1-703-743-2184', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(69, 'Bryce Monahan', 'wolf.ova@example.com', 'molestiae', '(805) 950-3231', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(70, 'Dr. Chase Smith DDS', 'fconroy@example.com', 'perferendis', '216.870.7003', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(71, 'Soledad Leffler', 'lubowitz.cleo@example.org', 'nulla', '+1 (623) 950-4486', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(72, 'Graham O\'Reilly', 'donnelly.wellington@example.com', 'iste', '+19598140339', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(73, 'Fausto Renner I', 'wiza.rhianna@example.net', 'voluptatum', '812-931-8502', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(74, 'Emely Armstrong', 'smoore@example.org', 'et', '+1.520.359.7424', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(75, 'Elmore Mann', 'xmraz@example.net', 'expedita', '+1-980-424-8234', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(76, 'Sven Kemmer', 'katheryn41@example.net', 'optio', '1-475-928-7421', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(77, 'Kianna Simonis', 'nmuller@example.com', 'molestiae', '+1-279-259-4715', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(78, 'Dr. Shyann Miller', 'orion.schneider@example.org', 'rerum', '248-298-5755', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(79, 'Vincenzo Raynor', 'georgianna.stark@example.org', 'numquam', '210-728-5732', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(80, 'Yasmin Smitham', 'jaqueline91@example.org', 'ut', '+15396867240', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(81, 'Prof. Ariel Koepp', 'sschaden@example.com', 'est', '580.547.1479', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(82, 'Corene Yost', 'gaylord.wayne@example.org', 'et', '410.766.8870', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(83, 'Dr. Shayna Hintz', 'nlegros@example.com', 'provident', '+1-312-942-4497', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(84, 'Dora Bauch', 'hilton.auer@example.net', 'amet', '661.920.1847', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(85, 'Leilani Erdman', 'cheyanne98@example.com', 'odio', '+15649622654', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(86, 'Emmanuelle Hackett', 'zgleichner@example.net', 'laudantium', '832.284.1903', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(87, 'Elfrieda Kuvalis', 'lhirthe@example.net', 'dolore', '517.934.9962', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(88, 'Daniella Corwin Sr.', 'rebeca.wunsch@example.net', 'neque', '(223) 585-8129', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(89, 'Makenzie McLaughlin', 'wava.schmeler@example.com', 'unde', '520.564.0713', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(90, 'Dr. Dave Toy', 'jschultz@example.com', 'et', '1-959-727-2091', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(91, 'Mittie Runolfsdottir', 'jo39@example.com', 'ipsa', '+1.520.836.7985', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(92, 'Darlene Paucek', 'cbruen@example.com', 'porro', '1-828-503-1188', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(93, 'Gaston McCullough', 'damion78@example.net', 'voluptatem', '1-508-665-3601', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(94, 'Nicolas Krajcik', 'leora.rutherford@example.com', 'cupiditate', '+1-248-424-4644', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(95, 'Watson Purdy', 'suzanne.kub@example.org', 'hic', '+1-309-210-4848', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(96, 'Prof. Lisandro Sanford MD', 'lucious91@example.org', 'velit', '1-351-715-6756', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(97, 'Gillian Hand II', 'josefa87@example.net', 'voluptas', '631-300-1730', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(98, 'Bert Schiller', 'felton.dach@example.net', 'dolores', '(386) 805-3585', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(99, 'Aurelie Little', 'alanis.mitchell@example.net', 'labore', '925-367-1409', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL),
(100, 'Jordan Maggio', 'ebert.ahmad@example.com', 'eum', '475.802.8445', 3740, 'contribution', 'logo.png', 'partnership_agreement', NULL, 'program_updates', 'social_handles', NULL, '2022-02-28 22:17:09', '2022-02-28 22:17:09', 36, 348, 0, 0, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
