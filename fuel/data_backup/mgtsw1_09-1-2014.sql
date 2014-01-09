-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 09, 2014 at 12:49 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mgtsw1`
--
CREATE DATABASE IF NOT EXISTS `mgtsw1` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `mgtsw1`;

-- --------------------------------------------------------

--
-- Table structure for table `customer_shipping_out`
--

CREATE TABLE IF NOT EXISTS `customer_shipping_out` (
  `customer_name` varchar(45) NOT NULL,
  `po_pro_ref` text NOT NULL,
  `item_description` text NOT NULL,
  `quantity` int(11) NOT NULL,
  `order_delivary` text NOT NULL,
  `notes` text NOT NULL,
  `pro_form_attached_files` int(11) NOT NULL,
  `documents_copies` int(11) NOT NULL,
  `original_document` int(11) NOT NULL,
  `air_booking` int(11) NOT NULL,
  `courier` text NOT NULL,
  `note_cnform_goods` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nrb_order_shipping_outs`
--

CREATE TABLE IF NOT EXISTS `nrb_order_shipping_outs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(45) NOT NULL,
  `po_pro_ref` text NOT NULL,
  `item_description` text NOT NULL,
  `quantity` int(11) NOT NULL,
  `order_delivary` text NOT NULL,
  `notes` text NOT NULL,
  `pro_form_attached_files` int(11) NOT NULL,
  `documents_copies` int(11) NOT NULL,
  `original_document` int(11) NOT NULL,
  `air_booking` int(11) NOT NULL,
  `courier` text NOT NULL,
  `note_cnform_goods` text NOT NULL,
  `is_active` enum('yes','no') NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `nrb_order_shipping_outs`
--

INSERT INTO `nrb_order_shipping_outs` (`id`, `customer_name`, `po_pro_ref`, `item_description`, `quantity`, `order_delivary`, `notes`, `pro_form_attached_files`, `documents_copies`, `original_document`, `air_booking`, `courier`, `note_cnform_goods`, `is_active`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(2, 'fsfsf', 'eaweq', 'asda', 23, 'adsdas', 'dasd', 0, 0, 0, 0, '2b54e70c3c2382ff7698ad8630b60c53.jpg', '', 'yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(3, 'ew', 'ewew', 'wew', 2, 'eww', 'csxf', 0, 0, 0, 0, '35aff4a247176c0e23f4247b19ea3349.png', '', 'yes', '2014-01-09 04:39:05', '2014-01-09 04:39:05', 1, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
