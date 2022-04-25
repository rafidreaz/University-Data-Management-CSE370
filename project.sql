-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2022 at 05:46 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_careerinfo`
--

CREATE TABLE `admin_careerinfo` (
  `ID` int(8) NOT NULL,
  `department` varchar(30) NOT NULL,
  `JoiningDate` date NOT NULL,
  `Designation` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_careerinfo`
--

INSERT INTO `admin_careerinfo` (`ID`, `department`, `JoiningDate`, `Designation`) VALUES
(991001, 'CSE', '2018-02-03', 'USIS ADMIN'),
(991002, 'CSE', '2022-04-25', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `admin_personalinfo`
--

CREATE TABLE `admin_personalinfo` (
  `Name` varchar(60) NOT NULL,
  `ID` int(11) NOT NULL,
  `phone` bigint(14) NOT NULL,
  `Gender` varchar(30) NOT NULL,
  `BloodType` varchar(60) NOT NULL,
  `Nationality` varchar(60) NOT NULL,
  `userEmail` varchar(90) NOT NULL,
  `mailingAddress` varchar(90) NOT NULL,
  `permanentAddress` varchar(90) NOT NULL,
  `dob` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_personalinfo`
--

INSERT INTO `admin_personalinfo` (`Name`, `ID`, `phone`, `Gender`, `BloodType`, `Nationality`, `userEmail`, `mailingAddress`, `permanentAddress`, `dob`) VALUES
('Ryan Rafi', 991001, 1655288374, 'Male', 'B+', 'Bengali', 'adminwhat@gmail', 'Street:   lane #6, new d.o.h.s., mohakhali, 1206  City:   Dhaka  State/province/area:    D', 'Street:  nawab road, sylhet, sylhet, 3100  City:   Dhaka  State/province/area:    Dhaka  P', '1991-12-12'),
('CyberNinja', 991002, 1722411412, 'Male', '0+', 'Japanese', 'admin2@gmail.com', 'Street:   road # 10/a(new), 19(old), west dhanmondi, 1209  City:   Dhaka  State/province/a', 'Street:  307-1293, Nishishinjuku Shinjuku Pakutawa(8-kai)  City:  Shinjuku-ku  State/provi', '2000-12-31');

-- --------------------------------------------------------

--
-- Table structure for table `courses_faculty_info`
--

CREATE TABLE `courses_faculty_info` (
  `userid_login` int(30) NOT NULL,
  `course_code` varchar(10) NOT NULL,
  `NumberOfStudents` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courses_faculty_info`
--

INSERT INTO `courses_faculty_info` (`userid_login`, `course_code`, `NumberOfStudents`) VALUES
(1001, 'CSE11002', 1),
(1002, 'CSE11002', 1);

-- --------------------------------------------------------

--
-- Table structure for table `courses_student_info`
--

CREATE TABLE `courses_student_info` (
  `userid_login` int(30) NOT NULL,
  `numberofcourses` int(30) NOT NULL,
  `course_1` varchar(10) NOT NULL,
  `course_2` varchar(10) NOT NULL,
  `course_3` varchar(10) NOT NULL,
  `course_4` varchar(10) NOT NULL,
  `course_5` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courses_student_info`
--

INSERT INTO `courses_student_info` (`userid_login`, `numberofcourses`, `course_1`, `course_2`, `course_3`, `course_4`, `course_5`) VALUES
(19201044, 3, 'CSE11001', 'CSE11001', 'CSE11001', '', ''),
(19201052, 5, 'CSE11002', 'CSE11001', 'CSE11101', 'CSE33003', 'CSE11101'),
(19201053, 5, 'CSE11001', 'CSE33003', 'CSE11102', 'CSE22001', 'CSE22002');

-- --------------------------------------------------------

--
-- Table structure for table `course_offered`
--

CREATE TABLE `course_offered` (
  `dep_course` varchar(60) DEFAULT NULL,
  `room_no_course` varchar(60) DEFAULT NULL,
  `course_code` varchar(60) NOT NULL,
  `course_time` varchar(60) DEFAULT NULL,
  `course_title` varchar(60) DEFAULT NULL,
  `course_seat` int(11) DEFAULT NULL,
  `course_section` int(11) DEFAULT NULL,
  `facultyname` varchar(255) DEFAULT NULL,
  `code_basicname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course_offered`
--

INSERT INTO `course_offered` (`dep_course`, `room_no_course`, `course_code`, `course_time`, `course_title`, `course_seat`, `course_section`, `facultyname`, `code_basicname`) VALUES
('CSE', 'UB10101', 'CSE11001', 'Saturday, Monday 08:00 AM-09:20 AM', 'Programming Language', 39, 1, 'Jimmy Tahmid', 'CSE110'),
('CSE', 'UB10102', 'CSE11002', 'Saturday, Monday 09:30 AM-10:50 AM', 'Programming Language', 39, 2, 'JM Redwan', 'CSE110'),
('CSE', 'UB10103', 'CSE11003', 'Saturday, Monday 11:00 AM-12:20 PM', 'Programming Language', 40, 3, 'Robiul Alam', 'CSE110'),
('CSE', 'UB10104', 'CSE11101', 'Saturday, Monday 08:00 AM-09:20 AM', 'Programming Language-II', 40, 1, 'Subah Nawer', 'CSE111'),
('CSE', 'UB10105', 'CSE11102', 'Saturday, Monday 09:30 AM-10:50 AM', 'Programming Language-II', 40, 2, 'Shakira Islam', 'CSE111'),
('CSE', 'UB10106', 'CSE11103', 'Saturday, Monday 11:00 AM-12:20 PM', 'Programming Language-II', 40, 3, 'Tirthendu Chakraborti', 'CSE111'),
('CSE', 'UB10107', 'CSE22001', 'Sunday, Tuesday 08:00 AM-09:20 AM', 'Data Structures', 40, 1, 'Fahmid Bin Kibria', 'CSE220'),
('CSE', 'UB10108', 'CSE22002', 'Sunday, Tuesday 09:30 AM-10:50 AM', 'Data Structures', 40, 2, 'Shafkat Elahee', 'CSE220'),
('CSE', 'UB10109', 'CSE22003', 'Sunday, Tuesday 11:00 AM-12:20 PM', 'Data Structures', 40, 3, 'Adib Rahman', 'CSE220'),
('CSE', 'UB10110', 'CSE33001', 'Sunday, Tuesday 08:00 AM-09:20 AM', 'Numerical Methods', 40, 1, 'Ahnam Razeen', 'CSE330'),
('CSE', 'UB20101', 'CSE33002', 'Sunday, Tuesday 09:30 AM-10:50 AM', 'Numerical Methods', 40, 2, 'Prottoy Saha', 'CSE330'),
('CSE', 'UB20102', 'CSE33003', 'Sunday, Tuesday 11:00 AM-12:20 PM', 'Numerical Methods', 40, 3, 'Tahmid Fyaz', 'CSE330'),
('No Department', 'UB00000', 'NotAdvised', 'No time Specified', 'NotAdvised', 40, 100, 'Not Advised', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_careerinfo`
--

CREATE TABLE `faculty_careerinfo` (
  `ID` int(8) NOT NULL,
  `department` varchar(30) NOT NULL,
  `JoiningDate` date NOT NULL,
  `course_code` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculty_careerinfo`
--

INSERT INTO `faculty_careerinfo` (`ID`, `department`, `JoiningDate`, `course_code`) VALUES
(1001, 'CSE', '2010-06-20', 'CSE11001'),
(1002, 'CSE', '2022-04-25', 'NotAdvised');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_personalinfo`
--

CREATE TABLE `faculty_personalinfo` (
  `Name` varchar(60) NOT NULL,
  `ID` int(11) NOT NULL,
  `phone` bigint(14) NOT NULL,
  `Gender` varchar(30) NOT NULL,
  `BloodType` varchar(60) NOT NULL,
  `Nationality` varchar(60) NOT NULL,
  `userEmail` varchar(90) NOT NULL,
  `mailingAddress` varchar(90) NOT NULL,
  `permanentAddress` varchar(90) NOT NULL,
  `dob` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculty_personalinfo`
--

INSERT INTO `faculty_personalinfo` (`Name`, `ID`, `phone`, `Gender`, `BloodType`, `Nationality`, `userEmail`, `mailingAddress`, `permanentAddress`, `dob`) VALUES
('Jimmy', 1001, 1644288521, 'Male', 'A+', 'Bengali', 'brut@gmail', 'Street:  42/b, new road zigatola, flat # 6/b, 1209  City:   Dhaka  State/province/area:   ', 'Street:  44/c/1, azimpur road, 1205  City:   Dhaka  State/province/area:    Dhaka  Phone n', '1982-11-13'),
('Md Shofiq', 1002, 1823477129, 'Male', 'A+', 'Bengali', 'faculty2@gmail.com', 'South korea', 'South korea', '2000-12-31');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username_login` varchar(30) NOT NULL,
  `password_login` varchar(60) NOT NULL,
  `usertype_login` varchar(30) NOT NULL,
  `email_login` varchar(100) NOT NULL,
  `userid_login` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username_login`, `password_login`, `usertype_login`, `email_login`, `userid_login`) VALUES
('admin1', 'admin', 'admin', 'adminwhat@gmail', 991001),
('admin2', 'admin', 'admin', 'admin2@gmail.com', 991002),
('faculty1', 'faculty', 'faculty', 'brut@gmail', 1001),
('faculty2', 'faculty', 'faculty', 'faculty2@gmail.com', 1002),
('student1', 'student', 'student', 'student@gmail.com', 19201052),
('student2', 'student', 'student', 'rafid.reaz@gmail', 19201044),
('student3', 'student', 'student', 'student3@gmail.com', 19201053);

-- --------------------------------------------------------

--
-- Table structure for table `student_careerinfo`
--

CREATE TABLE `student_careerinfo` (
  `ID` int(8) NOT NULL,
  `totalCredit` int(11) DEFAULT NULL,
  `department` varchar(30) DEFAULT NULL,
  `numberOfCourseThisSemester` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_careerinfo`
--

INSERT INTO `student_careerinfo` (`ID`, `totalCredit`, `department`, `numberOfCourseThisSemester`) VALUES
(19201044, 84, 'CS', 3),
(19201052, 84, 'CSE', 5),
(19201053, 0, 'CSE', 5);

-- --------------------------------------------------------

--
-- Table structure for table `student_gradepersemester`
--

CREATE TABLE `student_gradepersemester` (
  `userid_login` int(30) NOT NULL,
  `semester1_result` decimal(3,2) NOT NULL,
  `semester2_result` decimal(3,2) NOT NULL,
  `semester3_result` decimal(3,2) NOT NULL,
  `semester4_result` decimal(3,2) NOT NULL,
  `semester5_result` decimal(3,2) NOT NULL,
  `semester6_result` decimal(3,2) NOT NULL,
  `semester7_result` decimal(3,2) NOT NULL,
  `semester8_result` decimal(3,2) NOT NULL,
  `semester9_result` decimal(3,2) NOT NULL,
  `semester10_result` decimal(3,2) NOT NULL,
  `semester11_result` decimal(3,2) NOT NULL,
  `semester12_result` decimal(3,2) NOT NULL,
  `semesterCompleted` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_gradepersemester`
--

INSERT INTO `student_gradepersemester` (`userid_login`, `semester1_result`, `semester2_result`, `semester3_result`, `semester4_result`, `semester5_result`, `semester6_result`, `semester7_result`, `semester8_result`, `semester9_result`, `semester10_result`, `semester11_result`, `semester12_result`, `semesterCompleted`) VALUES
(19201044, '4.00', '4.00', '4.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 3),
(19201052, '4.00', '4.00', '4.00', '4.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 4),
(19201053, '2.50', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `student_personalinfo`
--

CREATE TABLE `student_personalinfo` (
  `Name` varchar(60) DEFAULT NULL,
  `ID` int(11) NOT NULL,
  `phone` bigint(14) DEFAULT NULL,
  `Gender` varchar(30) DEFAULT NULL,
  `BloodType` varchar(60) DEFAULT NULL,
  `Nationality` varchar(60) DEFAULT NULL,
  `userEmail` varchar(90) DEFAULT NULL,
  `mailingAddress` varchar(90) DEFAULT NULL,
  `permanentAddress` varchar(90) DEFAULT NULL,
  `dob` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_personalinfo`
--

INSERT INTO `student_personalinfo` (`Name`, `ID`, `phone`, `Gender`, `BloodType`, `Nationality`, `userEmail`, `mailingAddress`, `permanentAddress`, `dob`) VALUES
('Md Rafid Reaz', 19201044, 1742577239, 'Male', 'A+', 'Bengali', 'rafid.reaz@gmail', 'Rd: 27, Ave: 04, Mirpur 12, Bangladesh', 'Rd: 27, Ave: 04, Mirpur 12, Bangladesh', '2000-12-31'),
('Khan Abrar Shams', 19201052, 1811466391, 'Male', '0⁺', 'Bengali', 'khan.abrarshams@gmail.com', '14, purana paltan, 6th floor , 1000, Dhaka', 'zakir hossain road, chittagong, chittagong, 4202', '2001-09-28'),
('New Student 3', 19201053, 1688499231, 'Male', '0+', 'Bengali', 'student3@gmail.com', 'Uganda', 'Uganda', '2000-12-31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_careerinfo`
--
ALTER TABLE `admin_careerinfo`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `admin_personalinfo`
--
ALTER TABLE `admin_personalinfo`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `courses_faculty_info`
--
ALTER TABLE `courses_faculty_info`
  ADD PRIMARY KEY (`userid_login`);

--
-- Indexes for table `courses_student_info`
--
ALTER TABLE `courses_student_info`
  ADD PRIMARY KEY (`userid_login`);

--
-- Indexes for table `course_offered`
--
ALTER TABLE `course_offered`
  ADD PRIMARY KEY (`course_code`);

--
-- Indexes for table `faculty_careerinfo`
--
ALTER TABLE `faculty_careerinfo`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `faculty_personalinfo`
--
ALTER TABLE `faculty_personalinfo`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`username_login`);

--
-- Indexes for table `student_careerinfo`
--
ALTER TABLE `student_careerinfo`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `student_gradepersemester`
--
ALTER TABLE `student_gradepersemester`
  ADD PRIMARY KEY (`userid_login`);

--
-- Indexes for table `student_personalinfo`
--
ALTER TABLE `student_personalinfo`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
