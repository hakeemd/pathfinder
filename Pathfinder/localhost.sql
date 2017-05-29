-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: May 19, 2017 at 11:41 AM
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
CREATE DATABASE IF NOT EXISTS `pathfinderdb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `pathfinderdb`;

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
  `Job` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `FirstName`, `LastName`, `Age`, `Hometown`, `Job`) VALUES
(1, 'Peter', 'Griffin', 41, 'Quahog', 'Brewery'),
(2, 'Lois', 'Griffin', 40, 'Newport', 'Piano Teacher'),
(3, 'Joseph', 'Swanson', 39, 'Quahog', 'Police Officer');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
