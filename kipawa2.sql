-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2020 at 02:43 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kipawa`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `courseID` varchar(20) NOT NULL,
  `cName` varchar(50) NOT NULL,
  `depertmentID` varchar(20) DEFAULT NULL,
  `employeeID` varchar(20) DEFAULT NULL,
  `level` varchar(11) NOT NULL,
  `credit` int(11) NOT NULL,
  `classfication` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`courseID`, `cName`, `depertmentID`, `employeeID`, `level`, `credit`, `classfication`) VALUES
('ITT-02', 'OS12', 'ITT', 'VETA-1', '3', 10, 'CORE'),
('ITT-04101', 'computer basics', 'ITT', 'VETA-1', '4', 12, 'C'),
('ITT-05473', 'OS', 'ITT', 'VETA-1', '5', 10, 'CORE'),
('ITT-06473', 'OS STRUCTURE', 'ITT', 'VETA-1', '6', 10, 'CORE');

-- --------------------------------------------------------

--
-- Table structure for table `courseprogram`
--

CREATE TABLE `courseprogram` (
  `id` int(11) NOT NULL,
  `courseID` varchar(20) CHARACTER SET latin1 NOT NULL,
  `programID` varchar(20) CHARACTER SET latin1 NOT NULL,
  `level` varchar(11) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courseprogram`
--

INSERT INTO `courseprogram` (`id`, `courseID`, `programID`, `level`) VALUES
(1, 'ITT-02', 'ELE', '3'),
(2, 'ITT-02', 'ICT', '3'),
(3, 'ITT-04101', 'ELE', '4'),
(4, 'ITT-04101', 'ICT', '4'),
(5, 'ITT-05473', 'ELE', '5'),
(6, 'ITT-05473', 'ICT', '5'),
(7, 'ITT-06473', 'ELE', '6'),
(8, 'ITT-06473', 'ICT', '6');

-- --------------------------------------------------------

--
-- Table structure for table `coursework`
--

CREATE TABLE `coursework` (
  `id` int(11) NOT NULL,
  `courseID` varchar(20) DEFAULT NULL,
  `score` varchar(5) NOT NULL,
  `remarks` varchar(4) NOT NULL,
  `regno` varchar(30) NOT NULL,
  `coID` varchar(20) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '	'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coursework`
--

INSERT INTO `coursework` (`id`, `courseID`, `score`, `remarks`, `regno`, `coID`) VALUES
(1, 'ITT-04101', '40', 'pass', 'VETA-S1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `courseworkstate`
--

CREATE TABLE `courseworkstate` (
  `coID` varchar(20) NOT NULL,
  `costateID` varchar(20) NOT NULL,
  `coaccess` varchar(20) NOT NULL,
  `costatus` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `depertmentID` varchar(20) NOT NULL,
  `dName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`depertmentID`, `dName`) VALUES
('ITT', 'Information Communication Technology');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employeeID` varchar(20) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `mname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `email` varchar(55) DEFAULT NULL,
  `file` varchar(110) DEFAULT NULL,
  `gender` varchar(8) DEFAULT NULL,
  `depertmentID` varchar(20) DEFAULT NULL,
  `phoneno` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employeeID`, `fname`, `mname`, `lname`, `email`, `file`, `gender`, `depertmentID`, `phoneno`) VALUES
('VETA-1', 'Francis', 'Felix', 'Mboya', 'francis@gmail.com', NULL, 'male', 'ITT', '+25575965844'),
('VETA-2', 'Rehema', 'Felix', 'Mboya', 'rehema@gmail.com', NULL, 'female', 'ITT', '0675511089'),
('VETA-3', 'Upendo', 'Felix', 'Mboya', 'upendo@gmail.com', NULL, 'female', 'ITT', '0675511083'),
('VETA-5', 'emanuel', 'materu', 'regnald', 'materu@gmail.com', NULL, 'male', 'ITT', '0675511082'),
('VETA-6', 'mboya', 'francis', 'felix', 'mboya@gmail.com', NULL, 'male', 'ITT', '0675511084');

-- --------------------------------------------------------

--
-- Table structure for table `hmessager`
--

CREATE TABLE `hmessager` (
  `id` int(11) NOT NULL,
  `messageB` varchar(50) NOT NULL,
  `messageH` varchar(350) NOT NULL,
  `status` varchar(7) NOT NULL,
  `employeeID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hmessages`
--

CREATE TABLE `hmessages` (
  `id` int(11) NOT NULL,
  `messageB` varchar(50) NOT NULL,
  `messageH` varchar(350) NOT NULL,
  `status` varchar(7) NOT NULL,
  `regno` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hmessaget`
