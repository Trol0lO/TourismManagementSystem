-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 31, 2023 at 05:05 PM
-- Server version: 8.0.33
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id21096495_tourism`
--

-- --------------------------------------------------------

--
-- Table structure for table `book_list`
--

CREATE TABLE `book_list` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `package_id` int NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '0=pending,1=confirm, 2=cancelled\r\n',
  `schedule` date DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book_list`
--

INSERT INTO `book_list` (`id`, `user_id`, `package_id`, `status`, `schedule`, `date_created`) VALUES
(2, 4, 8, 3, '2021-06-21', '2021-06-19 08:37:59'),
(3, 5, 8, 3, '2021-06-18', '2021-06-19 11:51:50'),
(4, 1, 18, 3, '2023-07-08', '2023-07-31 14:21:36'),
(5, 1, 9, 0, '2023-06-30', '2023-07-31 21:34:48');

-- --------------------------------------------------------

--
-- Table structure for table `inquiry`
--

CREATE TABLE `inquiry` (
  `id` int NOT NULL,
  `name` text,
  `email` text,
  `subject` varchar(250) NOT NULL,
  `message` text,
  `status` tinyint NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inquiry`
--

INSERT INTO `inquiry` (`id`, `name`, `email`, `subject`, `message`, `status`, `date_created`) VALUES
(8, 'James', 'james@gmail.com', 'Great App', 'I love your app', 0, '2023-07-31 20:15:31');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int NOT NULL,
  `title` text,
  `tour_location` text,
  `cost` double NOT NULL,
  `description` text,
  `upload_path` text,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1 =active ,2 = Inactive',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `title`, `tour_location`, `cost`, `description`, `upload_path`, `status`, `date_created`) VALUES
(9, 'Timangguyob Falls', 'San Clemente, Tarlac ', 0, '&lt;p&gt;&lt;span style=&quot;color: rgb(10, 10, 10); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Roboto, Arial, sans-serif; font-size: 20px;&quot;&gt;The name&amp;nbsp;&lt;/span&gt;&lt;em style=&quot;box-sizing: inherit; line-height: inherit; color: rgb(10, 10, 10); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Roboto, Arial, sans-serif; font-size: 20px;&quot;&gt;&ldquo;&lt;/em&gt;&lt;span style=&quot;box-sizing: inherit; font-weight: 700; line-height: inherit; color: rgb(10, 10, 10); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Roboto, Arial, sans-serif; font-size: 20px;&quot;&gt;&lt;em style=&quot;box-sizing: inherit; line-height: inherit;&quot;&gt;Timangguyob&lt;/em&gt;&lt;/span&gt;&lt;em style=&quot;box-sizing: inherit; line-height: inherit; color: rgb(10, 10, 10); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Roboto, Arial, sans-serif; font-size: 20px;&quot;&gt;&ldquo;&lt;/em&gt;&lt;span style=&quot;color: rgb(10, 10, 10); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Roboto, Arial, sans-serif; font-size: 20px;&quot;&gt;&amp;nbsp;is named after the local term for a&lt;/span&gt;&lt;em style=&quot;box-sizing: inherit; line-height: inherit; color: rgb(10, 10, 10); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Roboto, Arial, sans-serif; font-size: 20px;&quot;&gt;&amp;nbsp;&lsquo;&lt;/em&gt;&lt;span style=&quot;box-sizing: inherit; font-weight: 700; line-height: inherit; color: rgb(10, 10, 10); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Roboto, Arial, sans-serif; font-size: 20px;&quot;&gt;&lt;em style=&quot;box-sizing: inherit; line-height: inherit;&quot;&gt;carabao&rsquo;s horn&rsquo;&lt;/em&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;color: rgb(10, 10, 10); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Roboto, Arial, sans-serif; font-size: 20px;&quot;&gt;because the waterfalls are in the shape of a funnel. This area was first discovered by&lt;/span&gt;&lt;span style=&quot;box-sizing: inherit; font-weight: 700; line-height: inherit; color: rgb(10, 10, 10); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Roboto, Arial, sans-serif; font-size: 20px;&quot;&gt;&amp;nbsp;&lt;em style=&quot;box-sizing: inherit; line-height: inherit;&quot;&gt;Local Aeta inhabitants&lt;/em&gt;&lt;/span&gt;&lt;span style=&quot;color: rgb(10, 10, 10); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Roboto, Arial, sans-serif; font-size: 20px;&quot;&gt;&amp;nbsp;living in the nearby&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;box-sizing: inherit; font-weight: 700; line-height: inherit; color: rgb(10, 10, 10); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Roboto, Arial, sans-serif; font-size: 20px;&quot;&gt;&lt;em style=&quot;box-sizing: inherit; line-height: inherit;&quot;&gt;Sitio Dueg&lt;/em&gt;&lt;/span&gt;&lt;span style=&quot;color: rgb(10, 10, 10); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Roboto, Arial, sans-serif; font-size: 20px;&quot;&gt;&amp;nbsp;resettlement area were the first to find this location. There is currently a trail that takes roughly an hour and a half to reach. The local administration has already planned a second trail leading up to the crest of the falls, where a campsite might be set up for weekend warriors and hikers who plan to remain overnight.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'uploads/package_9', 1, '2023-07-28 00:00:05'),
(10, 'Jose V. Yap Sports and Recreational Complex', 'San Jose, Tarlac ', 0, '&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif;&quot;&gt;Jose V Yap Sports &amp;amp; Recreational Complex (TRP)&rsquo;s site was a rocky terrain spanning 78 hectares. The perfect site for the proposed Tarlac Sports and Recreational Park was named after the late Gov. Jose V. Yap. It was the late GOVERNOR&rsquo;S vision to have an international standard sports facility in Tarlac Province. The design of the complex was the brainchild of Gov. Victor A. Yap The Son Of the late Governor.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif;&quot;&gt;The Tarlac Recreational &amp;amp; Sports Complex has a track &amp;amp; field oval of international standards, with a biking track, two football fields, two baseball fields, two soft ball fields, two basketball courts, a volleyball court and a sepak takraw court. Many new activities are upcoming soon.&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'uploads/package_10', 1, '2023-07-28 00:01:42'),
(11, 'Capas National Shrine', 'Capas, Tarlac', 0, '&lt;p class=&quot;MsoNormal&quot;&gt;The Capas National Shrine (Tagalog: Pambansang Dambana ng\r\nCapas) in Barangay Aranguren, Capas, Tarlac, Philippines was built by the\r\nPhilippine government as a memorial to Allied soldiers who died at Camp\r\nO\'Donnell at the end of the Bataan Death March during the Second World War.&lt;/p&gt;&lt;p style=&quot;margin: 0.5em 0px; color: rgb(32, 33, 34); font-family: sans-serif;&quot;&gt;\r\n\r\n\r\n\r\n&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;The site, which was the former concentration camp for the\r\nAllied prisoners, is a focus for commemorations on Araw ng Kagitingan (Valour\r\nDay), an annual observance held on 9 April&mdash;the anniversary of the surrender of\r\nUS and Philippine forces to Imperial Japan in 1942. There is also a memorial\r\ninside the site to the Czechs who died fighting alongside the Filipino and US\r\nsoldiers.&lt;o:p&gt;&lt;/o:p&gt;&lt;/p&gt;', 'uploads/package_11', 1, '2023-07-28 00:03:01'),
(12, 'La Sagrada Familia Parish', 'Gerona, Tarlac', 0, '&lt;p&gt;&lt;span style=&quot;color: rgb(10, 10, 10); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Roboto, Arial, sans-serif; font-size: 16px;&quot;&gt;This church was built in the year 2017, the La Sagrada Familia Parish is well known with its detailed design.&lt;br&gt;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;box-sizing: inherit; margin-right: 0px; margin-left: 0px; padding: 0px; font-size: 16px; line-height: 1.6; text-rendering: optimizelegibility; color: rgb(10, 10, 10); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Roboto, Arial, sans-serif;&quot;&gt;Its altar was also a part of a big historical event, when Pope Francis visited the Philippines in the year 2015, He kissed the altar made of marble that made it very significant to the history of the Christian faith.&lt;/p&gt;&lt;p style=&quot;box-sizing: inherit; margin-right: 0px; margin-left: 0px; padding: 0px; font-size: 16px; line-height: 1.6; text-rendering: optimizelegibility; color: rgb(10, 10, 10); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Roboto, Arial, sans-serif;&quot;&gt;The design of the church is made by the late Rev. Fr. Alex Bautista (1969-2020), who also designed the remarkable church of Saint Jose Maria Escriva . Saint Jose Maria Escriva Parish is also known as the first church in Asia dedicated to the saint. This two magnificent churches are also located at the town of Gerona, Tarlac.&lt;/p&gt;', 'uploads/package_12', 1, '2023-07-28 00:03:53'),
(13, 'Mt. Telakawa', 'Capas, Tarlac', 0, '&lt;p class=&quot;MsoNormal&quot;&gt;Dubbed as the best thing along Crow Valley next to Mt.\r\nPinatubo, Mt. Telakawa is the alternative mountain destination for visitors who\r\nare up to a more extreme hiking challenge. &ldquo;Telakawa&rdquo; literally means a pot\r\nplace upside down. The mountain, which proudly stands at 630 meters above the\r\nsea level, is named as such because of its shape.&lt;o:p&gt;&lt;/o:p&gt;&lt;/p&gt;', 'uploads/package_13', 1, '2023-07-28 00:05:47'),
(14, 'Tarlac Cathedral ', 'Tarlac City, Tarlac', 0, '&lt;p class=&quot;MsoNormal&quot;&gt;The San Sebastian Cathedral, also referred to as the Tarlac\r\nCathedral, is a post-war, Neo-Gothic church located in Brgy. Mabini, Tarlac\r\nCity, Philippines. The cathedral, which was dedicated to Saint Sebastian in 1686,\r\nis the seat of the Roman Catholic Diocese of Tarlac.&lt;/p&gt;&lt;p&gt;\r\n\r\n\r\n\r\n&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;The town of Tarlac was said to have been established in 1686\r\nby priests assigned to Magalang, Pampanga. The town was managed by the\r\nAugustinians from Pampanga until in 1725, a petition was brought to the\r\nattention of the Father Provincial to separate Tarlac from its distant matrix.\r\nIn 1727, the separation was fulfilled with Tarlac being declared an independent\r\nparish. In 1757, however, the parish of Tarlac was annexed back to Magalang for\r\nquite some time.&lt;o:p&gt;&lt;/o:p&gt;&lt;/p&gt;', 'uploads/package_14', 1, '2023-07-28 00:07:01'),
(15, 'Highlands Mini Golf', 'Tarlac City, Tarlac ', 0, '&lt;p&gt;&lt;span style=&quot;color: rgb(5, 5, 5); font-family: &amp;quot;Segoe UI Historic&amp;quot;, &amp;quot;Segoe UI&amp;quot;, Helvetica, Arial, sans-serif; font-size: 15px; text-align: center;&quot;&gt;The newest miniature golf course in the Philippines.&lt;/span&gt;&lt;br style=&quot;color: rgb(5, 5, 5); font-family: &amp;quot;Segoe UI Historic&amp;quot;, &amp;quot;Segoe UI&amp;quot;, Helvetica, Arial, sans-serif; font-size: 15px; text-align: center;&quot;&gt;&lt;br style=&quot;color: rgb(5, 5, 5); font-family: &amp;quot;Segoe UI Historic&amp;quot;, &amp;quot;Segoe UI&amp;quot;, Helvetica, Arial, sans-serif; font-size: 15px; text-align: center;&quot;&gt;&lt;span style=&quot;color: rgb(5, 5, 5); font-family: &amp;quot;Segoe UI Historic&amp;quot;, &amp;quot;Segoe UI&amp;quot;, Helvetica, Arial, sans-serif; font-size: 15px; text-align: center;&quot;&gt;Create memorable experiences with your family&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'uploads/package_15', 1, '2023-07-28 00:08:51'),
(16, 'Kart City Tarlac ( KCT )', 'Tarlac City, Tarlac ', 0, '&lt;p&gt;&lt;font color=&quot;#333333&quot; face=&quot;Trip Sans VF, Trip Sans, Arial, sans-serif&quot;&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;&amp;nbsp;The place offers live band, an outdoor karting track, KTV, air-conditioned&amp;nbsp;coffee shop, billiard and dart playrooms.&amp;nbsp;&lt;/span&gt;&lt;/font&gt;&lt;br&gt;&lt;/p&gt;', 'uploads/package_16', 1, '2023-07-28 00:11:22'),
(17, 'Capas Death March Monument', 'Capas, Tarlac', 0, '&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Barlow; font-size: 15px; text-align: justify;&quot;&gt;Built in an inverted V structure, it depicts the endurance and heroism of valiant soldiers, defenders of freedom and democracy. An emblem stands as a historical marker located three (3) kilometers from the town proper along the highway in Barangay Cutcut I.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'uploads/package_17', 1, '2023-07-28 00:13:53'),
(18, 'Mount Pinatubo', 'Boundary of Tarlac and Zambales', 0, '&lt;p class=&quot;MsoNormal&quot;&gt;Mount Pinatubo, volcano, western Luzon, Philippines, that\r\nerupted in 1991 (for the first time in 600 years) and caused widespread\r\ndevastation. Mount Pinatubo is located about 55 miles (90 km) northwest of\r\nManila and rose to a height of about 4,800 feet (1,460 m) prior to its eruption.\r\nAfter two months of emissions and small explosions, a series of major\r\nexplosions began on June 12. These explosions reached a peak on June 14&ndash;16,\r\nproducing a column of ash and smoke more than 28 miles (40 km) high, with rock\r\ndebris falling the same distance from the volcano. The resulting heavy ashfalls\r\nleft about 100,000 people homeless, forced thousands more to flee the area, and\r\ncaused 300 deaths. In the weeks after the eruption, hundreds more died as a\r\nresult of disease in evacuation camps. The ashfalls forced the evacuation and\r\neventual closing of U.S.-leased Clark Air Force Base, 10 miles (16 km) east of\r\nthe volcano.&lt;o:p&gt;&lt;/o:p&gt;&lt;/p&gt;', 'uploads/package_18', 1, '2023-07-28 00:17:06');

-- --------------------------------------------------------

--
-- Table structure for table `rate_review`
--

CREATE TABLE `rate_review` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `package_id` int NOT NULL,
  `rate` int NOT NULL,
  `review` text,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rate_review`
--

INSERT INTO `rate_review` (`id`, `user_id`, `package_id`, `rate`, `review`, `date_created`) VALUES
(3, 5, 8, 5, '<p>Sample</p>', '2021-06-19 11:53:16'),
(4, 5, 8, 3, '&lt;p&gt;Sample feedback only&lt;/p&gt;', '2021-06-19 13:49:26');

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Tourism Management System'),
(6, 'short_name', 'TMS'),
(11, 'logo', 'uploads/1690812060_1690473420_tarlac tourism.png'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/1690812060_plaza.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/1620201300_avatar.png', NULL, 1, '2021-01-20 14:02:37', '2021-06-18 16:47:05'),
(4, 'John', 'Smith', 'jsmith', '1254737c076cf867dc53d60a0364f38e', NULL, NULL, 0, '2021-06-19 08:36:09', '2021-06-19 10:53:12'),
(5, 'Claire', 'Blake', 'cblake', '4744ddea876b11dcb1d169fadf494418', NULL, NULL, 0, '2021-06-19 10:01:51', '2021-06-19 12:03:23'),
(6, 'James', 'Abrenica', 'james_abrenica', '482c811da5d5b4bc6d497ffa98491e38', NULL, NULL, 0, '2023-07-31 17:42:20', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book_list`
--
ALTER TABLE `book_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inquiry`
--
ALTER TABLE `inquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book_list`
--
ALTER TABLE `book_list`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `inquiry`
--
ALTER TABLE `inquiry`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
