-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 10, 2014 at 02:19 PM
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
CREATE DATABASE IF NOT EXISTS `mgtsw` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `fuel_archives`
--

INSERT INTO `fuel_archives` (`id`, `ref_id`, `table_name`, `data`, `version`, `version_timestamp`, `archived_user_id`) VALUES
(1, 1, 'fuel_pages', '{"id":1,"location":"home","layout":"main","published":"yes","cache":"yes","date_added":"2014-01-08 02:35:27","last_modified":"2014-01-08 02:35:27","last_modified_by":"","variables":[{"id":"5","page_id":"1","name":"body","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"main","location":"home","page_published":"yes"},{"id":"6","page_id":"1","name":"body_class","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"main","location":"home","page_published":"yes"},{"id":"4","page_id":"1","name":"heading","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"main","location":"home","page_published":"yes"},{"id":"2","page_id":"1","name":"meta_description","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"main","location":"home","page_published":"yes"},{"id":"3","page_id":"1","name":"meta_keywords","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"main","location":"home","page_published":"yes"},{"id":"1","page_id":"1","name":"page_title","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"main","location":"home","page_published":"yes"}]}', 1, '2014-01-08 10:35:27', 1),
(2, 1, 'fuel_pages', '{"id":"1","location":"home","layout":"MGTSW","published":"yes","cache":"yes","date_added":"2014-01-08 02:35:27","last_modified":"2014-01-08 02:35:44","last_modified_by":"1","variables":[{"id":"11","page_id":"1","name":"body","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"MGTSW","location":"home","page_published":"yes"},{"id":"12","page_id":"1","name":"body_class","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"MGTSW","location":"home","page_published":"yes"},{"id":"10","page_id":"1","name":"heading","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"MGTSW","location":"home","page_published":"yes"},{"id":"8","page_id":"1","name":"meta_description","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"MGTSW","location":"home","page_published":"yes"},{"id":"9","page_id":"1","name":"meta_keywords","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"MGTSW","location":"home","page_published":"yes"},{"id":"7","page_id":"1","name":"page_title","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"MGTSW","location":"home","page_published":"yes"}]}', 2, '2014-01-08 10:35:44', 1),
(3, 1, 'nrb_local_companies', '{"id":1,"name":"Duttatex","is_active":"0","created_at":"2014-01-10 02:10:04","updated_at":"2014-01-10 02:10:04","created_by":"1","updated_by":"1"}', 1, '2014-01-10 10:10:04', 1),
(4, 2, 'production_units', '{"id":2,"name":"Test","is_active":"0","created_at":"2014-01-10 02:10:37","updated_at":"2014-01-10 02:10:37","created_by":"1","updated_by":"1"}', 1, '2014-01-10 10:10:37', 1),
(5, 1, 'fuel_pages', '{"id":"1","location":"home","layout":"MGTSW","published":"yes","cache":"no","date_added":"2014-01-08 02:35:27","last_modified":"2014-01-10 05:31:26","last_modified_by":"1","variables":[{"id":"17","page_id":"1","name":"body","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"MGTSW","location":"home","page_published":"yes"},{"id":"18","page_id":"1","name":"body_class","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"MGTSW","location":"home","page_published":"yes"},{"id":"16","page_id":"1","name":"heading","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"MGTSW","location":"home","page_published":"yes"},{"id":"14","page_id":"1","name":"meta_description","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"MGTSW","location":"home","page_published":"yes"},{"id":"15","page_id":"1","name":"meta_keywords","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"MGTSW","location":"home","page_published":"yes"},{"id":"13","page_id":"1","name":"page_title","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"MGTSW","location":"home","page_published":"yes"}]}', 3, '2014-01-10 13:31:26', 1);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=32 ;

--
-- Dumping data for table `fuel_logs`
--

