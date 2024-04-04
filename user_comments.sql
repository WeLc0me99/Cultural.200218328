-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2024 at 12:26 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `user_comments`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `name`, `comment`) VALUES
(1, 'weweew', 'bbb nqsd'),
(2, 'Aziz', 'I would like to visit this place!'),
(3, 'Fateh', 'I would like to visit this place!!'),
(9, 'Hi', 'NEW'),
(10, 'Hi', 'NEW'),
(11, 'ww are ', 'hello'),
(12, 'Aziz', 'WHY  DO I GO?'),
(13, 'Nasser', 'Good!'),
(14, 'los', 'no'),
(15, 'Romance', 'cc'),
(16, 'Abdulaziz', 'it is very nice place'),
(17, '', ''),
(18, 'Mohammed Al_Basara', 'hello');

-- --------------------------------------------------------

--
-- Table structure for table `user_submissions`
--

CREATE TABLE `user_submissions` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `submission_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_submissions`
--

INSERT INTO `user_submissions` (`id`, `name`, `email`, `message`, `submission_time`) VALUES
(12, 'student', 'azoz3211azoz@gmail.com', 'i like your website.', '2024-03-24 22:59:21'),
(13, 'Ahmed', 'azoz3211azoz@gmail.com', 'hello, i want to come', '2024-03-24 23:04:01'),
(14, 'weweew', 'azoz3211azoz@gmail.com', 'lkmnb', '2024-03-29 19:23:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_submissions`
--
ALTER TABLE `user_submissions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `user_submissions`
--
ALTER TABLE `user_submissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
