-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 25, 2021 at 07:30 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbms`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `catid` varchar(10) NOT NULL,
  `courseid` varchar(10) NOT NULL,
  `catname` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`catid`, `courseid`, `catname`) VALUES
('C1', 'nmCS1', 'cet'),
('C1', 'nmCV3', 'cet'),
('C1', 'nmIS4', 'cet'),
('C1', 'nmME2', 'cet '),
('C2', 'nmCS1', 'comedk'),
('C2', 'nmCV3', 'comedk'),
('C2', 'nmIS4', 'comedk'),
('C2', 'nmME2', 'comedk'),
('C3', 'nmCS1', 'management'),
('C3', 'nmCV3', 'management'),
('C3', 'nmIS4', 'management'),
('C3', 'nmME2', 'management');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `courseid` varchar(10) NOT NULL,
  `cname` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`courseid`, `cname`) VALUES
('nmCS1', 'Computer Science and Engineering'),
('nmCV3', 'Civil Engineering'),
('nmIS4', 'Information Science and Engineering'),
('nmME2', 'Mechanical Engineering');

-- --------------------------------------------------------

--
-- Table structure for table `fee_details`
--

CREATE TABLE `fee_details` (
  `tfees` int(11) DEFAULT NULL,
  `subs` int(11) DEFAULT NULL,
  `efees` int(11) DEFAULT NULL,
  `ofees` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `courseid` varchar(10) NOT NULL,
  `catid` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fee_details`
--

INSERT INTO `fee_details` (`tfees`, `subs`, `efees`, `ofees`, `total`, `courseid`, `catid`) VALUES
(20000, 2000, 3000, 1000, 26000, 'nmCS1', 'C1'),
(100000, 2000, 3000, 1000, 106000, 'nmCS1', 'C2'),
(300000, 2000, 3000, 1000, 306000, 'nmCS1', 'C3'),
(20000, 2000, 3000, 1000, 26000, 'nmCV3', 'C1'),
(100000, 2000, 3000, 1000, 106000, 'nmCV3', 'C2'),
(150000, 2000, 3000, 1000, 156000, 'nmCV3', 'C3'),
(20000, 2000, 3000, 1000, 26000, 'nmIS4', 'C1'),
(100000, 2000, 3000, 1000, 106000, 'nmIS4', 'C2'),
(200000, 2000, 3000, 1000, 206000, 'nmIS4', 'C3'),
(20000, 2000, 3000, 1000, 26000, 'nmME2', 'C1'),
(100000, 2000, 3000, 1000, 106000, 'nmME2', 'C2'),
(150000, 2000, 3000, 1000, 156000, 'nmME2', 'C3');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `usn` varchar(20) NOT NULL,
  `upassword` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`usn`, `upassword`) VALUES
