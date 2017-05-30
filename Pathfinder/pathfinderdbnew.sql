-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: May 29, 2017 at 05:12 PM
-- Server version: 5.6.28
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pathfinderdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `names`
--

CREATE TABLE `names` (
  `name_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `location` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `names`
--

INSERT INTO `names` (`name_id`, `name`, `location`) VALUES
(1, 'alex', 'london'),
(2, 'tony', 'america'),
(3, 'tsabita', 'serenity');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `iww` tinyint(1) NOT NULL,
  `aoi` tinyint(1) NOT NULL,
  `dm` tinyint(1) NOT NULL,
  `org` tinyint(1) NOT NULL,
  `description` varchar(80) NOT NULL,
  `answer1` varchar(40) NOT NULL,
  `answer2` varchar(40) NOT NULL,
  `answer3` varchar(40) NOT NULL,
  `answer4` varchar(40) NOT NULL,
  `answer5` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`iww`, `aoi`, `dm`, `org`, `description`, `answer1`, `answer2`, `answer3`, `answer4`, `answer5`) VALUES
(1, 0, 0, 0, 'Realist who are quick to make practical decisions.', 'Insurance sales agent', 'Pharmacist', 'Lawyer', 'Project manager', 'Judge'),
(0, 0, 0, 0, 'Hard workers who value their responsibilities.', 'Auditor', 'Accountant', 'Chief financial officer', 'Web development engineer', 'Government employee'),
(1, 0, 1, 0, 'Gregarious traditionalists motivated to help others.', 'Sales representative', 'Nurse/Healthcare worker', 'Social worker', 'PR account executive', 'Loan office'),
(0, 0, 1, 0, 'Modest and determined workers who enjoy helping others.', 'Dentist', 'Elementary school teacher', 'Librarian', 'Franchise owner', 'Customer service representative'),
(1, 0, 0, 1, 'Pragmatists who love excitement and excel in crisis.', 'Detective', 'Banker', 'Investor', 'Entertainment agent', 'Sports coach'),
(0, 0, 0, 1, 'Straightforward and honest people who prefer action to conversation.', 'Civil engineer', 'Economist', 'Pilot', 'Data communication analyst', 'Emergency room physician'),
(1, 0, 1, 1, 'Lively and playful people who value common sense.', 'Child welfare counselor', 'Primary care physician', 'Actor', 'Interior designer', 'Environmental scientist'),
(0, 0, 1, 1, 'Warm and sensitive types who like to help people in tangible ways.', 'Fashion designer', 'Physical terapist', 'Massage terapist', 'Landscape architect', 'Storekeeper'),
(1, 1, 0, 0, 'Natural leader who are logical, analytical, and good strategic planners.', 'Executive', 'Lawyer', 'Market research analyst', 'Management/Business consultant', 'Venture capitalist'),
(0, 1, 0, 0, 'Creative perfectionists who prefer to do things their own way.', 'Investment banker', 'Personal financial adviser', 'Software developer', 'Economist', 'Executive'),
(1, 1, 1, 0, 'People-lovers who are energetic, articulate, and diplomatic.', 'Advertising executive', 'Public relations specialist', 'Corporate coach/Trainer', 'Sales manager', 'Employment specialist/HR professional'),
(0, 1, 1, 0, 'Thoughtful, creative people driven by firm principles and personal integrity.', 'Therapist/Mental health counselor', 'Social worker', 'HR diversity manager', 'Organizational development consultant', 'Customer relation manager'),
(1, 1, 0, 1, 'Enterprising creative people who enjoy new challenges.', 'Entrepreneur', 'Real estate developer', 'Advertising creative director', 'Marketing director', 'Politician/Political consultant'),
(0, 1, 0, 1, 'Independent and creative problem-solvers.', 'Computer programmer/Software designer', 'Financial analyst', 'Architect', 'College professor', 'Economist'),
(1, 1, 1, 1, 'Curious and confident creative types who see possibilities everywhere.', 'Journalist', 'Advertising creative director', 'Consultant', 'Restaurateur', 'Event planner'),
(0, 1, 1, 1, 'Sensitive idealists motivated by their deeper personal values.', 'Graphic designer', 'Psychologist/Terapist', 'Writer/Editor', 'Physical therapist', 'HR development trainer');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `FirstName` varchar(32) NOT NULL,
  `LastName` varchar(32) NOT NULL,
  `Age` int(11) NOT NULL,
  `Hometown` varchar(32) NOT NULL,
  `Job` varchar(32) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `salt` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `FirstName`, `LastName`, `Age`, `Hometown`, `Job`, `Email`, `Password`, `salt`) VALUES
(1, 'Peter', 'Griffin', 41, 'Quahog', 'Brewery', '', '', ''),
(2, 'Lois', 'Griffin', 40, 'Newport', 'Piano Teacher', '', '', ''),
(3, 'Joseph', 'Swanson', 39, 'Quahog', 'Police Officer', '', '', ''),
(5, 'YohanaYohana', 'Hadiati', 22, 'Wisconsin', 'Student', 'eric@gmail.com', 'password123', ''),
(6, 'Tsab', 'T', 22, 'Brisbane', 'Student', 'tsab@gmail.com', 'pass123', ''),
(8, 'Eric', 'Forman', 18, 'Wisconsin', 'Student', 'eric@gmail.com', '$2y$12$d6a88297724c438d4b', 'd6a88297724c438d4bb6'),
(9, 'Y', 'H', 22, 'Brisbane', 'Student', 'y@gmail.com', '$2y$12$337df3d829e3e5905e', '337df3d829e3e5905e5f'),
(10, 'H', 'H', 27, 'H', 'Student', 'h@gmail.com', '$2y$12$03f5d0bf5c37ed1bdd', '03f5d0bf5c37ed1bdd6b'),
(11, 'J', 'J', 25, 'J', 'J', 'j@gmail.com', '$2y$12$991494e349ffb2160e', '991494e349ffb2160e8c'),
(12, 'a', 'a', 11, 'a', 'a', 'a@a.com', '$2y$12$6247f13e069277ed1e', '6247f13e069277ed1ecf'),
(13, 'b', 'b', 0, 'b', 'b', 'b', '$2y$12$c819f7ba673ddea5a3', 'c819f7ba673ddea5a3f5'),
(14, 'a', 'a', 11, 'a', 'a', 'a', '$2y$12$ebe19bd4c96e3c459f', 'ebe19bd4c96e3c459f9c'),
(15, 'Yohana', 'a', 21, 'a', 'a', 'a@gmail.com', '$2y$12$e3caf9fedb847a3e82', 'e3caf9fedb847a3e8225'),
(16, 'Michael', 'Kelso', 19, 'Wisconsin', 'Student', 'mkelso@gmail.com', '$2y$12$abdaf07087c08c742d', 'abdaf07087c08c742df9'),
(17, 'Steven', 'Hyde', 19, 'Wisconsin', 'Student', 'shyde@gmail.com', '$2y$12$614dfda51563a64bbf', '614dfda51563a64bbfc0'),
(18, 'Hakeem', 'Daud', 22, 'Brisbane', 'Student', 'hakeem@gmail.com', '$2y$12$12311b60cff70be3f8', '12311b60cff70be3f841'),
(21, 'Kitto', 'Anandita', 20, 'Jakarta', 'Student', 'k@gmail.com', '$2y$12$713e2a0a387ecc6aaded1uemVosSeMe2GskAYGzuSJGcpxdKrC.I2', '713e2a0a387ecc6aaded132de9e8c7a6d5793cf94ad9faaba348486337437a994aa33e1e53aad8f9');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `names`
--
ALTER TABLE `names`
  ADD PRIMARY KEY (`name_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `names`
--
ALTER TABLE `names`
  MODIFY `name_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
