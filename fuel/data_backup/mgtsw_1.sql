-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 09, 2014 at 09:15 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mgtsw`
--
CREATE DATABASE IF NOT EXISTS `mgtsw` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `mgtsw`;

-- --------------------------------------------------------

--
-- Table structure for table `fuel_archives`
--

CREATE TABLE IF NOT EXISTS `fuel_archives` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ref_id` int(10) unsigned NOT NULL,
  `table_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci NOT NULL,
  `version` smallint(5) unsigned NOT NULL,
  `version_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `archived_user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `fuel_archives`
--

INSERT INTO `fuel_archives` (`id`, `ref_id`, `table_name`, `data`, `version`, `version_timestamp`, `archived_user_id`) VALUES
(1, 1, 'fuel_pages', '{"id":1,"location":"home","layout":"main","published":"yes","cache":"yes","date_added":"2014-01-08 02:35:27","last_modified":"2014-01-08 02:35:27","last_modified_by":"","variables":[{"id":"5","page_id":"1","name":"body","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"main","location":"home","page_published":"yes"},{"id":"6","page_id":"1","name":"body_class","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"main","location":"home","page_published":"yes"},{"id":"4","page_id":"1","name":"heading","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"main","location":"home","page_published":"yes"},{"id":"2","page_id":"1","name":"meta_description","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"main","location":"home","page_published":"yes"},{"id":"3","page_id":"1","name":"meta_keywords","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"main","location":"home","page_published":"yes"},{"id":"1","page_id":"1","name":"page_title","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"main","location":"home","page_published":"yes"}]}', 1, '2014-01-08 10:35:27', 1),
(2, 1, 'fuel_pages', '{"id":"1","location":"home","layout":"MGTSW","published":"yes","cache":"yes","date_added":"2014-01-08 02:35:27","last_modified":"2014-01-08 02:35:44","last_modified_by":"1","variables":[{"id":"11","page_id":"1","name":"body","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"MGTSW","location":"home","page_published":"yes"},{"id":"12","page_id":"1","name":"body_class","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"MGTSW","location":"home","page_published":"yes"},{"id":"10","page_id":"1","name":"heading","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"MGTSW","location":"home","page_published":"yes"},{"id":"8","page_id":"1","name":"meta_description","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"MGTSW","location":"home","page_published":"yes"},{"id":"9","page_id":"1","name":"meta_keywords","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"MGTSW","location":"home","page_published":"yes"},{"id":"7","page_id":"1","name":"page_title","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"MGTSW","location":"home","page_published":"yes"}]}', 2, '2014-01-08 10:35:44', 1);

-- --------------------------------------------------------

--
-- Table structure for table `fuel_blocks`
--

CREATE TABLE IF NOT EXISTS `fuel_blocks` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `view` text COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'english',
  `published` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  `date_added` datetime DEFAULT NULL,
  `last_modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`,`language`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fuel_categories`
--

CREATE TABLE IF NOT EXISTS `fuel_categories` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `slug` varchar(100) NOT NULL DEFAULT '',
  `context` varchar(100) NOT NULL DEFAULT '',
  `precedence` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `published` enum('yes','no') NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fuel_logs`
--

CREATE TABLE IF NOT EXISTS `fuel_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_date` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `fuel_logs`
--

INSERT INTO `fuel_logs` (`id`, `entry_date`, `user_id`, `message`, `type`) VALUES
(1, '2014-01-08 02:14:43', 1, 'Successful login by ''admin'' from 127.0.0.1', 'debug'),
(2, '2014-01-08 02:35:44', 1, 'Pages item <em>home</em> edited', 'info'),
(3, '2014-01-08 04:34:17', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(4, '2014-01-08 23:27:43', 1, 'Successful login by ''admin'' from ::1', 'debug');

-- --------------------------------------------------------

--
-- Table structure for table `fuel_navigation`
--

CREATE TABLE IF NOT EXISTS `fuel_navigation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'The part of the path after the domain name that you want the link to go to (e.g. comany/about_us)',
  `group_id` int(5) unsigned NOT NULL DEFAULT '1',
  `nav_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'The nav key is a friendly ID that you can use for setting the selected state. If left blank, a default value will be set for you.',
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'The name you want to appear in the menu',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Used for creating menu hierarchies. No value means it is a root level menu item',
  `precedence` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The higher the number, the greater the precedence and farther up the list the navigational element will appear',
  `attributes` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Extra attributes that can be used for navigation implementation',
  `selected` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'The pattern to match for the active state. Most likely you leave this field blank',
  `hidden` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no' COMMENT 'A hidden value can be used in rendering the menu. In some areas, the menu item may not want to be displayed',
  `language` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'english',
  `published` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes' COMMENT 'Determines whether the item is displayed or not',
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`location`,`parent_id`,`language`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fuel_navigation_groups`
--

