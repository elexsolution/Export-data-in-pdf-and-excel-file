-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 30, 2019 at 03:16 PM
-- Server version: 5.7.24
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doctest`
--

-- --------------------------------------------------------

--
-- Table structure for table `store_user_list`
--

DROP TABLE IF EXISTS `store_user_list`;
CREATE TABLE IF NOT EXISTS `store_user_list` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `Name` varchar(200) NOT NULL,
  `Company` varchar(250) NOT NULL,
  `Date` date NOT NULL,
  `Sample` varchar(250) NOT NULL,
  `Quantity` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store_user_list`
--

INSERT INTO `store_user_list` (`id`, `Name`, `Company`, `Date`, `Sample`, `Quantity`) VALUES
(1, 'Elmer', 'Ltd', '2013-10-08', 'w', '1'),
(2, 'Dorian', 'Ltd', '2013-07-02', 'a', '8'),
(3, 'Jesse', 'LLC', '2013-07-16', 'i', '9'),
(4, 'Einar', 'Group', '2013-07-19', 'l', '4'),
(5, 'Sonny', 'Inc', '2013-07-27', 'v', '2'),
(6, 'Quincy', 'Inc', '2013-09-03', 's', '6'),
(7, 'Chad', 'Inc', '2013-09-03', 'a', '8'),
(8, 'Kameron', 'Group', '2013-09-10', 'j', '5'),
(9, 'Andre', 'LLC', '2013-09-11', 'x', '9'),
(10, 'Norval', 'Inc', '2013-11-19', 'b', '7'),
(11, 'Jordi', 'PLC', '2013-12-04', 's', '6'),
(12, 'Sim', 'Group', '2013-12-10', 'e', '6'),
(13, 'Franz', 'Ltd', '2013-12-26', 'w', '1'),
(14, 'Ryder', 'Inc', '2013-12-31', 'r', '1'),
(15, 'Geo', 'Inc', '2014-01-19', 'w', '6'),
(16, 'Angelo', 'and Sons', '2014-01-13', 'z', '3'),
(17, 'Paris', 'and Sons', '2014-01-22', 'e', '4'),
(18, 'Rollin', 'Inc', '2014-01-30', 'j', '1'),
(19, 'Esteban', 'Ltd', '2014-02-05', 'a', '3'),
(20, 'Kennith', 'and Sons', '2014-03-07', 'p', '4'),
(21, 'Darrel', 'Inc', '2014-03-14', 'u', '2'),
(22, 'Jaden', 'LLC', '2014-03-29', 'n', '3'),
(23, 'Jimmy', 'Group', '2014-04-01', 't', '5'),
(24, 'Dario', 'Inc', '2014-04-10', 'p', '12'),
(25, 'Dewitt', 'Ltd', '2014-06-30', 'a', '9'),
(26, 'Ezequiel', 'and Sons', '2014-04-16', 'c', '2'),
(27, 'Jamison', 'Inc', '2013-04-15', 'u', '12'),
(28, 'Easter', 'and Sons', '2013-04-15', 'd', '5'),
(29, 'Mallory', 'PLC', '2013-04-18', 'b', '1'),
(30, 'Holden', 'LLC', '2013-06-04', 'r', '9'),
(31, 'Elmore', 'Inc', '2013-06-26', 'f', '9'),
(32, 'Woodrow', 'and Sons', '2014-04-18', 'c', '3'),
(33, 'Reggie', 'LLC', '2014-06-04', 'f', '1'),
(34, 'Osvaldo', 'PLC', '2014-06-09', 'd', '9'),
(35, 'Stewart', 'Group', '2014-06-24', 'v', '1'),
(36, 'Felix', 'Inc', '2014-06-25', 'a', '44'),
(37, 'Garnet', 'PLC', '2014-06-30', 'k', '9'),
(38, 'Milan', 'Group', '0000-00-00', 'h', '5'),
(39, 'Dan', 'PLC', '0000-00-00', 'o', '4'),
(40, 'Bobby', 'and Sons', '0000-00-00', 'q', '4'),
(41, 'Carson', 'Group', '2014-07-22', 'o', '7'),
(42, 'Arely', 'PLC', '2014-08-27', 'h', '1'),
(43, 'Brenden', 'PLC', '2014-08-27', 'k', '1'),
(44, 'Leon', 'Group', '2014-10-01', 'o', '6'),
(45, 'Don', 'Group', '2014-10-10', 'f', '2'),
(46, 'Wilfrid', 'PLC', '2014-10-13', 'c', '3'),
(47, 'Morgan', 'PLC', '2014-10-24', 'r', '7'),
(48, 'Myron', 'and Sons', '2014-11-10', 'h', '5'),
(49, 'Tyreek', 'Group', '2014-12-24', 'm', '10'),
(50, 'Ed', 'Ltd', '2015-01-02', 'q', '2'),
(51, 'Verner', 'Inc', '2015-01-20', 'k', '5'),
(52, 'Edmond', 'Group', '2015-01-30', 'l', '2'),
(53, 'Orville', 'Group', '2015-03-02', 'q', '9'),
(54, 'Leopold', 'Inc', '2015-04-25', 'm', '36'),
(55, 'Consuelo', 'Ltd', '2015-04-30', 'n', '3'),
(56, 'Mustafa', 'Inc', '2015-05-02', 'n', '6'),
(57, 'Jerry', 'PLC', '2015-05-20', 't', '4'),
(58, 'Johnathon', 'LLC', '2015-08-20', 'z', '6'),
(59, 'Evert', 'Group', '2015-10-30', 'd', '8'),
(60, 'Seth', 'Ltd', '2015-10-28', 'b', '45'),
(61, 'Leopold', 'PLC', '2015-10-27', 'w', '7'),
(62, 'Timothy', 'Group', '2015-10-31', 'h', '5'),
(63, 'Murray', 'PLC', '2015-11-10', 'g', '2'),
(64, 'Cordelia', 'Ltd', '2015-11-17', 's', '4'),
(65, 'Milford', 'Group', '2015-11-26', 'o', '1'),
(66, 'Noble', 'Ltd', '2015-12-17', 'h', '4'),
(67, 'Hershel', 'PLC', '2015-12-29', 'h', '9'),
(68, 'Monty', 'Inc', '2016-01-05', 'l', '6'),
(69, 'Sedrick', 'LLC', '2016-01-05', 'p', '3'),
(70, 'Elwin', 'PLC', '2016-01-11', 'v', '7'),
(71, 'Bryon', 'Inc', '2016-01-14', 's', '2'),
(72, 'Lester', 'and Sons', '2016-01-19', 'u', '6'),
(73, 'Eduardo', 'Group', '2016-01-19', 'x', '1'),
(74, 'Ned', 'LLC', '2016-02-23', 'o', '4'),
(75, 'Justus', 'Group', '2016-02-24', 'i', '6'),
(76, 'Rick', 'Ltd', '2016-02-26', 'e', '7'),
(77, 'Omari', 'Group', '2016-03-01', 'x', '4'),
(78, 'Jonas', 'Ltd', '2016-03-17', 'n', '2'),
(79, 'Conner', 'PLC', '2016-04-08', 'w', '7'),
(80, 'Dario', 'Inc', '2016-04-22', 'z', '4'),
(81, 'Rahul', 'Ltd', '2016-04-22', 'w', '1'),
(82, 'Leo', 'Inc', '2016-04-22', 'f', '8'),
(83, 'Rodrigo', 'Inc', '2016-05-06', 'j', '6'),
(84, 'Kirk', 'Group', '2016-05-24', 'n', '2'),
(85, 'Casimer', 'and Sons', '2016-06-06', 'h', '2'),
(86, 'Dominic', 'and Sons', '2016-06-10', 'e', '8'),
(87, 'Tremaine', 'Inc', '2016-08-04', 'z', '3'),
(88, 'Isaiah', 'Inc', '2016-08-08', 'c', '3'),
(89, 'Garrick', 'and Sons', '2016-08-12', 'x', '8'),
(90, 'Guiseppe', 'Inc', '2016-08-16', 'w', '7'),
(91, 'Dameon', 'Inc', '2016-08-18', 'e', '8'),
(92, 'Arlo', 'Inc', '2016-09-02', 'c', '1'),
(93, 'Harvey', 'Group', '2016-09-06', 'm', '3'),
(94, 'Janick', 'Group', '2016-09-12', 'b', '1'),
(95, 'Garrison', 'Inc', '2016-09-30', 'r', '2'),
(96, 'Hobart', 'and Sons', '2016-10-07', 'c', '5'),
(97, 'Bennett', 'Group', '2016-10-24', 'i', '5'),
(98, 'Ahmad', 'Group', '2016-10-24', 'z', '4'),
(99, 'Caesar', 'LLC', '2016-10-28', 'k', '2'),
(100, 'Art', 'PLC', '2016-11-09', 'k', '2');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
