# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.6.20)
# Database: nlg
# Generation Time: 2015-06-02 12:11:49 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table document_links
# ------------------------------------------------------------

DROP TABLE IF EXISTS `document_links`;

CREATE TABLE `document_links` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `document_id` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `document_links` WRITE;
/*!40000 ALTER TABLE `document_links` DISABLE KEYS */;

INSERT INTO `document_links` (`id`, `document_id`, `type`, `item_id`, `rank`)
VALUES
	(10,1,'Image',2,0),
	(11,1,'Module',1,1);

/*!40000 ALTER TABLE `document_links` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table documents
# ------------------------------------------------------------

DROP TABLE IF EXISTS `documents`;

CREATE TABLE `documents` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `__meta info__` int(11) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `based_on` int(11) DEFAULT NULL,
  `changed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `documents` WRITE;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;

INSERT INTO `documents` (`id`, `__meta info__`, `author`, `title`, `based_on`, `changed`, `deleted`)
VALUES
	(1,NULL,'Stef Tervelde & Willem','Document Title #1',0,'2015-06-02 14:11:13',0),
	(2,NULL,'Willem Kempers','Document #2',NULL,'2015-06-02 14:11:05',0),
	(3,NULL,'Cas Spoelstra','Document #3',1,'2015-05-05 21:02:34',0),
	(4,NULL,NULL,'Document #4',3,'2015-05-05 21:01:41',0),
	(5,NULL,'Stef Tervelde','New Document',0,'2015-06-02 14:11:18',0),
	(6,NULL,'','New Document!',0,'2015-05-14 14:42:50',0),
	(7,NULL,'','New Document!',0,'2015-05-14 14:44:00',0),
	(8,NULL,'','Dat is flauw',0,'2015-05-14 14:46:08',0),
	(9,NULL,'','Test 3',0,'2015-05-14 14:57:08',1);

/*!40000 ALTER TABLE `documents` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table images
# ------------------------------------------------------------

DROP TABLE IF EXISTS `images`;

CREATE TABLE `images` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `src` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;

INSERT INTO `images` (`id`, `src`)
VALUES
	(1,'https://scontent-fra.xx.fbcdn.net/hphotos-xfp1/t31.0-8/11155166_824543114259985_4442859464793940531_o.jpg'),
	(2,'https://scontent-fra.xx.fbcdn.net/hphotos-xfp1/t31.0-8/11155166_824543114259985_4442859464793940531_o.jpg');

/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table modules
# ------------------------------------------------------------

DROP TABLE IF EXISTS `modules`;

CREATE TABLE `modules` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `changed` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `based_on` int(11) DEFAULT NULL,
  `type` int(2) DEFAULT NULL,
  `content` text,
  `__meta info__` int(11) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `master` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `modules` WRITE;
/*!40000 ALTER TABLE `modules` DISABLE KEYS */;

