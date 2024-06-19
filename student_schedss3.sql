-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2023 at 11:02 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student_schedss3`
--

-- --------------------------------------------------------

--
-- Table structure for table `student_info`
--

CREATE TABLE `student_info` (
  `id` int(11) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `birthday` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_info`
--

INSERT INTO `student_info` (`id`, `student_id`, `email`, `first_name`, `last_name`, `birthday`) VALUES
(1, '22-00244', 'tutunganjameelu1@gmail.com', 'Jameel', 'Tutungan', '2004-07-10'),
(2, '22-00922', 'degozaru2@protonmail.com', 'Xu', 'Rin', '2004-07-10'),
(3, '22-01862', 'aldrinocampo102903@gmail.com', 'Aldrin', 'Ocampo', '2003-10-29'),
(4, '22-01863', 'orakawayukirin102903@gmail.com', 'Yuki', 'Orakawa', '2003-10-29'),
(5, '22-01864', 'ocamporinrin10292003@gmail.com', 'Azrael', 'King', '2003-10-29');

-- --------------------------------------------------------

--
-- Table structure for table `student_selected_schedule`
--

CREATE TABLE `student_selected_schedule` (
  `id` int(11) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `schedule_id` int(11) NOT NULL,
  `selected` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_selected_schedule`
--

INSERT INTO `student_selected_schedule` (`id`, `student_id`, `schedule_id`, `selected`) VALUES
(48, '22-00922', 16, 1),
(49, '22-00922', 22, 1),
(50, '22-00922', 36, 1),
(66, '22-00244', 34, 1),
(67, '22-00244', 53, 1),
(68, '22-00244', 120, 1),
(69, '22-00244', 126, 1),
(110, '22-01864', 1, 1),
(111, '22-01864', 4, 1),
(112, '22-01864', 7, 1),
(113, '22-01864', 8, 1),
(114, '22-01864', 12, 1),
(115, '22-01864', 14, 1),
(121, '22-01862', 28, 1),
(122, '22-01862', 33, 1),
(123, '22-01862', 40, 1),
(124, '22-01862', 50, 1),
(125, '22-01862', 61, 1);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_sched`
--

CREATE TABLE `teacher_sched` (
  `id` int(11) NOT NULL,
  `teacher_name` varchar(100) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `section` varchar(20) NOT NULL,
  `date` varchar(20) NOT NULL,
  `time` varchar(20) NOT NULL,
  `teacher_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teacher_sched`
--

INSERT INTO `teacher_sched` (`id`, `teacher_name`, `subject`, `section`, `date`, `time`, `teacher_id`) VALUES
(1, 'Prof. SUAYBAGUIO', 'GE 1', 'BSIT - 1A', 'THURSDAY/FRIDAY', '7:00 AM - 8:30 AM', NULL),
(2, 'Prof. SUAYBAGUIO', 'GE 1', 'BSIT - 1B', 'THURSDAY/FRIDAY', '11:30 AM - 1:00 PM', NULL),
(3, 'Prof. SUAYBAGUIO', 'GE 1', 'BSIT - 1C', 'MONDAY/TUESDAY', '10:00 AM - 11:30 AM', NULL),
(4, 'PROF. ENGR ALMAZAN', 'GE MATH', 'BSIT - 1A', 'THURSDAY/FRIDAY', '10:00 AM - 11:30 AM', NULL),
(5, 'PROF. ENGR ALMAZAN', 'GE MATH', 'BSIT - 1B', 'THURSDAY/FRIDAY', '8:00 AM - 10: 00 AM', NULL),
(6, 'PROF. ENGR ALMAZAN', 'GE MATH', 'BSIT - 1C', 'MONDAY/THURSDAY', '11:30 AM - 1:00 PM', NULL),
(7, 'PROF. BELGAR', 'GEEL 1', 'BSIT - 1A', 'THURSDAY/FRIDAY', '11:30 AM - 1:00 PM', NULL),
(8, 'PROF. TORRES', 'PE 1', 'BSIT - 1A', 'THURSDAY', '2:00 PM - 4: 00PM', NULL),
(9, 'PROF. TORRES', 'PE 1', 'BSIT - 1B', 'FRIDAY', '3:00 PM - 5: 00 PM', NULL),
(10, 'PROF. TORRES', 'PE 1', 'BSIT - 1C', 'THURSDAY', '9:00 AM - 11: 00 AM', NULL),
(11, 'PROF. TORRES', 'PE 1', 'BSIT - 1D', 'TUESDAY', '2:30 PM - 4:30 PM', NULL),
(12, 'PROF. MORLA', 'IT COMP', 'BSIT - 1A', 'SATURDAY', '8:00 AM - 1:00 PM', NULL),
(13, 'PROF. MORLA', 'IT COMP', 'BSIT - 1B', 'SATURDAY', '2:00 PM - 7:00 PM', NULL),
(14, 'PROF. MS. DE GUZMAN', 'PROG 1', 'BSIT - 1A', 'SATURDAY', '1:00 PM- 4:00 PM', NULL),
(15, 'PROF. MS. DE GUZMAN', 'PROG 1', 'BSIT - 1B', 'SATURDAY', '10:00 AM - 1:00 PM', NULL),
(16, 'PROF. MS. DE GUZMAN', 'PROG 1', 'BSIT - 1C', 'SATURDAY', '7:00 AM - 10:00 AM', NULL),
(17, 'PROF. MS. DE GUZMAN', 'PROG 1', 'BSIT - 1D', 'SATURDAY', '4:00 PM- 7:00 PM', NULL),
(18, 'PROF. MR.RAMIREZ', 'IT COMP', 'BSIT - 1C', 'MONDAY/ TUESDAY/THUR', '7:00 AM - 10:00 AM/1', NULL),
(19, 'PROF. MR.RAMIREZ', 'IT COMP', 'BSIT - 1D', 'TUESDAY/ WEDNESDAY/F', '7:00 AM - 10:00 AM/1', NULL),
(20, 'PROF. MR.RAMIREZ', 'SP', 'BSIT - 2A', 'MONDAY/TUESDAY', '1:00 PM - 2:30 PM', NULL),
(21, 'PROF. MR.RAMIREZ', 'SP', 'BSIT - 2B', 'WEDNESDAY/FRIDAY', '1:00 PM - 2:30 PM', NULL),
(22, 'PROF. MR.RAMIREZ', 'SP', 'BSIT - 2C', 'THURSDAY/SATURDAY', '1:00 PM - 2:30 PM', NULL),
(23, 'PROF. MR.RAMIREZ', 'SP', 'BSIT - 2D', 'WEDNESDAY/FRIDAY', '10:00 AM - 11:30 AM', NULL),
(24, 'PROF. MR.RAMIREZ', 'SP', 'BSIT - 2E', 'MONDAY/TUESDAY', '10:00 AM - 11:30 AM', NULL),
(25, 'PROF. MR.RAMIREZ', 'SP', 'BSIT - 2F', 'MONDAY/TUESDAY', '10:00 AM - 11:30 AM', NULL),
(26, 'PROF. MR.RAMIREZ', 'SP', 'BSIT - 2G', 'MONDAY/TUESDAY', '2:30 PM - 4:00 PM', NULL),
(27, 'PROF. MR.RAMIREZ', 'SP', 'BSIT - 2H', 'THURSDAY', '2:00 PM - 5:00 PM', NULL),
(28, 'PROF. IVY ALMAZAN', 'GE SCI', 'BSIT - 2A', 'MONDAY/TUESDAY', '2:30 PM- 4:00 PM/8:3', NULL),
(29, 'PROF. IVY ALMAZAN', 'GE SCI', 'BSIT - 2B', 'WEDNESDAY/FRIDAY', '10:30 AM- 12:00 PM', NULL),
(30, 'PROF. IVY ALMAZAN', 'GE SCI', 'BSIT - 2C', 'WEDNESDAY', '1:00 PM- 4:00 PM', NULL),
(31, 'PROF. IVY ALMAZAN', 'GE SCI', 'BSIT - 2D', 'FRIDAY', '7:00 AM- 10:00 AM', NULL),
(32, 'PROF. IVY ALMAZAN', 'GE SCI', 'BSIT - 2E', 'THURSDAY', '10:00 AM- 1:00 PM', NULL),
(33, 'PROF. SAN BUENAVENTURA', 'PE 3', 'BSIT - 2A', 'TUESDAY', '2:30 PM- 4:30 PM', NULL),
(34, 'PROF. SAN BUENAVENTURA', 'PE 3', 'BSIT - 2C', 'THURSDAY', '9:00 AM- 11:00 AM', NULL),
(35, 'PROF. SAN BUENAVENTURA', 'PE 3', 'BSIT - 2D', 'WEDNESDAY', '7:00 AM- 9:00 AM', NULL),
(36, 'PROF. SAN BUENAVENTURA', 'PE 3', 'BSIT - 2E', 'FRIDAY', '10:30 AM- 12:30 PM', NULL),
(37, 'PROF. SAN BUENAVENTURA', 'PE 3', 'BSIT - 2F', 'MONDAY', '7:00 AM- 9:00 AM', NULL),
(38, 'PROF. SAN BUENAVENTURA', 'PE 3', 'BSIT - 2G', 'SATURDAY', '8:30 AM- 10:30 AM', NULL),
(39, 'PROF. SAN BUENAVENTURA', 'PE 3', 'BSIT - 2H', 'TUESDAY', '4:30 PM- 6:30 PM', NULL),
(40, 'PROF. MR. MACAPAGAL', 'IT ELECT 1', 'BSIT - 2A', 'WEDNESDAY', '8:00 AM- 1:00 PM', NULL),
(41, 'PROF. MR. MACAPAGAL', 'IT ELECT 1', 'BSIT - 2B', 'THURSDAY', '8:00 AM- 1:00 PM', NULL),
(42, 'PROF. MR. MACAPAGAL', 'IT ELECT 1', 'BSIT - 2C', 'FRIDAY', '8:00 AM- 1:00 PM', NULL),
(43, 'PROF. MR. MACAPAGAL', 'IT ELECT 1', 'BSIT - 2D', 'SATURDAY', '8:00 AM- 1:00 PM', NULL),
(44, 'PROF. MR. MACAPAGAL', 'IT ELECT 1', 'BSIT - 2E', 'WEDNESDAY', '2:00 PM- 7:00 PM', NULL),
(45, 'PROF. MR. MACAPAGAL', 'IT ELECT 1', 'BSIT - 2F', 'THURSDAY', '2:00 PM- 7:00 PM', NULL),
(46, 'PROF. MR. MACAPAGAL', 'IT ELECT 1', 'BSIT - 2G', 'FRIDAY', '2:00 PM- 7:00 PM', NULL),
(47, 'PROF. MR. MACAPAGAL', 'IT ELECT 1', 'BSIT - 2H', 'SATURDAY', '2:00 PM- 7:00 PM', NULL),
(48, 'PROF. MR. MACAPAGAL', 'IM 1', 'BSIT - 3G', 'MONDAY/TUESDAY', '7:00 AM- 9:00 AM', NULL),
(49, 'PROF. MR. MACAPAGAL', 'IM 1', 'BSIT - 3F', 'MONDAY', '2:00 PM- 7:00 PM', NULL),
(50, 'PROF. MR. EVANGELIO', 'SIA 1', 'BSIT - 2A', 'WEDNESDAY', '2:00 PM- 7:00 PM', NULL),
(51, 'PROF. MR. EVANGELIO', 'SIA 1', 'BSIT - 2B', 'THURSDAY', '2:00 PM- 7:00 PM', NULL),
(52, 'PROF. MR. EVANGELIO', 'SIA 1', 'BSIT - 2C', 'FRIDAY', '2:00 PM- 7:00 PM', NULL),
(53, 'PROF. MR. EVANGELIO', 'SIA 1', 'BSIT - 2D', 'SATURDAY', '2:00 PM- 7:00 PM', NULL),
(54, 'PROF. MR. EVANGELIO', 'SIA 1', 'BSIT - 2E', 'TUESDAY', '2:00 PM- 7:00 PM', NULL),
(55, 'PROF. MR. EVANGELIO', 'SIA 1', 'BSIT - 2F', 'SATURDAY', '9:00 AM- 2:00 PM', NULL),
(56, 'PROF. MR. EVANGELIO', 'SIA 1', 'BSIT - 2G', 'THUSRDAY', '7:00 AM- 12:00 PM', NULL),
(57, 'PROF. MR. EVANGELIO', 'SIA 1', 'BSIT - 2H', 'MONDAY', '8:00 AM- 1:00 PM', NULL),
(58, 'PROF. MR. EVANGELIO', 'IM 1', 'BSIT - 3A', 'FRIDAY', '10:00 AM- 3:00 PM', NULL),
(59, 'PROF. MR. EVANGELIO', 'IM 1', 'BSIT - 3B', 'WEDNESDAY', '8:00 AM- 1:00 PM', NULL),
(60, 'PROF. MR. EVANGELIO', 'IM 1', 'BSIT - 3D', 'MONDAY', '2:00 PM- 7:00 PM', NULL),
(61, 'PROF. MR. VALDEZ', 'PROG 3', 'BSIT - 2A', 'SATURDAY', '7:00 AM- 12:00 PM', NULL),
(62, 'PROF. MR. VALDEZ', 'PROG 3', 'BSIT - 2C', 'MONDAY', '10:00 AM- 3:00 PM', NULL),
(63, 'PROF. MR. VALDEZ', 'PROG 3', 'BSIT - 2D', 'WEDNESDAY', '10:00 AM- 3:00 PM', NULL),
(64, 'PROF. MR. VALDEZ', 'PROG 3', 'BSIT - 2E', 'SATURDAY', '12:30 PM- 5:30 PM', NULL),
(65, 'PROF. MR. VALDEZ', 'CAPSTONE 2', 'BSIT - 4A', 'WEDNESDAY', '9:00 AM- 2:00 PM', NULL),
(66, 'PROF. MR. VALDEZ', 'CAPSTONE 2', 'BSIT - 4B', 'TUESDAY', '9:00 AM- 2:00 PM', NULL),
(67, 'PROF. MR. VALDEZ', 'CAPSTONE 2', 'BSIT - 4C', 'WEDNESDAY', '2:00 PM- 7:00 PM', NULL),
(68, 'PROF. MR. VALDEZ', 'CAPSTONE 2', 'BSIT - 4D', 'TUESDAY', '2:00 PM- 7:00 PM', NULL),
(69, 'PROF. MR. VALDEZ', 'CAPSTONE 2', 'BSIT - 4E', 'FRIDAY/SATURDAY', '9:00 AM- 12:00 PM/ 5', NULL),
(70, 'PROF. MR. VALDEZ', 'CAPSTONE 2', 'BSIT - 4F', 'FRIDAY', '12:00 PM- 5:00 PM', NULL),
(71, 'PROF.  MS. MANZANILLO', 'PROG 3', 'BSIT - 2B', 'SATURDAY', '9:00 AM- 2:00 PM', NULL),
(72, 'PROF.  MS. MANZANILLO', 'PROG 3', 'BSIT - 2F', 'MONDAY/SATURDAY', '5:00 PM- 7:00 PM/7:0', NULL),
(73, 'PROF.  MS. MANZANILLO', 'PROG 3', 'BSIT - 2G', 'FRIDAY/SATURDAY', '5:00 PM- 7:00 PM/2:0', NULL),
(74, 'PROF. CONDING', 'GE SCI', 'BSIT - 2F', 'MONDAY/TUESDAY', '11:00 AM- 1:00 PM', NULL),
(75, 'PROF. CONDING', 'GE SCI', 'BSIT - 2G', 'MONDAY/TUESDAY', '1:00 PM- 2:30 PM', NULL),
(76, 'PROF. DR. DULLA', 'PROG 3', 'BSIT - 2H', 'SATURDAY', '3:00 PM- 5:00 PM', NULL),
(77, 'PROF. MR. MADES', 'IAS 1', 'BSIT - 3A', 'MONDAY', '2:00 PM- 7:00 PM', NULL),
(78, 'PROF. MR. MADES', 'IAS 1', 'BSIT - 3B', 'TUESDAY', '2:00 PM- 7:00 PM', NULL),
(79, 'PROF. MR. MADES', 'IAS 1', 'BSIT - 3C', 'MONDAY/TUESDAY', '11:00 AM- 2:00 PM/12', NULL),
(80, 'PROF. MR. MADES', 'IAS 1', 'BSIT - 3D', 'THURSDAY', '2:00 PM- 7:00 PM', NULL),
(81, 'PROF. MR. MADES', 'IAS 1', 'BSIT - 3E', 'FRIDAY', '2:00 PM- 7:00 PM', NULL),
(82, 'PROF. MR. MADES', 'IAS 1', 'BSIT - 3F', 'SATURDAY', '2:00 PM- 7:00 PM', NULL),
(83, 'PROF. MR. MADES', 'IAS 1', 'BSIT - 3G', 'SATURDAY', '9:00 AM- 2:00 PM', NULL),
(84, 'PROF. MR. MADES', 'IAS 1', 'BSIT - 3H', 'SATURDAY', '7:00 AM- 9:00 AM', NULL),
(85, 'PROF. MR. MADES', 'IAS 1', 'BSIT - 3I', 'THURSDAY', '7:00 AM- 12:00 PM', NULL),
(86, 'PROF. MS. LAMADORA', 'IT ELECT 3', 'BSIT - 3A', 'TUESDAY', '7:00 AM- 12:00 PM', NULL),
(87, 'PROF. MS. LAMADORA', 'IT ELECT 3', 'BSIT - 3B', 'MONDAY', '7:00 AM- 12:00 PM', NULL),
(88, 'PROF. MS. LAMADORA', 'IT ELECT 3', 'BSIT - 3C', 'THURSDAY', '7:00 AM- 12:00 PM', NULL),
(89, 'PROF. MS. LAMADORA', 'IT ELECT 3', 'BSIT - 3D', 'WEDNESDAY', '8:00 AM- 1:00 PM', NULL),
(90, 'PROF. MS. LAMADORA', 'IT ELECT 3', 'BSIT - 3E', 'SATURDAY', '2:00 PM- 7:00 PM', NULL),
(91, 'PROF. MS. LAMADORA', 'IT ELECT 3', 'BSIT - 3F', 'FRIDAY', '7:00 AM- 12:00 PM', NULL),
(92, 'PROF. MS. LAMADORA', 'IT ELECT 3', 'BSIT - 3G', 'MONDAY', '2:00 PM- 7:00 PM', NULL),
(93, 'PROF. MS. LAMADORA', 'IT ELECT 3', 'BSIT - 3H', 'TUESDAY', '2:00 PM- 7:00 PM', NULL),
(94, 'PROF. MS. LAMADORA', 'IT ELECT 3', 'BSIT - 3I', 'WEDNESDAY', '2:00 PM- 7:00 PM', NULL),
(95, 'PROF. ENGNR ASTILLERO', 'APPSDEV', 'BSIT - 3A', 'TUESDAY', '12:00 PM- 5:00 PM', NULL),
(96, 'PROF. ENGNR ASTILLERO', 'APPSDEV', 'BSIT - 3B', 'MONDAY', '12:00 PM- 5:00 PM', NULL),
(97, 'PROF. ENGNR ASTILLERO', 'APPSDEV', 'BSIT - 3C', 'THURSDAY', '12:00 PM- 5:00 PM', NULL),
(98, 'PROF. ENGNR ASTILLERO', 'APPSDEV', 'BSIT - 3D', 'FRIDAY', '7:00 AM- 12:00 PM', NULL),
(99, 'PROF. ENGNR ASTILLERO', 'APPSDEV', 'BSIT - 3E', 'WEDNESDAY', '11:00 AM- 4:00 PM', NULL),
(100, 'PROF. ENGNR ASTILLERO', 'APPSDEV', 'BSIT - 3F', 'FRIDAY', '12:00 PM- 5:00 PM', NULL),
(101, 'PROF. ENGNR ASTILLERO', 'APPSDEV', 'BSIT - 3G', 'MONDAY', '9:00 AM- 2:00 PM', NULL),
(102, 'PROF. ENGNR ASTILLERO', 'APPSDEV', 'BSIT - 3H', 'TUESDAY', '7:00 AM- 12:00 PM', NULL),
(103, 'PROF. ENGNR ASTILLERO', 'APPSDEV', 'BSIT - 3I', 'WEDNESDAY', '9:00 AM- 2:00 PM', NULL),
(104, 'PROF. MS. BRAO', 'ADBS', 'BSIT - 3A', 'WEDNESDAY', '9:00 AM- 2:00 PM', NULL),
(105, 'PROF. MS. BRAO', 'ADBS', 'BSIT - 3B', 'FRIDAY', '9:00 AM- 2:00 PM', NULL),
(106, 'PROF. MS. BRAO', 'ADBS', 'BSIT - 3C', 'SATURDAY', '2:00 PM- 7:00 PM', NULL),
(107, 'PROF. MS. BRAO', 'ADBS', 'BSIT - 3D', 'SATURDAY', '7:00 AM- 12:00 PM', NULL),
(108, 'PROF. MS. BRAO', 'ADBS', 'BSIT - 3E', 'MONDAY', '9:00 AM- 2:00 PM', NULL),
(109, 'PROF. MS. BRAO', 'ADBS', 'BSIT - 3F', 'THURSDAY', '9:00 AM- 2:00 PM', NULL),
(110, 'PROF. MS. BRAO', 'ADBS', 'BSIT - 3G', 'TUESDAY', '9:00 AM- 2:00 PM', NULL),
(111, 'PROF. MS. BRAO', 'ADBS', 'BSIT - 3H', 'WEDNESDAY', '2:00 PM- 7:00 PM', NULL),
(112, 'PROF. MS. BRAO', 'ADBS', 'BSIT - 3I', 'MONDAY', '4:00 PM- 7:00 PM', NULL),
(113, 'PROF. MR. BAUTRO', 'OS', 'BSIT - 3A', 'WEDNESDAY', '2:00 PM- 7:00 PM', NULL),
(114, 'PROF. MR. BAUTRO', 'OS', 'BSIT - 3B', 'FRIDAY', '2:00 PM- 7:00 PM', NULL),
(115, 'PROF. MR. BAUTRO', 'OS', 'BSIT - 3C', 'SATURDAY', '9:00 AM- 2:00 PM', NULL),
(116, 'PROF. MR. BAUTRO', 'OS', 'BSIT - 3D', 'SATURDAY', '2:00 PM- 7:00 PM', NULL),
(117, 'PROF. MR. BAUTRO', 'OS', 'BSIT - 3E', 'MONDAY', '2:00 PM- 7:00 PM', NULL),
(118, 'PROF. MR. BAUTRO', 'OS', 'BSIT - 3F', 'THURSDAY', '2:00 PM- 7:00 PM', NULL),
(119, 'PROF. MR. BAUTRO', 'OS', 'BSIT - 3G', 'TUESDAY', '2:00 PM- 7:00 PM', NULL),
(120, 'PROF. MR. BAUTRO', 'OS', 'BSIT - 3H', 'WEDNESDAY', '9:00 AM- 2:00 PM', NULL),
(121, 'PROF. MR. BAUTRO', 'OS', 'BSIT - 3I', 'MONDAY', '9:00 AM- 2:00 PM', NULL),
(122, 'PROF. MR. LORENZANA', 'NET 2', 'BSIT - 3A', 'SATURDAY', '9:00 AM- 2:00 PM', NULL),
(123, 'PROF. MR. LORENZANA', 'NET 2', 'BSIT - 3B', 'SATURDAY', '2:00 PM- 7:00 PM', NULL),
(124, 'PROF. MR. EBID', 'NET 2', 'BSIT - 3C', 'MONDAY', '2:00 PM- 7:00 PM', NULL),
(125, 'PROF. MR. EBID', 'NET 2', 'BSIT - 3E', 'TUESDAY', '2:00 PM- 7:00 PM', NULL),
(126, 'PROF. MR. EBID', 'NET 2', 'BSIT - 3F', 'WEDNESDAY', '2:00 PM- 7:00 PM', NULL),
(127, 'PROF. MR. EBID', 'NET 2', 'BSIT - 3H', 'SATURDAY', '9:00 AM- 2:00 PM', NULL),
(128, 'PROF. MR. EBID', 'NET 2', 'BSIT - 3I', 'THURSDAY', '2:00 PM- 7:00 PM', NULL),
(129, 'PROF. ENGR KALAW', 'NET 2', 'BSIT - 3D', 'FRIDAY', '1:00 PM- 6:00 PM', NULL),
(130, 'PROF. ENGR KALAW', 'NET 2', 'BSIT - 3G', 'SATURDAY', '2:00 PM- 7:00 PM', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student_info`
--
ALTER TABLE `student_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `student_selected_schedule`
--
ALTER TABLE `student_selected_schedule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `fk_schedule_id` (`schedule_id`);

--
-- Indexes for table `teacher_sched`
--
ALTER TABLE `teacher_sched`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student_info`
--
ALTER TABLE `student_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `student_selected_schedule`
--
ALTER TABLE `student_selected_schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `teacher_sched`
--
ALTER TABLE `teacher_sched`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `student_selected_schedule`
--
ALTER TABLE `student_selected_schedule`
  ADD CONSTRAINT `fk_schedule_id` FOREIGN KEY (`schedule_id`) REFERENCES `teacher_sched` (`id`),
  ADD CONSTRAINT `student_selected_schedule_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student_info` (`student_id`),
  ADD CONSTRAINT `student_selected_schedule_ibfk_2` FOREIGN KEY (`schedule_id`) REFERENCES `teacher_sched` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
