-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 24, 2023 at 10:32 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fun_nance`
--

-- --------------------------------------------------------

--
-- Table structure for table `child_db`
--

CREATE TABLE `child_db` (
  `child_id` varchar(32) NOT NULL,
  `parent_id` varchar(32) DEFAULT NULL,
  `fullname` varchar(64) DEFAULT NULL,
  `point` int(32) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `child_db`
--

INSERT INTO `child_db` (`child_id`, `parent_id`, `fullname`, `point`, `created_at`, `modified_at`) VALUES
('c1', '1', 'Child 1', 50, '2023-12-24 08:23:36', '2023-12-24 08:23:36'),
('c10', '10', 'Child 10', 140, '2023-12-24 08:23:36', '2023-12-24 08:23:36'),
('c2', '2', 'Child 2', 60, '2023-12-24 08:23:36', '2023-12-24 08:23:36'),
('c3', '3', 'Child 3', 70, '2023-12-24 08:23:36', '2023-12-24 08:23:36'),
('c4', '4', 'Child 4', 80, '2023-12-24 08:23:36', '2023-12-24 08:23:36'),
('c5', '5', 'Child 5', 90, '2023-12-24 08:23:36', '2023-12-24 08:23:36'),
('c6', '6', 'Child 6', 100, '2023-12-24 08:23:36', '2023-12-24 08:23:36'),
('c7', '7', 'Child 7', 110, '2023-12-24 08:23:36', '2023-12-24 08:23:36'),
('c8', '8', 'Child 8', 120, '2023-12-24 08:23:36', '2023-12-24 08:23:36'),
('c9', '9', 'Child 9', 130, '2023-12-24 08:23:36', '2023-12-24 08:23:36');

-- --------------------------------------------------------

--
-- Table structure for table `parent_db`
--

CREATE TABLE `parent_db` (
  `parent_id` varchar(32) NOT NULL,
  `email` varchar(32) DEFAULT NULL,
  `fullname` varchar(64) DEFAULT NULL,
  `profile_picture_url` varchar(64) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parent_db`
--

INSERT INTO `parent_db` (`parent_id`, `email`, `fullname`, `profile_picture_url`, `created_at`, `modified_at`) VALUES
('1', 'parent1@example.com', 'Parent 1', 'https://example.com/p1.jpg', '2023-12-24 08:23:35', '2023-12-24 08:23:35'),
('10', 'parent10@example.com', 'Parent 10', 'https://example.com/p10.jpg', '2023-12-24 08:23:35', '2023-12-24 08:23:35'),
('2', 'parent2@example.com', 'Parent 2', 'https://example.com/p2.jpg', '2023-12-24 08:23:35', '2023-12-24 08:23:35'),
('20', 'asdadas@gmail.com', 'percobaan1', 'coba', '2023-12-24 09:00:23', '2023-12-24 09:00:23'),
('3', 'parent3@example.com', 'Parent 3', 'https://example.com/p3.jpg', '2023-12-24 08:23:35', '2023-12-24 08:23:35'),
('4', 'parent4@example.com', 'Parent 4', 'https://example.com/p4.jpg', '2023-12-24 08:23:35', '2023-12-24 08:23:35'),
('5', 'parent5@example.com', 'Parent 5', 'https://example.com/p5.jpg', '2023-12-24 08:23:35', '2023-12-24 08:23:35'),
('6', 'parent6@example.com', 'Parent 6', 'https://example.com/p6.jpg', '2023-12-24 08:23:35', '2023-12-24 08:23:35'),
('7', 'parent7@example.com', 'Parent 7', 'https://example.com/p7.jpg', '2023-12-24 08:23:35', '2023-12-24 08:23:35'),
('8', 'parent8@example.com', 'Parent 8', 'https://example.com/p8.jpg', '2023-12-24 08:23:35', '2023-12-24 08:23:35'),
('9', 'parent9@example.com', 'Parent 9', 'https://example.com/p9.jpg', '2023-12-24 08:23:35', '2023-12-24 08:23:35');

-- --------------------------------------------------------

--
-- Table structure for table `reward_db`
--

