-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 05, 2022 at 04:31 AM
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
-- Table structure for table `accepted_communities`
--

CREATE TABLE `accepted_communities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `followers` int(255) DEFAULT 0,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `industry` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `led_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `led_by_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accepted_communities`
--

INSERT INTO `accepted_communities` (`id`, `name`, `about`, `followers`, `city`, `country`, `industry`, `led_by`, `led_by_id`, `logo`, `page_url`, `status`, `user_id`, `created_by`, `created_at`, `updated_at`, `tag`) VALUES
(3, 'Aligarh Womennovators', '', 21, 'Aligarh', 'India', NULL, 'Sajida Nadeem', '', '1643806306.jpeg', 'aligarh-womennovators', 1, 3723, '3723', NULL, NULL, NULL),
(4, 'Bangalore 1 Womennovators', '', 15, 'Bangalore', 'India', NULL, 'Dt. Nidhi Nigam', '', '1643881552.png', 'bangalore', 1, 3723, '3723', NULL, NULL, NULL),
(5, 'Chengalpattu Womennovators', '', 43, 'Chengalpattu', 'India', NULL, 'Parveen Fazul', '', '1643801653.png', 'chengalpattu', 1, 3723, '3723', NULL, NULL, NULL),
(6, 'Chennai Womennovators', '', 84, 'Chennai', 'India', NULL, 'Krishnaveni Kannan', '', '1643801778.png', 'chennai', 1, 3723, '3723', NULL, NULL, ''),
(7, 'Ghaziabad 1 Womennovators', '', 16, 'Ghaziabad', 'India', NULL, 'Seema Mishra', '', '1643801872.jpg', 'ghaziabad', 1, 3723, '3723', NULL, NULL, NULL),
(8, 'Kerala Womennovators', '', 14, 'Kerala', 'India', NULL, 'Meera Haridas', '', '1643805013.jpg', 'kerala', 1, 3723, '3723', NULL, NULL, NULL),
(9, 'Mathura Womennovators', '', 27, 'Mathura', 'India', NULL, 'Pawani Khandelwal', '', '1643805099.png', 'mathura', 1, 3723, '3723', NULL, NULL, ''),
(11, 'Nashik Womennovators', '', 390, 'Nashik', 'India', NULL, 'Deepali Chandak', '', '1643805717.jpg', 'nashik', 1, 3723, '3723', NULL, NULL, ''),
(12, 'Navi Mumbai Womennovators', '', 31, 'Navi Mumbai', 'India', NULL, 'Manisha Jhamb', '', '1643805834.png', 'navi-mumbai', 1, 3723, '3723', NULL, NULL, NULL),
(13, 'Surat Womennovators', '', 51, 'Surat', 'India', NULL, 'Nazm Bilochpura', '', '1643805964.jpg', 'surat', 1, 3723, '3723', NULL, NULL, NULL),
(14, 'Thiruvallur Womennovators', '', 61, 'Thiruvallur', 'India', NULL, 'Meenakshi Balu', '', '1643806185.png', 'thiruvallur', 1, 3723, '3723', NULL, NULL, ''),
(23, 'Chandigarh Womennovators', '', 52, 'Chandigarh', 'India', NULL, 'Sabeena Khanna', NULL, '1643875407.png', 'chandigarh', 1, 1, '1', NULL, NULL, NULL),
(24, 'Human Resources Womennovators', '', 17, 'Delhi', 'India', NULL, 'Saloni Kaul', NULL, '1643870803.png', 'human-resources', 1, 1, '1', NULL, NULL, NULL),
(25, 'Beauty And Wellnes Womennovators', '', 17, 'Delhi', 'India', NULL, 'Dr Deepali Bhardwaj', NULL, '1643871625.jpeg', 'beauty-and-wellnes', 1, 1, '1', NULL, NULL, NULL),
(27, 'Power And Energy Womennovators', '', 17, 'Delhi', 'India', NULL, 'Priyanka Dewan', NULL, '1643872330.jpg', 'power-and-energy', 1, 1, '1', NULL, NULL, NULL),
(28, 'Education Womennovators', '', 9, 'Delhi', 'India', NULL, 'Charushilla Narula Bajpai', NULL, '1643872851.jpg', 'education', 1, 1, '1', NULL, NULL, NULL),
(29, 'Travel & Tourism Womennovators', '', 25, 'Delhi', 'India', NULL, 'Rashmi Chadha', NULL, '1643873325.jpg', 'travel-tourism', 1, 1, '1', NULL, NULL, NULL),
(30, 'Pageant 1 Womennovators', '', 15, 'Delhi', 'India', NULL, 'Rita Gangwani', NULL, '1643873546.jpg', 'pageant', 1, 1, '1', NULL, NULL, NULL),
(31, 'Prisoner Correction & Rehabilitation Womennovators', '', 12, 'Delhi', 'India', NULL, 'Sadhvi Jaya Bharti', NULL, '1643874036.jpg', 'prisoner-correction', 1, 1, '1', NULL, NULL, NULL),
(32, 'Chef Womennovators', '', 13, 'Delhi', 'India', NULL, 'Veeta Singh', NULL, '1643875048.png', 'chef', 1, 1, '1', NULL, NULL, NULL),
(33, 'Cancer Support & Awareness Womennovators', '', 36, 'Delhi', 'India', NULL, 'Megha Ahuja', NULL, '1643875292.png', 'cancer-support', 1, 1, '1', NULL, NULL, NULL),
(35, 'Bangladesh Womennovators', '', 24, 'Dhaka', 'Bangladesh', NULL, 'Raoman Smita', NULL, '1643877121.jpg', 'bangladesh', 1, 1, '1', NULL, NULL, NULL),
(36, 'Uganda Womennovators', '', 18, 'Kampala', 'Uganda', NULL, 'Nandawula Sarah', NULL, '1643877498.png', 'uganda', 1, 1, '1', NULL, NULL, NULL),
(37, 'Specially Abled Womennovators', '', 12, 'Delhi', 'India', NULL, 'Suvarna Raj', NULL, '1643877938.jpg', 'specially-abled', 1, 1, '1', NULL, NULL, NULL),
(38, 'Food & Beverages Womennovators', '', 11, 'Delhi', 'India', NULL, 'Kirti Sachdeva', NULL, '1643878468.png', 'food-beverages', 1, 1, '1', NULL, NULL, NULL),
(39, 'Media and Entertainment Womennovators', '', 23, 'Delhi', 'India', NULL, 'Vinita Bhatia', NULL, '1643878803.png', 'media-entertainment', 1, 1, '1', NULL, NULL, NULL),
(40, 'Delhi Womennovators', '', 34, 'Delhi', 'India', NULL, 'Vandy Mehra', NULL, '1643879140.png', 'delhi', 1, 1, '1', NULL, NULL, NULL),
(41, 'Gurugram Womennovators', '', 28, 'Gurugram', 'India', NULL, 'Swati Jain', NULL, '1643879295.png', 'gurugram', 1, 1, '1', NULL, NULL, NULL),
(42, 'Sports Womennovators', '', 15, 'Delhi', 'India', NULL, 'Shyamli Rathore', NULL, '1643880568.png', 'sports', 1, 1, '1', NULL, NULL, NULL),
(43, 'Moradabad 1 Womennovators', '', 69, 'Moradabad', 'India', NULL, 'Stuti Agarwal', NULL, '1643880819.jpg', 'moradabad', 1, 1, '1', NULL, NULL, NULL),
(45, 'Skill & Training Womennovators', '', 18, 'Delhi', 'India', NULL, 'Renu Bajpai', NULL, '1643957765.jpg', NULL, 1, 1, '1', NULL, NULL, NULL),
(46, 'Uttarakhand 1 Womennovators', '', 30, 'Uttarakhand', 'India', NULL, 'Reena Agarwal', NULL, '1643958533.png', NULL, 1, 1, '1', NULL, NULL, NULL),
(47, 'Meerut Womennovators', '', 19, 'Meerut', 'India', NULL, 'Rajshri Jain', NULL, '1643963183.jpg', NULL, 1, 1, '1', NULL, NULL, NULL),
(48, 'Politics Womennovators', '', 18, 'Delhi', 'India', NULL, 'Rachhna R Kalra', NULL, '1643964182.jpg', NULL, 1, 1, '1', NULL, NULL, NULL),
(49, 'Interior And Architecture Womennovators', '', 10, 'Delhi', 'India', NULL, 'Meetu Puri', NULL, '1643964767.jpeg', NULL, 1, 1, '1', NULL, NULL, NULL),
(50, 'UAE Dubai Womennovators', '', 20, 'Dubai', 'UAE', NULL, 'Sandhya Prakash', NULL, '1643965366.png', NULL, 1, 1, '1', NULL, NULL, NULL),
(51, 'Gems & Jewels Womennovators', '', 18, 'Delhi', 'India', NULL, 'Manmeet Singh', NULL, '1643965547.jpg', NULL, 1, 1, '1', NULL, NULL, NULL),
(52, 'Tribal Womennovators', '', 4, 'Delhi', 'India', NULL, 'Madhavi Shree', NULL, '1643966069.jpeg', NULL, 1, 1, '1', NULL, NULL, NULL),
(53, 'Luxury - 1 Womennovators', '', 86, 'Delhi', 'India', NULL, 'Madhavi Advani', NULL, '1643967034.png', NULL, 1, 1, '1', NULL, NULL, NULL),
(54, 'Literature Womennovators', '', 14, 'Delhi', 'India', NULL, 'Leher Sethi', NULL, '1643967510.jpg', NULL, 1, 1, '1', NULL, NULL, NULL),
(55, 'Amroha Womennovators', '', 15, 'Amroha', 'India', NULL, 'Fatima Saba Naqvi', NULL, '1643969235.png', NULL, 1, 1, '1', NULL, NULL, NULL),
(56, 'Luxury -2 Womennovators', '', 36, 'Delhi', 'India', NULL, 'Arpana Agarwal', NULL, '1643969381.png', NULL, 1, 1, '1', NULL, NULL, NULL),
(57, 'Performing Arts Womennovators', '', 16, 'Delhi', 'India', NULL, 'Aparnaa Laxmi Singh', NULL, '1643969913.jpg', NULL, 1, 1, '1', NULL, NULL, NULL),
(58, 'Delhi NCR Womennovators', '', 17, 'Delhi', 'India', NULL, 'Anjuu A Handaa', NULL, '1643970219.jpg', NULL, 1, 1, '1', NULL, NULL, NULL),
(59, 'Gujarat 1 Womennovators', '', 30, 'Gujarat', 'India', NULL, 'Dr Geetika Saluja', NULL, '1643970535.png', NULL, 1, 1, '1', NULL, NULL, NULL),
(60, 'Bihar Womennovators', '', 32, 'Patna', 'India', NULL, 'Usha Jha', NULL, '1643973051.jpg', NULL, 1, 1, '1', NULL, NULL, NULL),
(61, 'Legal Awareness & Human Rights Womennovators', '', 14, 'Delhi', 'India', NULL, 'Bhavna Bajaj', NULL, '1643974835.jpg', NULL, 1, 1, '1', NULL, NULL, NULL),
(62, 'Corporate Training Womennovators', '', NULL, 'Delhi', 'India', NULL, 'Dr. Gagandeep Kaur Gulati', NULL, '1643975283.jpg', NULL, 1, 1, '1', NULL, NULL, NULL),
(63, 'Jammu & Kashmir Womennovators', '', 50, 'Jammu & Kashmir', 'India', NULL, 'Dr. Ridwana Sanam', NULL, '1643976115.jpg', NULL, 1, 1, '1', NULL, NULL, NULL),
(64, 'Nashik Womennovator', '', 397, 'Nashik Maharashtra', 'India', NULL, 'Dipali Ashish Chandak', NULL, '1643976416.jpg', NULL, 1, 1, '1', NULL, NULL, NULL),
(65, 'Maharashtra State Womennovator', '', 124, 'Mumbai', 'India', NULL, 'Neha Ankit Kadakia', NULL, '1643977612.png', NULL, 1, 1, '1', NULL, NULL, NULL),
(66, 'Madhya Pradesh', '', 50, 'Indore Madhya Pradesh', 'India', NULL, 'Pallavi Vyas', NULL, '1643977890.png', NULL, 1, 1, '1', NULL, NULL, NULL),
(67, 'Pune Womennovators', '', 79, 'Pune Maharashtra', 'India', NULL, 'Sujata Mengane', NULL, '1643979117.jpg', NULL, 1, 1, '1', NULL, NULL, NULL),
(68, 'Kolkata Womennovators', '', 23, 'Kolkata', 'India', NULL, 'Nayan Mitra', NULL, '1643982644.jpg', NULL, 1, 1, '1', NULL, NULL, NULL),
(69, 'Environment Womennovators', '', 26, 'Pune Maharashtra', 'India', NULL, 'Bhavisha Buddhadeo', NULL, '1643983078.png', NULL, 1, 1, '1', NULL, NULL, NULL),
(74, 'Chandigarh Womennovators', '', 52, 'Chandigarh', 'India', NULL, 'Prerna Kalra', NULL, '1644567478.jpg', NULL, 1, 1, '1', NULL, NULL, NULL),
(75, 'Power And Energy Womennovators', '', 17, 'Delhi', 'India', 'power and Energy', 'Tanvi Rajput', NULL, '1644567742.jpg', NULL, 1, 1, '1', NULL, NULL, NULL),
(76, 'Middle East Womennovators', '', 156, 'Manama', 'Bahrain', NULL, 'Helen Lobo', NULL, '1644570422.jpeg', NULL, 1, 1, '1', NULL, NULL, NULL),
(77, 'Specially Abled Womennovators', '', 12, 'Delhi', 'India', 'Specially Abled', 'Sameer Garg', NULL, '1644570638.png', NULL, 1, 1, '1', NULL, NULL, NULL),
(78, 'Skill & Training Womennovators', '', 18, 'Delhi', 'India', 'Skill & Training', 'Sneha Routray', NULL, '1644570919.jpg', NULL, 1, 1, '1', NULL, NULL, NULL),
(79, 'Moradabad 2 Womennovators', '', 69, 'Moradabad', 'India', NULL, 'Shruti Dua', NULL, '1644571222.png', NULL, 1, 1, '1', NULL, NULL, NULL),
(80, 'Bangalore 2 Womennovators', '', 15, 'bangalore', 'India', NULL, 'Priyanka Kaushik', NULL, '1644575412.png', NULL, 1, 1, '1', NULL, NULL, NULL),
(81, 'Moradabad 3 Womennovators', '', 69, 'Moradabad', 'India', NULL, 'Garima Singh', NULL, '1644581338.jpg', NULL, 1, 1, '1', NULL, NULL, NULL),
(82, 'Ghaziabad 2 Womennovators', '', 15, 'Ghaziabad', 'India', NULL, 'Manisha Dhingra Chopra', NULL, '1644581502.png', NULL, 1, 1, '1', NULL, NULL, NULL),
(83, 'Pageant 2 Womennovators', '', 15, 'Delhi', 'India', 'Pageant', 'Jayshri A Jain', NULL, '1644581670.jpg', NULL, 1, 1, '1', NULL, NULL, NULL),
(84, 'Gujarat 2 Womennovators', '', 30, 'Gujarat', 'India', NULL, 'Shruti Kushwah', NULL, '1644581799.png', NULL, 1, 1, '1', NULL, NULL, NULL),
(85, 'Bangalore 3 Womennovators', '', 15, 'bangalore', 'India', NULL, 'Mahua Mukharjee', NULL, '1644581958.jpg', NULL, 1, 1, '1', NULL, NULL, NULL),
(86, 'Uttarakhand 2 Womennovators', '', 30, 'Dehradun', 'India', NULL, 'Priya Gulati', NULL, '1644582745.png', NULL, 1, 1, '1', NULL, NULL, NULL),
(87, 'Uttarakhand 3 Womennovators', '', 30, 'Dehradun', 'India', NULL, 'Deepa Chawla', NULL, '1644582794.png', NULL, 1, 1, '1', NULL, NULL, NULL),
(97, 'Kgs Fintech', 'About community', 0, 'Delhi', 'Afghanistan', 'Aerospace Industry', NULL, NULL, 'community.jpg', NULL, 1, 3722, '3722', NULL, NULL, NULL),
(98, 'Test Community', 'gcgfuy', 0, 'Delhi', 'Afghanistan', 'Aerospace Industry', NULL, NULL, 'community.jpg', NULL, 1, 3722, '3722', NULL, NULL, NULL),
(99, 'Mystic', 'Mysterious Community for', 2, 'Risigan', 'United Kingdom', 'Telecommunication  Industry', NULL, NULL, '1645592366.jpg', NULL, 1, 3740, '3740', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accepted_communities`
--
ALTER TABLE `accepted_communities`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accepted_communities`
--
ALTER TABLE `accepted_communities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