('4nm19cs01', '4nm19cs01'),
('4nm19cs02', '4nm19cs02'),
('4nm19cs03', '4nm19cs03'),
('4nm19cs04', '4nm19cs04'),
('4nm19cs05', '4nm19cs05'),
('4nm19cs06', '4nm19cs06'),
('4nm19cs07', '4nm19cs07'),
('4nm19cs08', '4nm19cs08'),
('4nm19cs09', '4nm19cs09'),
('4nm19cs10', '4nm19cs10'),
('4nm19cs11', '4nm19cs11'),
('4nm19cs12', '4nm19cs12'),
('4nm19cs13', '4nm19cs13'),
('4nm19cs14', '4nm19cs14'),
('4nm19cs15', '4nm19cs15'),
('4nm19cs16', '4nm19cs16'),
('4nm19cs17', '4nm19cs17'),
('4nm19cs18', '4nm19cs18'),
('4nm19cs19', '4nm19cs19'),
('4nm19cs20', '4nm19cs20'),
('4nm19cs21', '4nm19cs21'),
('4nm19cs22', '4nm19cs22'),
('4nm19cs23', '4nm19cs23'),
('4nm19cs24', '4nm19cs24'),
('4nm19cs25', '4nm19cs25'),
('4nm19cs26', '4nm19cs26'),
('4nm19cs27', '4nm19cs27'),
('4nm19cs28', '4nm19cs28'),
('4nm19cs29', '4nm19cs29'),
('4nm19cs30', '4nm19cs30'),
('4nm19cv01', '4nm19cv01'),
('4nm19cv02', '4nm19cv02'),
('4nm19cv03', '4nm19cv03'),
('4nm19cv04', '4nm19cv04'),
('4nm19cv05', '4nm19cv05'),
('4nm19cv06', '4nm19cv06'),
('4nm19cv07', '4nm19cv07'),
('4nm19cv08', '4nm19cv08'),
('4nm19cv09', '4nm19cv09'),
('4nm19cv10', '4nm19cv10'),
('4nm19cv11', '4nm19cv11'),
('4nm19cv12', '4nm19cv12'),
('4nm19cv13', '4nm19cv13'),
('4nm19cv14', '4nm19cv14'),
('4nm19cv15', '4nm19cv15'),
('4nm19cv16', '4nm19cv16'),
('4nm19cv17', '4nm19cv17'),
('4nm19cv18', '4nm19cv18'),
('4nm19cv19', '4nm19cv19'),
('4nm19cv20', '4nm19cv20'),
('4nm19cv21', '4nm19cv21'),
('4nm19cv22', '4nm19cv22'),
('4nm19cv23', '4nm19cv23'),
('4nm19cv24', '4nm19cv24'),
('4nm19cv25', '4nm19cv25'),
('4nm19cv26', '4nm19cv26'),
('4nm19cv27', '4nm19cv27'),
('4nm19cv28', '4nm19cv28'),
('4nm19cv29', '4nm19cv29'),
('4nm19cv30', '4nm19cv30'),
('4nm19is01', '4nm19is01'),
('4nm19is02', '4nm19is02'),
('4nm19is03', '4nm19is03'),
('4nm19is04', '4nm19is04'),
('4nm19is05', '4nm19is05'),
('4nm19is06', '4nm19is06'),
('4nm19is07', '4nm19is07'),
('4nm19is08', '4nm19is08'),
('4nm19is09', '4nm19is09'),
('4nm19is10', '4nm19is10'),
('4nm19is11', '4nm19is11'),
('4nm19is12', '4nm19is12'),
('4nm19is13', '4nm19is13'),
('4nm19is14', '4nm19is14'),
('4nm19is15', '4nm19is15'),
('4nm19is16', '4nm19is16'),
('4nm19is17', '4nm19is17'),
('4nm19is18', '4nm19is18'),
('4nm19is19', '4nm19is19'),
('4nm19is20', '4nm19is20'),
('4nm19is21', '4nm19is21'),
('4nm19is22', '4nm19is22'),
('4nm19is23', '4nm19is23'),
('4nm19is24', '4nm19is24'),
('4nm19is25', '4nm19is25'),
('4nm19is26', '4nm19is26'),
('4nm19is27', '4nm19is27'),
('4nm19is28', '4nm19is28'),
('4nm19is29', '4nm19is29'),
('4nm19is30', '4nm19is30'),
('4nm19me01', '4nm19me01'),
('4nm19me02', '4nm19me02'),
('4nm19me03', '4nm19me03'),
('4nm19me04', '4nm19me04'),
('4nm19me05', '4nm19me05'),
('4nm19me06', '4nm19me06'),
('4nm19me07', '4nm19me07'),
('4nm19me08', '4nm19me08'),
('4nm19me09', '4nm19me09'),
('4nm19me10', '4nm19me10'),
('4nm19me11', '4nm19me11'),
('4nm19me12', '4nm19me12'),
('4nm19me13', '4nm19me13'),
('4nm19me14', '4nm19me14'),
('4nm19me15', '4nm19me15'),
('4nm19me16', '4nm19me16'),
('4nm19me17', '4nm19me17'),
('4nm19me18', '4nm19me18'),
('4nm19me19', '4nm19me19'),
('4nm19me20', '4nm19me20'),
('4nm19me21', '4nm19me21'),
('4nm19me22', '4nm19me22'),
('4nm19me23', '4nm19me23'),
('4nm19me24', '4nm19me24'),
('4nm19me25', '4nm19me25'),
('4nm19me26', '4nm19me26'),
('4nm19me27', '4nm19me27'),
('4nm19me28', '4nm19me28'),
('4nm19me29', '4nm19me29'),
('4nm19me30', '4nm19me30'),
('admin', 'admin100');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `usn` varchar(20) NOT NULL,
  `paidstatus` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`usn`, `paidstatus`) VALUES
