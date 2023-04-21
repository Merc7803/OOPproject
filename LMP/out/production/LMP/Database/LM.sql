create database library_managerment;
use library_managerment;
-- drop database library_managerment;

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `librarian`
--

create table if not exists `librarian` (
  `id` int(5) not null auto_increment,
  `name` varchar(100) not null,
  `password` varchar(100) not null,
  `email` varchar(100) not null,
  `address` varchar(200) not null,
  `city` varchar(100) not null,
  `contact` varchar(20) not null,
  primary key (`id`)
) engine=InnoDB  default charset=latin1 auto_increment=7 ;

--
-- Dumping data for table `librarian`
--

insert into `librarian` (`id`, `name`, `password`, `email`, `address`, `city`, `contact`) values
(1, 'khanh', 'nguyen', 'quockhanh@gmail.com', 'Ha Dong', 'Ha Noi', '0396115978'),
(2, 'ha', 'nguyen', 'Nguyenha@gmail.com', 'Ha Dong', 'Ha Noi', '0365135581'),
(3, 'hai', 'tram', 'tranhai@gmail.com', 'Ha Dong', 'Ha Noi', '0000000');

create table if not exists `issuebooks` (
  `id` int(11) not null auto_increment,
  `bookcallno` varchar(50) not null,
  `studentid` int(11) not null,
  `studentname` varchar(50) not null,
  `studentcontact` varchar(20) not null,
  `issueddate` timestamp not null default current_timestamp on update current_timestamp,
  primary key (`id`)
) engine=InnoDB  default charset=latin1 auto_increment=8 ;

--
-- Dumping data for table `issuebooks`
--

insert into `issuebooks` (`id`, `bookcallno`, `studentid`, `studentname`, `studentcontact`, `issueddate`) values
(1, 'A@1', 23, 'abc', '932992932', '2016-07-19 18:43:16'),
(2, 'A@1', 335, 'def', '95676565756', '2016-07-19 18:44:34'),
(3, 'A@1', 87, 'ghi', '9329882382', '2016-07-19 18:46:12');

create table if not exists `books` (
  `id` int(10) not null auto_increment,
  `callno` varchar(100) not null,
  `name` varchar(100) not null,
  `author` varchar(100) not null,
  `publisher` varchar(100) not null,
  `quantity` int(10) not null,
  `issued` int(10) not null,
  `added_date` timestamp not null default current_timestamp on update current_timestamp,
  primary key (`id`),
  unique key `callno` (`callno`),
  unique key `callno_2` (`callno`)
) engine=InnoDB  default charset=latin1 auto_increment=4 ;

--
-- Dumping data for table `books`
--

insert into `books` (`id`, `callno`, `name`, `author`, `publisher`, `quantity`, `issued`, `added_date`) values
(1, 'A@4', 'C In Depth', 'Shrivastav', 'BPB', 2, 2, '2016-07-19 19:37:56'),
(2, 'B@1', 'DBMS', 'Korth', 'Pearson', 3, 0, '2016-07-18 18:39:52'),
(3, 'G@12', 'Let''s see', 'Yashwant Kanetkar', 'BPB', 10, 0, '2016-07-18 23:02:14');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