--

CREATE TABLE `hmessaget` (
  `id` int(11) NOT NULL,
  `messageB` varchar(50) NOT NULL,
  `messageH` varchar(350) NOT NULL,
  `status` varchar(7) NOT NULL,
  `employeeID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `email` varchar(55) NOT NULL,
  `password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`email`, `password`) VALUES
('francis@gmail.com', '12345'),
('kweka@gmail.com', '12345'),
('materu@gmail.com', '12345'),
('mboya@gmail.com', '12345'),
('rehema@gmail.com', '12345'),
('std3@gmail.com', '12345'),
('std4@gmail.com', '12345'),
('stdnew@gmail.com', '12345'),
('upendo@gmail.com', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `loginst`
--

CREATE TABLE `loginst` (
  `OID` int(11) NOT NULL,
  `email` varchar(55) CHARACTER SET latin1 NOT NULL,
  `ostate` varchar(10) CHARACTER SET latin1 NOT NULL DEFAULT 'offline'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loginst`
--

INSERT INTO `loginst` (`OID`, `email`, `ostate`) VALUES
(1, 'francis@gmail.com', 'online'),
(2, 'rehema@gmail.com', 'online'),
(3, 'kweka@gmail.com', 'online'),
(4, 'francis@gmail.com', 'offline'),
(5, 'mboya@gmail.com', 'offline');

-- --------------------------------------------------------

--
-- Table structure for table `loginstate`
--

CREATE TABLE `loginstate` (
  `loginID` int(11) NOT NULL,
  `email` varchar(55) CHARACTER SET latin1 NOT NULL,
  `loginstatus` varchar(20) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loginstate`
--

INSERT INTO `loginstate` (`loginID`, `email`, `loginstatus`) VALUES
(1, 'francis@gmail.com', 'enabled'),
(2, 'materu@gmail.com', 'disabled'),
(4, 'kweka@gmail.com', 'enabled'),
(5, 'mboya@gmail.com', 'disabled');

-- --------------------------------------------------------

--
-- Table structure for table `pmessageh`
--

CREATE TABLE `pmessageh` (
  `id` int(11) NOT NULL,
  `messageH` varchar(50) NOT NULL,
  `messageB` varchar(350) NOT NULL,
  `employID` varchar(20) NOT NULL,
  `status` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pmessager`
--

CREATE TABLE `pmessager` (
  `id` int(11) NOT NULL,
  `messageH` varchar(50) NOT NULL,
  `messageB` varchar(350) NOT NULL,
  `employID` varchar(20) NOT NULL,
  `status` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pmessaget`
--

CREATE TABLE `pmessaget` (
  `id` int(11) NOT NULL,
  `messageH` varchar(50) NOT NULL,
  `messageB` varchar(350) NOT NULL,
  `employeeID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `program`
--

CREATE TABLE `program` (
  `programID` varchar(20) NOT NULL,
  `pName` varchar(250) NOT NULL,
  `durationINYear` int(11) NOT NULL,
  `depertmentID` varchar(20) DEFAULT NULL,
  `level` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `program`
--

INSERT INTO `program` (`programID`, `pName`, `durationINYear`, `depertmentID`, `level`) VALUES
('ELE', 'ELECTRONICS', 1, 'ITT', '5'),
('ICT', 'Computing information and communication technology', 1, 'ITT', ' 4');

-- --------------------------------------------------------

--
-- Table structure for table `regstate`
--

CREATE TABLE `regstate` (
  `regID` int(11) NOT NULL,
  `regno` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `seID` varchar(20) DEFAULT NULL,
  `regstatus` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `id` int(11) NOT NULL,
  `courseID` varchar(20) DEFAULT NULL,
  `regno` varchar(30) NOT NULL,
  `score` varchar(5) NOT NULL,
  `grade` varchar(1) NOT NULL,
  `year` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`id`, `courseID`, `regno`, `score`, `grade`, `year`) VALUES
(1, 'ITT-04101', 'VETA-S1', '67', 'A', 2020);

-- --------------------------------------------------------

--
-- Table structure for table `resultstate`
--

CREATE TABLE `resultstate` (
  `reID` varchar(20) NOT NULL,
  `restateID` varchar(20) NOT NULL,
  `reaccess` varchar(20) NOT NULL,
  `restatus` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `rmessageh`
--

CREATE TABLE `rmessageh` (
  `id` int(11) NOT NULL,
  `messageB` varchar(50) NOT NULL,
  `messageH` varchar(350) NOT NULL,
  `status` varchar(7) NOT NULL,
  `employeeID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rmessages`
--

CREATE TABLE `rmessages` (
  `id` int(11) NOT NULL,
  `messageB` varchar(50) NOT NULL,
  `messageH` varchar(350) NOT NULL,
  `status` varchar(7) NOT NULL,
  `regno` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rmessaget`
--

CREATE TABLE `rmessaget` (
  `id` int(11) NOT NULL,
  `messageB` varchar(50) NOT NULL,
  `messageH` varchar(350) NOT NULL,
  `status` varchar(7) NOT NULL,
  `employeeID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `sID` int(11) NOT NULL,
  `seName` varchar(20) NOT NULL,
  `courseID` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`sID`, `seName`, `courseID`) VALUES
(1, '1', 'ITT 04101');

-- --------------------------------------------------------

--
-- Table structure for table `semisterstate`
--

CREATE TABLE `semisterstate` (
  `seID` varchar(20) NOT NULL,
  `sestateID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `statusID` int(11) NOT NULL,
  `statusName` varchar(20) NOT NULL,
  `email` varchar(55) NOT NULL,
  `lstate` varchar(20) NOT NULL DEFAULT 'enabled'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`statusID`, `statusName`, `email`, `lstate`) VALUES
(2, 'teacher', 'francis@gmail.com', 'enabled'),
(3, 'student', 'kweka@gmail.com', 'enabled'),
(4, 'student', 'materu@gmail.com', 'disabled'),
(5, 'admin', 'mboya@gmail.com', 'disabled'),
(6, 'principal', 'upendo@gmail.com', 'disabled'),
(7, 'registrar', 'rehema@gmail.com', 'enabled'),
(8, 'student', 'std3@gmail.com', 'enabled'),
(9, 'student', 'stdnew@gmail.com', 'enabled'),
(10, 'student', 'std4@gmail.com', 'enabled');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `regno` varchar(30) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `mname` varchar(50) DEFAULT NULL,
  `lname` varchar(50) NOT NULL,
  `depertmentID` varchar(20) DEFAULT NULL,
  `programID` varchar(20) DEFAULT NULL,
  `year` year(4) NOT NULL,
  `level` varchar(11) NOT NULL,
  `email` varchar(55) DEFAULT NULL,
  `file` varchar(110) NOT NULL,
  `gender` varchar(8) DEFAULT NULL,
  `state` varchar(20) NOT NULL,
  `regDate` varchar(25) NOT NULL,
  `phoneno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`regno`, `fname`, `mname`, `lname`, `depertmentID`, `programID`, `year`, `level`, `email`, `file`, `gender`, `state`, `regDate`, `phoneno`) VALUES
('STD- 12', 'ali', 'niyonzima', 'hatar', 'ITT', 'ICT', 2020, '6', 'std3@gmail.com', '.url2/home', 'Male', 'Approved', '20-05-2020', 767632350),
('STD-13', 'FRANCIS', NULL, 'JIPU', 'ITT', 'ICT', 2020, '3', 'std4@gmail.com', './UTRLCS', 'Male', 'Approved', '20-05-2020', 767632350),
('STD-v2', 'Amina', NULL, 'Mushi', 'ITT', 'ICT', 2020, '3', 'stdnew@gmail.com', './url21', 'Female', 'Approved', '20-05-2020', 767632350),
('VETA-S1', 'kweka', 'immanuel', 'micky', 'ITT', 'ICT', 2020, '4', 'kweka@gmail.com', 'img/j/p.jpg', 'male', 'approved', '12/3/2020', 715761392),
('VTS-02', 'Abdul', NULL, 'molel', 'ITT', 'ELE', 2020, '5', 'materu@gmail.com', './url2020', 'male', 'full', '12-12-2020', 7658439);

-- --------------------------------------------------------

--
-- Table structure for table `studentviewco`
--

CREATE TABLE `studentviewco` (
  `stateView` varchar(20) NOT NULL,
  `coID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tmessageh`
--

CREATE TABLE `tmessageh` (
  `id` int(11) NOT NULL,
  `messageB` varchar(50) NOT NULL,
  `messageH` varchar(350) NOT NULL,
  `status` varchar(7) NOT NULL,
  `employeeID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tmessages`
--

CREATE TABLE `tmessages` (
  `id` int(11) NOT NULL,
  `messageB` varchar(50) NOT NULL,
  `messageH` varchar(350) NOT NULL,
  `status` varchar(7) NOT NULL,
  `regno` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`courseID`),
  ADD KEY `depertmentID` (`depertmentID`,`employeeID`),
  ADD KEY `course_ibfk_2` (`employeeID`);

--
-- Indexes for table `courseprogram`
--
ALTER TABLE `courseprogram`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courseID` (`courseID`),
  ADD KEY `programID` (`programID`);

--
-- Indexes for table `coursework`
--
ALTER TABLE `coursework`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courseID` (`courseID`),
  ADD KEY `regno` (`regno`),
  ADD KEY `coID` (`coID`);

--
-- Indexes for table `courseworkstate`
--
ALTER TABLE `courseworkstate`
  ADD PRIMARY KEY (`coID`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`depertmentID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employeeID`),
  ADD UNIQUE KEY `phoneno` (`phoneno`) USING HASH,
  ADD KEY `statusid` (`email`,`depertmentID`),
  ADD KEY `depertmentID` (`depertmentID`);

--
-- Indexes for table `hmessager`
--
ALTER TABLE `hmessager`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hmessager_ibfk_1` (`employeeID`);

--
-- Indexes for table `hmessages`
--
ALTER TABLE `hmessages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hmessages_ibfk_1` (`regno`);

--
-- Indexes for table `hmessaget`
--
ALTER TABLE `hmessaget`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hmessaget_ibfk_1` (`employeeID`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `loginst`
--
ALTER TABLE `loginst`
  ADD PRIMARY KEY (`OID`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `loginstate`
--
ALTER TABLE `loginstate`
  ADD PRIMARY KEY (`loginID`),
  ADD KEY `loginState_ibfk_1` (`email`);

--
-- Indexes for table `pmessageh`
--
ALTER TABLE `pmessageh`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employID` (`employID`);

--
-- Indexes for table `pmessager`
--
ALTER TABLE `pmessager`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employID` (`employID`);

--
-- Indexes for table `pmessaget`
--
ALTER TABLE `pmessaget`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employID` (`employeeID`);

--
-- Indexes for table `program`
--
ALTER TABLE `program`
  ADD PRIMARY KEY (`programID`),
  ADD KEY `c` (`depertmentID`);

--
-- Indexes for table `regstate`
--
ALTER TABLE `regstate`
  ADD PRIMARY KEY (`regID`),
  ADD KEY `regno` (`regno`,`seID`),
  ADD KEY `seID` (`seID`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courseID` (`courseID`,`regno`),
  ADD KEY `regno` (`regno`);

--
-- Indexes for table `resultstate`
--
ALTER TABLE `resultstate`
  ADD PRIMARY KEY (`reID`);

--
-- Indexes for table `rmessageh`
--
ALTER TABLE `rmessageh`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rmessageh_ibfk_1` (`employeeID`);

--
-- Indexes for table `rmessages`
--
ALTER TABLE `rmessages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rmessages_ibfk_1` (`regno`);

--
-- Indexes for table `rmessaget`
--
ALTER TABLE `rmessaget`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employID` (`employeeID`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`sID`),
  ADD KEY `semester_ibfk_1` (`courseID`);

--
-- Indexes for table `semisterstate`
--
ALTER TABLE `semisterstate`
  ADD PRIMARY KEY (`seID`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`statusID`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`regno`),
  ADD KEY `depertmentID` (`depertmentID`,`programID`,`email`),
  ADD KEY `ph1` (`programID`),
  ADD KEY `ph2` (`email`);

--
-- Indexes for table `studentviewco`
--
ALTER TABLE `studentviewco`
  ADD KEY `coID` (`coID`);

--
-- Indexes for table `tmessageh`
--
ALTER TABLE `tmessageh`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tmessageh_ibfk_1` (`employeeID`);

--
-- Indexes for table `tmessages`
--
ALTER TABLE `tmessages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tmessages_ibfk_1` (`regno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courseprogram`
--
ALTER TABLE `courseprogram`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `coursework`
--
ALTER TABLE `coursework`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hmessager`
--
ALTER TABLE `hmessager`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hmessages`
--
ALTER TABLE `hmessages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hmessaget`
--
ALTER TABLE `hmessaget`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loginst`
--
ALTER TABLE `loginst`
  MODIFY `OID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `loginstate`
--
ALTER TABLE `loginstate`
  MODIFY `loginID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pmessageh`
--
ALTER TABLE `pmessageh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pmessager`
--
ALTER TABLE `pmessager`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pmessaget`
--
ALTER TABLE `pmessaget`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `regstate`
--
ALTER TABLE `regstate`
  MODIFY `regID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `result`
--
ALTER TABLE `result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rmessageh`
--
ALTER TABLE `rmessageh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rmessages`
--
ALTER TABLE `rmessages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rmessaget`
--
ALTER TABLE `rmessaget`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `semester`
--
ALTER TABLE `semester`
  MODIFY `sID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `statusID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tmessageh`
--
ALTER TABLE `tmessageh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tmessages`
--
ALTER TABLE `tmessages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `course_ibfk_2` FOREIGN KEY (`employeeID`) REFERENCES `employee` (`employeeID`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `course_ibfk_3` FOREIGN KEY (`depertmentID`) REFERENCES `department` (`depertmentID`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `courseprogram`
--
ALTER TABLE `courseprogram`
  ADD CONSTRAINT `courseprogram_ibfk_1` FOREIGN KEY (`courseID`) REFERENCES `course` (`courseID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `courseprogram_ibfk_2` FOREIGN KEY (`programID`) REFERENCES `program` (`programID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `coursework`
--
ALTER TABLE `coursework`
  ADD CONSTRAINT `coursework_ibfk_2` FOREIGN KEY (`regno`) REFERENCES `student` (`regno`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `coursework_ibfk_3` FOREIGN KEY (`courseID`) REFERENCES `course` (`courseID`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `coursework_ibfk_4` FOREIGN KEY (`coID`) REFERENCES `courseworkstate` (`coID`);

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`depertmentID`) REFERENCES `department` (`depertmentID`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`email`) REFERENCES `login` (`email`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `hmessager`
--
ALTER TABLE `hmessager`
  ADD CONSTRAINT `hmessager_ibfk_1` FOREIGN KEY (`employeeID`) REFERENCES `employee` (`employeeID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hmessages`
--
ALTER TABLE `hmessages`
  ADD CONSTRAINT `hmessages_ibfk_1` FOREIGN KEY (`regno`) REFERENCES `student` (`regno`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hmessaget`
--
ALTER TABLE `hmessaget`
  ADD CONSTRAINT `hmessaget_ibfk_1` FOREIGN KEY (`employeeID`) REFERENCES `employee` (`employeeID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `loginst`
--
ALTER TABLE `loginst`
  ADD CONSTRAINT `loginST_ibfk_1` FOREIGN KEY (`email`) REFERENCES `login` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `loginstate`
--
ALTER TABLE `loginstate`
  ADD CONSTRAINT `loginState_ibfk_1` FOREIGN KEY (`email`) REFERENCES `login` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pmessageh`
--
ALTER TABLE `pmessageh`
  ADD CONSTRAINT `pmessageh_ibfk_1` FOREIGN KEY (`employID`) REFERENCES `employee` (`employeeID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pmessager`
--
ALTER TABLE `pmessager`
  ADD CONSTRAINT `pmessager_ibfk_1` FOREIGN KEY (`employID`) REFERENCES `employee` (`employeeID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pmessaget`
--
ALTER TABLE `pmessaget`
  ADD CONSTRAINT `pmessaget_ibfk_1` FOREIGN KEY (`employeeID`) REFERENCES `employee` (`employeeID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `program`
--
ALTER TABLE `program`
  ADD CONSTRAINT `c` FOREIGN KEY (`depertmentID`) REFERENCES `department` (`depertmentID`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `regstate`
--
ALTER TABLE `regstate`
  ADD CONSTRAINT `regState_ibfk_1` FOREIGN KEY (`regno`) REFERENCES `student` (`regno`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `regState_ibfk_2` FOREIGN KEY (`seID`) REFERENCES `semisterstate` (`seID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `result`
--
ALTER TABLE `result`
  ADD CONSTRAINT `result_ibfk_1` FOREIGN KEY (`courseID`) REFERENCES `course` (`courseID`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `result_ibfk_2` FOREIGN KEY (`regno`) REFERENCES `student` (`regno`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rmessageh`
--
ALTER TABLE `rmessageh`
  ADD CONSTRAINT `rmessageh_ibfk_1` FOREIGN KEY (`employeeID`) REFERENCES `employee` (`employeeID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
