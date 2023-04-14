-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 03, 2023 at 02:33 PM
-- Server version: 10.0.33-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `martdevelopers_ibanking`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` int(30) NOT NULL,
  `title` text NOT NULL,
  `announcement` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime DEFAULT CURRENT_TIMESTAMP,
  `to` varchar(20) DEFAULT NULL,
  `from` varchar(20) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`id`, `title`, `announcement`, `date_created`, `date_updated`, `to`, `from`, `type`, `status`) VALUES
(1, 'Sample 101', '&lt;p&gt;This is a sample Announcement only.&lt;/p&gt;', '2021-07-14 14:10:09', '2021-07-14 14:11:30', '3', '17', NULL, 0),
(3, 'ክፍያ ቀነ ገደብ', 'Etsy doostang zoodles disqus groupon greplin oooj voxy zoodles, weebly ning heekya handango imeem plugg dopplr jibjab, movity jajah plickers sifteo edmodo ifttt zimbra. Babblely odeo kaboodle quora plaxo ideeli hulu weebly balihoo...', '2023-03-14 14:33:41', '2023-03-29 03:41:39', '17', '32', NULL, 1),
(5, 'Ff', ' Ff\r\n \r\n    ', '2023-03-29 19:21:50', '2023-03-29 19:21:50', '17', '2', NULL, 1),
(6, 'ጀመረ', ' \r\n     <script src=\"../plugins/jquery/jquery.min.js\"></script>\r\n    <!-- Bootstrap 4 -->\r\n    <script src=\"../plugins/bootstrap/js/bootstrap.bundle.min.js\"></script>\r\n    <!-- bs-custom-file-input -->\r\n    <script src=\"../plugins/bs-custom-file-input/bs-custom-file-input.min.js\"></script>\r\n    <!-- AdminLTE App -->\r\n      <script src=\"../dist/js/adminlte.min.js\"></script>\r\n    <!-- AdminLTE for demo purposes -->\r\n    <script src=\"../dist/js/demo.js\"></script>\r\n    <script type=\"text/javascript\">\r\n        $(document).ready(function() {\r\nbsCustomFileInput.init();\r\n        });\r\n    </script>\r\n</body>\r\n\r\n</html>\r\n    ', '2023-03-29 19:26:32', '2023-03-29 19:26:32', '100', '2', NULL, 0),
(7, 'ጀመረ', ' \r\n     <script src=\"../plugins/jquery/jquery.min.js\"></script>\r\n    <!-- Bootstrap 4 -->\r\n    <script src=\"../plugins/bootstrap/js/bootstrap.bundle.min.js\"></script>\r\n    <!-- bs-custom-file-input -->\r\n    <script src=\"../plugins/bs-custom-file-input/bs-custom-file-input.min.js\"></script>\r\n    <!-- AdminLTE App -->\r\n      <script src=\"../dist/js/adminlte.min.js\"></script>\r\n    <!-- AdminLTE for demo purposes -->\r\n    <script src=\"../dist/js/demo.js\"></script>\r\n    <script type=\"text/javascript\">\r\n        $(document).ready(function() {\r\nbsCustomFileInput.init();\r\n        });\r\n    </script>\r\n</body>\r\n\r\n</html>\r\n    ', '2023-03-29 19:27:06', '2023-03-29 19:27:06', '3', '2', NULL, 0),
(8, '', ' \r\n \r\n    ', '2023-03-29 19:27:25', '2023-03-29 19:27:25', '17', '19', NULL, 1),
(9, 'Started', ' \r\n \r\n    New weeklly 500 started', '2023-03-29 19:29:19', '2023-03-29 19:29:19', '4', '2', NULL, 0),
(10, 'Welcome', ' \r\n \r\n    Welcome', '2023-03-29 20:11:13', '2023-03-29 20:11:13', '6', '17', 'all', 0),
(11, 'ስብሰባ', ' \r\n\r\n                      <p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain\r\n                        was born and I will give you a complete account of the system, and expound the actual teachings\r\n                        of the great explorer of the truth, the master-builder of human happiness.</p>\r\n   \r\n                      <p>Thank you,</p>\r\n                      <p>System Administrator</p>\r\n    ', '2023-03-29 20:19:12', '2023-03-29 20:19:12', '5', '2', 'all', 0),
(4, '2ኛ ዙር ክፍያ ተጀመረ', 'Etsy doostang zoodles disqus groupon greplin oooj voxy zoodles,\r\n                      <span id=\"points\">...</span>  weebly ning heekya handango imeem plugg dopplr jibjab, movity\r\n                    jajah plickers sifteo edmodo ifttt zimbra. Babblely odeo kaboodle\r\n                    quora plaxo ideeli hulu weebly balihoo...', '2023-03-29 01:55:20', '2023-03-28 18:52:36', '17', '2', 'payment', 1),
(12, 'Selam Selam', ' \r\n\r\n                      <p><b>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain\r\n                        was born and I will give you a complete account of the system, and expound the actual teachings\r\n                        of the great explorer of the truth, the master-builder of human happiness.</b></p>\r\n   \r\n                      <p>Thank you,</p>\r\n                      <p>Akililu Abebe</p>\r\n    ', '2023-03-29 21:24:51', '2023-03-29 21:24:51', '9', '18', '17', 0),
(13, 'እንዴት ነው እቁቡ?', ' \r\n\r\n                      <p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain\r\n                        was born and I will give you a complete account of the system, and expound the actual teachings\r\n                        of the great explorer of the truth, the master-builder of human happiness.</p>\r\n   \r\n                      <p>Thank you,</p>\r\n                      <p>Akililu Abebe</p>\r\n    ', '2023-03-29 23:35:31', '2023-03-29 23:35:31', '22', '111', 'ጠያቄ መጠየቅ ', 0),
(14, 'የት ገባ የዛሬው እጣ?', ' \r\n\r\n                      <p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain\r\n                        was born and I will give you a complete account of the system, and expound the actual teachings\r\n                        of the great explorer of the truth, the master-builder of human happiness.</p>\r\n   \r\n                      <p>Thank you,</p>\r\n                      <p>Akililu Abebe</p>\r\n    ', '2023-03-29 23:38:06', '2023-03-29 23:38:06', '111', NULL, 'ቅሬታ ማቅረብ', 0),
(15, 'መለስ ፈልጋለሁ', ' \r\n\r\n                      <p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain\r\n                        was born and I will give you a complete account of the system, and expound the actual teachings\r\n                        of the great explorer of the truth, the master-builder of human happiness.</p>\r\n   \r\n                      <p>Thank you,</p>\r\n                      <p>Akililu Abebe</p>\r\n    ', '2023-03-29 23:41:16', '2023-03-29 23:41:16', '111', '17', 'አስተያየት መስጠት', 0),
(16, 'ዉቤ ሰላም ነው?', ' \r\n\r\n                      <p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain\r\n                        was born and I will give you a complete account of the system, and expound the actual teachings\r\n                        of the great explorer of the truth, the master-builder of human happiness.</p>\r\n   \r\n                      <p>Thank you,</p>\r\n                      <p>Akililu Abebe</p>\r\n    ', '2023-03-29 23:42:58', '2023-03-29 23:42:58', '10', '17', 'ጥቆማ መስጠት', 1),
(23, 'ሰላምታ ማቅረብ ', '<span class=\"float-right\">Thu 30-03-2023</span>\r\nTo:\r\n                      \r\n                      \r\n                      <br>  <br> <br>  ሰላም ብሮ<br>\r\n   <hr size=\"5\">\r\n                      <p>Thank you,</p>\r\n<p>Wubshet Akililu</p>\r\n\r\n    ', '2023-03-30 20:52:33', '2023-03-30 20:52:33', '17', '10', 'ጥቆማ መስጠት', 1),
(24, '', '<span class=\"float-right\">Thu 30-03-2023</span>\r\nTo:\r\n                      \r\n                      \r\n                      <br>  <br> <br>  አባቴ<br>\r\n   <hr size=\"5\">\r\n                      <p>Thank you,</p>\r\n<p>Akililu Abebe</p>\r\n\r\n    ', '2023-03-30 21:09:42', '2023-03-30 21:09:42', '17', '17', 'አስተያየት መስጠት', 0),
(26, 'Selamta', '<span class=\"float-right\">Fri 31-03-2023</span>\r\nTo:\r\n                      \r\n                      \r\n                      <br>  <br> Hey ake alk ende<br>  <br>\r\n   <hr size=\"5\">\r\n                      <p>Thank you,</p>\r\n<p>Ishetu Dawit</p>\r\n\r\n    ', '2023-03-31 14:43:40', '2023-03-31 14:43:40', '17', '24', 'ቅሬታ ማቅረብ', 0);

-- --------------------------------------------------------

--
-- Table structure for table `count`
--

CREATE TABLE `count` (
  `id` tinyint(4) NOT NULL,
  `date` int(11) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `count`
--

INSERT INTO `count` (`id`, `date`, `time`) VALUES
(1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ekub`
--

