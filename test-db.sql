-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Sep 05, 2020 at 10:25 AM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `test-syberry`
--

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
                             `id` int(11) NOT NULL,
                             `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`) VALUES
(1, 'Halsy'),
(2, 'Rustin'),
(3, 'Gawen'),
(4, 'Tobye'),
(5, 'Annette'),
(6, 'Joseph'),
(7, 'Richard'),
(8, 'Imojean'),
(9, 'Rosanne'),
(10, 'Clayson'),
(11, 'Hillie'),
(12, 'Rosemary'),
(13, 'Humbert'),
(14, 'Geoff'),
(15, 'Jenda'),
(16, 'Rhys'),
(17, 'Allyn'),
(18, 'Jorge'),
(19, 'Rowland'),
(20, 'Reggie'),
(21, 'Millicent'),
(22, 'Stan'),
(23, 'Angelle'),
(24, 'Fabien'),
(25, 'Christa');

-- --------------------------------------------------------

--
-- Table structure for table `time_reports`
--

CREATE TABLE `time_reports` (
                                `id` int(11) NOT NULL,
                                `employee_id` int(11) NOT NULL,
                                `hours` float(5,2) NOT NULL,
                                `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `time_reports`
--

INSERT INTO `time_reports` (`id`, `employee_id`, `hours`, `date`) VALUES
(1, 1, 1.27, '2020-12-11'),
(2, 5, 1.42, '2020-12-08'),
(3, 22, 1.11, '2020-12-10'),
(4, 15, 1.17, '2020-12-28'),
(5, 19, 1.18, '2020-12-06'),
(6, 5, 1.21, '2020-12-22'),
(7, 20, 1.27, '2020-12-16'),
(8, 10, 1.02, '2020-12-01'),
(9, 19, 1.48, '2020-12-23'),
(10, 25, 1.01, '2020-12-06'),
(11, 9, 1.21, '2020-12-04'),
(12, 22, 1.44, '2020-12-14'),
(13, 2, 1.15, '2020-12-14'),
(14, 17, 1.18, '2020-12-10'),
(15, 6, 1.34, '2020-12-30'),
(16, 23, 1.23, '2020-12-24'),
(17, 21, 1.17, '2020-12-01'),
(18, 20, 1.01, '2020-12-14'),
(19, 12, 1.32, '2020-12-30'),
(20, 21, 1.25, '2020-12-17'),
(21, 17, 1.54, '2020-12-21'),
(22, 4, 1.43, '2020-12-11'),
(23, 13, 1.29, '2020-12-24'),
(24, 18, 1.41, '2020-12-17'),
(25, 10, 1.22, '2020-12-29'),
(26, 24, 1.41, '2020-12-02'),
(27, 6, 1.54, '2020-12-01'),
(28, 20, 1.28, '2020-12-02'),
(29, 12, 1.03, '2020-12-22'),
(30, 22, 1.01, '2020-12-21'),
(31, 14, 1.42, '2020-12-28'),
(32, 7, 1.56, '2020-12-24'),
(33, 7, 1.31, '2020-12-26'),
(34, 18, 1.23, '2020-12-18'),
(35, 18, 1.53, '2020-12-16'),
(36, 19, 1.04, '2020-12-20'),
(37, 19, 1.29, '2020-12-30'),
(38, 15, 1.11, '2020-12-18'),
(39, 17, 1.55, '2020-12-04'),
(40, 21, 1.08, '2020-12-25'),
(41, 8, 1.46, '2020-12-25'),
(42, 14, 1.28, '2020-12-16'),
(43, 23, 1.35, '2020-12-19'),
(44, 3, 1.51, '2020-12-12'),
(45, 1, 1.11, '2020-12-22'),
(46, 23, 1.25, '2020-12-05'),
(47, 8, 1.25, '2020-12-30'),
(48, 7, 1.18, '2020-12-22'),
(49, 9, 1.59, '2020-12-23'),
(50, 13, 1.41, '2020-12-09'),
(51, 11, 1.25, '2020-12-18'),
(52, 12, 1.07, '2020-12-09'),
(53, 14, 1.31, '2020-12-05'),
(54, 14, 1.49, '2020-12-04'),
(55, 8, 1.52, '2020-12-24'),
(56, 16, 1.12, '2020-12-08'),
(57, 2, 1.19, '2020-12-10'),
(58, 22, 1.02, '2020-12-26'),
(59, 18, 1.44, '2020-12-10'),
(60, 3, 1.26, '2020-12-19'),
(61, 4, 1.34, '2020-12-15'),
(62, 25, 1.08, '2020-12-09'),
(63, 14, 1.26, '2020-12-05'),
(64, 21, 1.55, '2020-12-03'),
(65, 16, 1.10, '2020-12-13'),
(66, 10, 1.31, '2020-12-28'),
(67, 23, 1.44, '2020-12-31'),
(68, 15, 1.35, '2020-12-12'),
(69, 2, 1.14, '2020-12-24'),
(70, 6, 1.33, '2020-12-02'),
(71, 6, 1.49, '2020-12-10'),
(72, 11, 1.34, '2020-12-15'),
(73, 12, 1.55, '2020-12-26'),
(74, 20, 1.12, '2020-12-19'),
(75, 16, 1.36, '2020-12-24'),
(76, 25, 1.11, '2020-12-18'),
(77, 2, 1.48, '2020-12-23'),
(78, 9, 1.25, '2020-12-30'),
(79, 16, 1.03, '2020-12-04'),
(80, 13, 1.30, '2020-12-08'),
(81, 8, 1.53, '2020-12-22'),
(82, 2, 1.16, '2020-12-16'),
(83, 1, 1.36, '2020-12-11'),
(84, 16, 1.21, '2020-12-13'),
(85, 14, 1.43, '2020-12-28'),
(86, 8, 1.19, '2020-12-21'),
(87, 2, 1.45, '2020-12-02'),
(88, 3, 1.44, '2020-12-05'),
(89, 10, 1.19, '2020-12-30'),
(90, 16, 1.00, '2020-12-10'),
(91, 8, 1.30, '2020-12-08'),
(92, 6, 1.14, '2020-12-08'),
(93, 10, 1.57, '2020-12-13'),
(94, 1, 1.59, '2020-12-30'),
(95, 14, 1.17, '2020-12-24'),
(96, 1, 1.28, '2020-12-01'),
(97, 6, 1.37, '2020-12-31'),
(98, 18, 1.23, '2020-12-14'),
(99, 17, 1.36, '2020-12-08'),
(100, 25, 1.13, '2020-12-04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
    ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time_reports`
--
ALTER TABLE `time_reports`
    ADD PRIMARY KEY (`id`),
    ADD KEY `employee_id` (`employee_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `time_reports`
--
ALTER TABLE `time_reports`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `time_reports`
--
ALTER TABLE `time_reports`
    ADD CONSTRAINT `time_reports_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`);