CREATE TABLE IF NOT EXISTS `fuel_navigation_groups` (
  `id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `published` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `fuel_navigation_groups`
--

INSERT INTO `fuel_navigation_groups` (`id`, `name`, `published`) VALUES
(1, 'main', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `fuel_pages`
--

CREATE TABLE IF NOT EXISTS `fuel_pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Add the part of the url after the root of your site (usually after the domain name). For the homepage, just put the word ''home''',
  `layout` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'The name of the template to associate with this page',
  `published` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes' COMMENT 'A ''yes'' value will display the page and an ''no'' value will give a 404 error message',
  `cache` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes' COMMENT 'Cache controls whether the page will pull from the database or from a saved file which is more effeicent. If a page has content that is dynamic, it''s best to set cache to ''no''',
  `date_added` datetime DEFAULT NULL,
  `last_modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_modified_by` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `location` (`location`),
  KEY `layout` (`layout`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `fuel_pages`
--

INSERT INTO `fuel_pages` (`id`, `location`, `layout`, `published`, `cache`, `date_added`, `last_modified`, `last_modified_by`) VALUES
(1, 'home', 'MGTSW', 'yes', 'yes', '2014-01-08 02:35:27', '2014-01-07 20:35:44', 1);

-- --------------------------------------------------------

--
-- Table structure for table `fuel_page_variables`
--

CREATE TABLE IF NOT EXISTS `fuel_page_variables` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_id` int(10) unsigned NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `scope` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('string','int','boolean','array') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'string',
  `language` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'english',
  `active` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  UNIQUE KEY `page_id` (`page_id`,`name`,`language`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13 ;

--
-- Dumping data for table `fuel_page_variables`
--

INSERT INTO `fuel_page_variables` (`id`, `page_id`, `name`, `scope`, `value`, `type`, `language`, `active`) VALUES
(11, 1, 'body', '', '', 'string', 'english', 'yes'),
(10, 1, 'heading', '', '', 'string', 'english', 'yes'),
(9, 1, 'meta_keywords', '', '', 'string', 'english', 'yes'),
(8, 1, 'meta_description', '', '', 'string', 'english', 'yes'),
(7, 1, 'page_title', '', '', 'string', 'english', 'yes'),
(12, 1, 'body_class', '', '', 'string', 'english', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `fuel_permissions`
--

CREATE TABLE IF NOT EXISTS `fuel_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'In most cases, this should be the name of the module (e.g. news)',
  `active` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=36 ;

--
-- Dumping data for table `fuel_permissions`
--

INSERT INTO `fuel_permissions` (`id`, `description`, `name`, `active`) VALUES
(1, 'Pages', 'pages', 'yes'),
(2, 'Pages: Create', 'pages/create', 'yes'),
(3, 'Pages: Edit', 'pages/edit', 'yes'),
(4, 'Pages: Publish', 'pages/publish', 'yes'),
(5, 'Pages: Delete', 'pages/delete', 'yes'),
(6, 'Blocks', 'blocks', 'yes'),
(7, 'Blocks: Create', 'blocks/create', 'yes'),
(8, 'Blocks: Edit', 'blocks/edit', 'yes'),
(9, 'Blocks: Publish', 'blocks/publish', 'yes'),
(10, 'Blocks: Delete', 'blocks/delete', 'yes'),
(11, 'Navigation', 'navigation', 'yes'),
(12, 'Navigation: Create', 'navigation/create', 'yes'),
(13, 'Navigation: Edit', 'navigation/edit', 'yes'),
(14, 'Navigation: Publish', 'navigation/publish', 'yes'),
(15, 'Navigation: Delete', 'navigation/delete', 'yes'),
(16, 'Categories', 'categories', 'yes'),
(17, 'Categories: Create', 'categories/create', 'yes'),
(18, 'Categories: Edit', 'categories/edit', 'yes'),
(19, 'Categories: Publish', 'categories/publish', 'yes'),
(20, 'Categories: Delete', 'categories/delete', 'yes'),
(21, 'Tags', 'tags', 'yes'),
(22, 'Tags: Create', 'tags/create', 'yes'),
(23, 'Tags: Edit', 'tags/edit', 'yes'),
(24, 'Tags: Publish', 'tags/publish', 'yes'),
(25, 'Tags: Delete', 'tags/delete', 'yes'),
(26, 'Site Variables', 'sitevariables', 'yes'),
(27, 'Assets', 'assets', 'yes'),
(28, 'Site Documentation', 'site_docs', 'yes'),
(29, 'Users', 'users', 'yes'),
(30, 'Permissions', 'permissions', 'yes'),
(31, 'Manage', 'manage', 'yes'),
(32, 'Cache', 'manage/cache', 'yes'),
(33, 'Logs', 'logs', 'yes'),
(34, 'Settings', 'settings', 'yes'),
(35, 'Generate Code', 'generate', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `fuel_relationships`
--

CREATE TABLE IF NOT EXISTS `fuel_relationships` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `candidate_table` varchar(100) COLLATE utf8_unicode_ci DEFAULT '',
  `candidate_key` int(11) NOT NULL,
  `foreign_table` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `foreign_key` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `candidate_table` (`candidate_table`,`candidate_key`),
  KEY `foreign_table` (`foreign_table`,`foreign_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fuel_settings`
--

CREATE TABLE IF NOT EXISTS `fuel_settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `module` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `key` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `module` (`module`,`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fuel_site_variables`
--

CREATE TABLE IF NOT EXISTS `fuel_site_variables` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `scope` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'leave blank if you want the variable to be available to all pages',
  `active` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fuel_tags`
--

CREATE TABLE IF NOT EXISTS `fuel_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `precedence` int(11) NOT NULL,
  `published` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fuel_users`
--

CREATE TABLE IF NOT EXISTS `fuel_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `reset_key` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `salt` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `super_admin` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `active` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `fuel_users`
--

INSERT INTO `fuel_users` (`id`, `user_name`, `password`, `email`, `first_name`, `last_name`, `language`, `reset_key`, `salt`, `super_admin`, `active`) VALUES
(1, 'admin', '7877bd753a4b0345ad03faae19c392c003967b73', 'info@getfuelcms.com', 'Admin', 'test', 'english', '', '0a6fb1aef153e4cd1f37e827c4ba67bd', 'yes', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `nrb_categories`
--

CREATE TABLE IF NOT EXISTS `nrb_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `nrb_categories`
--

INSERT INTO `nrb_categories` (`id`, `name`, `is_active`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 'milon', 1, '2014-01-08 02:23:28', '2014-01-08 02:23:28', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nrb_customer_enquiries`
--

CREATE TABLE IF NOT EXISTS `nrb_customer_enquiries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `nrb_customer_orders`
--

CREATE TABLE IF NOT EXISTS `nrb_customer_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `item_description` text NOT NULL,
  `quantity` float NOT NULL,
  `material_composition` text NOT NULL,
  `material_weight` float NOT NULL,
  `customization` text NOT NULL,
  `messurment_chat` text NOT NULL,
  `item_picture` varchar(255) NOT NULL,
  `technical_files` varchar(255) NOT NULL,
  `logo_files` varchar(255) NOT NULL,
  `notes` text NOT NULL,
  `price` double NOT NULL,
  `po_proforma_file` varchar(255) NOT NULL,
  `further_customer_file` varchar(255) NOT NULL,
  `link_production` varchar(255) NOT NULL,
  `lab_dip_delivery_term` text NOT NULL,
  `pp_sample_delivery_term` text NOT NULL,
  `tracking_number` varchar(255) NOT NULL,
  `office_update_parcel_receipt` text NOT NULL,
  `customer_update_parcel_receipt` text NOT NULL,
  `shipping_agent` text NOT NULL,
  `payment_update_file` text NOT NULL,
  `is_active` enum('yes','no') NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `nrb_customer_orders`
--

INSERT INTO `nrb_customer_orders` (`id`, `customer_name`, `category_id`, `item_description`, `quantity`, `material_composition`, `material_weight`, `customization`, `messurment_chat`, `item_picture`, `technical_files`, `logo_files`, `notes`, `price`, `po_proforma_file`, `further_customer_file`, `link_production`, `lab_dip_delivery_term`, `pp_sample_delivery_term`, `tracking_number`, `office_update_parcel_receipt`, `customer_update_parcel_receipt`, `shipping_agent`, `payment_update_file`, `is_active`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 'Customer Name', 0, 'Item Description', 121, 'Material Composition', 0, 'Customization*', 'Messurment Chat', 'b0bb429f9795f01570d07cac65f51c1e.jpg', 'a8298809f0b84cc3fa4ac07034d8201e.jpg', '0575c8e7beed13aadbe71fcea8ea9063.jpg', 'Notes', 10, '140db303f374aaf2cfb849ef50752533.jpg', 'a885883652e73afd2a90684da3877a0a.jpg', 'Production Monitoring System ', 'Lab-Dip Delivery Term*', 'PP Sample Delivery Term ', 'Customer Tracking no. & Courier & Pictures', 'ffice Update', 'Customer''s Details Update ', 'Shipping Agent', 'Payment Update*', 'yes', '2014-01-08 02:51:48', '2014-01-08 02:51:48', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nrb_local_companies`
--

CREATE TABLE IF NOT EXISTS `nrb_local_companies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `is_active` enum('yes','no') NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `nrb_order_shipping_outs`
--

CREATE TABLE IF NOT EXISTS `nrb_order_shipping_outs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `is_active` enum('yes','no') NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `nrb_po_factories`
--

CREATE TABLE IF NOT EXISTS `nrb_po_factories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_number` int(11) NOT NULL,
  `customer_code` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `item_description` text NOT NULL,
  `quantity` float NOT NULL,
  `material_composition` text NOT NULL,
  `material_weight` float NOT NULL,
  `customization` text NOT NULL,
  `messurment_chat` text NOT NULL,
  `item_picture` varchar(255) NOT NULL,
  `technical_files` varchar(255) NOT NULL,
  `logo_files` varchar(255) NOT NULL,
  `notes` text NOT NULL,
  `price` double NOT NULL,
  `po_proforma_file` varchar(255) NOT NULL,
  `further_customer_file` varchar(255) NOT NULL,
  `link_production` varchar(255) NOT NULL,
  `lab_dip_delivery_term` text NOT NULL,
  `pp_sample_delivery_term` text NOT NULL,
  `tracking_number` varchar(255) NOT NULL,
  `office_update_parcel_receipt` text NOT NULL,
  `customer_update_parcel_receipt` text NOT NULL,
  `shipping_agent` text NOT NULL,
  `payment_update_file` text NOT NULL,
  `is_active` enum('yes','no') NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `nrb_po_factories`
--

INSERT INTO `nrb_po_factories` (`id`, `order_number`, `customer_code`, `category_id`, `item_description`, `quantity`, `material_composition`, `material_weight`, `customization`, `messurment_chat`, `item_picture`, `technical_files`, `logo_files`, `notes`, `price`, `po_proforma_file`, `further_customer_file`, `link_production`, `lab_dip_delivery_term`, `pp_sample_delivery_term`, `tracking_number`, `office_update_parcel_receipt`, `customer_update_parcel_receipt`, `shipping_agent`, `payment_update_file`, `is_active`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(2, 0, 'sads', 1, 'dsad', 110, 'dsa', 0, 'sada', 'sad', 'sdsa', 'dsad', 'sad', 'sad', 0, 'sad', 'sda', 'sad', 'sdada', 'sad', 'sd', 'sda', 'sads', 'sadassd', 'sadsa', 'yes', '2014-01-09 00:00:00', '2014-01-09 00:00:00', 1, 1),
(3, 0, 'Customer Code', 1, 'asda', 0, 'sd', 0, 'dsad', 'sad', '', '', '', 'sadsa', 32432, '', '', '', '324324', '32432', '', '', '', '324', '', 'yes', '2014-01-09 00:42:29', '2014-01-09 00:42:29', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nrb_process_descriptions`
--

CREATE TABLE IF NOT EXISTS `nrb_process_descriptions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `is_active` enum('yes','no') NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `nrb_sample_requests`
--

CREATE TABLE IF NOT EXISTS `nrb_sample_requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `is_active` enum('yes','no') NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
