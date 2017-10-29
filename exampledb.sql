-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2015 at 03:03 PM
-- Server version: 5.6.24
-- PHP Version: 5.5.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exampledb`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE IF NOT EXISTS `employee` (
  `id` bigint(20) NOT NULL,
  `emp_name` varchar(50) NOT NULL,
  `emp_designation` varchar(50) NOT NULL,
  `emp_salary` float NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `emp_name`, `emp_designation`, `emp_salary`) VALUES
(7, 'Uzumaki Naruto', 'Hokage', 125000),
(8, 'Uchiha Sasuke', 'Rogeu Shinobi', 105000),
(9, 'Uchiha Sasuke', 'Rogeu Shinobi', 105000),
(11, 'Uchiha Sasuke', 'Rogeu Shinobi', 105000),
(10, 'Monkey D. Luffy', 'Mugiwara Captain', 500000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

--
-- Table structure for table `student`
--
CREATE TABLE IF NOT EXISTS student (
`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
firstName varchar(32) not null,
lastName varchar(32) not null,
dateOfBirth date not null,
gender varchar(32) not null,
email varchar(128) not null,
password varchar(32) not null,
phoneNumber varchar(64) null,
numberOfInstructions integer null
  
)ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=latin1;

--
-- Table structure for table `instructor`
--
CREATE TABLE IF NOT EXISTS instructor (
`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
firstName varchar(32) not null,
lastName varchar(32) not null,
dateOfBirth date not null,
gender varchar(32) not null,
email varchar(64) not null,
iban varchar(128) not null,
periodOfCancelation integer null,
numberOfInstructions integer null,
rate decimal(5,2) null
  
)ENGINE= InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `subject`
--
CREATE TABLE IF NOT EXISTS subject (
`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
name varchar(32) not null,
shortName varchar(16) null,
numberOfBookedInstructions integer null,
numberOfOfferedInstructions integer null  
)ENGINE= InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `instruction`
--
CREATE TABLE IF NOT EXISTS instruction (
`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
instructorId int not null,
studentId int not null,
subjectId int not null,
dateCreated date not null,
dateConfirmed date null,
datePayed date null,
bruttoPrice decimal(6,2) not null
)ENGINE= InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE instruction ADD CONSTRAINT FOREIGN KEY (instructorId) REFERENCES instructor(id);
ALTER TABLE instruction ADD CONSTRAINT FOREIGN KEY (studentId) REFERENCES student(id);
ALTER TABLE instruction ADD CONSTRAINT FOREIGN KEY (subjectId) REFERENCES subject(id);

--
-- Table structure for table `termin`
--
CREATE TABLE IF NOT EXISTS termin (
`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
instructorId int not null,
subjectId int not null,
terminDate DATE not null,
terminTime varchar(32) not null,
bruttoPrice decimal(6,2) not null,
ageFrom integer not null,
ageTo integer not null,
available boolean not null DEFAULT true
)ENGINE= InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE termin ADD CONSTRAINT FOREIGN KEY (instructorId) REFERENCES instructor(id);
ALTER TABLE termin ADD CONSTRAINT FOREIGN KEY (subjectId) REFERENCES subject(id);

--
-- Table structure for table `rule`
--
CREATE TABLE IF NOT EXISTS rule (
`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
instructorId int not null,
subjectId int not null,
ageFrom Integer not null,
ageTo Integer not null,
daysInAdvance Integer not null,
availableMonday boolean not null,
availableTuesday boolean not null,
availableWednesday boolean not null,
availableThursday boolean not null,
availableFriday boolean not null,
availableSaturday boolean not null,
availableSunday boolean not null,
availableTime6 boolean not null,
availableTime7 boolean not null,
availableTime8 boolean not null,
availableTime9 boolean not null,
availableTime10 boolean not null,
availableTime11 boolean not null,
availableTime12 boolean not null,
availableTime13 boolean not null,
availableTime14 boolean not null,
availableTime15 boolean not null,
availableTime16 boolean not null,
availableTime17 boolean not null,
availableTime18 boolean not null,
availableTime19 boolean not null,
availableTime20 boolean not null,
availableTime21 boolean not null,
availableTime22 boolean not null,
availableTime23 boolean not null
)ENGINE= InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE rule ADD CONSTRAINT FOREIGN KEY (instructorId) REFERENCES instructor(id);
ALTER TABLE rule ADD CONSTRAINT FOREIGN KEY (subjectId) REFERENCES subject(id);