('4nm19cs01', 'pending'),
('4nm19cs02', 'pending'),
('4nm19cs03', 'pending'),
('4nm19cs04', 'pending'),
('4nm19cs05', 'pending'),
('4nm19cs06', 'paid'),
('4nm19cs07', 'pending'),
('4nm19cs08', 'pending'),
('4nm19cs09', 'pending'),
('4nm19cs10', 'pending'),
('4nm19cs11', 'pending'),
('4nm19cs12', 'pending'),
('4nm19cs13', 'pending'),
('4nm19cs14', 'pending'),
('4nm19cs15', 'pending'),
('4nm19cs16', 'pending'),
('4nm19cs17', 'pending'),
('4nm19cs18', 'pending'),
('4nm19cs19', 'pending'),
('4nm19cs20', 'pending'),
('4nm19cs21', 'pending'),
('4nm19cs22', 'pending'),
('4nm19cs23', 'pending'),
('4nm19cs24', 'pending'),
('4nm19cs25', 'pending'),
('4nm19cs26', 'pending'),
('4nm19cs27', 'pending'),
('4nm19cs28', 'pending'),
('4nm19cs29', 'pending'),
('4nm19cs30', 'pending'),
('4nm19cv01', 'pending'),
('4nm19cv02', 'pending'),
('4nm19cv03', 'pending'),
('4nm19cv04', 'pending'),
('4nm19cv05', 'pending'),
('4nm19cv06', 'pending'),
('4nm19cv07', 'pending'),
('4nm19cv08', 'pending'),
('4nm19cv09', 'pending'),
('4nm19cv10', 'pending'),
('4nm19cv11', 'pending'),
('4nm19cv12', 'pending'),
('4nm19cv13', 'pending'),
('4nm19cv14', 'pending'),
('4nm19cv15', 'pending'),
('4nm19cv16', 'pending'),
('4nm19cv17', 'pending'),
('4nm19cv18', 'pending'),
('4nm19cv19', 'pending'),
('4nm19cv20', 'pending'),
('4nm19cv21', 'pending'),
('4nm19cv22', 'pending'),
('4nm19cv23', 'pending'),
('4nm19cv24', 'pending'),
('4nm19cv25', 'pending'),
('4nm19cv26', 'pending'),
('4nm19cv27', 'pending'),
('4nm19cv28', 'pending'),
('4nm19cv29', 'pending'),
('4nm19cv30', 'pending'),
('4nm19is01', 'pending'),
('4nm19is02', 'pending'),
('4nm19is03', 'pending'),
('4nm19is04', 'pending'),
('4nm19is05', 'pending'),
('4nm19is06', 'pending'),
('4nm19is07', 'pending'),
('4nm19is08', 'pending'),
('4nm19is09', 'pending'),
('4nm19is10', 'pending'),
('4nm19is11', 'pending'),
('4nm19is12', 'pending'),
('4nm19is13', 'pending'),
('4nm19is14', 'pending'),
('4nm19is15', 'pending'),
('4nm19is16', 'pending'),
('4nm19is17', 'pending'),
('4nm19is18', 'pending'),
('4nm19is19', 'pending'),
('4nm19is20', 'pending'),
('4nm19is21', 'pending'),
('4nm19is22', 'pending'),
('4nm19is23', 'pending'),
('4nm19is24', 'pending'),
('4nm19is25', 'pending'),
('4nm19is26', 'pending'),
('4nm19is27', 'pending'),
('4nm19is28', 'pending'),
('4nm19is29', 'pending'),
('4nm19is30', 'pending'),
('4nm19me01', 'pending'),
('4nm19me02', 'pending'),
('4nm19me03', 'pending'),
('4nm19me04', 'pending'),
('4nm19me05', 'pending'),
('4nm19me06', 'pending'),
('4nm19me07', 'pending'),
('4nm19me08', 'pending'),
('4nm19me09', 'pending'),
('4nm19me10', 'pending'),
('4nm19me11', 'pending'),
('4nm19me12', 'pending'),
('4nm19me13', 'pending'),
('4nm19me14', 'pending'),
('4nm19me15', 'pending'),
('4nm19me16', 'pending'),
('4nm19me17', 'pending'),
('4nm19me18', 'pending'),
('4nm19me19', 'pending'),
('4nm19me20', 'pending'),
('4nm19me21', 'pending'),
('4nm19me22', 'pending'),
('4nm19me23', 'pending'),
('4nm19me24', 'pending'),
('4nm19me25', 'pending'),
('4nm19me26', 'pending'),
('4nm19me27', 'pending'),
('4nm19me28', 'pending'),
('4nm19me29', 'pending'),
('4nm19me30', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `sname` varchar(30) DEFAULT NULL,
  `pname` varchar(30) DEFAULT NULL,
  `usn` varchar(20) NOT NULL,
  `courseid` varchar(10) NOT NULL,
  `catid` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`sname`, `pname`, `usn`, `courseid`, `catid`) VALUES
