-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 05, 2022 at 09:04 AM
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
-- Database: `news-site`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `post` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `post`) VALUES
(36, 'Study', 1),
(31, 'Entertainment', 1),
(32, 'Politics', 1),
(33, 'Health', 0);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `category` varchar(100) NOT NULL,
  `post_date` varchar(50) NOT NULL,
  `author` int(11) NOT NULL,
  `post_img` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `title`, `description`, `category`, `post_date`, `author`, `post_img`) VALUES
(43, 'BSCS', 'There are vast employment opportunities for BS Computer Science graduates in a variety of industries ranging from software development sectors to education, communication, commerce, government, etc. They may also pursue entrepreneurial or research oriented careers.', '36', '05 Sep, 2022', 39, '1662360473-bscs.png'),
(44, 'Salman Khan ', 'Swag, mass and Salman Khan. The announcement teaser of the superstar’s latest Kisi Ka Bhai Kisi Ki Jaan was launched on Monday, which unveiled the film’s official title logo.\r\n\r\nThe teaser of the action entertainer introduces Salman’s character from the film. The one-minute clip begins with the superstar riding a Cruiser motorcycle against the picturesque backdrop of the Ladakh valley and moves to Khan walking in slow-motion–with his trademark sunglasses, iconic bracelet– accompanied by a rousing background score, as his shoulder-length hair blow in the breeze.', '31', '05 Sep, 2022', 39, '1662360610-salman.jpeg'),
(45, 'Gorbachev’s Disputed Legacy', 'Mikhail Sergeyevich Gorbachev, who Russian media reports say died today at age 91 after a long illness, was a rare bright spot in the tragic, grim, blood-splattered history of Russia. Even at his worst moments, he exuded warmth and sparkled with optimism and humor. A passionate political animal, he refused to cling to power for power’s sake.\r\n\r\nSuch qualities gave Gorbachev the determination to push forward with the policies of perestroika and glasnost—to reform the Soviet Union’s top-down economic system, make its governance more transparent, and allow people more freedom and civil rights. Those qualities also perhaps were the ones he needed to bring a peaceful end to the Cold War—his greatest achievement.\r\n\r\nHis place in Russian history, however, is more complex—and still to be determined. Russian nationalists and stalwarts of the old order generally view him as a dupe or a traitor, in large part because he oversaw the collapse of the Soviet Union. Other Russians and members of the former Soviet bloc praise him as a farsighted liberator who tried to free them from the yoke of corrupt totalitarianism.\r\n\r\nFor his part, Gorbachev, who suffered from the sort of cheerful vanity that led him to speak of himself in the third person, told biographer William Taubman that “Gorbachev is hard to understand.”\r\n\r\n', '32', '05 Sep, 2022', 39, '1662360703-Mikhai.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `websitename` varchar(60) NOT NULL,
  `logo` varchar(50) NOT NULL,
  `footerdesc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `websitename`, `logo`, `footerdesc`) VALUES
(1, 'SM Blogs', 'smlogo.png', 'Copyright © 2022 SM, Inc.');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `role` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `username`, `password`, `role`) VALUES
(39, 'Shahrukh', 'malik', 'shahrukh', '44b9d0ad6994b0cd9b0a85152610895f', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`),
  ADD UNIQUE KEY `post_id` (`post_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
