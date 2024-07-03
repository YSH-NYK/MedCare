-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2024 at 06:41 PM
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
-- Database: `psyt`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `appointment_id` int(11) NOT NULL,
  `app_date` date NOT NULL,
  `stat` varchar(255) NOT NULL,
  `eid` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`appointment_id`, `app_date`, `stat`, `eid`, `pid`) VALUES
(200, '2023-11-10', 'Completed', 2, 110),
(201, '2023-11-28', 'Confirmed', 6, 122);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `emp_id` int(11) NOT NULL,
  `Fname` varchar(25) NOT NULL,
  `Lname` varchar(25) NOT NULL,
  `designation` varchar(25) NOT NULL,
  `dob` date NOT NULL,
  `contact_no` varchar(10) DEFAULT NULL,
  `email` varchar(25) NOT NULL,
  `gender` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`emp_id`, `Fname`, `Lname`, `designation`, `dob`, `contact_no`, `email`, `gender`) VALUES
(2, 'John', 'Doe', 'Doctor', '1980-05-15', '1234567890', 'john.doe@example.com', 'M'),
(3, 'Jane', 'Smith', 'Nurse', '1985-08-22', '9876543210', 'jane.smith@example.com', 'F'),
(4, 'Mike', 'Johnson', 'Administrator', '1988-03-10', '5551234567', 'mike.johnson@example.com', 'M'),
(5, 'Emily', 'Davis', 'Pharmacist', '1992-11-28', '9998887777', 'emily.davis@example.com', 'F'),
(6, 'Alex', 'Wilson', 'IT Specialist', '1987-07-07', '1112223333', 'alex.wilson@example.com', 'M'),
(7, 'Megan', 'Taylor', 'HR Manager', '1984-01-05', '4445556666', 'megan.taylor@example.com', 'F'),
(8, 'Chris', 'Martin', 'Finance Manager', '1995-09-18', '6667778888', 'chris.martin@example.com', 'M'),
(9, 'Sophie', 'Johnson', 'Lab Technician', '1993-04-25', '1231231234', 'sophie.johnson@example.co', 'F'),
(10, 'Ryan', 'Miller', 'Security Officer', '1991-06-20', '7897897890', 'ryan.miller@example.com', 'M'),
(11, 'Olivia', 'Brown', 'Receptionist', '1989-12-15', '4564564567', 'olivia.brown@example.com', 'F'),
(12, 'Yash', 'Naik', 'Ophthalmology ', '1094-08-24', '6763767310', 'yn@gmail.com', 'M');

-- --------------------------------------------------------

--
-- Table structure for table `labtest`
--

CREATE TABLE `labtest` (
  `testname` varchar(255) NOT NULL,
  `testcost` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `labtest`
--

INSERT INTO `labtest` (`testname`, `testcost`) VALUES
('Blood Oxygen Level (Pulse Oximetry)', 200),
('Blood Pressure Measurement', 0),
('Blood Type Test', 500),
('Cholesterol Test (Lipid Profile)', 750),
('Fasting Blood Sugar Test', 250),
('Urinalysis', 300);

-- --------------------------------------------------------

--
-- Table structure for table `medications`
--

CREATE TABLE `medications` (
  `med_name` varchar(255) NOT NULL,
  `unitprice` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medications`
--

INSERT INTO `medications` (`med_name`, `unitprice`) VALUES
('Amlodipine', 10),
('Amoxicillin', 8),
('Atorvastatin', 10),
('Ciprofloxacin', 15),
('Diazepam', 7.5),
('Ibuprofen', 3),
('Levothyroxine', 4),
('Metformin', 3.5),
('Omeprazole', 7),
('Paracetamol', 2);

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `patient_id` int(11) NOT NULL,
  `Fname` varchar(255) NOT NULL,
  `Lname` varchar(255) NOT NULL,
  `gender` char(1) NOT NULL,
  `dob` date NOT NULL,
  `contact_no` varchar(10) NOT NULL,
  `doc_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`patient_id`, `Fname`, `Lname`, `gender`, `dob`, `contact_no`, `doc_id`) VALUES
(110, 'Alice', 'Johnson', 'F', '1990-02-18', '1112233444', 4),
(111, 'Bob', 'Smith', 'M', '1985-07-10', '5556667777', 2),
(112, 'Charlie', 'Miller', 'M', '1992-12-05', '9998887777', 3),
(113, 'Diana', 'Brown', 'F', '1988-08-22', '3334445555', 4),
(114, 'Eric', 'Taylor', 'M', '1983-04-15', '7778889999', 5),
(115, 'Fiona', 'Martin', 'F', '1995-11-30', '1234567890', 6),
(116, 'George', 'Davis', 'M', '1993-05-18', '9876543210', 7),
(117, 'Hannah', 'Wilson', 'F', '1991-10-25', '4445556666', 8),
(118, 'Isaac', 'Anderson', 'M', '1989-06-18', '6667778888', 9),
(120, 'Shrirang', 'Dandekar', 'M', '2003-11-16', '6763767319', 2),
(121, 'Shrirang', 'Dandekar', 'M', '2003-11-16', '6763767319', 3),
(122, 'Zishu', 'Khan', 'M', '2003-05-23', '9765378065', 2),
(123, 'Nadine', 'Dias', 'F', '1995-11-05', '7847354234', 6);

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE `prescription` (
  `pres_id` int(11) NOT NULL,
  `pid` int(11) DEFAULT NULL,
  `Medicine_cost` float NOT NULL,
  `LabTest_Cost` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`pres_id`, `pid`, `Medicine_cost`, `LabTest_Cost`) VALUES
(2050, 110, 50, 0),
(2058, 111, 30, 600),
(2059, 110, 30, 600),
(2060, 110, 30, 600),
(2061, 122, 12, 600),
(2062, 123, 40, 600);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`appointment_id`),
  ADD KEY `eid` (`eid`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `labtest`
--
ALTER TABLE `labtest`
  ADD PRIMARY KEY (`testname`);

--
-- Indexes for table `medications`
--
ALTER TABLE `medications`
  ADD PRIMARY KEY (`med_name`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`patient_id`),
  ADD KEY `doc_id` (`doc_id`);

--
-- Indexes for table `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`pres_id`),
  ADD KEY `pid` (`pid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `appointment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `patient_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `prescription`
--
ALTER TABLE `prescription`
  MODIFY `pres_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2063;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `appointment_ibfk_1` FOREIGN KEY (`eid`) REFERENCES `employee` (`emp_id`),
  ADD CONSTRAINT `appointment_ibfk_2` FOREIGN KEY (`pid`) REFERENCES `patient` (`patient_id`);

--
-- Constraints for table `patient`
--
ALTER TABLE `patient`
  ADD CONSTRAINT `patient_ibfk_1` FOREIGN KEY (`doc_id`) REFERENCES `employee` (`emp_id`);

--
-- Constraints for table `prescription`
--
ALTER TABLE `prescription`
  ADD CONSTRAINT `prescription_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `patient` (`patient_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