INSERT INTO `fuel_logs` (`id`, `entry_date`, `user_id`, `message`, `type`) VALUES
(1, '2014-01-08 02:14:43', 1, 'Successful login by ''admin'' from 127.0.0.1', 'debug'),
(2, '2014-01-08 02:35:44', 1, 'Pages item <em>home</em> edited', 'info'),
(3, '2014-01-08 04:34:17', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(4, '2014-01-08 23:27:43', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(5, '2014-01-09 23:59:27', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(6, '2014-01-10 01:13:22', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(7, '2014-01-10 02:10:04', 1, 'Companies item <em>Duttatex</em> edited', 'info'),
(8, '2014-01-10 02:10:37', 1, 'Production Units item <em>Test</em> edited', 'info'),
(9, '2014-01-10 03:28:07', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(10, '2014-01-10 03:40:16', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(11, '2014-01-10 04:37:46', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(12, '2014-01-10 04:43:01', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(13, '2014-01-10 05:22:20', 1, 'Users item <em>milon@duttafashion.com</em> edited', 'info'),
(14, '2014-01-10 05:31:18', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(15, '2014-01-10 05:31:26', 1, 'Pages item <em>home</em> edited', 'info'),
(16, '2014-01-10 05:34:08', 2, 'Successful login by ''user'' from ::1', 'debug'),
(17, '2014-01-10 05:41:43', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(18, '2014-01-10 05:44:45', 2, 'Successful login by ''user'' from ::1', 'debug'),
(19, '2014-01-10 05:47:41', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(20, '2014-01-10 05:48:22', 1, 'Permissions item <em>customer_enquiries_edit</em> edited', 'info'),
(21, '2014-01-10 05:49:03', 1, 'Permissions item <em>customer_enquiries_remove</em> edited', 'info'),
(22, '2014-01-10 05:49:26', 1, 'Permissions item <em>customer_enquiries</em> edited', 'info'),
(23, '2014-01-10 05:49:51', 1, 'Permissions item <em>customer_enquiries/create</em> edited', 'info'),
(24, '2014-01-10 05:50:28', 1, 'Multiple <em>permissions</em> deleted', 'info'),
(25, '2014-01-10 05:51:23', 1, 'Permissions item <em>customer_enquiries</em> edited', 'info'),
(26, '2014-01-10 05:54:32', 1, 'Permissions item <em>quotations</em> edited', 'info'),
(27, '2014-01-10 05:54:45', 1, 'Permissions item <em>sample_requests</em> edited', 'info'),
(28, '2014-01-10 05:54:57', 1, 'Permissions item <em>sample_shipping_outs</em> edited', 'info'),
(29, '2014-01-10 05:55:10', 1, 'Permissions item <em>customer_orders</em> edited', 'info'),
(30, '2014-01-10 05:55:23', 1, 'Permissions item <em>order_shipping_outs</em> edited', 'info'),
(31, '2014-01-10 05:55:38', 1, 'Permissions item <em>po_factories</em> edited', 'info');

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
(1, 'home', 'MGTSW', 'yes', 'no', '2014-01-08 02:35:27', '2014-01-09 23:31:26', 1);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=19 ;

--
-- Dumping data for table `fuel_page_variables`
--

INSERT INTO `fuel_page_variables` (`id`, `page_id`, `name`, `scope`, `value`, `type`, `language`, `active`) VALUES
(17, 1, 'body', '', '', 'string', 'english', 'yes'),
(16, 1, 'heading', '', '', 'string', 'english', 'yes'),
(15, 1, 'meta_keywords', '', '', 'string', 'english', 'yes'),
(14, 1, 'meta_description', '', '', 'string', 'english', 'yes'),
(13, 1, 'page_title', '', '', 'string', 'english', 'yes'),
(18, 1, 'body_class', '', '', 'string', 'english', 'yes');

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=81 ;

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
(35, 'Generate Code', 'generate', 'yes'),
(56, 'sample_requests', 'sample_requests', 'yes'),
(46, 'Customer Enquiries', 'customer_enquiries', 'yes'),
(47, 'Customer Enquiries: Create', 'customer_enquiries/create', 'yes'),
(48, 'Customer Enquiries: Edit', 'customer_enquiries/edit', 'yes'),
(49, 'Customer Enquiries: Publish', 'customer_enquiries/publish', 'yes'),
(50, 'Customer Enquiries: Delete', 'customer_enquiries/delete', 'yes'),
(51, 'quotations', 'quotations', 'yes'),
(52, 'Quotations: Create', 'quotations/create', 'yes'),
(53, 'Quotations: Edit', 'quotations/edit', 'yes'),
(54, 'Quotations: Publish', 'quotations/publish', 'yes'),
(55, 'Quotations: Delete', 'quotations/delete', 'yes'),
(57, 'Sample Requests: Create', 'sample_requests/create', 'yes'),
(58, 'Sample Requests: Edit', 'sample_requests/edit', 'yes'),
(59, 'Sample Requests: Publish', 'sample_requests/publish', 'yes'),
(60, 'Sample Requests: Delete', 'sample_requests/delete', 'yes'),
(61, 'sample_shipping_outs', 'sample_shipping_outs', 'yes'),
(62, 'Sample Shipping Outs: Create', 'sample_shipping_outs/create', 'yes'),
(63, 'Sample Shipping Outs: Edit', 'sample_shipping_outs/edit', 'yes'),
(64, 'Sample Shipping Outs: Publish', 'sample_shipping_outs/publish', 'yes'),
(65, 'Sample Shipping Outs: Delete', 'sample_shipping_outs/delete', 'yes'),
(66, 'customer_orders', 'customer_orders', 'yes'),
(67, 'Customer Orders: Create', 'customer_orders/create', 'yes'),
(68, 'Customer Orders: Edit', 'customer_orders/edit', 'yes'),
(69, 'Customer Orders: Publish', 'customer_orders/publish', 'yes'),
(70, 'Customer Orders: Delete', 'customer_orders/delete', 'yes'),
(71, 'order_shipping_outs', 'order_shipping_outs', 'yes'),
(72, 'Order Shipping Outs: Create', 'order_shipping_outs/create', 'yes'),
(73, 'Order Shipping Outs: Edit', 'order_shipping_outs/edit', 'yes'),
(74, 'Order Shipping Outs: Publish', 'order_shipping_outs/publish', 'yes'),
(75, 'Order Shipping Outs: Delete', 'order_shipping_outs/delete', 'yes'),
(76, 'po_factories', 'po_factories', 'yes'),
(77, 'Po Factories: Create', 'po_factories/create', 'yes'),
(78, 'Po Factories: Edit', 'po_factories/edit', 'yes'),
(79, 'Po Factories: Publish', 'po_factories/publish', 'yes'),
(80, 'Po Factories: Delete', 'po_factories/delete', 'yes');

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=12 ;

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `fuel_users`
--

INSERT INTO `fuel_users` (`id`, `user_name`, `password`, `email`, `first_name`, `last_name`, `language`, `reset_key`, `salt`, `super_admin`, `active`) VALUES
(1, 'admin', '318faa6682c0e1ad2149963dbc9bb3da89e75a80', 'info@getfuelcms.com', 'Admin', 'test', 'english', '', '2ac8782764f34b252ab5b9898200f07e', 'yes', 'yes'),
(2, 'user', '18472c76fd78b68334badcd8e2738bcae3174208', 'milon@duttafashion.com', 'First name*', 'user', '', '', 'cb9ba901eee100eb88b1cbe9337ee6c9', 'no', 'yes');

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
  `date` date NOT NULL,
  `ticket_number` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `material_composition` text NOT NULL,
  `item_description` text NOT NULL,
  `material_weight` varchar(255) NOT NULL,
  `customization` text NOT NULL,
  `measurement_chart` text NOT NULL,
  `item_picture` varchar(255) NOT NULL,
  `technical_files` varchar(255) NOT NULL,
  `logo_files` varchar(255) NOT NULL,
  `notes` text NOT NULL,
  `assigne_to` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `nrb_customer_enquiries`
--

INSERT INTO `nrb_customer_enquiries` (`id`, `date`, `ticket_number`, `category_id`, `qty`, `material_composition`, `item_description`, `material_weight`, `customization`, `measurement_chart`, `item_picture`, `technical_files`, `logo_files`, `notes`, `assigne_to`, `is_active`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, '2014-01-09', 'Ticket Number', 1, 1232, 'aterial Compositi', 'Item Description*', 'Material Weight', 'Customization', 'Messurment Chat*', '', '', '', 'Notes', 1, 0, '2014-01-09 04:11:24', '2014-01-09 04:15:26', 1, 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `nrb_customer_orders`
--

INSERT INTO `nrb_customer_orders` (`id`, `customer_name`, `category_id`, `item_description`, `quantity`, `material_composition`, `material_weight`, `customization`, `messurment_chat`, `item_picture`, `technical_files`, `logo_files`, `notes`, `price`, `po_proforma_file`, `further_customer_file`, `link_production`, `lab_dip_delivery_term`, `pp_sample_delivery_term`, `tracking_number`, `office_update_parcel_receipt`, `customer_update_parcel_receipt`, `shipping_agent`, `payment_update_file`, `is_active`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 'Customer Name', 0, 'Item Description', 121, 'Material Composition', 0, 'Customization*', 'Messurment Chat', 'b0bb429f9795f01570d07cac65f51c1e.jpg', 'a8298809f0b84cc3fa4ac07034d8201e.jpg', '0575c8e7beed13aadbe71fcea8ea9063.jpg', 'Notes', 10, '140db303f374aaf2cfb849ef50752533.jpg', 'a885883652e73afd2a90684da3877a0a.jpg', 'Production Monitoring System ', 'Lab-Dip Delivery Term*', 'PP Sample Delivery Term ', 'Customer Tracking no. & Courier & Pictures', 'ffice Update', 'Customer''s Details Update ', 'Shipping Agent', 'Payment Update*', 'yes', '2014-01-08 02:51:48', '2014-01-08 02:51:48', 1, 1),
(2, 'Customer Name', 1, 'Item Description', 121, 'Material Composition', 324, 'Customization*', 'Messurment Chat', '', '', '', 'Notes', 10, '', '', 'Production Monitoring System ', 'Lab-Dip Delivery Term*', 'PP Sample Delivery Term ', 'Customer Tracking no. & Courier & Pictures', 'ffice Update', 'Customer''s Details Update ', 'Shipping Agent', 'Payment Update*', 'yes', '2014-01-09 02:41:47', '2014-01-09 02:47:00', 1, 1),
(3, 'Customer Name', 1, 'Item Description', 121444, 'Material Composition', 0, 'Customization*', 'Messurment Chat', '', '', '', 'Notes', 10, '', '', 'Production Monitoring System ', 'Lab-Dip Delivery Term*', 'PP Sample Delivery Term ', 'Customer Tracking no. & Courier & Pictures', 'ffice Update', 'Customer''s Details Update ', 'Shipping Agent', 'Payment Update*', 'yes', '2014-01-09 02:42:16', '2014-01-09 02:42:16', 1, 1),
(4, 'Customer Name', 1, 'Item Description', 4, 'Material Composition', 0, 'Customization*', 'Messurment Chat', '', '', '', 'Notes', 10, '', '', 'Production Monitoring System ', 'Lab-Dip Delivery Term*', 'PP Sample Delivery Term ', 'Customer Tracking no. & Courier & Pictures', 'ffice Update', 'Customer''s Details Update ', 'Shipping Agent', 'Payment Update*', 'yes', '2014-01-09 02:43:22', '2014-01-09 02:47:14', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nrb_customer_quotations`
--

CREATE TABLE IF NOT EXISTS `nrb_customer_quotations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `matrial_composition` text NOT NULL,
  `item_description` text NOT NULL,
  `material_weight` text NOT NULL,
  `customization` text NOT NULL,
  `item_picture` varchar(255) NOT NULL,
  `technical_files` varchar(255) NOT NULL,
  `logo_files` varchar(255) NOT NULL,
  `notes` text NOT NULL,
  `assigne_to` int(11) NOT NULL,
  `prices` varchar(255) NOT NULL,
  `packing_details` text NOT NULL,
  `cost_back_down` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `nrb_customer_quotations`
--

INSERT INTO `nrb_customer_quotations` (`id`, `date`, `customer_name`, `category_id`, `qty`, `matrial_composition`, `item_description`, `material_weight`, `customization`, `item_picture`, `technical_files`, `logo_files`, `notes`, `assigne_to`, `prices`, `packing_details`, `cost_back_down`, `is_active`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(2, '2013-03-03', 'omer Nam', 1, 1232, 'asda', 'Item Description', 'sdsa', 'dsa', '', '', '', 'sad', 0, '3,213.00', '123', '2132', 0, '2014-01-09 05:21:16', 1, '2014-01-09 05:21:16', 1),
(3, '2013-03-23', 'omer Nam', 1, 1232, 'asda', 'Item Description', 'sdsa', 'dsa', '', '', '', 'sad', 0, '3,213.00', '123', '2132', 0, '2014-01-09 05:22:29', 1, '2014-01-09 05:22:29', 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `nrb_local_companies`
--

INSERT INTO `nrb_local_companies` (`id`, `name`, `is_active`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 'Duttatex', '', '2014-01-10 02:10:04', '2014-01-10 02:10:04', 1, 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `nrb_order_shipping_outs`
--

INSERT INTO `nrb_order_shipping_outs` (`id`, `customer_name`, `po_pro_ref`, `item_description`, `quantity`, `order_delivary`, `notes`, `pro_form_attached_files`, `documents_copies`, `original_document`, `air_booking`, `courier`, `note_cnform_goods`, `is_active`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(4, 'Customer Name*', 'PO and Pro-Form Nr. Reference', 'Item Description:', 4543, 'Order Delivery', 'Notes*', 0, 0, 0, 0, '', '', 'yes', '2014-01-10 06:18:51', '2014-01-10 06:18:51', 1, 1);

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
(3, 432424324, 'Customer Code', 1, 'asda', 0, 'sd', 0, 'dsad', 'sad', '', '', '', 'sadsa', 32432, '', '', '', '324324', '32432', '', '', '', '324', '', 'yes', '2014-01-09 02:52:08', '2014-01-09 02:52:08', 1, 1);

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
-- Table structure for table `nrb_production_units`
--

CREATE TABLE IF NOT EXISTS `nrb_production_units` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `nrb_production_units`
--

INSERT INTO `nrb_production_units` (`id`, `name`, `is_active`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(2, 'Test', 0, '2014-01-10 02:10:37', '2014-01-10 02:10:37', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nrb_sample_requests`
--

CREATE TABLE IF NOT EXISTS `nrb_sample_requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unit_id` int(11) NOT NULL,
  `local_company_id` int(11) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `assigne_to` int(11) NOT NULL,
  `material_composition` text NOT NULL,
  `item_description` text NOT NULL,
  `material_weight` varchar(255) NOT NULL,
  `customization` text NOT NULL,
  `sample_further_description` text NOT NULL,
  `item_picture` varchar(255) NOT NULL,
  `technical_files` varchar(255) NOT NULL,
  `logo_files` varchar(255) NOT NULL,
  `notes` text NOT NULL,
  `sample_delivery_term` text NOT NULL,
  `latest_shipout_date` date NOT NULL,
  `customer_tracking_no_courier` varchar(255) NOT NULL,
  `original_samples` text NOT NULL,
  `is_active` enum('yes','no') NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `nrb_sample_requests`
--

INSERT INTO `nrb_sample_requests` (`id`, `unit_id`, `local_company_id`, `quantity`, `category_id`, `assigne_to`, `material_composition`, `item_description`, `material_weight`, `customization`, `sample_further_description`, `item_picture`, `technical_files`, `logo_files`, `notes`, `sample_delivery_term`, `latest_shipout_date`, `customer_tracking_no_courier`, `original_samples`, `is_active`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 2, 1, '11', 1, 1, 'Material Composition', 'Item Description', '324', 'Customization', '', '', '', '', 'Notes', 'Sample Delivery Term ', '2014-12-12', 'Customer Tracking no. & Courier & Pictures', 'Original Samples', 'yes', '2014-01-10 02:22:04', '2014-01-10 02:22:04', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nrb_sample_shipping_outs`
--

CREATE TABLE IF NOT EXISTS `nrb_sample_shipping_outs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `local_company_id` int(11) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `material_composition` text NOT NULL,
  `item_description` text NOT NULL,
  `material_weight` varchar(255) NOT NULL,
  `customization` text NOT NULL,
  `item_picture` varchar(255) NOT NULL,
  `notes` text NOT NULL,
  `customer_tracking_no_courier` varchar(255) NOT NULL,
  `is_active` enum('yes','no') NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `nrb_sample_shipping_outs`
--

INSERT INTO `nrb_sample_shipping_outs` (`id`, `local_company_id`, `quantity`, `category_id`, `material_composition`, `item_description`, `material_weight`, `customization`, `item_picture`, `notes`, `customer_tracking_no_courier`, `is_active`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(2, 1, '1', 1, 'Material Composition', 'Item Description*', 'Material Weight*', 'Customization', '9f2a2dbe86b970a6da9be40489c8206b.png', 'Notes Notes Notes ', 'Customer Tracking no. & Courier & Pictures', 'yes', '2014-01-10 02:47:03', '2014-01-10 02:47:03', 1, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
