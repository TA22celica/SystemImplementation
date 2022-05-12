-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: May 11, 2022 at 03:06 PM
-- Server version: 5.7.34
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `product_id`, `name`, `date`, `text`) VALUES
(11, 49, 'Mike Sheppard', '2022-03-01 00:18:02', 'Glad it was in stock! Cool Guitar!'),
(12, 22, 'Mike', '2022-05-11 12:35:47', 'Love this guitar! Plays nicely!'),
(13, 22, 'John', '2022-05-11 12:37:52', 'Received my guitar yesterday. Great business!'),
(14, 22, 'Michael Sheppard', '2022-05-11 13:39:58', 'Just checking in. Cool Guitar!'),
(15, 25, 'Wayne Sheppard', '2022-05-11 14:41:53', 'Cool Guitar!'),
(16, 25, 'Wayne Sheppard', '2022-05-11 14:42:06', 'Love this guitar! Plays nicely!');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `customer_id` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `customer_id`, `product_id`, `product_name`, `amount`, `date`) VALUES
(10, 'guitarGuy1@me.com', 49, 'Gibson Hummingbird Acoustic Guitar', 2499, '2022-02-20 00:12:37'),
(11, 'guitarGuy2@me.com', 45, 'Fender Telecaster Red Electric Guitar', 2199, '2022-03-01 00:18:02'),
(12, 'JR@IUGuitarShop.com', 25, 'Fender Stratocaster Pink Electric Guitar', 2199, '2022-05-11 14:27:17');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `category` int(11) NOT NULL,
  `categoryname` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `rating` int(11) NOT NULL DEFAULT '1',
  `description` text NOT NULL,
  `promotional` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `brand`, `category`, `categoryname`, `photo`, `price`, `rating`, `description`, `promotional`) VALUES
(20, 'Gibson Hummingbird Acoustic Guitar', 'Gibson', 10, 'Acoustic Guitar', 'http://localhost/systemimplementation/Photos/Acoustic%20Hummingbird.jpg', 2499, 0, 'Acoustic guitar from Gibson', 0),
(21, 'Fender Stratocaster Electric Guitar Black', 'Fender', 11, 'Electric Guitar', 'http://localhost/systemimplementation/Photos/Black%20Stratocaster.jpg', 1899, 0, 'Electric guitar from Fender', 0),
(22, 'Gibson Les Paul Electric Guitar', 'Gibson', 11, 'Electric Guitar', 'http://localhost/systemimplementation/Photos/Gold%20Les%20Paul.jpg', 2799, 0, 'Electric guitar from Gibson', 0),
(23, 'Fender Musicmaster Bass Guitar', 'Fender', 12, 'Bass Guitar', 'http://localhost/systemimplementation/Photos/Green%20Musicmaster%20Bass.jpg', 999, 0, 'Electric Bass guitar from Fender', 0),
(24, 'Fender Jazzmaster Electric Guitar', 'Fender', 11, 'Electric Guitar', 'http://localhost/systemimplementation/Photos/Jazzmaster.jpg', 1899, 0, 'Electric guitar from Fender', 1),
(25, 'Fender Stratocaster Pink Electric Guitar', 'Fender', 11, 'Electric Guitar', 'http://localhost/systemimplementation/Photos/Metallic%20Pink%20Stratocaster.jpg', 2199, 0, 'Electric guitar from Fender', 0),
(26, 'Fender Telecaster Red Electric Guitar', 'Fender', 11, 'Electric Guitar', 'http://localhost/systemimplementation/Photos/Red%20Telecaster.jpg', 2199, 0, 'Electric guitar from Fender', 0);

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `x5` int(11) NOT NULL DEFAULT '0',
  `x4` int(11) NOT NULL DEFAULT '0',
  `x3` int(11) NOT NULL DEFAULT '0',
  `x2` int(11) NOT NULL DEFAULT '0',
  `x1` int(11) NOT NULL DEFAULT '0',
  `proid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`x5`, `x4`, `x3`, `x2`, `x1`, `proid`) VALUES
(3, 5, 1, 0, 9, 20),
(1, 0, 1, 0, 0, 21),
(2, 0, 1, 0, 0, 22),
(0, 0, 0, 0, 0, 23),
(4, 0, 0, 2, 0, 24),
(1, 0, 0, 1, 0, 25),
(3, 0, 0, 0, 1, 26);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(40) NOT NULL,
  `password` varchar(60) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `autologin` varchar(255) DEFAULT NULL,
  `role` tinyint(3) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `fullname`, `address`, `date`, `autologin`, `role`) VALUES
('manager', '$2y$10$useqXZfSNHtiJXWtPKn5keTJ1S9hXvi1ZxJDhcWP.Pem8RZ/jv7yC', 'Michael Sheppard', '1284 Piper Ln', '2022-05-11 13:36:19', NULL, 2),
('JR@IUGuitarShop.com', '$2y$10$038m73T71lF/d8dcUgd27.80OTsMLZPdo/7aflKaa78kB8p5QV5Eq', 'John Ralphio', '12345 Crenshaw Ave.', '2022-05-10 21:54:10', NULL, 0),
('WM@U.COM', '$2y$10$05gU9319Iv2uBPOqWXm7u.RSL4Jc/M86If9wJjWCUCgPjeCm1WVIO', 'Wayne McClain', '123 Fifth Ave. ', '2022-05-10 21:50:21', NULL, 0),
('Wayne@IUGuitarShop.com', '$2y$10$BC4IggGZYTDUBbTCQc/oveuvKNnBkj35m6LwNpH9YZbD3ctZYNbIK', 'Wayne Sheppard', '1284 Piper Ln', '2022-05-11 14:41:17', NULL, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
