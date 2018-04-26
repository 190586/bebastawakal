-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.13-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table xl_proto.oauth_access_token
CREATE TABLE IF NOT EXISTS `oauth_access_token` (
  `token_id` varchar(256) DEFAULT NULL,
  `token` longblob,
  `authentication_id` varchar(256) DEFAULT NULL,
  `user_name` varchar(256) DEFAULT NULL,
  `client_id` varchar(256) DEFAULT NULL,
  `authentication` longblob,
  `refresh_token` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.


-- Dumping structure for table xl_proto.oauth_client_details
CREATE TABLE IF NOT EXISTS `oauth_client_details` (
  `client_id` varchar(256) NOT NULL,
  `resource_ids` varchar(256) DEFAULT NULL,
  `client_secret` varchar(256) DEFAULT NULL,
  `scope` varchar(256) DEFAULT NULL,
  `authorized_grant_types` varchar(256) DEFAULT NULL,
  `web_server_redirect_uri` varchar(256) DEFAULT NULL,
  `authorities` varchar(256) DEFAULT NULL,
  `access_token_validity` int(11) DEFAULT NULL,
  `refresh_token_validity` int(11) DEFAULT NULL,
  `additional_information` varchar(4096) DEFAULT NULL,
  `autoapprove` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.


-- Dumping structure for table xl_proto.oauth_client_token
CREATE TABLE IF NOT EXISTS `oauth_client_token` (
  `token_id` varchar(256) DEFAULT NULL,
  `token` longblob,
  `authentication_id` varchar(256) DEFAULT NULL,
  `user_name` varchar(256) DEFAULT NULL,
  `client_id` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.


-- Dumping structure for table xl_proto.oauth_code
CREATE TABLE IF NOT EXISTS `oauth_code` (
  `code` varchar(256) DEFAULT NULL,
  `authentication` longblob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.


-- Dumping structure for table xl_proto.oauth_refresh_token
CREATE TABLE IF NOT EXISTS `oauth_refresh_token` (
  `token_id` varchar(256) DEFAULT NULL,
  `token` longblob,
  `authentication` longblob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;


CREATE TABLE IF NOT EXISTS `authority` (
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `menu` (
  `id_menu` bigint(20) NOT NULL AUTO_INCREMENT,
  `active` bit(1) NOT NULL,
  `button_text` varchar(100) DEFAULT NULL,
  `data_href` bit(1) NOT NULL,
  `description` longtext,
  `end_time` datetime DEFAULT NULL,
  `image_path` varchar(50) NOT NULL,
  `orders` int(11) NOT NULL,
  `short_description` longtext,
  `start_time` datetime NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `type` varchar(50) NOT NULL,
  `url` longtext,
  PRIMARY KEY (`id_menu`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `page` (
  `id_page` bigint(20) NOT NULL AUTO_INCREMENT,
  `active` bit(1) NOT NULL,
  `breadcrumb` longtext,
  `button_text` varchar(100) DEFAULT NULL,
  `code` varchar(100) NOT NULL,
  `content` longtext,
  `header_image_path` varchar(50) DEFAULT NULL,
  `icon_path` varchar(50) DEFAULT NULL,
  `orders` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `type` varchar(16) NOT NULL,
  PRIMARY KEY (`id_page`),
  UNIQUE KEY `UK_9pi3hcvib9isvoad8c3by5qc7` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `setting` (
  `id_profile` bigint(20) NOT NULL AUTO_INCREMENT,
  `address1` longtext NOT NULL,
  `address2` longtext,
  `company_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `facebook_link` varchar(50) NOT NULL,
  `footer_description` longtext NOT NULL,
  `hotline` varchar(15) NOT NULL,
  `instagram_link` varchar(50) NOT NULL,
  `logo` varchar(50) NOT NULL,
  `prime` tinyint(4) NOT NULL,
  `twitter_link` varchar(50) NOT NULL,
  `youtube_link` varchar(50) NOT NULL,
  PRIMARY KEY (`id_profile`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `testimonial` (
  `id_testimonial` bigint(20) NOT NULL AUTO_INCREMENT,
  `age` int(11) NOT NULL,
  `approval` bit(1) NOT NULL,
  `avatar_path` varchar(50) NOT NULL,
  `content` longtext NOT NULL,
  `datetime` datetime NOT NULL,
  `image_background_path` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `occupation` varchar(100) NOT NULL,
  `prime` bit(1) NOT NULL,
  `website` longtext NOT NULL,
  PRIMARY KEY (`id_testimonial`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `user` (
  `id_user` bigint(20) NOT NULL AUTO_INCREMENT,
  `active` bit(1) NOT NULL,
  `avatar_path` varchar(50) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `password` longtext NOT NULL,
  `role` longtext NOT NULL,
  `username` varchar(50) NOT NULL,
  PRIMARY KEY (`id_user`),
  UNIQUE KEY `UK_sb8bbouer5wak8vyiiy4pf2bx` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