CREATE TABLE `reward_db` (
  `reward_id` varchar(32) NOT NULL,
  `child_id` varchar(32) DEFAULT NULL,
  `title` varchar(64) DEFAULT NULL,
  `image_url` varchar(128) DEFAULT NULL,
  `created_at` time DEFAULT NULL,
  `modified_at` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reward_db`
--

INSERT INTO `reward_db` (`reward_id`, `child_id`, `title`, `image_url`, `created_at`, `modified_at`) VALUES
('r1', 'c1', 'Reward 1', 'https://example.com/r1.jpg', '15:23:36', '15:23:36'),
('r10', 'c10', 'Reward 10', 'https://example.com/r10.jpg', '15:23:36', '15:23:36'),
('r2', 'c2', 'Reward 2', 'https://example.com/r2.jpg', '15:23:36', '15:23:36'),
('r3', 'c3', 'Reward 3', 'https://example.com/r3.jpg', '15:23:36', '15:23:36'),
('r4', 'c4', 'Reward 4', 'https://example.com/r4.jpg', '15:23:36', '15:23:36'),
('r5', 'c5', 'Reward 5', 'https://example.com/r5.jpg', '15:23:36', '15:23:36'),
('r6', 'c6', 'Reward 6', 'https://example.com/r6.jpg', '15:23:36', '15:23:36'),
('r7', 'c7', 'Reward 7', 'https://example.com/r7.jpg', '15:23:36', '15:23:36'),
('r8', 'c8', 'Reward 8', 'https://example.com/r8.jpg', '15:23:36', '15:23:36'),
('r9', 'c9', 'Reward 9', 'https://example.com/r9.jpg', '15:23:36', '15:23:36');

-- --------------------------------------------------------

--
-- Table structure for table `task_db`
--

CREATE TABLE `task_db` (
  `task_id` varchar(32) NOT NULL,
  `child_id` varchar(32) DEFAULT NULL,
  `parent_id` varchar(32) DEFAULT NULL,
  `title` varchar(32) DEFAULT NULL,
  `deadline` time DEFAULT NULL,
  `point` int(32) DEFAULT NULL,
  `description` varchar(128) DEFAULT NULL,
  `status` varchar(16) DEFAULT 'not yet',
  `proof_url` varchar(125) DEFAULT NULL,
  `parent_comment` varchar(128) DEFAULT NULL,
  `created_at` time DEFAULT NULL,
  `modified_at` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `task_db`
--

INSERT INTO `task_db` (`task_id`, `child_id`, `parent_id`, `title`, `deadline`, `point`, `description`, `status`, `proof_url`, `parent_comment`, `created_at`, `modified_at`) VALUES
('t1', 'c1', '1', 'Task 1', '15:23:36', 10, 'Description 1', 'done', 'https://example.com/proof1.jpg', 'Great job!', '15:23:36', '15:23:36'),
('t10', 'c10', '10', 'Task 10', '15:23:36', 100, 'Description 10', 'not yet', NULL, NULL, '15:23:36', '15:23:36'),
('t2', 'c2', '2', 'Task 2', '15:23:36', 20, 'Description 2', 'not yet', NULL, NULL, '15:23:36', '15:23:36'),
('t3', 'c3', '3', 'Task 3', '15:23:36', 30, 'Description 3', 'not yet', NULL, NULL, '15:23:36', '15:23:36'),
('t4', 'c4', '4', 'Task 4', '15:23:36', 40, 'Description 4', 'not yet', NULL, NULL, '15:23:36', '15:23:36'),
('t5', 'c5', '5', 'Task 5', '15:23:36', 50, 'Description 5', 'not yet', NULL, NULL, '15:23:36', '15:23:36'),
('t6', 'c6', '6', 'Task 6', '15:23:36', 60, 'Description 6', 'not yet', NULL, NULL, '15:23:36', '15:23:36'),
('t7', 'c7', '7', 'Task 7', '15:23:36', 70, 'Description 7', 'not yet', NULL, NULL, '15:23:36', '15:23:36'),
('t8', 'c8', '8', 'Task 8', '15:23:36', 80, 'Description 8', 'not yet', NULL, NULL, '15:23:36', '15:23:36'),
('t9', 'c9', '9', 'Task 9', '15:23:36', 90, 'Description 9', 'not yet', NULL, NULL, '15:23:36', '15:23:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `child_db`
--
ALTER TABLE `child_db`
  ADD PRIMARY KEY (`child_id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `parent_db`
--
ALTER TABLE `parent_db`
  ADD PRIMARY KEY (`parent_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `reward_db`
--
ALTER TABLE `reward_db`
  ADD PRIMARY KEY (`reward_id`),
  ADD KEY `child_id` (`child_id`);

--
-- Indexes for table `task_db`
--
ALTER TABLE `task_db`
  ADD PRIMARY KEY (`task_id`),
  ADD KEY `child_id` (`child_id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `child_db`
--
ALTER TABLE `child_db`
  ADD CONSTRAINT `child_db_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `parent_db` (`parent_id`);

--
-- Constraints for table `reward_db`
--
ALTER TABLE `reward_db`
  ADD CONSTRAINT `reward_db_ibfk_1` FOREIGN KEY (`child_id`) REFERENCES `child_db` (`child_id`);

--
-- Constraints for table `task_db`
--
ALTER TABLE `task_db`
  ADD CONSTRAINT `task_db_ibfk_1` FOREIGN KEY (`child_id`) REFERENCES `child_db` (`child_id`),
  ADD CONSTRAINT `task_db_ibfk_2` FOREIGN KEY (`parent_id`) REFERENCES `parent_db` (`parent_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
