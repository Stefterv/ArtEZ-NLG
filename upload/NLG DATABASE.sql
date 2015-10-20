# ************************************************************
# Sequel Pro SQL dump
# Version 4135
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: localhost (MySQL 5.5.38)
# Database: nlg
# Generation Time: 2015-07-12 09:03:31 +0000
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
	(1,1,'Module',1,0);

/*!40000 ALTER TABLE `document_links` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table documents
# ------------------------------------------------------------

DROP TABLE IF EXISTS `documents`;

CREATE TABLE `documents` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `author` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `based_on` int(11) DEFAULT NULL,
  `changed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `documents` WRITE;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;

INSERT INTO `documents` (`id`, `author`, `title`, `based_on`, `changed`, `deleted`)
VALUES
	(1,NULL,'Example Document',0,'2015-07-12 11:01:55',0);

/*!40000 ALTER TABLE `documents` ENABLE KEYS */;
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
  `author_id` int(11) DEFAULT NULL,
  `master` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `modules` WRITE;
/*!40000 ALTER TABLE `modules` DISABLE KEYS */;

INSERT INTO `modules` (`id`, `title`, `created`, `changed`, `based_on`, `type`, `content`, `author_id`, `master`)
VALUES
	(1,'Example Text',NULL,'2015-07-12 11:01:55',NULL,NULL,'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Optio tempora aliquam, doloremque, quis suscipit explicabo quia voluptatem quasi consequatur et tenetur sed est quas molestiae quos, odio, voluptatibus facere fuga iste blanditiis. Mollitia nostrum rem quis dolore sunt quae impedit, tenetur eos fuga quod officiis iure, autem consectetur veritatis, quo aliquid ab laudantium temporibus maxime, nisi. Illum id quasi nobis nisi quidem? Iste beatae perferendis, ex quasi facere numquam nobis, minima provident nemo natus repellat non magni deleniti placeat omnis, iusto velit exercitationem. Vitae vero reprehenderit illo consequatur numquam laboriosam voluptates repudiandae omnis dolorem, nesciunt itaque laborum esse inventore commodi aspernatur quidem odio optio distinctio molestiae. Repellat nihil assumenda est dolore possimus numquam vel ratione saepe nesciunt aperiam, omnis commodi dolores aliquam voluptates aliquid repudiandae eaque consequuntur obcaecati veritatis. Laboriosam reiciendis maiores eaque in aperiam repellendus, quisquam omnis placeat quia sapiente molestiae consectetur incidunt consequuntur explicabo alias iusto voluptates quis.',NULL,0),
	(2,'Example Module','2015-07-12 11:02:19','2015-07-12 11:02:56',NULL,NULL,'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Optio tempora aliquam, doloremque, quis suscipit explicabo quia voluptatem quasi consequatur et tenetur sed est quas molestiae quos, odio, voluptatibus facere fuga iste blanditiis. Mollitia nostrum rem quis dolore sunt quae impedit, tenetur eos fuga quod officiis iure, autem consectetur veritatis, quo aliquid ab laudantium temporibus maxime, nisi. Illum id quasi nobis nisi quidem? Iste beatae perferendis, ex quasi facere numquam nobis, minima provident nemo natus repellat non magni deleniti placeat omnis, iusto velit exercitationem. Vitae vero reprehenderit illo consequatur numquam laboriosam voluptates repudiandae omnis dolorem, nesciunt itaque laborum esse inventore commodi aspernatur quidem odio optio distinctio molestiae. Repellat nihil assumenda est dolore possimus numquam vel ratione saepe nesciunt aperiam, omnis commodi dolores aliquam voluptates aliquid repudiandae eaque consequuntur obcaecati veritatis. Laboriosam reiciendis maiores eaque in aperiam repellendus, quisquam omnis placeat quia sapiente molestiae consectetur incidunt consequuntur explicabo alias iusto voluptates quis.',NULL,1);

/*!40000 ALTER TABLE `modules` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tag_links
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tag_links`;

CREATE TABLE `tag_links` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `link_type` varchar(255) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `tag_links` WRITE;
/*!40000 ALTER TABLE `tag_links` DISABLE KEYS */;

INSERT INTO `tag_links` (`id`, `link_type`, `item_id`, `tag_id`)
VALUES
	(1,'Document',1,1),
	(2,'Module',2,1);

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
	(1,'Example_Tag');

/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
