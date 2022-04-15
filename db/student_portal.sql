-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2022 at 11:37 AM
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
-- Database: `delete`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcement`
--

CREATE TABLE `announcement` (
  `Id` int(11) NOT NULL,
  `announcement_topic` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `department_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `announcement`
--

INSERT INTO `announcement` (`Id`, `announcement_topic`, `description`, `department_id`, `image`) VALUES
(1, 'Comparza Dancing', 'A comparsa is a group of singers, musicians and dancers that take part in carnivals and other festivities in Spain and Latin America. Its precise meaning depends on the specific regional celebration. The most famous comparsas are those that participate in the Carnival of Santiago de Cuba and Carnaval de Barranquilla in Colombia. In Brazil, comparsas are called carnival blocks, as those seen in the Carnival of Rio de Janeiro and other Brazilian carnivals. In the US, especially at the New Orleans Mardi Gras, comparsas are called krewes, which include floats.', 1, 'education.png'),
(2, 'Photo Editing Wars', 'It is possible to say that photo editing service is a part or branch of graphic design. Photo editing is a digital process where software and digital applications are used to process to edit an image; it can be a portrait, product photo editing, print media, posters, advertisement, etc.', 6, 'photoediting.jpg'),
(4, 'War on Drugs', 'In the 1970s, President Richard Nixon formally launched the war on drugs to eradicate illicit drug use in the US. \"If we cannot destroy the drug menace in America, then it will surely in time destroy us,\" Nixon told Congress in 1971. \"I am not prepared to accept this alternative.\"\r\n\r\nOver the next couple decades, particularly under the Reagan administration, what followed was the escalation of global military and police efforts against drugs. But in that process, the drug war led to unintended consequences that have proliferated violence around the world and contributed to mass incarceration in the US, even if it has made drugs less accessible and reduced potential levels of drug abuse.', 5, 'war-on-drugs-fbshare.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `Id` int(11) NOT NULL,
  `dept_name` varchar(255) NOT NULL,
  `department_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`Id`, `dept_name`, `department_description`) VALUES
(1, 'College of Teacher Education', 'The NTC Teacher Education Program envisions itself as the Standard Bearer of the Institution dedicated to the development of future teachers who manifest high performance in the exercise of the noblest, the most dignified, and the best loved-profession-TEACHING.'),
(2, 'College of Elementary Education', 'The Bachelor of Elementary Education (BEED) is a four-year degree program designed to prepare students to become primary school teachers. '),
(5, 'College of Criminology', 'A criminology major studies criminal behavior and its biological, psychological and social causes. Criminology majors get a broad education in the law, research methods, and sociology and psychology.'),
(6, 'College of Computer Studies', 'The College of Computer Studies (CCS) is an educational institution committed to its three-pronged vision of continually sharing knowledge and expertise through teaching, engaging in Computer Science research and Information Technology product development, and rendering service to communities in need.'),
(7, 'College of Commerce', 'Commerce is an education stream which offers the students a study of trade and business activities such as the exchange of goods and services from producer to the final consumer. The Commerce stream in Class 11 and 12 includes various subjects like Economics, Accountancy and Business Studies.'),
(8, 'College of Engineering', 'Engineering college means a school, college, university, department of a university or other educational institution, reputable and in good standing in accordance with rules prescribed by the Department, and which grants baccalaureate degrees in engineering.'),
(9, 'College of Business Management', 'The program aims to provide students with basic principles, theories, concepts of a business organization and its ecosystem. It will equip students the skill, attitudes and knowledge in a complex work place environment with the right values and social awareness.');

-- --------------------------------------------------------

--
-- Table structure for table `schoolyear`
--

CREATE TABLE `schoolyear` (
  `Id` int(11) NOT NULL,
  `schoolyear` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schoolyear`
--

INSERT INTO `schoolyear` (`Id`, `schoolyear`, `status`) VALUES
(2, '2022-2023', 'Active'),
(3, '2020-2021', 'Inactive');

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `Id` int(11) NOT NULL,
  `Semester` varchar(255) NOT NULL,
  `school_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`Id`, `Semester`, `school_id`) VALUES
(1, '1st Semester', 2),
(3, '2nd Semester', 2);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Id` int(11) NOT NULL,
  `id_no` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) NOT NULL,
  `middlename` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `images` varchar(255) NOT NULL,
  `dept_id` int(11) NOT NULL,
  `year_level` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Id`, `id_no`, `firstname`, `middlename`, `lastname`, `dob`, `age`, `email`, `contact`, `address`, `username`, `password`, `images`, `dept_id`, `year_level`, `status`) VALUES
(8, '12345', 'Erwin123456789', 'Cabag', 'Son', '1997-09-22', '24', 'sonerwin12@gmail.com', '9359428963', 'Purok San Isidro, Sitio Upper Landing, Daanlungsod, Medellin, Cebu', 'student', '21232f297a57a5a743894a0e4a801fc3', 'Screenshot (60).png', 6, '', 'Confirmed'),
(13, '32r', 'Erwin2', 'Cabag', 'Son', '2022-03-29', '543', 'sonerwifdsfsn12@gmail.com', '4324', 'Purok San Isidro, Sitio Upper Landing, Daanlungsod, Medellin, Cebu', 'fdsf', 'd2f2297d6e829cd3493aa7de4416a18f', 'Screenshot (2).png', 5, '1st year', 'Confirmed'),
(16, '64654', 'Erwin3', 'Cabag', 'Son', '2022-04-12', '423', 'sonerwidfesn12@gmail.com', '432', 'Purok San Isidro, Sitio Upper Landing, Daanlungsod, Medellin, Cebu', 'fdsfdsfqwq', 'd2f2297d6e829cd3493aa7de4416a18f', 'Screenshot (6).png', 5, '2nd year', 'Pending'),
(18, '123465', 'Sample', 'Sample', 'Sample', '2022-04-12', '56', 'Sample@gmail.com', '9359428963', 'Sample', 'Sample', '5e8ff9bf55ba3508199d22e984129be6', '4.jpg', 5, '3rd year', 'Confirmed');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announcement`
--
ALTER TABLE `announcement`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `schoolyear`
--
ALTER TABLE `schoolyear`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcement`
--
ALTER TABLE `announcement`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `schoolyear`
--
ALTER TABLE `schoolyear`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `semester`
--
ALTER TABLE `semester`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