CREATE TABLE `ekub` (
  `EkubID` varchar(100) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Disc` text NOT NULL,
  `StartDT` date NOT NULL,
  `NextPayDt` date NOT NULL,
  `NextPayAM` int(20) NOT NULL,
  `NextChoicedDT` date NOT NULL,
  `Status` varchar(5) NOT NULL,
  `TotalPayAm` int(3) NOT NULL,
  `CloseDT` date NOT NULL,
  `RemainAM` int(11) NOT NULL,
  `CurPayAM` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ekub`
--

INSERT INTO `ekub` (`EkubID`, `Name`, `Disc`, `StartDT`, `NextPayDt`, `NextPayAM`, `NextChoicedDT`, `Status`, `TotalPayAm`, `CloseDT`, `RemainAM`, `CurPayAM`) VALUES
('D200W', 'Daily 200 weekly', 'Daily 200 weekly', '2023-03-18', '2023-03-25', 200, '2023-03-25', 'Activ', 4000, '2024-03-16', 4000, 200);

-- --------------------------------------------------------

--
-- Table structure for table `ekubdetails`
--

CREATE TABLE `ekubdetails` (
  `ID` int(11) NOT NULL,
  `TypeID` int(11) DEFAULT NULL,
  `ClientsNo` int(11) DEFAULT NULL,
  `StartDT` date DEFAULT NULL,
  `TotalBalance` int(11) DEFAULT NULL,
  `NetBalance` int(11) DEFAULT NULL,
  `Round` int(11) DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `Status` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ekubdetails`
--

INSERT INTO `ekubdetails` (`ID`, `TypeID`, `ClientsNo`, `StartDT`, `TotalBalance`, `NetBalance`, `Round`, `EndDate`, `Status`) VALUES
(19, 41, 3, NULL, 3000, NULL, NULL, NULL, 2),
(3, 32, 26, '2023-03-30', 2600, NULL, 1, NULL, 1),
(4, 33, 6, NULL, 1200, NULL, 1, NULL, 1),
(5, 34, 3, NULL, 1200, NULL, 1, NULL, 2),
(6, 35, 1, NULL, 500, NULL, 1, NULL, 2),
(7, 36, 1, NULL, 750, NULL, 1, NULL, 2),
(8, 37, 3, NULL, 3000, NULL, 1, NULL, 2),
(9, 38, 1, NULL, 2000, NULL, 1, NULL, 2),
(10, 39, 4, NULL, 10000, NULL, 1, NULL, 2),
(11, 40, NULL, NULL, NULL, NULL, 1, NULL, 0),
(20, 42, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(21, 43, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(22, 44, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(23, 45, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(24, 46, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(25, 47, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(26, 48, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(27, 49, 1, NULL, 750, NULL, NULL, NULL, 1),
(28, 50, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(29, 51, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(30, 52, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(31, 53, NULL, NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ekub_transactions`
--

CREATE TABLE `ekub_transactions` (
  `tr_id` int(20) NOT NULL,
  `tr_code` varchar(200) NOT NULL,
  `account_id` varchar(200) NOT NULL,
  `acc_name` varchar(200) NOT NULL,
  `account_number` varchar(200) NOT NULL,
  `acc_type` varchar(200) NOT NULL,
  `acc_amount` varchar(200) NOT NULL,
  `tr_type` varchar(200) NOT NULL,
  `tr_status` varchar(200) NOT NULL,
  `client_id` varchar(200) NOT NULL,
  `client_name` varchar(200) NOT NULL,
  `client_national_id` varchar(200) NOT NULL,
  `transaction_amt` varchar(200) NOT NULL,
  `client_phone` varchar(200) NOT NULL,
  `receiving_acc_no` varchar(200) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `receiving_acc_name` varchar(200) NOT NULL,
  `receiving_acc_holder` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ekub_transactions`
--

INSERT INTO `ekub_transactions` (`tr_id`, `tr_code`, `account_id`, `acc_name`, `account_number`, `acc_type`, `acc_amount`, `tr_type`, `tr_status`, `client_id`, `client_name`, `client_national_id`, `transaction_amt`, `client_phone`, `receiving_acc_no`, `created_at`, `receiving_acc_name`, `receiving_acc_holder`) VALUES
(38, 'IuRct4EQCrO0pU2VkXai', '13', '400', '082694531', 'Weekly 200 Savings', '', 'Deposit', 'Success ', '4', 'Mulualem Desta', 'Mu', '400', '0968068388', '', '2023-03-15 10:24:38.829279', '', ''),
(39, 'cSuXOVzjsgwTvGoFfxp5', '13', '400', '082694531', 'Weekly 200 Savings', '', 'Deposit', 'Success ', '4', 'Mulualem Desta', 'Mu', '400', '0968068388', '', '2023-03-15 10:24:52.161872', '', ''),
(40, 'kbzHy4BjKdQin6UXPWv1', '13', '400', '082694531', 'Recurring deposit ', '', 'Deposit', 'Success ', '4', 'Mulualem Desta', 'Mu', '800', '0968068388', '', '2023-03-12 07:42:12.939823', '', ''),
(41, '5WBh7yTqCYeUAlz1rgma', '13', '400', '082694531', 'Recurring deposit ', '', 'Deposit', 'Success ', '4', 'Mulualem Desta', 'Mu', '8000', '0968068388', '', '2023-03-12 07:56:07.949266', '', ''),
(42, 'vdk8fCRxNsoEQAcrpM3q', '14', 'TTTT', '276341580', 'Fixed Deposit Account ', '', 'Deposit', 'Success ', '6', 'Medi', '2255', '80000', '0911898688', '', '2023-03-12 08:18:16.640090', '', ''),
(43, '1MPHdxLubpo26lCRAyTz', '14', 'TTTT', '276341580', 'Fixed Deposit Account ', '', 'Transfer', 'Success ', '6', 'Medi', '2255', '800', '0911898688', '276341580', '2023-03-12 08:19:34.101916', 'TTTT', 'Medi'),
(44, 'WdGX8uboCxYpTZfRyl7U', '14', 'TTTT', '276341580', 'Fixed Deposit Account ', '', 'Withdrawal', 'Success ', '6', 'Medi', '2255', '80000', '0911898688', '', '2023-03-12 08:51:44.489612', '', ''),
(46, 'rFwRu7vOV8yYqXlcMaUt', '15', 'EdenEden', '641250973', 'Fixed Deposit Account ', '', 'Deposit', 'Success ', '7', 'Eden Teshome', '2255', '400', '0968068388', '', '2023-03-12 10:33:24.497676', '', ''),
(47, 'yrXzALx8EWuJPeBwjFdn', '15', 'EdenEden', '641250973', 'Fixed Deposit Account ', '', 'Withdrawal', 'Success ', '7', 'Eden Teshome', '2255', '399', '0968068388', '', '2023-03-12 10:35:39.531689', '', ''),
(49, 'JqajeYQnkbEN2D0MIT7P', '17', '4000', '623845109', 'Current account ', '', 'Deposit', 'Success ', '10', 'Wubshet Akililu', '9797', '5000', '0909858564', '', '2023-03-15 09:12:21.295194', '', ''),
(50, 'gLOFUWNED5l8y3MJj9eo', '18', '100', '026318457', 'Select Any iBank Account types', '', 'Deposit', 'Success ', '10', 'Wubshet Akililu', '9797', '1000', '0909858564', '', '2023-03-15 09:14:15.742687', '', ''),
(51, 'IYgzUneLWX7GPHtaQKyR', '17', '4000', '623845109', 'Current account ', '', 'Withdrawal', 'Success ', '10', 'Wubshet Akililu', '9797', '3000', '0909858564', '', '2023-03-15 09:21:14.902581', '', ''),
(52, 's3TFzZ6PXJ1GbMLjU2nk', '19', 'Weekly 200 Savings', '751609324', ' Weekly 200 Savings ', '', 'Deposit', 'Success ', '10', 'Wubshet Akililu', '9797', '200', '0909858564', '', '2023-03-15 09:26:08.269608', '', ''),
(53, 'uvVrW8Soflwxs54nXyKj', '20', 'Weekly 200 Savings', '074951386', ' Weekly 200 Savings ', '', 'Deposit', 'Success ', '14', 'Henok Getachew', '965', '1000', '0911016598', '', '2023-03-15 09:40:25.811009', '', ''),
(54, 'QAzxryOvWbjTg8a92USt', '23', 'Worawi', '109463752', '7 ', '', 'Deposit', 'Success ', '6', 'Medi', '2255', '500', '0911898688', '', '2023-03-16 11:31:49.107729', '', ''),
(55, 'OGmCPWsuXqcylHAFDag3', '23', 'Worawi', '109463752', '7 ', '', 'Deposit', 'Success ', '6', 'Medi', '2255', '500', '0911898688', '', '2023-03-16 11:35:13.941859', '', ''),
(56, 'ipVCy8kmAdlq6bIDQf5g', '24', 'God Is Love', '037582461', '9 ', '', 'Deposit', 'Success ', '16', 'Zemed', 'ZE06', '1000', '913511330', '', '2023-03-17 07:19:00.908655', '', ''),
(57, 'xR8DZg0bYXorCk1pmqBy', '24', 'God Is Love', '037582461', '9 ', '', 'Withdrawal', 'Success ', '16', 'Zemed', 'ZE06', '1000', '913511330', '', '2023-03-17 07:25:53.202297', '', ''),
(58, 'qUz48EFD0c2hlMiHb7ny', '25', 'King', '243958016', 'Weekly 2000 Savings ', '', 'Deposit', 'Success ', '17', 'Akililu Abebe', 'ZE06', '2000', '0968068388', '', '2023-03-18 02:51:00.167232', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ib_acc_types`
--

CREATE TABLE `ib_acc_types` (
  `acctype_id` int(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `rate` varchar(200) NOT NULL,
  `code` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ib_acc_types`
--

INSERT INTO `ib_acc_types` (`acctype_id`, `name`, `description`, `rate`, `code`) VALUES
(1, 'Weekly 100 Savings', '<p>Savings accounts&nbsp;are typically the first official bank account anybody opens. Children may open an account with a parent to begin a pattern of saving. Teenagers open accounts to stash cash earned&nbsp;from a first job&nbsp;or household chores.</p><p>Savings accounts are an excellent place to park&nbsp;emergency cash. Opening a savings account also marks the beginning of your relationship with a financial institution. For example, when joining a credit union, your &ldquo;share&rdquo; or savings account establishes your membership.</p>', '0', 'ACC-CAT-4EZFO'),
(2, ' Weekly 200 Savings', '<p>Retirement accounts offer tax advantages. In very general terms, you get to avoid paying income tax on interest you earn from a savings account or CD each year. But you may have to pay taxes on those earnings at a later date. Still, keeping your money sheltered from taxes may help you over the long term. Most banks offer IRAs (both Traditional IRAs and Roth IRAs), and they may also provide retirement accounts for small businesses</p>', '0', 'ACC-CAT-1QYDV'),
(4, 'Weekly 1000 Savings', '<p><strong>Recurring deposit account or RD account</strong> is opened by those who want to save certain amount of money regularly for a certain period of time and earn a higher interest rate.&nbsp;In RD&nbsp;account a&nbsp;fixed amount is deposited&nbsp;every month for a specified period and the total amount is repaid with interest at the end of the particular fixed period.&nbsp;</p><p>The period of deposit is minimum six months and maximum ten years.&nbsp;The interest rates vary&nbsp;for different plans based on the amount one saves and the period of time and also on banks. No withdrawals are allowed from the RD account. However, the bank may allow to close the account before the maturity period.</p><p>These accounts can be opened in single or joint names. Banks are also providing the Nomination facility to the RD account holders.&nbsp;</p>', '0', 'ACC-CAT-VBQLE'),
(5, 'Weekly 500 Savings', '<p>In <strong>Fixed Deposit Account</strong> (also known as <strong>FD Account</strong>), a particular sum of money is deposited in a bank for specific&nbsp;period of time. It&rsquo;s one time deposit and one time take away (withdraw) account.&nbsp;The money deposited in this account can not be withdrawn before the expiry of period.&nbsp;</p><p>However, in case of need,&nbsp; the depositor can ask for closing the fixed deposit prematurely by paying a penalty. The penalty amount varies with banks.</p><p>A high interest rate is paid on fixed deposits. The rate of interest paid for fixed deposit vary according to amount, period and also from bank to bank.</p>', '0', 'ACC-CAT-A86GO'),
(7, 'Weekly 2000 Savings', '<p><strong>Current account</strong> is mainly for business persons, firms, companies, public enterprises etc and are never used for the purpose of investment or savings.These deposits are the most liquid deposits and there are no limits for number of transactions or the amount of transactions in a day. While, there is no interest paid on amount held in the account, banks charges certain &nbsp;service charges, on such accounts. The current accounts do not have any fixed maturity as these are on continuous basis accounts.</p>', '0', 'ACC-CAT-4O8QW');

-- --------------------------------------------------------

--
-- Table structure for table `ib_admin`
--

CREATE TABLE `ib_admin` (
  `admin_id` int(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `number` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `profile_pic` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ib_admin`
--

INSERT INTO `ib_admin` (`admin_id`, `name`, `email`, `number`, `password`, `profile_pic`) VALUES
(2, 'System Administrator', 'sysadmin@ibanking.com', 'iBank-ADM-0516', '10470c3b4b1fed12c3baac014be15fac67c6e815', ''),
(3, 'Mulualem Desta', 'Mulle@gmail.com', '0985050594', '10470c3b4b1fed12c3baac014be15fac67c6e815', 'mulle.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `ib_bankaccounts`
--

CREATE TABLE `ib_bankaccounts` (
  `account_id` int(20) NOT NULL,
  `account_number` varchar(200) NOT NULL,
  `acc_amount` varchar(200) NOT NULL,
  `client_name` varchar(200) NOT NULL,
  `trans_amount` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ib_bankaccounts`
--

INSERT INTO `ib_bankaccounts` (`account_id`, `account_number`, `acc_amount`, `client_name`, `trans_amount`) VALUES
(1, '999', '15900', 'System Account', 16000);

-- --------------------------------------------------------

--
-- Table structure for table `ib_clients`
--

CREATE TABLE `ib_clients` (
  `client_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `national_id` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `profile_pic` varchar(200) NOT NULL,
  `client_number` varchar(200) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ib_clients`
--

INSERT INTO `ib_clients` (`client_id`, `name`, `national_id`, `phone`, `address`, `email`, `password`, `profile_pic`, `client_number`, `created`) VALUES
(3, 'John Doe', '36756481', '9897890089', '127007 Localhost', 'johndoe@gmail.com', 'a69681bcf334ae130217fea4505fd3c994f5683f', '817714bd2e0bc90352b15be17dab4cb3.png', 'iBank-CLIENT-8127', '2023-03-16 19:32:28'),
(4, 'Mulualem Desta', 'Mu', '0968068388', 'Adis ketema', 'mu2@gmail.com', 'e7b254630b1ff6dca9f25e568a948bdbaf715fae5edc06', 'd063a073f1b63ed7a3c2b5e25015a6f1.png', 'iBank-CLIENT-2584', '2023-03-16 19:32:28'),
(5, 'Meron', '2255', '0968068388', 'Adis ketema', 'mu@gmail.com', '10470c3b4b1fed12c3baac014be15fac67c6e815', 'images (2).jpeg', 'iBank-CLIENT-8304', '2023-03-16 19:32:28'),
(6, 'Medi', '2255', '0911898688', 'Awassa', 'medi@gmail.com', '10470c3b4b1fed12c3baac014be15fac67c6e815', 'DHjq6EHVwAA6j-Z.jpg', 'iBank-CLIENT-9365', '2023-03-16 19:32:28'),
(7, 'Eden Teshome', '2255', '0968068388', 'Awassa', 'mu2@gmail.com', 'e7b254630b1ff6dca9f25e568a948bdbaf715fae5edc06', 'images (4).jpeg', 'iBank-CLIENT-7836', '2023-03-16 19:32:28'),
(8, 'Bexesha Basa', '2342', '0968068388', 'Adis ketema', 'bax@gmail.com', 'adcd7048512e64b48da55b027577886ee5a36350', 'no-profile.png', 'iBank-CLIENT-0425', '2023-03-16 19:32:28'),
(9, 'Medihanit', '23235', '0911898688', 'Adis ketema', 'mu2@gmail.com', 'e7b254630b1ff6dca9f25e568a948bdbaf715fae5edc06', '370a2fffe58447b607283cface8a3922.png', 'iBank-CLIENT-1497', '2023-03-16 19:32:28'),
(10, 'Wubshet Akililu', '9797', '0909858564', 'Awassa', 'wube@gmail.com', '10470c3b4b1fed12c3baac014be15fac67c6e815', '0366d735ad3b15bc1de38e17ea0a5f60.png', 'iBank-CLIENT-8960', '2023-03-16 19:32:28'),
(11, 'Bereket Markos', '8778', '0975856532', 'Awassa', 'beki@gmail.com', '10470c3b4b1fed12c3baac014be15fac67c6e815', 'ac7b8bd7fd7d9953148c3a21cb624500.png', 'iBank-CLIENT-3192', '2023-03-16 19:32:28'),
(12, 'Teshome Ayana', '9775', '0978654323', 'Hawassa', 'teshe@gmail.com', '10470c3b4b1fed12c3baac014be15fac67c6e815', 'd864e272b4bbd0454bd7e9dba0f905bf.png', 'iBank-CLIENT-2308', '2023-03-16 19:32:28'),
(13, 'Dawit Mamo', '9176', '0984321595', 'Adis Ketema', 'dave@gmail.com', '10470c3b4b1fed12c3baac014be15fac67c6e815', '0366d735ad3b15bc1de38e17ea0a5f60.png', 'iBank-CLIENT-0653', '2023-03-16 19:32:28'),
(14, 'Henok Getachew', '965', '0911016598', 'Shashemene', 'heni@gmail.com', 'fe703d258c7ef5f50b71e06565a65aa07194907f', 'ac7b8bd7fd7d9953148c3a21cb624500.png', 'iBank-CLIENT-9618', '2023-03-16 19:32:28'),
(15, 'Helen Fikadu', '23235', '0968068388', 'Awassa', 'helen@gmail.com', '10470c3b4b1fed12c3baac014be15fac67c6e815', '817714bd2e0bc90352b15be17dab4cb3.png', 'KFS-CL-3072', '2023-03-16 19:33:52'),
(16, 'Zemedikun Zeleke Zekarias', 'ZE06', '913511330', 'Atote Hawassa, ??', 'zom@gmail.com', '6cc5a9608e794020c5d5a6f56b79079de554316c', '', 'KFS-CL-8562', '2023-03-17 16:07:31'),
(17, 'Akililu Abebe', 'ZE06', '0968068388', 'Tula', 'ake@gmail.com', '10470c3b4b1fed12c3baac014be15fac67c6e815', '370a2fffe58447b607283cface8a3922.png', 'KFS-CL-6905', '2023-03-18 11:38:24'),
(18, 'Getachew Dana', 'Sys667', '0911898688', 'Nj', 'g@gmail.com', '10470c3b4b1fed12c3baac014be15fac67c6e815', '0366d735ad3b15bc1de38e17ea0a5f60.png', 'KFS-CL-0428', '2023-03-22 01:49:50'),
(19, 'Aster Mamo', 'Eth0978', '0975454154', 'AWASSA', 'asu@gmail.com', '10470c3b4b1fed12c3baac014be15fac67c6e815', 'c19f5057e0b4a9714034835697246f0e.png', 'KFS-CL-0452', '2023-03-24 15:58:49'),
(20, 'Kebede Asfaw', 'Eth1234', '09554664', 'AWASSA', 'kebe@gmail.com', '10470c3b4b1fed12c3baac014be15fac67c6e815', '1.jpg', 'KFS-CL-4379', '2023-03-24 16:00:02'),
(21, 'Beki 000', 'Sys667', '0968068388', 'Adis ketema', 'beki@gmail.com', '10470c3b4b1fed12c3baac014be15fac67c6e815', 'Car_Rental_Staff_DPIC_1677232504.jpg', 'KFS-CL-2817', '2023-03-26 19:58:02'),
(22, 'Melat  biruk', 'Dredfq', '0930773984', 'Hawssa', 'melat@gimail.come', '2ab3a9ab1e4bed1443e67925795b8dc3563dd64c', '45c9b9afe491f4edcdaa80b3c8b4c14f.png', 'KFS-CL-3589', '2023-03-27 18:34:03'),
(23, 'Tadiwos Dana', '9778', '0968068388', 'Adis ketema', 'tad@gmail.com', '10470c3b4b1fed12c3baac014be15fac67c6e815', 'images (5).jpeg', 'KFS-CL-3870', '2023-03-29 19:07:13'),
(24, 'Ishetu Dawit', '9878', '0914456525', 'Chefe', 'Eshe@gmail.com', '10470c3b4b1fed12c3baac014be15fac67c6e815', '', 'iBank-CLIENT-7823', '2023-03-31 14:38:41'),
(25, 'Abebe Zeleke', '9879', '09858995', 'Awassa', 'abe@gmail.com', '10470c3b4b1fed12c3baac014be15fac67c6e815', '8.jpg', 'KFS-CL-3274', '2023-04-02 18:47:27'),
(26, 'Marta Zeleke', 'E978', '09745462', 'Awassa', 'marta@gmail.com', '10470c3b4b1fed12c3baac014be15fac67c6e815', '5.jpg', 'KFS-CL-5984', '2023-04-02 18:48:22'),
(27, 'Kidist Mulugeta', '0976', '09585654', 'Awassa', 'kid@gmail.com', '10470c3b4b1fed12c3baac014be15fac67c6e815', '3.jpg', 'KFS-CL-2147', '2023-04-02 18:49:14'),
(28, 'Liya Gelaye', '08779', '09854521', 'Atote', 'liya@gmail.com', '10470c3b4b1fed12c3baac014be15fac67c6e815', '1.jpg', 'KFS-CL-8027', '2023-04-02 18:55:54'),
(29, 'Emebet Assefa', '9777', '09542122', 'Dilla', 'emu@gmail.com', '1f4129b2b73b8ce2b048846c93da6402608f12e6', '2.jpg', 'KFS-CL-5378', '2023-04-02 18:57:07'),
(30, 'Fitsum Tsegaye', '0877', '0911456525', 'Tikur Wuha', 'fitsum@gmail.com', 'fe703d258c7ef5f50b71e06565a65aa07194907f', '8.jpg', 'KFS-CL-3462', '2023-04-02 18:57:54'),
(31, 'Markos Geleta', '977', '09523665', 'Shashemene', 'markos@gmail.com', '10470c3b4b1fed12c3baac014be15fac67c6e815', 'c2952d2414d17dc8f796cc9cc8987114.png', 'KFS-CL-3098', '2023-04-03 03:45:31');

-- --------------------------------------------------------

--
-- Table structure for table `ib_ekubaccounts`
--

CREATE TABLE `ib_ekubaccounts` (
  `account_id` int(20) NOT NULL,
  `acc_name` varchar(200) NOT NULL,
  `account_number` varchar(200) NOT NULL,
  `acc_type` varchar(200) NOT NULL,
  `acc_rates` varchar(200) NOT NULL,
  `acc_status` int(11) NOT NULL,
  `acc_amount` varchar(200) NOT NULL,
  `client_id` varchar(200) NOT NULL,
  `client_name` varchar(200) NOT NULL,
  `client_national_id` varchar(200) NOT NULL,
  `client_phone` varchar(200) NOT NULL,
  `client_number` varchar(200) NOT NULL,
  `client_email` varchar(200) NOT NULL,
  `client_adr` varchar(200) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `NextPayDT` date NOT NULL,
  `NextPayAM` int(11) NOT NULL,
  `Round` int(11) NOT NULL,
  `RemainAM` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ib_ekubaccounts`
--

INSERT INTO `ib_ekubaccounts` (`account_id`, `acc_name`, `account_number`, `acc_type`, `acc_rates`, `acc_status`, `acc_amount`, `client_id`, `client_name`, `client_national_id`, `client_phone`, `client_number`, `client_email`, `client_adr`, `created_at`, `NextPayDT`, `NextPayAM`, `Round`, `RemainAM`) VALUES
(66, 'D100D', '019874', '32 ', '', 0, '700', '18', 'Getachew Dana', 'Sys667', '0911898688', 'KFS-CL-0428', 'g@gmail.com', 'Nj', '2023-04-03 17:35:30.719691', '2023-04-04', 0, 7, 0),
(73, 'D200D', '694718', '33 ', '', 0, '600', '18', 'Getachew Dana', 'Sys667', '0911898688', 'KFS-CL-0428', 'g@gmail.com', 'Nj', '2023-03-31 00:14:16.169599', '2023-03-28', 300, 3, 0),
(79, 'D100D', '463852', '32 ', '', 0, '200', '17', 'Akililu Abebe', 'ZE06', '0968068388', 'KFS-CL-6905', 'ake@gmail.com', 'Tula', '2023-03-31 00:11:38.725053', '2023-03-31', 100, 2, 0),
(81, 'D100D', '827569', '32 ', '', 0, '400', '16', 'Zemed', 'ZE06', '913511330', 'KFS-CL-8562', 'zom@gmail.com', 'Hawassa', '2023-03-31 15:32:31.005074', '2023-04-01', 200, 4, 0),
(82, 'D100D', '918743', '32 ', '', 0, '600', '15', 'Helen Fikadu', '23235', '0968068388', 'KFS-CL-3072', 'helen@gmail.com', 'Awassa', '2023-03-31 00:24:17.346415', '2023-03-31', 100, 6, 0),
(83, 'D100D', '538017', '32 ', '', 0, '200', '3', 'John Doe', '36756481', '9897890089', 'iBank-CLIENT-8127', 'johndoe@gmail.com', '127007 Localhost', '2023-04-03 02:17:01.000863', '2023-04-03', 100, 2, 0),
(84, 'D2500D', '750324', '39 ', '', 0, '2500', '3', 'John Doe', '36756481', '9897890089', 'iBank-CLIENT-8127', 'johndoe@gmail.com', '127007 Localhost', '2023-03-31 00:02:21.123317', '2023-03-31', 0, 1, 0),
(85, 'D2500D', '769085', '39 ', '', 0, '2500', '6', 'Medi', '2255', '0911898688', 'iBank-CLIENT-9365', 'medi@gmail.com', 'Awassa', '2023-03-31 00:09:51.676652', '2023-03-29', 2500, 1, 0),
(86, 'D2500D', '693180', '39 ', '', 0, '2500', '5', 'Meron', '2255', '0968068388', 'iBank-CLIENT-8304', 'mu@gmail.com', 'Adis ketema', '2023-03-27 20:24:29.103989', '2023-03-28', 0, 1, 0),
(87, 'D100D', '805421', '32 ', '', 0, '400', '6', 'Medi', '2255', '0911898688', 'iBank-CLIENT-9365', 'medi@gmail.com', 'Awassa', '2023-04-03 02:17:21.190974', '2023-04-03', 100, 4, 0),
(98, 'D100D', '185374', '32 ', '', 0, '200', '20', 'Kebede Asfaw', 'Eth1234', '09554664', 'KFS-CL-4379', 'kebe@gmail.com', 'AWASSA', '2023-04-03 00:51:12.611703', '2023-04-03', 100, 2, 0),
(89, 'D400D', '352761', '34 ', '', 0, '400', '6', 'Medi', '2255', '0911898688', 'iBank-CLIENT-9365', 'medi@gmail.com', 'Awassa', '2023-04-03 00:52:02.806115', '2023-04-03', 0, 1, 0),
(90, 'D100D', '421365', '32 ', '', 0, '400', '7', 'Eden Teshome', '2255', '0968068388', 'iBank-CLIENT-7836', 'mu2@gmail.com', 'Awassa', '2023-04-03 02:17:35.260660', '2023-04-03', 300, 4, 0),
(91, 'D100D', '362087', '32 ', '', 0, '300', '8', 'Bexesha Basa', '2342', '0968068388', 'iBank-CLIENT-0425', 'bax@gmail.com', 'Adis ketema', '2023-04-03 02:17:50.712036', '2023-04-03', 0, 3, 0),
(92, 'D100D', '213897', '32 ', '', 0, '0', '14', 'Henok Getachew', '965', '0911016598', 'iBank-CLIENT-9618', 'heni@gmail.com', 'Shashemene', '2023-03-26 16:50:55.486455', '0000-00-00', 0, 0, 0),
(93, 'D100D', '694705', '32 ', '', 0, '300', '13', 'Dawit Mamo', '9176', '0984321595', 'iBank-CLIENT-0653', 'dave@gmail.com', 'Adis Ketema', '2023-04-03 02:18:06.755008', '2023-04-03', 0, 3, 0),
(94, 'D100D', '956328', '32 ', '', 0, '0', '12', 'Teshome Ayana', '9775', '0978654323', 'iBank-CLIENT-2308', 'teshe@gmail.com', 'Hawassa', '2023-03-26 16:50:55.486455', '0000-00-00', 0, 0, 0),
(95, 'D100D', '762538', '32 ', '', 0, '0', '11', 'Bereket Markos', '8778', '0975856532', 'iBank-CLIENT-3192', 'beki@gmail.com', 'Awassa', '2023-03-26 16:50:55.486455', '0000-00-00', 0, 0, 0),
(96, 'D100D', '473561', '32 ', '', 0, '0', '10', 'Wubshet Akililu', '9797', '0909858564', 'iBank-CLIENT-8960', 'wube@gmail.com', 'Awassa', '2023-03-26 16:50:55.486455', '0000-00-00', 0, 0, 0),
(99, 'Mom', '839547', '32 ', '', 0, '0', '21', 'Beki 000', 'Sys667', '0968068388', 'KFS-CL-2817', 'beki@gmail.com', 'Adis ketema', '2023-03-26 16:58:35.771302', '2023-03-27', 100, 0, 0),
(100, 'Hulum yiketelugn', '289476', '41 ', '', 0, '1000', '22', 'Melat  biruk', 'Dredfq', '0930773984', 'KFS-CL-3589', 'melat@gimail.come', 'Hawssa', '2023-03-27 15:37:54.170909', '2023-04-02', 1000, 1, 0),
(101, 'Hulum', '537819', '32 ', '', 0, '100', '22', 'Melat  biruk', 'Dredfq', '0930773984', 'KFS-CL-3589', 'melat@gimail.come', 'Hawssa', '2023-03-27 15:40:14.211255', '2023-03-28', 100, 1, 0),
(102, '2', '510834', '32 ', '', 0, '100', '19', 'Aster Mamo', 'Eth0978', '0975454154', 'KFS-CL-0452', 'asu@gmail.com', 'AWASSA', '2023-04-03 17:39:10.467040', '2023-04-04', 100, 1, 0),
(103, 'S', '536970', '32 ', '', 0, '0', '4', 'Mulualem Desta', 'Mu', '0968068388', 'iBank-CLIENT-2584', 'mu2@gmail.com', 'Adis ketema', '2023-03-28 00:35:39.641136', '2023-03-28', 100, 0, 0),
(104, 'D', '731658', '32 ', '', 0, '0', '9', 'Medihanit', '23235', '0911898688', 'iBank-CLIENT-1497', 'mu2@gmail.com', 'Adis ketema', '2023-03-28 00:35:54.016994', '2023-03-28', 100, 0, 0),
(105, 'W', '265198', '34 ', '', 0, '0', '9', 'Medihanit', '23235', '0911898688', 'iBank-CLIENT-1497', 'mu2@gmail.com', 'Adis ketema', '2023-03-28 00:36:12.726772', '2023-03-28', 400, 0, 0),
(106, 'Q', '370468', '37 ', '', 0, '0', '9', 'Medihanit', '23235', '0911898688', 'iBank-CLIENT-1497', 'mu2@gmail.com', 'Adis ketema', '2023-03-28 00:36:31.129968', '2023-03-28', 1000, 0, 0),
(107, 'W', '045796', '49 ', '', 0, '0', '9', 'Medihanit', '23235', '0911898688', 'iBank-CLIENT-1497', 'mu2@gmail.com', 'Adis ketema', '2023-03-28 00:36:39.928361', '2023-03-27', 750, 0, 0),
(108, 'D200D', '491872', '33 ', '', 0, '0', '10', 'Wubshet Akililu', '9797', '0909858564', 'iBank-CLIENT-8960', 'wube@gmail.com', 'Awassa', '2023-03-30 15:20:36.316670', '2023-03-31', 200, 0, 0),
(109, 'D1000D', '712086', '37 ', '', 0, '0', '10', 'Wubshet Akililu', '9797', '0909858564', 'iBank-CLIENT-8960', 'wube@gmail.com', 'Awassa', '2023-03-30 15:20:52.124692', '2023-03-31', 1000, 0, 0),
(110, 'TATI', '905347', '41 ', '', 0, '1000', '24', 'Ishetu Dawit', '9878', '0914456525', 'iBank-CLIENT-7823', 'Eshe@gmail.com', 'Chefe', '2023-04-03 00:51:34.212646', '2023-04-09', 0, 1, 0),
(111, 'Z200', '249870', '????', '', 0, '0', '16', 'Zemedikun Zeleke Zekarias', 'ZE06', '913511330', 'KFS-CL-8562', 'zom@gmail.com', 'Atote Hawassa, ??', '2023-03-31 15:33:27.720179', '0000-00-00', 0, 0, 0),
(112, 'F01', '976524', '32 ', '', 0, '0', '30', 'Fitsum Tsegaye', '0877', '0911456525', 'KFS-CL-3462', 'fitsum@gmail.com', 'Tikur Wuha', '2023-04-02 16:50:54.618952', '2023-04-03', 100, 0, 0),
(113, 'F02', '698250', '37 ', '', 0, '0', '30', 'Fitsum Tsegaye', '0877', '0911456525', 'KFS-CL-3462', 'fitsum@gmail.com', 'Tikur Wuha', '2023-04-02 16:51:07.280775', '2023-04-03', 1000, 0, 0),
(114, 'F03', '361904', '34 ', '', 0, '0', '30', 'Fitsum Tsegaye', '0877', '0911456525', 'KFS-CL-3462', 'fitsum@gmail.com', 'Tikur Wuha', '2023-04-02 16:51:17.503243', '2023-04-03', 400, 0, 0),
(115, '4', '718309', '32 ', '', 0, '0', '29', 'Emebet Assefa', '9777', '09542122', 'KFS-CL-5378', 'emu@gmail.com', 'Dilla', '2023-04-02 22:05:48.646101', '2023-04-03', 100, 0, 0),
(116, 'XXT', '24913650', '33 ', '', 0, '0', '30', 'Fitsum Tsegaye', '0877', '0911456525', 'KFS-CL-3462', 'fitsum@gmail.com', '127007 Localhost', '2023-04-02 23:27:02.095409', '2023-04-03', 200, 0, 0),
(117, 'T', '23906578', '35 ', '', 0, '0', '30', 'Fitsum Tsegaye', '0877', '0911456525', 'KFS-CL-3462', 'fitsum@gmail.com', '127007 Localhost', '2023-04-02 23:27:57.520638', '2023-04-03', 500, 0, 0),
(118, 'b', '30429158', '32 ', '', 0, '400', '28', 'Liya Gelaye', '08779', '09854521', 'KFS-CL-8027', 'liya@gmail.com', '127007 Localhost', '2023-04-03 17:34:54.418272', '2023-04-04', 100, 4, 0),
(119, 'h', '27895061', '36 ', '', 0, '0', '30', 'Fitsum Tsegaye', '0877', '0911456525', 'KFS-CL-3462', 'fitsum@gmail.com', '127007 Localhost', '2023-04-02 23:31:35.778189', '2023-04-03', 750, 0, 0),
(120, 'Geni', '75201639', '41 ', '', 0, '0', '30', 'Fitsum Tsegaye', '0877', '0911456525', 'KFS-CL-3462', 'fitsum@gmail.com', '127007 Localhost', '2023-04-03 00:01:26.460126', '2023-04-02', 1000, 0, 0),
(121, 'gggg', '72841650', '38 ', '', 0, '0', '30', 'Fitsum Tsegaye', '0877', '0911456525', 'KFS-CL-3462', 'fitsum@gmail.com', '127007 Localhost', '2023-04-03 00:04:56.901159', '2023-04-03', 2000, 0, 0),
(122, 'G', '07526913', '32 ', '', 0, '100', '27', 'Kidist Mulugeta', '0976', '09585654', 'KFS-CL-2147', 'kid@gmail.com', '127007 Localhost', '2023-04-03 17:28:54.212151', '2023-04-04', 100, 1, 0),
(123, '2', '34275086', '32 ', '', 0, '200', '26', 'Marta Zeleke', 'E978', '09745462', 'KFS-CL-5984', 'marta@gmail.com', '127007 Localhost', '2023-04-03 17:24:39.260949', '2023-04-04', 100, 2, 0),
(124, 's', '51490387', '32 ', '', 0, '200', '25', 'Abebe Zeleke', '9879', '09858995', 'KFS-CL-3274', 'abe@gmail.com', '127007 Localhost', '2023-04-03 17:27:48.146492', '2023-04-04', 100, 2, 0),
(125, 'x', '35018279', '33 ', '', 0, '0', '29', 'Emebet Assefa', '9777', '09542122', 'KFS-CL-5378', 'emu@gmail.com', '127007 Localhost', '2023-04-03 00:17:59.717857', '2023-04-03', 200, 0, 0),
(126, 'Fitsum Tsegaye- 2500', '94873201', '39 ', '', 0, '0', '30', 'Fitsum Tsegaye', '0877', '0911456525', 'KFS-CL-3462', 'fitsum@gmail.com', '127007 Localhost', '2023-04-03 00:35:26.596030', '2023-04-03', 2500, 0, 0),
(127, 'Liya Gelaye- 200', '05698721', '33 ', '', 0, '200', '28', 'Liya Gelaye', '08779', '09854521', 'KFS-CL-8027', 'liya@gmail.com', '127007 Localhost', '2023-04-03 17:58:58.925947', '2023-04-04', 200, 1, 0),
(128, 'Medihanit- 200', '67180294', '33 ', '', 0, '400', '9', 'Medihanit', '23235', '0911898688', 'iBank-CLIENT-1497', 'mu2@gmail.com', '127007 Localhost', '2023-04-03 17:59:13.939600', '2023-04-04', 200, 2, 0),
(129, 'Ishetu Dawit- 100', '63172905', '32 ', '', 0, '200', '24', 'Ishetu Dawit', '9878', '0914456525', 'iBank-CLIENT-7823', 'Eshe@gmail.com', '127007 Localhost', '2023-04-03 17:27:00.438525', '2023-04-04', 100, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ib_ekub_types`
--

CREATE TABLE `ib_ekub_types` (
  `ekubtype_id` int(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `amount` int(20) NOT NULL,
  `duration` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `rate` varchar(200) NOT NULL,
  `code` varchar(200) NOT NULL,
  `TotalPay` int(11) NOT NULL,
  `Name2` varchar(200) NOT NULL,
  `status` int(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ib_ekub_types`
--

INSERT INTO `ib_ekub_types` (`ekubtype_id`, `name`, `amount`, `duration`, `description`, `rate`, `code`, `TotalPay`, `Name2`, `status`) VALUES
(32, 'Daily', 100, 'Daily', '', '0', 'ACC-KES-D100D', 100, '', 2),
(33, 'Daily', 200, 'Daily', '', '0', 'ACC-KES-D200D', 200, '', 2),
(34, 'Daily', 400, 'Daily', '', '0', 'ACC-KES-D400D', 400, '', 2),
(35, 'Daily', 500, 'Daily', '', '0', 'ACC-KES-D500D', 500, '', 2),
(36, 'Daily', 750, 'Daily', '', '0', 'ACC-KES-D759D', 750, '', 2),
(37, 'Daily', 1000, 'Daily', '', '0', 'ACC-KES-D1000D', 1000, '', 2),
(38, 'Daily', 2000, 'Daily', '', '0', 'ACC-KES-D2000D', 2000, '', 2),
(39, 'Daily', 2500, 'Daily', '', '0', 'ACC-KES-D2500D', 2500, '', 2),
(40, 'Daily', 5000, 'Daily', '', '0', 'ACC-KES-D5000D', 5000, '', 0),
(41, 'Weekly', 1000, 'Weekly', '????? ?? 1000??', '0', 'ACC-KES-W1000W', 1000, '', 2),
(42, 'Weekly', 2000, 'Weekly', '????? ?? 2000??', '0', 'ACC-KES-W2000W', 2000, '', 0),
(43, 'Weekly', 2500, 'Weekly', '????? ?? 2500??', '0', 'ACC-KES-W2500W', 2500, '', 0),
(44, 'Weekly', 5000, 'Weekly', '????? ?? 5000??', '0', 'ACC-KES-W5000W', 5000, '', 0),
(45, 'Daily', 100, 'Weekly', '???? 100?? ?????', '0', 'ACC-KES-D100W', 700, '', 0),
(46, 'Daily', 200, 'Weekly', '???? 200?? ?????', '0', 'ACC-KES-D200W', 1400, '', 0),
(47, 'Daily', 400, 'Weekly', '???? 400?? ?????', '0', 'ACC-KES-D400W', 2800, '', 0),
(48, 'Daily', 500, 'Weekly', '???? 500?? ?????', '0', 'ACC-KES-D500W', 3500, '', 0),
(49, 'Daily', 750, 'Weekly', '???? 750?? ?????', '0', 'ACC-KES-D750W', 5250, '', 0),
(50, 'Daily', 1000, 'Weekly', '???? 1000?? ?????', '0', 'ACC-KES-D1000W', 7000, '', 0),
(51, 'Daily', 2000, 'Weekly', '???? 2000?? ?????', '0', 'ACC-KES-D2000W', 14000, '', 0),
(52, 'Daily', 2500, 'Weekly', '???? 2500?? ?????', '0', 'ACC-KES-D2500W', 17500, '', 0),
(53, 'Daily', 5000, 'Weekly', '???? 5000?? ?????', '0', 'ACC-KES-D5000W', 35000, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ib_notifications`
--

CREATE TABLE `ib_notifications` (
  `notification_id` int(20) NOT NULL,
  `notification_details` text NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `Type` varchar(200) DEFAULT NULL,
  `Status` int(1) NOT NULL DEFAULT '1',
  `user` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ib_notifications`
--

INSERT INTO `ib_notifications` (`notification_id`, `notification_details`, `created_at`, `Type`, `Status`, `user`) VALUES
(110, 'Getachew Dana Has Deposited ETB 100 To Bank Account 019874', '2023-03-26 16:39:33.951724', 'Deposit', 1, 'Getachew Dana'),
(106, 'Akililu Abebe Has Deposited ETB 100 To Bank Account 463852', '2023-03-23 21:06:58.330146', 'Deposit', 1, 'Akililu Abebe'),
(107, 'John Doe Has Deposited ETB 2500 To Bank Account 750324', '2023-03-23 21:10:16.200114', 'Deposit', 1, 'John Doe'),
(108, 'John Doe Has Deposited ETB 2500 To Bank Account 750324', '2023-03-23 21:10:42.078043', 'Deposit', 1, 'John Doe'),
(109, 'John Doe Has Deposited ETB 2500 To Bank Account 750324', '2023-03-23 21:12:19.100770', 'Deposit', 1, 'John Doe'),
(111, 'Getachew Dana Has Deposited ETB 100 To Bank Account 019874', '2023-03-26 16:51:34.454207', 'Deposit', 1, 'Getachew Dana'),
(112, 'Akililu Abebe Has Deposited ETB 100 To Bank Account 463852', '2023-03-26 16:55:46.594136', 'Deposit', 1, 'Akililu Abebe'),
(113, 'Zemed Has Deposited ETB 100 To Bank Account 827569', '2023-03-26 16:55:59.835186', 'Deposit', 1, 'Zemed'),
(114, 'Helen Fikadu Has Deposited ETB 100 To Bank Account 918743', '2023-03-26 16:56:31.463021', 'Deposit', 1, 'Helen Fikadu'),
(115, 'John Doe Has Deposited ETB 100 To Bank Account 538017', '2023-03-26 17:03:48.185242', 'Deposit', 1, 'John Doe'),
(116, 'Medi Has Deposited ETB 100 To Bank Account 805421', '2023-03-26 17:04:17.850809', 'Deposit', 1, 'Medi'),
(133, 'Akililu Abebe Has Deposited ETB 100 To Bank Account 463852', '2023-03-31 00:00:19.606157', 'Deposit', 1, 'Akililu Abebe'),
(118, 'Eden Teshome Has Deposited ETB 100 To Bank Account 421365', '2023-03-26 17:04:30.291056', 'Deposit', 1, 'Eden Teshome'),
(135, 'John Doe Has Deposited ETB 2500 To Bank Account 750324', '2023-03-31 00:02:21.120643', 'Deposit', 1, 'John Doe'),
(122, 'Zemed Has Deposited ETB 100 To Bank Account 827569', '2023-03-27 14:57:43.505973', 'Deposit', 1, 'Zemed'),
(134, 'Akililu Abebe Has Deposited ETB 100 To Bank Account 463852', '2023-03-31 00:00:51.010100', 'Deposit', 1, 'Akililu Abebe'),
(129, 'Getachew Dana Has Transfered ETB 100 From Bank Account 019874 To Bank Account ', '2023-03-30 22:18:12.167399', NULL, 1, NULL),
(130, 'Getachew Dana Has Transfered ETB 100 From Bank Account 019874 To Bank Account ', '2023-03-30 22:18:29.542995', NULL, 1, NULL),
(131, 'Getachew Dana Has Transfered ETB 400 From Bank Account 019874 To Bank Account ', '2023-03-30 22:19:02.992777', NULL, 1, NULL),
(132, 'Getachew Dana Has Transfered ETB 800 From Bank Account 019874 To Bank Account ', '2023-03-30 22:19:16.575237', NULL, 1, NULL),
(136, 'Getachew Dana Has Deposited ETB 100 To Bank Account 019874', '2023-03-31 00:07:40.271699', 'Deposit', 1, 'Getachew Dana'),
(137, 'Helen Fikadu Has Deposited ETB 100 To Bank Account 918743', '2023-03-31 00:12:29.246243', 'Deposit', 1, 'Helen Fikadu'),
(138, 'Helen Fikadu Has Deposited ETB 100 To Bank Account 918743', '2023-03-31 00:14:29.184162', 'Deposit', 1, 'Helen Fikadu'),
(139, 'Helen Fikadu Has Deposited ETB 100 To Bank Account 918743', '2023-03-31 00:17:07.721817', 'Deposit', 1, 'Helen Fikadu'),
(140, 'Helen Fikadu Has Deposited ETB 100 To Bank Account 918743', '2023-03-31 00:18:24.543011', 'Deposit', 1, 'Helen Fikadu'),
(141, 'Helen Fikadu Has Deposited ETB 100 To Bank Account 918743', '2023-03-31 00:24:17.345520', 'Deposit', 1, 'Helen Fikadu'),
(142, 'Zemed Has Deposited ETB 100 To Bank Account 827569', '2023-03-31 15:31:54.440988', 'Deposit', 1, 'Zemed'),
(143, 'Zemed Has Deposited ETB 100 To Bank Account 827569', '2023-03-31 15:32:31.003330', 'Deposit', 1, 'Zemed'),
(146, 'Getachew Dana Has Deposited ETB 100 To Bank Account 019874', '2023-04-03 00:50:45.837205', 'Deposit', 1, 'Getachew Dana'),
(147, 'Kebede Asfaw Has Deposited ETB 100 To Bank Account 185374', '2023-04-03 00:51:12.608737', 'Deposit', 1, 'Kebede Asfaw'),
(148, 'Ishetu Dawit Has Deposited ETB 1000 To Bank Account 905347', '2023-04-03 00:51:34.210583', 'Deposit', 1, 'Ishetu Dawit'),
(149, 'Medi Has Deposited ETB 400 To Bank Account 352761', '2023-04-03 00:52:02.803035', 'Deposit', 1, 'Medi'),
(150, 'Getachew Dana Has Deposited ETB 100 To Bank Account 019874', '2023-04-03 01:11:04.159983', 'Deposit', 1, 'Getachew Dana'),
(151, 'John Doe Has Deposited ETB 100 To Bank Account 538017', '2023-04-03 02:17:00.999140', 'Deposit', 1, 'John Doe'),
(152, 'Medi Has Deposited ETB 100 To Bank Account 805421', '2023-04-03 02:17:11.358992', 'Deposit', 1, 'Medi'),
(153, 'Medi Has Deposited ETB 100 To Bank Account 805421', '2023-04-03 02:17:14.527919', 'Deposit', 1, 'Medi'),
(154, 'Medi Has Deposited ETB 100 To Bank Account 805421', '2023-04-03 02:17:21.189199', 'Deposit', 1, 'Medi'),
(155, 'Eden Teshome Has Deposited ETB 100 To Bank Account 421365', '2023-04-03 02:17:35.258106', 'Deposit', 1, 'Eden Teshome'),
(156, 'Bexesha Basa Has Deposited ETB 100 To Bank Account 362087', '2023-04-03 02:17:43.883210', 'Deposit', 1, 'Bexesha Basa'),
(157, 'Bexesha Basa Has Deposited ETB 100 To Bank Account 362087', '2023-04-03 02:17:47.695799', 'Deposit', 1, 'Bexesha Basa'),
(158, 'Bexesha Basa Has Deposited ETB 100 To Bank Account 362087', '2023-04-03 02:17:50.710218', 'Deposit', 1, 'Bexesha Basa'),
(159, 'Dawit Mamo Has Deposited ETB 100 To Bank Account 694705', '2023-04-03 02:18:00.012405', 'Deposit', 1, 'Dawit Mamo'),
(160, 'Dawit Mamo Has Deposited ETB 100 To Bank Account 694705', '2023-04-03 02:18:02.491753', 'Deposit', 1, 'Dawit Mamo'),
(161, 'Dawit Mamo Has Deposited ETB 100 To Bank Account 694705', '2023-04-03 02:18:06.753216', 'Deposit', 1, 'Dawit Mamo'),
(162, 'Getachew Dana Has Deposited ETB 100 To Bank Account 019874', '2023-04-03 15:22:09.494182', 'Deposit', 1, 'Getachew Dana'),
(163, 'Getachew Dana Has Deposited ETB 100 To Bank Account 019874', '2023-04-03 15:23:39.566085', 'Deposit', 1, 'Getachew Dana'),
(164, 'Getachew Dana Has Deposited ETB 100 To Bank Account 019874', '2023-04-03 16:53:27.805167', 'Deposit', 1, 'Getachew Dana'),
(165, 'Ishetu Dawit Has Deposited ETB 100 To Bank Account 63172905', '2023-04-03 16:53:54.599168', 'Deposit', 1, 'Ishetu Dawit'),
(166, 'Ishetu Dawit Has Deposited ETB 100 To Bank Account 63172905', '2023-04-03 16:54:48.043462', 'Deposit', 1, 'Ishetu Dawit'),
(167, 'Ishetu Dawit Has Deposited ETB 100 To Bank Account 63172905', '2023-04-03 16:57:28.259367', 'Deposit', 1, 'Ishetu Dawit'),
(168, 'Getachew Dana Has Deposited ETB 5 To Bank Account 019874', '2023-04-03 17:00:18.074883', 'Deposit', 1, 'Getachew Dana'),
(169, 'Getachew Dana Has Deposited ETB 5 To Bank Account 019874', '2023-04-03 17:01:57.360507', 'Deposit', 1, 'Getachew Dana'),
(170, 'Getachew Dana Has Deposited ETB h To Bank Account 019874', '2023-04-03 17:03:50.869932', 'Deposit', 1, 'Getachew Dana'),
(171, 'Getachew Dana Has Deposited ETB g To Bank Account 019874', '2023-04-03 17:04:43.185242', 'Deposit', 1, 'Getachew Dana'),
(172, 'Getachew Dana Has Deposited ETB Ttt To Bank Account 019874', '2023-04-03 17:06:57.626250', 'Deposit', 1, 'Getachew Dana'),
(173, 'Getachew Dana Has Deposited ETB 100 To Bank Account 019874', '2023-04-03 17:15:32.194804', 'Deposit', 1, 'Getachew Dana'),
(174, 'Ishetu Dawit Has Deposited ETB 100 To Bank Account 63172905', '2023-04-03 17:16:00.773484', 'Deposit', 1, 'Ishetu Dawit'),
(175, 'Marta Zeleke Has Deposited ETB 100 To Bank Account 34275086', '2023-04-03 17:22:11.505780', 'Deposit', 1, 'Marta Zeleke'),
(176, 'Marta Zeleke Has Deposited ETB 100 To Bank Account 34275086', '2023-04-03 17:22:58.510666', 'Deposit', 1, 'Marta Zeleke'),
(177, 'Marta Zeleke Has Deposited ETB 100 To Bank Account 34275086', '2023-04-03 17:24:03.170076', 'Deposit', 1, 'Marta Zeleke'),
(178, 'Marta Zeleke Has Deposited ETB 100 To Bank Account 34275086', '2023-04-03 17:24:39.259867', 'Deposit', 1, 'Marta Zeleke'),
(179, 'Ishetu Dawit Has Deposited ETB 100 To Bank Account 63172905', '2023-04-03 17:24:53.240931', 'Deposit', 1, 'Ishetu Dawit'),
(180, 'Ishetu Dawit Has Deposited ETB 100 To Bank Account 63172905', '2023-04-03 17:27:00.436099', 'Deposit', 1, 'Ishetu Dawit'),
(181, 'Abebe Zeleke Has Deposited ETB 100 To Bank Account 51490387', '2023-04-03 17:27:19.771272', 'Deposit', 1, 'Abebe Zeleke'),
(182, 'Abebe Zeleke Has Deposited ETB 100 To Bank Account 51490387', '2023-04-03 17:27:48.144240', 'Deposit', 1, 'Abebe Zeleke'),
(183, 'Kidist Mulugeta Has Deposited ETB 100 To Bank Account 07526913', '2023-04-03 17:28:54.209019', 'Deposit', 1, 'Kidist Mulugeta'),
(184, 'Liya Gelaye Has Deposited ETB 100 To Bank Account 30429158', '2023-04-03 17:30:59.507821', 'Deposit', 1, 'Liya Gelaye'),
(185, 'Liya Gelaye Has Deposited ETB 100 To Bank Account 30429158', '2023-04-03 17:32:58.990613', 'Deposit', 1, 'Liya Gelaye'),
(186, 'Liya Gelaye Has Deposited ETB 100 To Bank Account 30429158', '2023-04-03 17:34:22.039269', 'Deposit', 1, 'Liya Gelaye'),
(187, 'Liya Gelaye Has Deposited ETB 100 To Bank Account 30429158', '2023-04-03 17:34:54.415355', 'Deposit', 1, 'Liya Gelaye'),
(188, 'Getachew Dana Has Deposited ETB 100 To Bank Account 019874', '2023-04-03 17:35:30.715900', 'Deposit', 1, 'Getachew Dana'),
(189, 'Aster Mamo Has Deposited ETB 100 To Bank Account 510834', '2023-04-03 17:39:10.464904', 'Deposit', 1, 'Aster Mamo'),
(190, 'Medihanit Has Deposited ETB 200 To Bank Account 67180294', '2023-04-03 17:58:48.249286', 'Deposit', 1, 'Medihanit'),
(191, 'Liya Gelaye Has Deposited ETB 200 To Bank Account 05698721', '2023-04-03 17:58:58.923486', 'Deposit', 1, 'Liya Gelaye'),
(192, 'Medihanit Has Deposited ETB 200 To Bank Account 67180294', '2023-04-03 17:59:13.936636', 'Deposit', 1, 'Medihanit');

-- --------------------------------------------------------

--
-- Table structure for table `ib_staff`
--

CREATE TABLE `ib_staff` (
  `staff_id` int(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `staff_number` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `sex` varchar(200) NOT NULL,
  `profile_pic` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ib_staff`
--

INSERT INTO `ib_staff` (`staff_id`, `name`, `staff_number`, `phone`, `email`, `password`, `sex`, `profile_pic`) VALUES
(3, 'Staff ', 'iBank-STAFF-6785', '0704975742', 'staff@ibanking.com', 'a69681bcf334ae130217fea4505fd3c994f5683f', 'Male', 'Orion.jpg'),
(4, 'Bini', 'iBank-STAFF-0349', '0970546464', 'bini@gmail.com', '10470c3b4b1fed12c3baac014be15fac67c6e815', 'Male', 'images (5).jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `ib_systemsettings`
--

CREATE TABLE `ib_systemsettings` (
  `id` int(20) NOT NULL,
  `sys_name` longtext NOT NULL,
  `sys_tagline` longtext NOT NULL,
  `sys_logo` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ib_systemsettings`
--

INSERT INTO `ib_systemsettings` (`id`, `sys_name`, `sys_tagline`, `sys_logo`) VALUES
(1, '??? ???? ???', '??? ??????', 'logo.png');

-- --------------------------------------------------------

--
-- Table structure for table `ib_transactions`
--

CREATE TABLE `ib_transactions` (
  `tr_id` int(20) NOT NULL,
  `tr_code` varchar(200) NOT NULL,
  `account_id` varchar(200) NOT NULL,
  `acc_name` varchar(200) NOT NULL,
  `account_number` varchar(200) NOT NULL,
  `acc_type` varchar(200) NOT NULL,
  `acc_amount` varchar(200) NOT NULL,
  `tr_type` varchar(200) NOT NULL,
  `tr_status` varchar(200) NOT NULL,
  `client_id` varchar(200) NOT NULL,
  `client_name` varchar(200) NOT NULL,
  `client_national_id` varchar(200) NOT NULL,
  `transaction_amt` varchar(200) NOT NULL,
  `client_phone` varchar(200) NOT NULL,
  `receiving_acc_no` varchar(200) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `receiving_acc_name` varchar(200) NOT NULL,
  `receiving_acc_holder` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ib_transactions`
--

INSERT INTO `ib_transactions` (`tr_id`, `tr_code`, `account_id`, `acc_name`, `account_number`, `acc_type`, `acc_amount`, `tr_type`, `tr_status`, `client_id`, `client_name`, `client_national_id`, `transaction_amt`, `client_phone`, `receiving_acc_no`, `created_at`, `receiving_acc_name`, `receiving_acc_holder`) VALUES
(110, 'ivTcYXl0n3', '66', 'D100D', '019874', '32 ', '', 'Deposit', 'Success ', '18', 'Getachew Dana', 'Sys667', '100', '0911898688', '', '2023-03-26 16:39:33.951019', '', ''),
(111, 'rgSYpKbvCz', '66', 'D100D', '019874', '32 ', '', 'Deposit', 'Success ', '18', 'Getachew Dana', 'Sys667', '100', '0911898688', '', '2023-03-26 16:51:34.453764', '', ''),
(112, 'HXDYZgz1sN', '79', 'D100D', '463852', '32 ', '', 'Deposit', 'Success ', '17', 'Akililu Abebe', 'ZE06', '100', '0968068388', '', '2023-03-26 16:55:46.593939', '', ''),
(113, '0pZANbM6Jq', '81', 'D100D', '827569', '32 ', '', 'Deposit', 'Success ', '16', 'Zemed', 'ZE06', '100', '913511330', '', '2023-03-26 16:55:59.834852', '', ''),
(114, '0sx8IBdg5k', '82', 'D100D', '918743', '32 ', '', 'Deposit', 'Success ', '15', 'Helen Fikadu', '23235', '100', '0968068388', '', '2023-03-26 16:56:31.462549', '', ''),
(115, 'Tk4pPsejFZ', '83', 'D100D', '538017', '32 ', '', 'Deposit', 'Success ', '3', 'John Doe', '36756481', '100', '9897890089', '', '2023-03-26 17:03:48.184852', '', ''),
(116, 'NF2OiLjBwR', '87', 'D100D', '805421', '32 ', '', 'Deposit', 'Success ', '6', 'Medi', '2255', '100', '0911898688', '', '2023-03-26 17:04:17.850512', '', ''),
(117, 'QKkze9SlFP', '90', 'D100D', '421365', '32 ', '', 'Deposit', 'Success ', '7', 'Eden Teshome', '2255', '100', '0968068388', '', '2023-03-26 17:04:27.439369', '', ''),
(118, 'tgChKuvesl', '90', 'D100D', '421365', '32 ', '', 'Deposit', 'Success ', '7', 'Eden Teshome', '2255', '100', '0968068388', '', '2023-03-26 17:04:30.290655', '', ''),
(119, 'i5P8b3x0Zg', '98', 'D100D', '185374', '32 ', '', 'Deposit', 'Success ', '20', 'Kebede Asfaw', 'Eth1234', '100', '09554664', '', '2023-03-26 17:04:59.894288', '', ''),
(120, 'M3h8iubp4L', '90', 'D100D', '421365', '32 ', '', 'Deposit', 'Success ', '7', 'Eden Teshome', '2255', '100', '0968068388', '', '2023-03-26 17:06:23.397165', '', ''),
(122, '3MaTWoBOgG', '81', 'D100D', '827569', '32 ', '', 'Deposit', 'Success ', '16', 'Zemed', 'ZE06', '100', '913511330', '', '2023-03-27 14:57:43.505661', '', ''),
(123, 'Z5IoQ8EFNv', '100', 'Hulum yiketelugn', '289476', '41 ', '', 'Deposit', 'Success ', '22', 'Melat  biruk', 'Dredfq', '1000', '0930773984', '', '2023-03-27 15:37:54.166886', '', ''),
(124, 'VlO52H0MXD', '101', 'Hulum', '537819', '32 ', '', 'Deposit', 'Success ', '22', 'Melat  biruk', 'Dredfq', '100', '0930773984', '', '2023-03-27 15:40:14.207975', '', ''),
(125, '4cKQJWvojR', '86', 'D2500D', '693180', '39 ', '', 'Deposit', 'Success ', '5', 'Meron', '2255', '2500', '0968068388', '', '2023-03-27 20:24:29.100221', '', ''),
(126, 'w4FOP35WYk', '73', 'D200D', '694718', '33 ', '', 'Deposit', 'Success ', '18', 'Getachew Dana', 'Sys667', '200', '0911898688', '', '2023-03-28 01:27:06.802202', '', ''),
(127, 'mEUO9dqFig', '73', 'D200D', '694718', '33 ', '', 'Deposit', 'Success ', '18', 'Getachew Dana', 'Sys667', '200', '0911898688', '', '2023-03-28 01:27:09.707230', '', ''),
(128, 'XjWk1ZFDoI', '85', 'D2500D', '769085', '39 ', '', 'Deposit', 'Success ', '6', 'Medi', '2255', '2500', '0911898688', '', '2023-03-28 17:51:42.513482', '', ''),
(139, 'A1PBC8q0ZY', '82', 'D100D', '918743', '32 ', '', 'Deposit', 'Success ', '15', 'Helen Fikadu', '23235', '100', '0968068388', '', '2023-03-31 00:17:07.721651', '', ''),
(138, '6rxmeaTgQf', '82', 'D100D', '918743', '32 ', '', 'Deposit', 'Success ', '15', 'Helen Fikadu', '23235', '100', '0968068388', '', '2023-03-31 00:14:29.183863', '', ''),
(137, 'HkVyqxlE1g', '82', 'D100D', '918743', '32 ', '', 'Deposit', 'Success ', '15', 'Helen Fikadu', '23235', '100', '0968068388', '', '2023-03-31 00:12:29.229939', '', ''),
(136, 'f8BjWzExLD', '66', 'D100D', '019874', '32 ', '', 'Deposit', 'Success ', '18', 'Getachew Dana', 'Sys667', '100', '0911898688', '', '2023-03-31 00:07:40.271507', '', ''),
(133, 'i8NuJzVhwW', '79', 'D100D', '463852', '32 ', '', 'Deposit', 'Success ', '17', 'Akililu Abebe', 'ZE06', '100', '0968068388', '', '2023-03-31 00:00:19.588979', '', ''),
(134, '0xFLzvWGMT', '79', 'D100D', '463852', '32 ', '', 'Deposit', 'Success ', '17', 'Akililu Abebe', 'ZE06', '100', '0968068388', '', '2023-03-31 00:00:51.009748', '', ''),
(135, 'Lmjv17bn25', '84', 'D2500D', '750324', '39 ', '', 'Deposit', 'Success ', '3', 'John Doe', '36756481', '2500', '9897890089', '', '2023-03-31 00:02:21.120175', '', ''),
(140, 'YXgCQIspTO', '82', 'D100D', '918743', '32 ', '', 'Deposit', 'Success ', '15', 'Helen Fikadu', '23235', '100', '0968068388', '', '2023-03-31 00:18:24.542573', '', ''),
(141, 'xLhbXyB5fm', '82', 'D100D', '918743', '32 ', '', 'Deposit', 'Success ', '15', 'Helen Fikadu', '23235', '100', '0968068388', '', '2023-03-31 00:24:17.345353', '', ''),
(142, '8vVsqDhJHf', '81', 'D100D', '827569', '32 ', '', 'Deposit', 'Success ', '16', 'Zemed', 'ZE06', '100', '913511330', '', '2023-03-31 15:31:54.440498', '', ''),
(143, 'OlCWnyXtbZ', '81', 'D100D', '827569', '32 ', '', 'Deposit', 'Success ', '16', 'Zemed', 'ZE06', '100', '913511330', '', '2023-03-31 15:32:31.002966', '', ''),
(144, 'hn94sKmwIX', '66', 'D100D', '019874', '32 ', '', 'Deposit', 'Success ', '18', 'Getachew Dana', 'Sys667', '100', '0911898688', '', '2023-04-03 00:50:45.819282', '', ''),
(145, 'qERspMhkf9', '98', 'D100D', '185374', '32 ', '', 'Deposit', 'Success ', '20', 'Kebede Asfaw', 'Eth1234', '100', '09554664', '', '2023-04-03 00:51:12.608464', '', ''),
(146, '9LX0oMJaNv', '110', 'TATI', '905347', '41 ', '', 'Deposit', 'Success ', '24', 'Ishetu Dawit', '9878', '1000', '0914456525', '', '2023-04-03 00:51:34.210244', '', ''),
(147, 'yVIpYnsNDi', '89', 'D400D', '352761', '34 ', '', 'Deposit', 'Success ', '6', 'Medi', '2255', '400', '0911898688', '', '2023-04-03 00:52:02.802685', '', ''),
(148, 'vfmkobrtaN', '66', 'D100D', '019874', '32 ', '', 'Deposit', 'Success ', '18', 'Getachew Dana', 'Sys667', '100', '0911898688', '', '2023-04-03 01:11:04.159635', '', ''),
(149, 'kSUaXLO6lj', '83', 'D100D', '538017', '32 ', '', 'Deposit', 'Success ', '3', 'John Doe', '36756481', '100', '9897890089', '', '2023-04-03 02:17:00.998953', '', ''),
(150, 'tZrVOlHp9m', '87', 'D100D', '805421', '32 ', '', 'Deposit', 'Success ', '6', 'Medi', '2255', '100', '0911898688', '', '2023-04-03 02:17:11.358322', '', ''),
(151, 'MAI7VXzCeu', '87', 'D100D', '805421', '32 ', '', 'Deposit', 'Success ', '6', 'Medi', '2255', '100', '0911898688', '', '2023-04-03 02:17:14.527641', '', ''),
(152, '5GayxskIdA', '87', 'D100D', '805421', '32 ', '', 'Deposit', 'Success ', '6', 'Medi', '2255', '100', '0911898688', '', '2023-04-03 02:17:21.188886', '', ''),
(153, 'EmF3LRyu6k', '90', 'D100D', '421365', '32 ', '', 'Deposit', 'Success ', '7', 'Eden Teshome', '2255', '100', '0968068388', '', '2023-04-03 02:17:35.257709', '', ''),
(154, 'Jekz5iq2vc', '91', 'D100D', '362087', '32 ', '', 'Deposit', 'Success ', '8', 'Bexesha Basa', '2342', '100', '0968068388', '', '2023-04-03 02:17:43.882839', '', ''),
(155, 'hb0I7N21HM', '91', 'D100D', '362087', '32 ', '', 'Deposit', 'Success ', '8', 'Bexesha Basa', '2342', '100', '0968068388', '', '2023-04-03 02:17:47.695327', '', ''),
(156, 'M98bR6yIij', '91', 'D100D', '362087', '32 ', '', 'Deposit', 'Success ', '8', 'Bexesha Basa', '2342', '100', '0968068388', '', '2023-04-03 02:17:50.709936', '', ''),
(157, 'DEqzeS4vmX', '93', 'D100D', '694705', '32 ', '', 'Deposit', 'Success ', '13', 'Dawit Mamo', '9176', '100', '0984321595', '', '2023-04-03 02:18:00.011985', '', ''),
(158, '2fib0tIE7P', '93', 'D100D', '694705', '32 ', '', 'Deposit', 'Success ', '13', 'Dawit Mamo', '9176', '100', '0984321595', '', '2023-04-03 02:18:02.491340', '', ''),
(159, '3SuFikMGAp', '93', 'D100D', '694705', '32 ', '', 'Deposit', 'Success ', '13', 'Dawit Mamo', '9176', '100', '0984321595', '', '2023-04-03 02:18:06.752617', '', ''),
(160, 'KPSRtJAxgY', '66', 'D100D', '019874', '32 ', '', 'Deposit', 'Success ', '18', 'Getachew Dana', 'Sys667', '100', '0911898688', '', '2023-04-03 15:22:09.475604', '', ''),
(161, 'epoZE8dXx7', '66', 'D100D', '019874', '32 ', '', 'Deposit', 'Success ', '18', 'Getachew Dana', 'Sys667', '100', '0911898688', '', '2023-04-03 15:23:39.565862', '', ''),
(162, 'GnEdYQihjN', '66', 'D100D', '019874', '32 ', '', 'Deposit', 'Success ', '18', 'Getachew Dana', 'Sys667', 'Ttt', '0911898688', '', '2023-04-03 17:06:57.625861', '', ''),
(163, 'QFqHaKsBnr', '66', 'D100D', '019874', '32 ', '', 'Deposit', 'Success ', '18', 'Getachew Dana', 'Sys667', '100', '0911898688', '', '2023-04-03 17:15:32.194520', '', ''),
(164, 'QKpxNeS1Hi', '129', 'Ishetu Dawit- 100', '63172905', '32 ', '', 'Deposit', 'Success ', '24', 'Ishetu Dawit', '9878', '100', '0914456525', '', '2023-04-03 17:16:00.773093', '', ''),
(165, 'bOxjYwmslc', '123', '2', '34275086', '32 ', '', 'Deposit', 'Success ', '26', 'Marta Zeleke', 'E978', '100', '09745462', '', '2023-04-03 17:22:11.505578', '', ''),
(166, 'bOxjYwmslc', '123', '2', '34275086', '32 ', '', 'Deposit', 'Success ', '26', 'Marta Zeleke', 'E978', '100', '09745462', '', '2023-04-03 17:22:58.510477', '', ''),
(167, 'bOxjYwmslc', '123', '2', '34275086', '32 ', '', 'Deposit', 'Success ', '26', 'Marta Zeleke', 'E978', '100', '09745462', '', '2023-04-03 17:24:03.169846', '', ''),
(169, 'uQdfbP2FKO', '129', 'Ishetu Dawit- 100', '63172905', '32 ', '', 'Deposit', 'Success ', '24', 'Ishetu Dawit', '9878', '100', '0914456525', '', '2023-04-03 17:24:53.240664', '', ''),
(170, 'uQdfbP2FKO', '129', 'Ishetu Dawit- 100', '63172905', '32 ', '', 'Deposit', 'Success ', '24', 'Ishetu Dawit', '9878', '100', '0914456525', '', '2023-04-03 17:27:00.435772', '', ''),
(171, 'RqlyvX0KtS', '124', 's', '51490387', '32 ', '', 'Deposit', 'Success ', '25', 'Abebe Zeleke', '9879', '100', '09858995', '', '2023-04-03 17:27:19.770729', '', ''),
(172, 'quC0VbFs8g', '124', 's', '51490387', '32 ', '', 'Deposit', 'Success ', '25', 'Abebe Zeleke', '9879', '100', '09858995', '', '2023-04-03 17:27:48.143875', '', ''),
(173, 'Kas812xtCh', '122', 'G', '07526913', '32 ', '', 'Deposit', 'Success ', '27', 'Kidist Mulugeta', '0976', '100', '09585654', '', '2023-04-03 17:28:54.208742', '', ''),
(174, 'nPAMv41Jw6', '118', 'b', '30429158', '32 ', '', 'Deposit', 'Success ', '28', 'Liya Gelaye', '08779', '100', '09854521', '', '2023-04-03 17:30:59.507457', '', ''),
(175, 'nPAMv41Jw6', '118', 'b', '30429158', '32 ', '', 'Deposit', 'Success ', '28', 'Liya Gelaye', '08779', '100', '09854521', '', '2023-04-03 17:32:58.990403', '', ''),
(176, 'nPAMv41Jw6', '118', 'b', '30429158', '32 ', '', 'Deposit', 'Success ', '28', 'Liya Gelaye', '08779', '100', '09854521', '', '2023-04-03 17:34:22.022511', '', ''),
(177, 'nPAMv41Jw6', '118', 'b', '30429158', '32 ', '', 'Deposit', 'Success ', '28', 'Liya Gelaye', '08779', '100', '09854521', '', '2023-04-03 17:34:54.414564', '', ''),
(181, 'ekH4qU2mns', '127', 'Liya Gelaye- 200', '05698721', '33 ', '', 'Deposit', 'Success ', '28', 'Liya Gelaye', '08779', '200', '09854521', '', '2023-04-03 17:58:58.922949', '', ''),
(180, 'erMOEQ95XI', '128', 'Medihanit- 200', '67180294', '33 ', '', 'Deposit', 'Success ', '9', 'Medihanit', '23235', '200', '0911898688', '', '2023-04-03 17:58:48.249037', '', ''),
(182, 'UiOcIBTY3g', '128', 'Medihanit- 200', '67180294', '33 ', '', 'Deposit', 'Success ', '9', 'Medihanit', '23235', '200', '0911898688', '', '2023-04-03 17:59:13.936108', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `account_number` int(11) NOT NULL,
  `acc_type` int(11) NOT NULL,
  `round` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0=request, 1=confirmed, 2=released, 3=completed, 4=denied',
  `payee` text,
  `pay_amount` float NOT NULL,
  `penalty` float DEFAULT NULL,
  `overdue` tinyint(1) NOT NULL COMMENT '0=no, 1=yes',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `client_id`, `account_number`, `acc_type`, `round`, `status`, `payee`, `pay_amount`, `penalty`, `overdue`, `date_created`) VALUES
(1, 12, 987654, 32, 1, 2, '3? ??', 5000, 0, 0, '2023-03-29 00:00:26'),
(2, 12, 987654, 32, 1, 2, '3? ??', 5000, 0, 0, '2023-03-29 00:00:54'),
(3, 12, 987654, 32, 1, 2, '3? ??', 5000, 0, 0, '2023-03-29 00:01:05');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `code`, `name`) VALUES
(2, '6231415', 'Mark Cooper'),
(4, 'WUB93NWW8FG', 'Colton Parsons'),
(5, 'QEJ41PMK1PX', 'Cara Lynn'),
(6, 'SSB06QKY5VF', 'Cameron Black'),
(7, 'URE38IYJ2MT', 'Charissa Anderson'),
(9, 'LSF46XXX8HK', 'Angela Vinson'),
(10, 'SSN55RSP2DH', 'Acton Rosales'),
(11, 'NSI93DGR7TL', 'Harding Russo'),
(12, 'CXO32TMQ5PG', 'Norman Lewis'),
(13, 'MTK93IJJ8ZL', 'Jolie Rodriquez'),
(14, 'RRK60JER7LV', 'Joel Mercer'),
(15, 'FPY19DMI5BL', 'Ariel Jacobson'),
(16, 'EWI37NKV7TS', 'Jonah Jarvis'),
(17, 'CNN41HOV6WE', 'Macaulay Byrd'),
(18, 'KAA41ZHZ1MD', 'Marah Knowles'),
(19, '00', 'Mulledesta');

-- --------------------------------------------------------

--
-- Table structure for table `winners`
--

CREATE TABLE `winners` (
  `id` int(11) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `draw` int(10) NOT NULL,
  `acc_type` int(10) NOT NULL,
  `client_id` int(11) NOT NULL,
  `client_name` varchar(100) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `count`
--
ALTER TABLE `count`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ekub`
--
ALTER TABLE `ekub`
  ADD PRIMARY KEY (`EkubID`);

--
-- Indexes for table `ekubdetails`
--
ALTER TABLE `ekubdetails`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `TypeID` (`TypeID`);

--
-- Indexes for table `ekub_transactions`
--
ALTER TABLE `ekub_transactions`
  ADD PRIMARY KEY (`tr_id`);

--
-- Indexes for table `ib_acc_types`
--
ALTER TABLE `ib_acc_types`
  ADD PRIMARY KEY (`acctype_id`);

--
-- Indexes for table `ib_admin`
--
ALTER TABLE `ib_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `ib_bankaccounts`
--
ALTER TABLE `ib_bankaccounts`
  ADD PRIMARY KEY (`account_id`);

--
-- Indexes for table `ib_clients`
--
ALTER TABLE `ib_clients`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `ib_ekubaccounts`
--
ALTER TABLE `ib_ekubaccounts`
  ADD PRIMARY KEY (`account_id`),
  ADD UNIQUE KEY `acc_type` (`acc_type`,`client_id`);

--
-- Indexes for table `ib_ekub_types`
--
ALTER TABLE `ib_ekub_types`
  ADD PRIMARY KEY (`ekubtype_id`);

--
-- Indexes for table `ib_notifications`
--
ALTER TABLE `ib_notifications`
  ADD PRIMARY KEY (`notification_id`);

--
-- Indexes for table `ib_staff`
--
ALTER TABLE `ib_staff`
  ADD PRIMARY KEY (`staff_id`);

--
-- Indexes for table `ib_systemsettings`
--
ALTER TABLE `ib_systemsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ib_transactions`
--
ALTER TABLE `ib_transactions`
  ADD PRIMARY KEY (`tr_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `winners`
--
ALTER TABLE `winners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticket_id_fk` (`ticket_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `count`
--
ALTER TABLE `count`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ekubdetails`
--
ALTER TABLE `ekubdetails`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `ekub_transactions`
--
ALTER TABLE `ekub_transactions`
  MODIFY `tr_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `ib_acc_types`
--
ALTER TABLE `ib_acc_types`
  MODIFY `acctype_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ib_admin`
--
ALTER TABLE `ib_admin`
  MODIFY `admin_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ib_bankaccounts`
--
ALTER TABLE `ib_bankaccounts`
  MODIFY `account_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `ib_clients`
--
ALTER TABLE `ib_clients`
  MODIFY `client_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `ib_ekubaccounts`
--
ALTER TABLE `ib_ekubaccounts`
  MODIFY `account_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT for table `ib_ekub_types`
--
ALTER TABLE `ib_ekub_types`
  MODIFY `ekubtype_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `ib_notifications`
--
ALTER TABLE `ib_notifications`
  MODIFY `notification_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;

--
-- AUTO_INCREMENT for table `ib_staff`
--
ALTER TABLE `ib_staff`
  MODIFY `staff_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ib_systemsettings`
--
ALTER TABLE `ib_systemsettings`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ib_transactions`
--
ALTER TABLE `ib_transactions`
  MODIFY `tr_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `winners`
--
ALTER TABLE `winners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