('Jennifer Rosales', 'Aaron Greene', '4nm19cs01', 'nmCS1', 'C1'),
('Pam Mitchell', 'Adam Cox', '4nm19cs02', 'nmCS1', 'C2'),
('Molly Black', 'Alexander Hubbard', '4nm19cs03', 'nmCS1', 'C3'),
('Stacey Jones', 'Alicia Becker', '4nm19cs04', 'nmCS1', 'C1'),
('Aaron Greene', 'Allison Morgan', '4nm19cs05', 'nmCS1', 'C2'),
('Joseph Mcguire', 'Allison Rivers', '4nm19cs06', 'nmCS1', 'C3'),
('Eric Guerrero', 'Alyssa Murphy', '4nm19cs07', 'nmCS1', 'C1'),
('John Richardson', 'Amanda Jacobs', '4nm19cs08', 'nmCS1', 'C2'),
('Alexander Hubbard', 'Amanda Reid', '4nm19cs09', 'nmCS1', 'C3'),
('Brian Powers', 'Amanda Stewart', '4nm19cs10', 'nmCS1', 'C1'),
('George Martinez', 'Amber Rodriguez', '4nm19cs11', 'nmCS1', 'C2'),
('Dominic White', 'Amber White', '4nm19cs12', 'nmCS1', 'C3'),
('Debra Morris', 'Andrea Taylor', '4nm19cs13', 'nmCS1', 'C1'),
('David Ryan', 'Andrew Garcia', '4nm19cs14', 'nmCS1', 'C2'),
('Roberto Lee', 'Andrew Hunt', '4nm19cs15', 'nmCS1', 'C3'),
('Katie Wagner', 'Andrew Vargas', '4nm19cs16', 'nmCS1', 'C1'),
('Jessica Bell', 'Angel Bentley', '4nm19cs17', 'nmCS1', 'C2'),
('Veronica Soto', 'Anita Garcia', '4nm19cs18', 'nmCS1', 'C3'),
('Robert Williams', 'Anthony Kelly', '4nm19cs19', 'nmCS1', 'C1'),
('Jamie Miller', 'Ashley Dunn', '4nm19cs20', 'nmCS1', 'C2'),
('John Cummings', 'Ashley Long', '4nm19cs21', 'nmCS1', 'C3'),
('Andrea Taylor', 'Austin Gonzales', '4nm19cs22', 'nmCS1', 'C1'),
('Amber White', 'Barbara Bean', '4nm19cs23', 'nmCS1', 'C2'),
('Billy Morales', 'Becky Rodriguez', '4nm19cs24', 'nmCS1', 'C3'),
('Elizabeth Rose', 'Billy Morales', '4nm19cs25', 'nmCS1', 'C1'),
('Corey Johnson', 'Brandon Howe', '4nm19cs26', 'nmCS1', 'C2'),
('Anita Garcia', 'Brenda Mcgrath', '4nm19cs27', 'nmCS1', 'C3'),
('Roger Gilmore', 'Brenda Robertson', '4nm19cs28', 'nmCS1', 'C1'),
('Jacob Williams', 'Brian Powers', '4nm19cs29', 'nmCS1', 'C2'),
('Andrew Garcia', 'Brittany Dixon', '4nm19cs30', 'nmCS1', 'C3'),
('Lauren Miller', 'Cathy Simmons', '4nm19cv01', 'nmCV3', 'C1'),
('Colin Nguyen', 'Charles Middleton', '4nm19cv02', 'nmCV3', 'C2'),
('John Neal', 'Christie Castro', '4nm19cv03', 'nmCV3', 'C3'),
('Katelyn Johnson', 'Colin Nguyen', '4nm19cv04', 'nmCV3', 'C1'),
('Ashley Long', 'Corey Johnson', '4nm19cv05', 'nmCV3', 'C2'),
('Sheri Carrillo', 'Crystal Martinez', '4nm19cv06', 'nmCV3', 'C3'),
('David Valdez', 'Darlene Garcia', '4nm19cv07', 'nmCV3', 'C1'),
('Amber Rodriguez', 'Darryl Garrett DVM', '4nm19cv08', 'nmCV3', 'C2'),
('Angel Bentley', 'David Powell', '4nm19cv09', 'nmCV3', 'C3'),
('Jessica Dillon', 'David Ryan', '4nm19cv10', 'nmCV3', 'C1'),
('William Kline', 'David Valdez', '4nm19cv11', 'nmCV3', 'C2'),
('Rachel Castro', 'Debbie Yang', '4nm19cv12', 'nmCV3', 'C3'),
('Robert Sweeney', 'Debra Morris', '4nm19cv13', 'nmCV3', 'C1'),
('Tina Savage', 'Debra Norris', '4nm19cv14', 'nmCV3', 'C2'),
('Rachel Armstrong', 'Derrick Rodriguez', '4nm19cv15', 'nmCV3', 'C3'),
('Michael Hood', 'Dominic White', '4nm19cv16', 'nmCV3', 'C1'),
('Samuel King', 'Dustin Johnson', '4nm19cv17', 'nmCV3', 'C2'),
('Wesley Spencer', 'Edward Barnett', '4nm19cv18', 'nmCV3', 'C3'),
('Jennifer Myers', 'Elizabeth Cain', '4nm19cv19', 'nmCV3', 'C1'),
('Stephen Martinez', 'Elizabeth Harris', '4nm19cv20', 'nmCV3', 'C2'),
('Kristin Welch', 'Elizabeth Rose', '4nm19cv21', 'nmCV3', 'C3'),
('Melissa Wilson', 'Eric Guerrero', '4nm19cv22', 'nmCV3', 'C1'),
('John Barrett', 'Eric Mendez', '4nm19cv23', 'nmCV3', 'C2'),
('Darlene Garcia', 'Eric Wilson', '4nm19cv24', 'nmCV3', 'C3'),
('Michael Watts', 'Fred Williams', '4nm19cv25', 'nmCV3', 'C1'),
('Alicia Becker', 'George Martinez', '4nm19cv26', 'nmCV3', 'C2'),
('Becky Rodriguez', 'Grant Ingram', '4nm19cv27', 'nmCV3', 'C3'),
('Brenda Robertson', 'Heidi Murray', '4nm19cv28', 'nmCV3', 'C1'),
('Maria Petersen', 'Henry Scott', '4nm19cv29', 'nmCV3', 'C2'),
('Samarth', 'kavitha', '4nm19cv30', 'nmCV3', 'C3'),
('Debbie Yang', 'Katie Wagner', '4nm19is01', 'nmIS4', 'C1'),
('Taylor Martinez', 'Keith Simmons', '4nm19is02', 'nmIS4', 'C2'),
('Larry Schmidt', 'Kelly Rodriguez', '4nm19is03', 'nmIS4', 'C3'),
('Mr. Jordan Freeman', 'Kristin Welch', '4nm19is04', 'nmIS4', 'C1'),
('Melissa Lewis', 'Larry Schmidt', '4nm19is05', 'nmIS4', 'C2'),
('James Jones DVM', 'Lauren Miller', '4nm19is06', 'nmIS4', 'C3'),
('Jordan Johnson', 'Linda Sweeney', '4nm19is07', 'nmIS4', 'C1'),
('William Sparks', 'Luis Gross', '4nm19is08', 'nmIS4', 'C2'),
('Barbara Bean', 'Maria Petersen', '4nm19is09', 'nmIS4', 'C3'),
('Amanda Stewart', 'Mario David', '4nm19is10', 'nmIS4', 'C1'),
('Darryl Garrett DVM', 'Mark Espinoza', '4nm19is11', 'nmIS4', 'C2'),
('Eric Wilson', 'Megan Jones', '4nm19is12', 'nmIS4', 'C3'),
('Stephen Vance', 'Melissa Lewis', '4nm19is13', 'nmIS4', 'C1'),
('Austin Gonzales', 'Melissa Wilson', '4nm19is14', 'nmIS4', 'C2'),
('Tony Clark', 'Michael Cruz', '4nm19is15', 'nmIS4', 'C3'),
('Shelley Adams', 'Michael Hood', '4nm19is16', 'nmIS4', 'C1'),
('Grant Ingram', 'Michael Smith', '4nm19is17', 'nmIS4', 'C2'),
('Amanda Reid', 'Michael Watts', '4nm19is18', 'nmIS4', 'C3'),
('Karen Hernandez', 'Michael Weaver', '4nm19is19', 'nmIS4', 'C1'),
('Michelle Manning', 'Michelle King', '4nm19is20', 'nmIS4', 'C2'),
('Michael Smith', 'Michelle Manning', '4nm19is21', 'nmIS4', 'C3'),
('Joshua Blake', 'Molly Black', '4nm19is22', 'nmIS4', 'C1'),
('Linda Sweeney', 'Mr. David Santos', '4nm19is23', 'nmIS4', 'C2'),
('Michael Weaver', 'Mr. Jordan Freeman', '4nm19is24', 'nmIS4', 'C3'),
('Charles Middleton', 'Mr. Samuel Harris', '4nm19is25', 'nmIS4', 'C1'),
('Andrew Hunt', 'Nicole Gonzales', '4nm19is26', 'nmIS4', 'C2'),
('Katherine Nash', 'Pam Mitchell', '4nm19is27', 'nmIS4', 'C3'),
('Elizabeth Harris', 'Pamela Mitchell', '4nm19is28', 'nmIS4', 'C1'),
('Jessica Villarreal', 'Paul Miller', '4nm19is29', 'nmIS4', 'C2'),
('Julia Small', 'Rachel Armstrong', '4nm19is30', 'nmIS4', 'C3'),
('Sean Tran', 'Jacob White', '4nm19me01', 'nmME2', 'C1'),
('Katherine Marshall', 'Jacob Williams', '4nm19me02', 'nmME2', 'C2'),
('Julie Myers', 'James Jones DVM', '4nm19me03', 'nmME2', 'C3'),
('Brenda Mcgrath', 'Jamie Miller', '4nm19me04', 'nmME2', 'C1'),
('Fred Williams', 'Jasmine Copeland', '4nm19me05', 'nmME2', 'C2'),
('Edward Barnett', 'Jason Lewis', '4nm19me06', 'nmME2', 'C3'),
('Elizabeth Cain', 'Jason Reyes', '4nm19me07', 'nmME2', 'C1'),
('Derrick Rodriguez', 'Jennifer Holloway', '4nm19me08', 'nmME2', 'C2'),
('Michelle King', 'Jennifer King', '4nm19me09', 'nmME2', 'C3'),
('Pamela Mitchell', 'Jennifer Myers', '4nm19me10', 'nmME2', 'C1'),
('Joann Mendoza', 'Jennifer Rosales', '4nm19me11', 'nmME2', 'C2'),
('Michael Cruz', 'Jessica Bell', '4nm19me12', 'nmME2', 'C3'),
('Jennifer Holloway', 'Jessica Dillon', '4nm19me13', 'nmME2', 'C1'),
('Tracy Taylor', 'Jessica Villarreal', '4nm19me14', 'nmME2', 'C2'),
('Brittany Dixon', 'Joann Mendoza', '4nm19me15', 'nmME2', 'C3'),
('Allison Morgan', 'John Barrett', '4nm19me16', 'nmME2', 'C1'),
('Ashley Dunn', 'John Cummings', '4nm19me17', 'nmME2', 'C2'),
('Holly Johnson', 'John Neal', '4nm19me18', 'nmME2', 'C3'),
('Nicole Gonzales', 'John Richardson', '4nm19me19', 'nmME2', 'C1'),
('Brandon Howe', 'Jordan Johnson', '4nm19me20', 'nmME2', 'C2'),
('Anthony Kelly', 'Jose Foster', '4nm19me21', 'nmME2', 'C3'),
('Allison Rivers', 'Joseph Mcguire', '4nm19me22', 'nmME2', 'C1'),
('Crystal Martinez', 'Joshua Blake', '4nm19me23', 'nmME2', 'C2'),
('Jose Foster', 'Julia Small', '4nm19me24', 'nmME2', 'C3'),
('Jason Lewis', 'Julie Dominguez', '4nm19me25', 'nmME2', 'C1'),
('Jacob White', 'Julie Myers', '4nm19me26', 'nmME2', 'C2'),
('Rachel Brock', 'Karen Hernandez', '4nm19me27', 'nmME2', 'C3'),
('Robert Thomas', 'Katelyn Johnson', '4nm19me28', 'nmME2', 'C1'),
('Megan Jones', 'Katherine Marshall', '4nm19me29', 'nmME2', 'C2'),
('Debra Norris', 'Katherine Nash', '4nm19me30', 'nmME2', 'C3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`catid`,`courseid`),
  ADD KEY `courseid` (`courseid`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`courseid`);

--
-- Indexes for table `fee_details`
--
ALTER TABLE `fee_details`
  ADD PRIMARY KEY (`courseid`,`catid`),
  ADD KEY `catid` (`catid`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`usn`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`usn`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`usn`,`courseid`),
  ADD KEY `courseid` (`courseid`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `category_ibfk_1` FOREIGN KEY (`courseid`) REFERENCES `course` (`courseid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `fee_details`
--
ALTER TABLE `fee_details`
  ADD CONSTRAINT `fee_details_ibfk_1` FOREIGN KEY (`courseid`) REFERENCES `course` (`courseid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fee_details_ibfk_2` FOREIGN KEY (`catid`) REFERENCES `category` (`catid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `status`
--
ALTER TABLE `status`
  ADD CONSTRAINT `status_ibfk_1` FOREIGN KEY (`usn`) REFERENCES `login` (`usn`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_details`
--
ALTER TABLE `user_details`
  ADD CONSTRAINT `user_details_ibfk_1` FOREIGN KEY (`usn`) REFERENCES `login` (`usn`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_details_ibfk_2` FOREIGN KEY (`courseid`) REFERENCES `course` (`courseid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