INSERT INTO `modules` (`id`, `title`, `created`, `changed`, `based_on`, `type`, `content`, `__meta info__`, `author_id`, `master`)
VALUES
	(1,'Test',NULL,'2015-05-14 14:28:14',NULL,NULL,'modules_2',NULL,NULL,0),
	(2,'test 2',NULL,'2015-05-14 15:42:48',NULL,NULL,'test',NULL,NULL,0),
	(3,'test 3',NULL,'2015-05-14 15:42:50',NULL,NULL,'hello',NULL,NULL,0),
	(4,'test 4',NULL,'2015-05-14 15:42:52',NULL,NULL,'modules_3',NULL,NULL,0),
	(5,'Test',NULL,'2015-05-14 15:33:31',NULL,NULL,'',NULL,NULL,0),
	(6,'Master module #1',NULL,'2015-06-01 22:27:20',NULL,NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sed velit vitae orci gravida ullamcorper. Nunc efficitur iaculis fermentum. Donec ut nunc non risus varius hendrerit quis eu velit. In id massa orci. Nam massa quam, interdum ac diam quis, faucibus mollis metus. Praesent magna massa, finibus vel accumsan et, pellentesque sit amet tortor. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\n\n',NULL,NULL,1),
	(7,'Master module #2',NULL,'2015-06-02 14:10:53',NULL,NULL,'Pellentesque nec tellus vitae eros ullamcorper convallis id ac nunc. Vivamus luctus magna ut dapibus ultricies. Vivamus dapibus in nibh eget imperdiet. Mauris in pulvinar risus, id suscipit sapien. Nullam pretium hendrerit metus a imperdiet. Phasellus nec dictum ante, sed tincidunt dui. Sed quis libero neque. Fusce volutpat, velit vel consectetur laoreet, lectus diam rutrum lectus, vel laoreet nunc ligula id arcu.',NULL,NULL,1),
	(8,'Master module #3',NULL,'2015-06-01 22:27:40',NULL,NULL,'Proin sodales gravida dapibus. Integer porttitor rutrum quam, in posuere erat ullamcorper in. In sed ligula id leo vulputate rhoncus. Vestibulum pellentesque neque in neque porta, in accumsan leo maximus. Nam maximus, nisi vitae euismod ultricies, lorem eros blandit lorem, vel consequat quam velit quis ex. Sed consequat dolor neque, id vestibulum felis sodales ut. Cras magna velit, posuere tincidunt volutpat nec, pellentesque in mi. Phasellus ac placerat tellus. Vivamus bibendum lacinia justo, quis commodo ante ultricies nec.',NULL,NULL,1),
	(9,'Master module #4',NULL,'2015-06-01 22:27:49',NULL,NULL,'Nulla eleifend purus dictum est semper porta. Pellentesque finibus lorem ac lorem ornare accumsan. Duis ex nisi, ornare at lacus ut, aliquet vulputate tellus. Etiam mollis lectus eget maximus fringilla. Vivamus euismod consequat velit, a maximus lectus tempor non. Duis mollis urna ut velit consectetur, non convallis risus porta. Etiam quis tortor eu eros finibus tempor id at felis. Ut vulputate lacinia tortor, quis commodo felis pharetra dictum. Fusce egestas finibus urna, eu tincidunt arcu sollicitudin non.',NULL,NULL,1),
	(10,'Master module #5',NULL,'2015-06-01 22:27:57',NULL,NULL,'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam vitae nisl et metus tincidunt cursus. Pellentesque vulputate vitae dolor ac consequat. Vivamus sodales, libero sit amet efficitur cursus, mauris leo vulputate augue, gravida bibendum dui ipsum vel neque. Aliquam a egestas libero. Pellentesque efficitur dui velit, in consequat purus ullamcorper nec. Nam malesuada nisi id sapien eleifend vulputate quis ullamcorper libero. Praesent eu erat eget nisi ornare lacinia.',NULL,NULL,1),
	(11,'Master module #6',NULL,'2015-06-01 22:28:06',NULL,NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sed velit vitae orci gravida ullamcorper. Nunc efficitur iaculis fermentum. Donec ut nunc non risus varius hendrerit quis eu velit. In id massa orci. Nam massa quam, interdum ac diam quis, faucibus mollis metus. Praesent magna massa, finibus vel accumsan et, pellentesque sit amet tortor. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\n\n',NULL,NULL,1);

/*!40000 ALTER TABLE `modules` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tag_links
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tag_links`;

CREATE TABLE `tag_links` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `link_type` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `tag_links` WRITE;
/*!40000 ALTER TABLE `tag_links` DISABLE KEYS */;

INSERT INTO `tag_links` (`id`, `link_type`, `item_id`, `tag_id`)
VALUES
	(1,0,1,1),
	(2,1,1,1),
	(3,1,1,1);

/*!40000 ALTER TABLE `tag_links` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tags
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tags`;

CREATE TABLE `tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;

INSERT INTO `tags` (`id`, `title`)
VALUES
	(1,'test1'),
	(2,'test2');

/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
