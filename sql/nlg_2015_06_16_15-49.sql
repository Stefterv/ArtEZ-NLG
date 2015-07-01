# ************************************************************
# Sequel Pro SQL dump
# Version 4135
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: localhost (MySQL 5.5.38)
# Database: nlg
# Generation Time: 2015-06-16 13:49:36 +0000
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
	(17,1,'Module',1,0),
	(180,4,'Module',25,0),
	(181,4,'Module',26,1),
	(182,4,'Module',27,2),
	(183,4,'Module',28,3),
	(184,4,'Module',29,4),
	(185,4,'Module',30,5),
	(186,4,'Module',31,6),
	(193,5,'Module',32,0),
	(194,5,'Module',33,1),
	(195,5,'Module',34,2),
	(202,6,'Module',35,5),
	(203,6,'Module',36,6),
	(204,6,'Module',37,7),
	(205,6,'Module',38,8),
	(216,8,'Module',45,0),
	(217,8,'Module',46,1),
	(218,8,'Module',47,2),
	(219,8,'Module',48,3),
	(220,7,'Module',39,0),
	(221,7,'Module',40,1),
	(222,7,'Module',41,2),
	(223,7,'Module',42,3),
	(224,7,'Module',43,4),
	(225,7,'Module',44,5),
	(229,9,'Module',49,0),
	(230,9,'Module',50,1),
	(231,9,'Module',51,2),
	(293,10,'Module',56,0),
	(294,11,'Module',57,0),
	(295,11,'Module',58,1),
	(296,11,'Module',59,2),
	(302,3,'Module',13,0),
	(303,3,'Module',22,1),
	(304,3,'Module',23,2),
	(305,3,'Module',24,3),
	(338,13,'Module',66,0),
	(341,12,'Module',64,0),
	(342,12,'Module',65,1),
	(363,2,'Module',18,0),
	(364,2,'Module',19,1),
	(365,2,'Module',20,2),
	(366,2,'Module',21,3);

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
	(1,NULL,'Stef Tervelde','Lorem ipsum dolor sit amet',0,'2015-06-02 14:11:13',1),
	(2,NULL,'Jan Hopkens','CHANGE WORKING CONDITIONS',0,'2015-06-11 18:22:10',0),
	(3,NULL,'Pieter de Breejen','YOU HAVE THE RIGHT TO BE COMPENSATED FOR ON-THE-JOB INJURIES',1,'2015-06-11 18:21:45',0),
	(4,NULL,'Cas Spoelstra','FREE FROM DISCRIMINATION',3,'2015-06-02 14:30:27',0),
	(5,NULL,'Ralf Kladjes','COMPENSATION FOR INJURIES',0,'2015-06-02 14:30:05',0),
	(6,NULL,'Neeltje van der Bleskens','COME TOGETHER',0,'2015-06-02 14:30:28',0),
	(7,NULL,'Joost ter Laken','MINIMUM WAGE',0,'2015-06-02 14:30:29',0),
	(8,NULL,'Alex van Bergen','HEALTHY WORKING CONDITIONS',0,'2015-06-02 14:30:31',0),
	(9,NULL,'Hans de Bruijn','LEGAL SERVICES',1,'2015-06-02 16:19:28',0),
	(10,NULL,NULL,'<br>',0,'2015-06-15 15:53:46',1),
	(11,NULL,NULL,'',0,'2015-06-15 15:56:51',1),
	(12,NULL,NULL,'New Document!',0,'2015-06-15 22:01:23',0),
	(13,NULL,NULL,'Test Document',0,'2015-06-15 22:05:37',0);

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
	(1,'',NULL,'2015-06-02 14:54:04',NULL,NULL,'consectetur adipisicing elit',NULL,NULL,0),
	(2,'',NULL,'2015-06-02 14:54:08',NULL,NULL,'test',NULL,NULL,0),
	(3,'',NULL,'2015-06-02 14:54:08',NULL,NULL,'hello',NULL,NULL,0),
	(4,'',NULL,'2015-06-02 14:54:09',NULL,NULL,'modules_3',NULL,NULL,0),
	(5,'',NULL,'2015-06-02 14:54:11',NULL,NULL,'',NULL,NULL,0),
	(6,'Master module #1',NULL,'2015-06-01 22:27:20',NULL,NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sed velit vitae orci gravida ullamcorper. Nunc efficitur iaculis fermentum. Donec ut nunc non risus varius hendrerit quis eu velit. In id massa orci. Nam massa quam, interdum ac diam quis, faucibus mollis metus. Praesent magna massa, finibus vel accumsan et, pellentesque sit amet tortor. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\n',NULL,NULL,1),
	(7,'Master module #2',NULL,'2015-06-02 14:10:53',NULL,NULL,'Pellentesque nec tellus vitae eros ullamcorper convallis id ac nunc. Vivamus luctus magna ut dapibus ultricies. Vivamus dapibus in nibh eget imperdiet. Mauris in pulvinar risus, id suscipit sapien. Nullam pretium hendrerit metus a imperdiet. Phasellus nec dictum ante, sed tincidunt dui. Sed quis libero neque. Fusce volutpat, velit vel consectetur laoreet, lectus diam rutrum lectus, vel laoreet nunc ligula id arcu.',NULL,NULL,1),
	(8,'Master module #3',NULL,'2015-06-01 22:27:40',NULL,NULL,'Proin sodales gravida dapibus. Integer porttitor rutrum quam, in posuere erat ullamcorper in. In sed ligula id leo vulputate rhoncus. Vestibulum pellentesque neque in neque porta, in accumsan leo maximus. Nam maximus, nisi vitae euismod ultricies, lorem eros blandit lorem, vel consequat quam velit quis ex. Sed consequat dolor neque, id vestibulum felis sodales ut. Cras magna velit, posuere tincidunt volutpat nec, pellentesque in mi. Phasellus ac placerat tellus. Vivamus bibendum lacinia justo, quis commodo ante ultricies nec.',NULL,NULL,1),
	(9,'Master module #4',NULL,'2015-06-01 22:27:49',NULL,NULL,'Nulla eleifend purus dictum est semper porta. Pellentesque finibus lorem ac lorem ornare accumsan. Duis ex nisi, ornare at lacus ut, aliquet vulputate tellus. Etiam mollis lectus eget maximus fringilla. Vivamus euismod consequat velit, a maximus lectus tempor non. Duis mollis urna ut velit consectetur, non convallis risus porta. Etiam quis tortor eu eros finibus tempor id at felis. Ut vulputate lacinia tortor, quis commodo felis pharetra dictum. Fusce egestas finibus urna, eu tincidunt arcu sollicitudin non.',NULL,NULL,1),
	(10,'Master module #5',NULL,'2015-06-01 22:27:57',NULL,NULL,'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam vitae nisl et metus tincidunt cursus. Pellentesque vulputate vitae dolor ac consequat. Vivamus sodales, libero sit amet efficitur cursus, mauris leo vulputate augue, gravida bibendum dui ipsum vel neque. Aliquam a egestas libero. Pellentesque efficitur dui velit, in consequat purus ullamcorper nec. Nam malesuada nisi id sapien eleifend vulputate quis ullamcorper libero. Praesent eu erat eget nisi ornare lacinia.',NULL,NULL,1),
	(11,'Master module #6',NULL,'2015-06-01 22:28:06',NULL,NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sed velit vitae orci gravida ullamcorper. Nunc efficitur iaculis fermentum. Donec ut nunc non risus varius hendrerit quis eu velit. In id massa orci. Nam massa quam, interdum ac diam quis, faucibus mollis metus. Praesent magna massa, finibus vel accumsan et, pellentesque sit amet tortor. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\n\n',NULL,NULL,1),
	(12,'',NULL,'2015-06-02 14:54:35',NULL,NULL,'Test',NULL,NULL,0),
	(13,'',NULL,'2015-06-02 14:54:59',NULL,NULL,'YOU have the right to -- Cash benefits and medical treatment for your injuries, even if you are undocumented or a full-time domestic worker. Ongoing medical care and prescription coverage by a doctor of your own choice, if you are found eligible for workers\' compensation.  <BR><BR> Freedom from threats or retaliation for making a claim. <BR><BR> Don\'t let your employer violate your rights! call the NYS Workers\' Compensation Board at (877) 632-4996 if you are discriminated against for making a claim.',NULL,NULL,0),
	(14,'Minimum Wage',NULL,'2015-06-02 15:47:55',NULL,NULL,'YOU HAVE THE RIGHT TO MINIMUM WAGE AND OVERTIME PAY  YOU have the right to â€”  Make a minimum of $8.75* per hour, even if you are undocumented or a domestic worker.   Payment of overtime compensation if you work over 40 hours a week, even if you are undocumented or a domestic worker (live-in domestic workers must be paid overtime after 44 hours a week).   Assert your right to be paid without threats or retaliation.  Donâ€™t let your employer violate your rights! Call the NY Dept. of Labor at (888) 469-7365 or the US Dept. of Labor at (866) 487-9243 to make a   employer discriminates against you. * Increases to $9.00/hour on December 31, 2015',NULL,NULL,0),
	(15,'',NULL,'2015-06-02 16:06:06',NULL,NULL,'',NULL,NULL,0),
	(16,'',NULL,'2015-06-02 16:14:08',NULL,NULL,'',NULL,NULL,0),
	(17,'Right to a safe workplace',NULL,'2015-06-11 18:12:24',NULL,NULL,'YOU HAVE THE RIGHT TO A SAFE WORKPLACE AND HEALTHY WORKING CONDITIONS  YOU have the right to â€”  Free protective equipment (goggles, masks, gloves) when workplace hazards exist.   Refuse to work when dangerous conditions present immediate risk of death or serious physical harm and to assert your rights to a safe workplace without threats or retaliation.   Donâ€™t let your employer violate your rights!  Call OSHA at (212) 337-2378 or visit www.osha.gov',NULL,NULL,0),
	(18,'RIGHT TO BE COMPENSATED FOR ON-THEJOB INJURIES',NULL,'2015-06-11 18:12:25',NULL,NULL,'YOU HAVE THE RIGHT TO BE COMPENSATED FOR ON-THEJOB INJURIES  YOU have the right to â€”  for your injuries, even if you are undocumented or a full-time domestic worker.   Ongoing medical care and prescription coverage by a doctor of your own choice, if you are found eligible for workersâ€™ compensation.   Freedom from threats or retaliation for making a claim.  Donâ€™t let your employer violate your rights! Call the (877) 632-4996 if you are discriminated against for making a claim.',NULL,NULL,0),
	(19,'RIGHT TO TIME OFF FOR ILLNESS AND TO CARE FOR YOUR FAMILY',NULL,'2015-06-11 18:12:25',NULL,NULL,'YOU HAVE THE RIGHT TO TIME OFF FOR ILLNESS AND TO CARE FOR YOUR FAMILY  YOU have the right to â€”  Earn up to 40 hours of paid time off for illness or family care if your employer has more than 5 employees.   Express breast milk at work during paid or unpaid breaks or lunch time, and in a separate room, if available.  YOU may have the right to â€”  Up to 12 weeks unpaid time off from work for illness or to care for family and still keep your job, or a similar job, if your employer has more than 50 employees.  Find out if you have the right to time off!   Call the NYC Dept. of Consumer Affairs at 311 for information about paid time off.  Call the NY Dept. of Labor at (888) 469-7365 for information about expressing breast milk.   Call the US Dept. of Labor at (866) 487-9243 for information about unpaid weeks off.',NULL,NULL,0),
	(20,'RIGHT TO WORK FREE FROM DISCRIMINATION',NULL,'2015-06-11 18:20:35',NULL,NULL,'YOU HAVE THE RIGHT TO WORK FREE FROM DISCRIMINATION  It is against the law for your employer to  Fire you, pay you less, or give you different work because of your race, color, age, creed, national origin, citizenship status, gender, gender identity, sexual orientation, disability, arrest or conviction record, marital or partnership status, unemployment status, or status as a victim of domestic violence, stalking, or sex offenses, even if you are undocumented.  Perpetrate or to allow sexual harassment against you.   Deny you a reasonable (and not burdensome) accommodation to allow you to perform your job, if you are disabled.   Retaliate against you because you opposed a discriminatory practice.  Donâ€™t let your employer violate your rights!   Equal Opportunity Employment Commission (800) 669-4000 NYS Division of Human Rights (within 1 year) at (718) 741-8400 NYC Commission on Human Rights (within 1 year) at (212) 306-7450',NULL,NULL,0),
	(21,'uppercase',NULL,'2015-06-11 18:20:27',NULL,NULL,'YOU HAVE THE RIGHT TO COME TOGETHER WITH YOUR COWORKERS TO CHANGE WORKING CONDITIONS  YOU have the right to Form a union or to unite as a group of workers to improve wages and working conditions.   Choose a representative to speak to your employer on your behalf.  Speak to your employer, alone or with coworkers, on behalf of other workers about the working conditions at your place of work.',NULL,NULL,0),
	(22,'',NULL,'2015-06-11 18:26:36',NULL,NULL,'YOU HAVE THE RIGHT TO TIME OFF FOR ILLNESS AND TO CARE FOR YOUR FAMILY YOU have the right to â€” Earn up to 40 hours of paid time off for illness or family care if your employer has more than 5 employees. Express breast milk at work during paid or unpaid breaks or lunch time, and in a separate room, if available. YOU may have the right to â€” Up to 12 weeks unpaid time off from work for illness or to care for family and still keep your job, or a similar job, if your employer has more than 50 employees. Find out if you have the right to time off! Call the NYC Dept. of Consumer Affairs at 311 for information about paid time off. Call the NY Dept. of Labor at (888) 469-7365 for information about expressing breast milk. Call the US Dept. of Labor at (866) 487-9243 for information about unpaid weeks off.',NULL,NULL,0),
	(23,'',NULL,'2015-06-11 18:26:57',NULL,NULL,'YOU HAVE THE RIGHT TO WORK FREE FROM DISCRIMINATION It is against the law for your employer to â€” Fire you, pay you less, or give you different work because of your race, color, age, creed, national origin, citizenship status, gender, gen- der identity, sexual orientation, disability, arrest or conviction record, marital or partnership status, unemployment status, or status as a victim of domestic violence, stalking, or sex offenses, even if you are undocumented. Perpetrate or to allow sexual harassment against you. Deny you a reasonable (and not burdensome) accommodation to allow you to perform your job, if you are disabled. Retaliate against you because you opposed a discriminatory practice. Donâ€™t let your employer violate your rights! Equal Opportunity Employment Commission ô°¦ô°Œô°ô°†ô°€ô°“ô°Žô°ô°„ô°Žô°ˆô°€ô°§ô°¨ô°¨ô°€ô°ô°‚ô°–ô°•ô°©ô°€ô°‚ô° (800) 669-4000 NYS Division of Human Rights (within 1 year) at (718) 741-8400 NYC Commission on Human Rights (within 1 year) at (212) 306-7450',NULL,NULL,0),
	(24,'',NULL,'2015-06-11 18:27:11',NULL,NULL,'MFY Legal Services, Inc. envisions a society in which no one is denied justice because he or she cannot afford an attorney. To make this vision a reality, MFY provides free legal assistance to residents of New York City on a wide range of civil legal issues, prioritizing services to vulnerable and under-served populations, while simultaneously working to end the root causes of inequities through impact litigation, law reform, and policy advocacy. The Labor & Employment Committee of the National Lawyers Guild - New York City Chapter fosters a community of progressive labor and em- ployment lawyers, law students, and legal workers in New York City through professional development programs, movement support work, and mentoring. The National Lawyers Guild (NLG) is an associ- ation of progressive lawyers, jurists, law students, and legal workers seeking to reconstruct United States legal values to emphasize human rights over property rights. The struggles of working people for economic and social justice have been central to the NLGâ€™s work since its founding in 1937.',NULL,NULL,0),
	(25,'',NULL,'2015-06-11 18:30:39',NULL,NULL,'YOU HAVE THE RIGHT TO A SAFE WORKPLACE AND HEALTHY WORKING CONDITIONS YOU have the right to â€” Free protective equipment (goggles, masks, gloves) when workplace hazards exist. Refuse to work when dangerous conditions present immediate risk of death or serious physical harm and to assert your rights to a safe workplace without threats or retaliation. Donâ€™t let your employer violate your rights! Call OSHA at (212) 337-2378 or visit www.osha.gov ô°ô°‹ô°€ô°‘ô°‚ô°˜ô°†ô°€ô°‚ô°€ô°…ô°‹ô°ˆô°Œô°ô°†ô°ˆô°ô°Žô°‚ô°ô°€ô°…ô°‹ô°‘ô°ô°ô°‚ô°Žô°ˆô°ô°—',NULL,NULL,0),
	(26,'',NULL,'2015-06-11 18:31:19',NULL,NULL,'YOU HAVE THE RIGHT TO MINIMUM WAGE AND OVERTIME PAY YOU have the right to â€” Make a minimum of $8.75* per hour, even if you are undocumented or a domestic worker. Payment of overtime compensation if you work over 40 hours a week, even if you are undocumented or a domestic worker (live-in domestic workers must be paid overtime after 44 hours a week). Assert your right to be paid without threats or retaliation. Donâ€™t let your employer violate your rights! Call the NY Dept. of Labor at (888) 469-7365 or the US Dept. of Labor at (866) 487-9243 to make a ô°…ô°‹ô°ˆô°Œô°ô°†ô°ˆô°ô°Žô°‚ô°ô°€ô°…ô°ô°‚ô°Žô°‘ô°€ô°’ô°‹ô°ƒô°€ô°‡ô°ˆô°ô°‚ô°Žô°ô°€ô°“ô°‚ô°”ô°†ô°•ô°€ô°‹ô°ƒô°€ô°Žô°’ô°€ô°–ô°‹ô°‡ô°ƒô°€ employer discriminates against you. * Increases to $9.00/hour on December 31, 2015',NULL,NULL,0),
	(27,'',NULL,'2015-06-11 18:31:43',NULL,NULL,'YOU HAVE THE RIGHT TO COME TOGETHER WITH YOUR COWORKERS TO CHANGE WORKING CONDITIONS YOU have the right to â€” Form a union or to unite as a group of workers to improve wages and working conditions. Choose a representative to speak to your employer on your behalf. Speak to your employer, alone or with cowork- ers, on behalf of other workers about the working conditions at your place of work. ô°¥ô°ªô°ž your activity will not be protected by the law if you threaten your employer, damage equipment, or publicly attack your employerâ€™s products. It is illegal for your employer to discriminate or retaliate against you because you unite with your coworkers to improve wages and working conditions. Donâ€™t let your employer violate your rights! If you are discriminated or retaliated against, call the ô° ô°…ô°œô°˜ô°‰ô°ô°…ô°ˆô°€ô°«ô°…ô°ô°‰ô°ô°€ô°¬ô°”ô°ˆô°…ô°œô°˜ô°‰ô°ô°‡ô°€ô°¥ô°‰ô°…ô°ô°’ at (212) 264-0300 (or (718) 330-7713 if you work in Brooklyn, Queens, or Staten Island).',NULL,NULL,0),
	(28,'',NULL,'2015-06-11 18:31:57',NULL,NULL,'YOU HAVE THE RIGHT TO TIME OFF FOR ILLNESS AND TO CARE FOR YOUR FAMILY YOU have the right to â€” Earn up to 40 hours of paid time off for illness or family care if your employer has more than 5 employees. Express breast milk at work during paid or unpaid breaks or lunch time, and in a separate room, if available. YOU may have the right to â€” Up to 12 weeks unpaid time off from work for illness or to care for family and still keep your job, or a similar job, if your employer has more than 50 employees. Find out if you have the right to time off! Call the NYC Dept. of Consumer Affairs at 311 for information about paid time off. Call the NY Dept. of Labor at (888) 469-7365 for information about expressing breast milk. Call the US Dept. of Labor at (866) 487-9243 for information about unpaid weeks off.',NULL,NULL,0),
	(29,'',NULL,'2015-06-11 18:32:09',NULL,NULL,'YOU HAVE THE RIGHT TO MINIMUM WAGE AND OVERTIME PAY YOU have the right to â€” Make a minimum of $8.75* per hour, even if you are undocumented or a domestic worker. Payment of overtime compensation if you work over 40 hours a week, even if you are undocumented or a domestic worker (live-in domestic workers must be paid overtime after 44 hours a week). Assert your right to be paid without threats or retaliation. Donâ€™t let your employer violate your rights! Call the NY Dept. of Labor at (888) 469-7365 or the US Dept. of Labor at (866) 487-9243 to make a ô°…ô°‹ô°ˆô°Œô°ô°†ô°ˆô°ô°Žô°‚ô°ô°€ô°…ô°ô°‚ô°Žô°‘ô°€ô°’ô°‹ô°ƒô°€ô°‡ô°ˆô°ô°‚ô°Žô°ô°€ô°“ô°‚ô°”ô°†ô°•ô°€ô°‹ô°ƒô°€ô°Žô°’ô°€ô°–ô°‹ô°‡ô°ƒô°€ employer discriminates against you. * Increases to $9.00/hour on December 31, 2015',NULL,NULL,0),
	(30,'',NULL,'2015-06-11 18:32:38',NULL,NULL,'YOU HAVE THE RIGHT TO A SAFE WORKPLACE AND HEALTHY WORKING CONDITIONS YOU have the right to â€” Free protective equipment (goggles, masks, gloves) when workplace hazards exist. Refuse to work when dangerous conditions present immediate risk of death or serious physical harm and to assert your rights to a safe workplace without threats or retaliation. Donâ€™t let your employer violate your rights! Call OSHA at (212) 337-2378 or visit www.osha.gov ô°ô°‹ô°€ô°‘ô°‚ô°˜ô°†ô°€ô°‚ô°€ô°…ô°‹ô°ˆô°Œô°ô°†ô°ˆô°ô°Žô°‚ô°ô°€ô°…ô°‹ô°‘ô°ô°ô°‚ô°Žô°ˆô°ô°—',NULL,NULL,0),
	(31,'',NULL,'2015-06-11 18:32:53',NULL,NULL,'YOU HAVE THE RIGHT TO BE COMPENSATED FOR ON-THE- JOB INJURIES YOU have the right to â€” ô°Ÿô°…ô°‡ô°Šô°€ô°ô°”ô°ô°”ô°šô°œô°‡ô°€ô°…ô°ô°’ô°€ô°‹ô°”ô°’ô°˜ô°†ô°…ô°ˆô°€ô°œô°ô°”ô°…ô°œô°‹ô°”ô°ô°œ for your injuries, even if you are undocumented or a full-time domestic worker. Ongoing medical care and prescription coverage by a doctor of your own choice, if you are found eligible for workersâ€™ compensation. Freedom from threats or retaliation for making a claim. Donâ€™t let your employer violate your rights! Call the ô° ô°¡ô°¢ô°€ô°£ô°‰ô°ô°‘ô°”ô°ô°‡ô°¤ô°€ô°Ÿô°‰ô°‹ô°ƒô°”ô°ô°‡ô°…ô°œô°˜ô°‰ô°ô°€ô°¥ô°‰ô°…ô°ô°’ô°€at (877) 632-4996 if you are discriminated against for making a claim.',NULL,NULL,0),
	(32,'',NULL,'2015-06-11 18:34:33',NULL,NULL,'YOU HAVE THE RIGHT TO BE COMPENSATED FOR ON-THE- JOB INJURIES YOU have the right to â€” ô°Ÿô°…ô°‡ô°Šô°€ô°ô°”ô°ô°”ô°šô°œô°‡ô°€ô°…ô°ô°’ô°€ô°‹ô°”ô°’ô°˜ô°†ô°…ô°ˆô°€ô°œô°ô°”ô°…ô°œô°‹ô°”ô°ô°œ for your injuries, even if you are undocumented or a full-time domestic worker. Ongoing medical care and prescription coverage by a doctor of your own choice, if you are found eligible for workersâ€™ compensation. Freedom from threats or retaliation for making a claim. Donâ€™t let your employer violate your rights! Call the ô° ô°¡ô°¢ô°€ô°£ô°‰ô°ô°‘ô°”ô°ô°‡ô°¤ô°€ô°Ÿô°‰ô°‹ô°ƒô°”ô°ô°‡ô°…ô°œô°˜ô°‰ô°ô°€ô°¥ô°‰ô°…ô°ô°’ô°€at (877) 632-4996 if you are discriminated against for making a claim.',NULL,NULL,0),
	(33,'',NULL,'2015-06-11 18:34:49',NULL,NULL,'YOU HAVE THE RIGHT TO TIME OFF FOR ILLNESS AND TO CARE FOR YOUR FAMILY YOU have the right to â€” Earn up to 40 hours of paid time off for illness or family care if your employer has more than 5 employees. Express breast milk at work during paid or unpaid breaks or lunch time, and in a separate room, if available. YOU may have the right to â€” Up to 12 weeks unpaid time off from work for illness or to care for family and still keep your job, or a similar job, if your employer has more than 50 employees. Find out if you have the right to time off! Call the NYC Dept. of Consumer Affairs at 311 for information about paid time off. Call the NY Dept. of Labor at (888) 469-7365 for information about expressing breast milk. Call the US Dept. of Labor at (866) 487-9243 for information about unpaid weeks off.',NULL,NULL,0),
	(34,'',NULL,'2015-06-11 18:35:08',NULL,NULL,'YOU HAVE THE RIGHT TO COME TOGETHER WITH YOUR COWORKERS TO CHANGE WORKING CONDITIONS YOU have the right to â€” Form a union or to unite as a group of workers to improve wages and working conditions. Choose a representative to speak to your employer on your behalf. Speak to your employer, alone or with cowork- ers, on behalf of other workers about the working conditions at your place of work. ô°¥ô°ªô°ž your activity will not be protected by the law if you threaten your employer, damage equipment, or publicly attack your employerâ€™s products. It is illegal for your employer to discriminate or retaliate against you because you unite with your coworkers to improve wages and working conditions. Donâ€™t let your employer violate your rights! If you are discriminated or retaliated against, call the ô° ô°…ô°œô°˜ô°‰ô°ô°…ô°ˆô°€ô°«ô°…ô°ô°‰ô°ô°€ô°¬ô°”ô°ˆô°…ô°œô°˜ô°‰ô°ô°‡ô°€ô°¥ô°‰ô°…ô°ô°’ at (212) 264-0300 (or (718) 330-7713 if you work in Brooklyn, Queens, or Staten Island).',NULL,NULL,0),
	(35,'',NULL,'2015-06-11 18:39:51',NULL,NULL,'YOU HAVE THE RIGHT TO COME TOGETHER WITH YOUR COWORKERS TO CHANGE WORKING CONDITIONS YOU have the right to â€” Form a union or to unite as a group of workers to improve wages and working conditions. Choose a representative to speak to your employer on your behalf. Speak to your employer, alone or with cowork- ers, on behalf of other workers about the working conditions at your place of work. ô°¥ô°ªô°ž your activity will not be protected by the law if you threaten your employer, damage equipment, or publicly attack your employerâ€™s products. It is illegal for your employer to discriminate or retaliate against you because you unite with your coworkers to improve wages and working conditions. Donâ€™t let your employer violate your rights! If you are discriminated or retaliated against, call the ô° ô°…ô°œô°˜ô°‰ô°ô°…ô°ˆô°€ô°«ô°…ô°ô°‰ô°ô°€ô°¬ô°”ô°ˆô°…ô°œô°˜ô°‰ô°ô°‡ô°€ô°¥ô°‰ô°…ô°ô°’ at (212) 264-0300 (or (718) 330-7713 if you work in Brooklyn, Queens, or Staten Island).',NULL,NULL,0),
	(36,'',NULL,'2015-06-11 18:40:32',NULL,NULL,'MFY Legal Services, Inc. envisions a society in which no one is denied justice because he or she cannot afford an attorney. To make this vision a reality, MFY provides free legal assistance to residents of New York City on a wide range of civil legal issues, prioritizing services to vulnerable and under-served populations, while simultaneously working to end the root causes of inequities through impact litigation, law reform, and policy advocacy. The Labor & Employment Committee of the National Lawyers Guild - New York City Chapter fosters a community of progressive labor and em- ployment lawyers, law students, and legal workers in New York City through professional development programs, movement support work, and mentoring. The National Lawyers Guild (NLG) is an associ- ation of progressive lawyers, jurists, law students, and legal workers seeking to reconstruct United States legal values to emphasize human rights over property rights. The struggles of working people for economic and social justice have been central to the NLGâ€™s work since its founding in 1937.',NULL,NULL,0),
	(37,'',NULL,'2015-06-11 18:40:43',NULL,NULL,'YOU HAVE THE RIGHT TO WORK FREE FROM DISCRIMINATION It is against the law for your employer to â€” Fire you, pay you less, or give you different work because of your race, color, age, creed, national origin, citizenship status, gender, gen- der identity, sexual orientation, disability, arrest or conviction record, marital or partnership status, unemployment status, or status as a victim of domestic violence, stalking, or sex offenses, even if you are undocumented. Perpetrate or to allow sexual harassment against you. Deny you a reasonable (and not burdensome) accommodation to allow you to perform your job, if you are disabled. Retaliate against you because you opposed a discriminatory practice. Donâ€™t let your employer violate your rights! Equal Opportunity Employment Commission ô°¦ô°Œô°ô°†ô°€ô°“ô°Žô°ô°„ô°Žô°ˆô°€ô°§ô°¨ô°¨ô°€ô°ô°‚ô°–ô°•ô°©ô°€ô°‚ô° (800) 669-4000 NYS Division of Human Rights (within 1 year) at (718) 741-8400 NYC Commission on Human Rights (within 1 year) at (212) 306-7450',NULL,NULL,0),
	(38,'',NULL,'2015-06-11 18:40:52',NULL,NULL,'YOU HAVE THE RIGHT TO TIME OFF FOR ILLNESS AND TO CARE FOR YOUR FAMILY YOU have the right to â€” Earn up to 40 hours of paid time off for illness or family care if your employer has more than 5 employees. Express breast milk at work during paid or unpaid breaks or lunch time, and in a separate room, if available. YOU may have the right to â€” Up to 12 weeks unpaid time off from work for illness or to care for family and still keep your job, or a similar job, if your employer has more than 50 employees. Find out if you have the right to time off! Call the NYC Dept. of Consumer Affairs at 311 for information about paid time off. Call the NY Dept. of Labor at (888) 469-7365 for information about expressing breast milk. Call the US Dept. of Labor at (866) 487-9243 for information about unpaid weeks off.',NULL,NULL,0),
	(39,'',NULL,'2015-06-11 18:45:32',NULL,NULL,'Know Your Rights: A Guide for Workers in New York City is a project of the Labor & Employment Committee of the National Lawyers Guild â€“ New York City Chapter and MFY Legal Services, Inc. ô°¡ô°‰ô°“ô°€ô°†ô°…ô°ô°€ô°šô°ô°’ô°€ô°‹ô°‰ô°ô°”ô°€ô°˜ô°ô°„ô°‰ô°ô°‹ô°…ô°œô°˜ô°‰ô°ô°€ô°…ô°ô°‰ô°“ô°œô°€ô°“ô°‡ô°€ô°…ô°œô°€ www.nlgnyc.org and www.mfy.org. ô°žô°Šô°˜ô°‡ô°€ô°Žô°“ô°˜ô°’ô°”ô°€ô°ô°”ô°­ô°”ô°†ô°œô°‡ô°€ô°…ô°ƒô°ƒô°ˆô°˜ô°†ô°…ô°ô°ˆô°”ô°€ô°ˆô°…ô°–ô°€ô°…ô°‡ô°€ô°‰ô°„ô°€ô°®ô°…ô°ô°“ô°…ô°ô°›ô°€ô°§ô°—ô°€ ô°¯ô°°ô°§ô°±ô°¨',NULL,NULL,0),
	(40,'',NULL,'2015-06-11 18:45:32',NULL,NULL,'YOU HAVE THE RIGHT TO MINIMUM WAGE AND OVERTIME PAY YOU have the right to â€” Make a minimum of $8.75* per hour, even if you are undocumented or a domestic worker. Payment of overtime compensation if you work over 40 hours a week, even if you are undocumented or a domestic worker (live-in domestic workers must be paid overtime after 44 hours a week). Assert your right to be paid without threats or retaliation. Donâ€™t let your employer violate your rights! Call the NY Dept. of Labor at (888) 469-7365 or the US Dept. of Labor at (866) 487-9243 to make a ô°…ô°‹ô°ˆô°Œô°ô°†ô°ˆô°ô°Žô°‚ô°ô°€ô°…ô°ô°‚ô°Žô°‘ô°€ô°’ô°‹ô°ƒô°€ô°‡ô°ˆô°ô°‚ô°Žô°ô°€ô°“ô°‚ô°”ô°†ô°•ô°€ô°‹ô°ƒô°€ô°Žô°’ô°€ô°–ô°‹ô°‡ô°ƒô°€ employer discriminates against you. * Increases to $9.00/hour on December 31, 2015',NULL,NULL,0),
	(41,'',NULL,'2015-06-11 18:45:32',NULL,NULL,'YOU HAVE THE RIGHT TO A SAFE WORKPLACE AND HEALTHY WORKING CONDITIONS YOU have the right to â€” Free protective equipment (goggles, masks, gloves) when workplace hazards exist. Refuse to work when dangerous conditions present immediate risk of death or serious physical harm and to assert your rights to a safe workplace without threats or retaliation. Donâ€™t let your employer violate your rights! Call OSHA at (212) 337-2378 or visit www.osha.gov ô°ô°‹ô°€ô°‘ô°‚ô°˜ô°†ô°€ô°‚ô°€ô°…ô°‹ô°ˆô°Œô°ô°†ô°ˆô°ô°Žô°‚ô°ô°€ô°…ô°‹ô°‘ô°ô°ô°‚ô°Žô°ˆô°ô°—',NULL,NULL,0),
	(42,'',NULL,'2015-06-11 18:45:32',NULL,NULL,'YOU HAVE THE RIGHT TO TIME OFF FOR ILLNESS AND TO CARE FOR YOUR FAMILY YOU have the right to â€” Earn up to 40 hours of paid time off for illness or family care if your employer has more than 5 employees. Express breast milk at work during paid or unpaid breaks or lunch time, and in a separate room, if available. YOU may have the right to â€” Up to 12 weeks unpaid time off from work for illness or to care for family and still keep your job, or a similar job, if your employer has more than 50 employees. Find out if you have the right to time off! Call the NYC Dept. of Consumer Affairs at 311 for information about paid time off. Call the NY Dept. of Labor at (888) 469-7365 for information about expressing breast milk. Call the US Dept. of Labor at (866) 487-9243 for information about unpaid weeks off.',NULL,NULL,0),
	(43,'',NULL,'2015-06-11 18:45:32',NULL,NULL,'YOU HAVE THE RIGHT TO WORK FREE FROM DISCRIMINATION It is against the law for your employer to â€” Fire you, pay you less, or give you different work because of your race, color, age, creed, national origin, citizenship status, gender, gen- der identity, sexual orientation, disability, arrest or conviction record, marital or partnership status, unemployment status, or status as a victim of domestic violence, stalking, or sex offenses, even if you are undocumented. Perpetrate or to allow sexual harassment against you. Deny you a reasonable (and not burdensome) accommodation to allow you to perform your job, if you are disabled. Retaliate against you because you opposed a discriminatory practice. Donâ€™t let your employer violate your rights! Equal Opportunity Employment Commission ô°¦ô°Œô°ô°†ô°€ô°“ô°Žô°ô°„ô°Žô°ˆô°€ô°§ô°¨ô°¨ô°€ô°ô°‚ô°–ô°•ô°©ô°€ô°‚ô° (800) 669-4000 NYS Division of Human Rights (within 1 year) at (718) 741-8400 NYC Commission on Human Rights (within 1 year) at (212) 306-7450',NULL,NULL,0),
	(44,'',NULL,'2015-06-11 18:45:32',NULL,NULL,'YOU HAVE THE RIGHT TO MINIMUM WAGE AND OVERTIME PAY YOU have the right to â€” Make a minimum of $8.75* per hour, even if you are undocumented or a domestic worker. Payment of overtime compensation if you work over 40 hours a week, even if you are undocumented or a domestic worker (live-in domestic workers must be paid overtime after 44 hours a week). Assert your right to be paid without threats or retaliation. Donâ€™t let your employer violate your rights! Call the NY Dept. of Labor at (888) 469-7365 or the US Dept. of Labor at (866) 487-9243 to make a ô°…ô°‹ô°ˆô°Œô°ô°†ô°ˆô°ô°Žô°‚ô°ô°€ô°…ô°ô°‚ô°Žô°‘ô°€ô°’ô°‹ô°ƒô°€ô°‡ô°ˆô°ô°‚ô°Žô°ô°€ô°“ô°‚ô°”ô°†ô°•ô°€ô°‹ô°ƒô°€ô°Žô°’ô°€ô°–ô°‹ô°‡ô°ƒô°€ employer discriminates against you. * Increases to $9.00/hour on December 31, 2015',NULL,NULL,0),
	(45,'',NULL,'2015-06-11 18:47:13',NULL,NULL,'YOU HAVE THE RIGHT TO A SAFE WORKPLACE AND HEALTHY WORKING CONDITIONS YOU have the right to â€” Free protective equipment (goggles, masks, gloves) when workplace hazards exist. Refuse to work when dangerous conditions present immediate risk of death or serious physical harm and to assert your rights to a safe workplace without threats or retaliation. Donâ€™t let your employer violate your rights! Call OSHA at (212) 337-2378 or visit www.osha.gov ô°ô°‹ô°€ô°‘ô°‚ô°˜ô°†ô°€ô°‚ô°€ô°…ô°‹ô°ˆô°Œô°ô°†ô°ˆô°ô°Žô°‚ô°ô°€ô°…ô°‹ô°‘ô°ô°ô°‚ô°Žô°ˆô°ô°—',NULL,NULL,0),
	(46,'',NULL,'2015-06-11 18:47:13',NULL,NULL,'YOU HAVE THE RIGHT TO BE COMPENSATED FOR ON-THE- JOB INJURIES YOU have the right to â€” ô°Ÿô°…ô°‡ô°Šô°€ô°ô°”ô°ô°”ô°šô°œô°‡ô°€ô°…ô°ô°’ô°€ô°‹ô°”ô°’ô°˜ô°†ô°…ô°ˆô°€ô°œô°ô°”ô°…ô°œô°‹ô°”ô°ô°œ for your injuries, even if you are undocumented or a full-time domestic worker. Ongoing medical care and prescription coverage by a doctor of your own choice, if you are found eligible for workersâ€™ compensation. Freedom from threats or retaliation for making a claim. Donâ€™t let your employer violate your rights! Call the ô° ô°¡ô°¢ô°€ô°£ô°‰ô°ô°‘ô°”ô°ô°‡ô°¤ô°€ô°Ÿô°‰ô°‹ô°ƒô°”ô°ô°‡ô°…ô°œô°˜ô°‰ô°ô°€ô°¥ô°‰ô°…ô°ô°’ô°€at (877) 632-4996 if you are discriminated against for making a claim.',NULL,NULL,0),
	(47,'',NULL,'2015-06-11 18:47:13',NULL,NULL,'YOU HAVE THE RIGHT TO TIME OFF FOR ILLNESS AND TO CARE FOR YOUR FAMILY YOU have the right to â€” Earn up to 40 hours of paid time off for illness or family care if your employer has more than 5 employees. Express breast milk at work during paid or unpaid breaks or lunch time, and in a separate room, if available. YOU may have the right to â€” Up to 12 weeks unpaid time off from work for illness or to care for family and still keep your job, or a similar job, if your employer has more than 50 employees. Find out if you have the right to time off! Call the NYC Dept. of Consumer Affairs at 311 for information about paid time off. Call the NY Dept. of Labor at (888) 469-7365 for information about expressing breast milk. Call the US Dept. of Labor at (866) 487-9243 for information about unpaid weeks off.',NULL,NULL,0),
	(48,'',NULL,'2015-06-11 18:47:13',NULL,NULL,'YOU HAVE THE RIGHT TO COME TOGETHER WITH YOUR COWORKERS TO CHANGE WORKING CONDITIONS YOU have the right to â€” Form a union or to unite as a group of workers to improve wages and working conditions. Choose a representative to speak to your employer on your behalf. Speak to your employer, alone or with cowork- ers, on behalf of other workers about the working conditions at your place of work. ô°¥ô°ªô°ž your activity will not be protected by the law if you threaten your employer, damage equipment, or publicly attack your employerâ€™s products. It is illegal for your employer to discriminate or retaliate against you because you unite with your coworkers to improve wages and working conditions. Donâ€™t let your employer violate your rights! If you are discriminated or retaliated against, call the ô° ô°…ô°œô°˜ô°‰ô°ô°…ô°ˆô°€ô°«ô°…ô°ô°‰ô°ô°€ô°¬ô°”ô°ˆô°…ô°œô°˜ô°‰ô°ô°‡ô°€ô°¥ô°‰ô°…ô°ô°’ at (212) 264-0300 (or (718) 330-7713 if you work in Brooklyn, Queens, or Staten Island).',NULL,NULL,0),
	(49,'',NULL,'2015-06-11 18:49:58',NULL,NULL,'MFY Legal Services, Inc. envisions a society in which no one is denied justice because he or she cannot afford an attorney. To make this vision a reality, MFY provides free legal assistance to residents of New York City on a wide range of civil legal issues, prioritizing services to vulnerable and under-served populations, while simultaneously working to end the root causes of inequities through impact litigation, law reform, and policy advocacy. The Labor & Employment Committee of the National Lawyers Guild - New York City Chapter fosters a community of progressive labor and em- ployment lawyers, law students, and legal workers in New York City through professional development programs, movement support work, and mentoring. The National Lawyers Guild (NLG) is an associ- ation of progressive lawyers, jurists, law students, and legal workers seeking to reconstruct United States legal values to emphasize human rights over property rights. The struggles of working people for economic and social justice have been central to the NLGâ€™s work since its founding in 1937.',NULL,NULL,0),
	(50,'',NULL,'2015-06-11 18:49:58',NULL,NULL,'YOU HAVE THE RIGHT TO COME TOGETHER WITH YOUR COWORKERS TO CHANGE WORKING CONDITIONS YOU have the right to â€” Form a union or to unite as a group of workers to improve wages and working conditions. Choose a representative to speak to your employer on your behalf. Speak to your employer, alone or with cowork- ers, on behalf of other workers about the working conditions at your place of work. ô°¥ô°ªô°ž your activity will not be protected by the law if you threaten your employer, damage equipment, or publicly attack your employerâ€™s products. It is illegal for your employer to discriminate or retaliate against you because you unite with your coworkers to improve wages and working conditions. Donâ€™t let your employer violate your rights! If you are discriminated or retaliated against, call the ô° ô°…ô°œô°˜ô°‰ô°ô°…ô°ˆô°€ô°«ô°…ô°ô°‰ô°ô°€ô°¬ô°”ô°ˆô°…ô°œô°˜ô°‰ô°ô°‡ô°€ô°¥ô°‰ô°…ô°ô°’ at (212) 264-0300 (or (718) 330-7713 if you work in Brooklyn, Queens, or Staten Island).',NULL,NULL,0),
	(51,'',NULL,'2015-06-11 18:49:58',NULL,NULL,'YOU HAVE THE RIGHT TO WORK FREE FROM DISCRIMINATION It is against the law for your employer to â€” Fire you, pay you less, or give you different work because of your race, color, age, creed, national origin, citizenship status, gender, gen- der identity, sexual orientation, disability, arrest or conviction record, marital or partnership status, unemployment status, or status as a victim of domestic violence, stalking, or sex offenses, even if you are undocumented. Perpetrate or to allow sexual harassment against you. Deny you a reasonable (and not burdensome) accommodation to allow you to perform your job, if you are disabled. Retaliate against you because you opposed a discriminatory practice. Donâ€™t let your employer violate your rights! Equal Opportunity Employment Commission ô°¦ô°Œô°ô°†ô°€ô°“ô°Žô°ô°„ô°Žô°ˆô°€ô°§ô°¨ô°¨ô°€ô°ô°‚ô°–ô°•ô°©ô°€ô°‚ô° (800) 669-4000 NYS Division of Human Rights (within 1 year) at (718) 741-8400 NYC Commission on Human Rights (within 1 year) at (212) 306-7450',NULL,NULL,0),
	(52,'TestModule<br>',NULL,'2015-06-11 23:41:10',NULL,NULL,'Yay!',NULL,NULL,0),
	(53,'Text',NULL,'2015-06-11 23:42:45',NULL,NULL,'test',NULL,NULL,0),
	(54,'Text',NULL,'2015-06-11 23:43:39',NULL,NULL,'Test2',NULL,NULL,0),
	(55,'Hello',NULL,'2015-06-14 20:44:16',NULL,NULL,'',NULL,NULL,0),
	(56,'Text',NULL,'2015-06-15 15:53:46',NULL,NULL,'',NULL,NULL,0),
	(57,'Textfdsafidsafjkdasfjkladjslfjsdaklfj',NULL,'2015-06-15 15:56:51',NULL,NULL,'',NULL,NULL,0),
	(58,'Text',NULL,'2015-06-15 15:56:51',NULL,NULL,'',NULL,NULL,0),
	(59,'Text',NULL,'2015-06-15 15:56:51',NULL,NULL,'',NULL,NULL,0),
	(60,'Untitled',NULL,'2015-06-15 16:04:56',NULL,NULL,'',NULL,NULL,0),
	(61,'Master module #6',NULL,'2015-06-15 21:50:13',NULL,NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sed velit vitae orci gravida ullamcorper. Nunc efficitur iaculis fermentum. Donec ut nunc non risus varius hendrerit quis eu velit. In id massa orci. Nam massa quam, interdum ac diam quis, faucibus mollis metus. Praesent magna massa, finibus vel accumsan et, pellentesque sit amet tortor. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\n',NULL,NULL,0),
	(62,'Master module #6',NULL,'2015-06-15 21:50:44',NULL,NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sed velit vitae orci gravida ullamcorper. Nunc efficitur iaculis fermentum. Donec ut nunc non risus varius hendrerit quis eu velit. In id massa orci. Nam massa quam, interdum ac diam quis, faucibus mollis metus. Praesent magna massa, finibus vel accumsan et, pellentesque sit amet tortor. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\n',NULL,NULL,0),
	(63,'Master module #2',NULL,'2015-06-15 21:58:25',NULL,NULL,'Pellentesque nec tellus vitae eros ullamcorper convallis id ac nunc. Vivamus luctus magna ut dapibus ultricies. Vivamus dapibus in nibh eget imperdiet. Mauris in pulvinar risus, id suscipit sapien. Nullam pretium hendrerit metus a imperdiet. Phasellus nec dictum ante, sed tincidunt dui. Sed quis libero neque. Fusce volutpat, velit vel consectetur laoreet, lectus diam rutrum lectus, vel laoreet nunc ligula id arcu.',NULL,NULL,0),
	(64,'Master module #1',NULL,'2015-06-15 22:01:23',NULL,NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sed velit vitae orci gravida ullamcorper. Nunc efficitur iaculis fermentum. Donec ut nunc non risus varius hendrerit quis eu velit. In id massa orci. Nam massa quam, interdum ac diam quis, faucibus mollis metus. Praesent magna massa, finibus vel accumsan et, pellentesque sit amet tortor. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\n',NULL,NULL,0),
	(65,'Untitled',NULL,'2015-06-15 22:01:23',NULL,NULL,'',NULL,NULL,0),
	(66,'Master module #1',NULL,'2015-06-15 22:05:37',NULL,NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sed velit vitae orci gravida ullamcorper. Nunc efficitur iaculis fermentum. Donec ut nunc non risus varius hendrerit quis eu velit. In id massa orci. Nam massa quam, interdum ac diam quis, faucibus mollis metus. Praesent magna massa, finibus vel accumsan et, pellentesque sit amet tortor. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\n',NULL,NULL,0);

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
	(2,'Module',1,1),
	(3,'Module',1,1),
	(130,'Document',3,16),
	(131,'Document',3,17),
	(132,'Document',3,18),
	(133,'Document',3,19),
	(134,'Document',3,20),
	(135,'Document',3,21),
	(136,'Document',2,22),
	(137,'Document',2,23),
	(138,'Document',2,24),
	(139,'Document',2,25),
	(140,'Document',2,19),
	(141,'Document',2,26),
	(142,'Document',2,27),
	(143,'Document',2,18),
	(144,'Document',2,28),
	(145,'Document',2,29),
	(146,'Document',2,30),
	(147,'Document',2,31),
	(148,'Document',2,32),
	(149,'Document',4,20),
	(150,'Document',4,33),
	(151,'Document',4,27),
	(152,'Document',4,29),
	(153,'Document',4,34),
	(154,'Document',4,35),
	(155,'Document',4,36),
	(157,'Document',5,18),
	(158,'Document',5,37),
	(159,'Document',5,38),
	(160,'Document',5,39),
	(161,'Document',5,30),
	(162,'Document',5,40),
	(163,'Document',5,41),
	(164,'Document',5,42),
	(165,'Document',5,43),
	(166,'Document',5,44),
	(167,'Document',5,45),
	(168,'Document',5,46),
	(169,'Document',5,47),
	(170,'Document',5,48),
	(172,'Document',6,49),
	(173,'Document',6,50),
	(174,'Document',6,32),
	(175,'Document',6,51),
	(176,'Document',6,22),
	(177,'Document',6,23),
	(178,'Document',6,19),
	(179,'Document',6,52),
	(180,'Document',6,53),
	(181,'Document',7,24),
	(182,'Document',7,25),
	(183,'Document',7,54),
	(184,'Document',7,55),
	(185,'Document',7,19),
	(187,'Document',8,29),
	(188,'Document',8,56),
	(189,'Document',8,57),
	(190,'Document',8,58),
	(191,'Document',8,59),
	(192,'Document',8,60),
	(193,'Document',8,61),
	(194,'Document',8,62),
	(195,'Document',8,63),
	(196,'Document',8,64),
	(197,'Document',8,65),
	(198,'Document',8,66),
	(199,'Document',8,67),
	(200,'Document',8,68),
	(201,'Document',8,69),
	(202,'Document',8,70),
	(203,'Document',7,26),
	(204,'Document',7,71),
	(205,'Document',7,72),
	(206,'Document',7,73),
	(207,'Document',7,74),
	(208,'Document',7,75),
	(209,'Document',9,21),
	(210,'Document',9,76),
	(211,'Document',9,77),
	(212,'Document',9,78),
	(213,'Document',9,79),
	(214,'Document',9,80),
	(215,'Document',9,81),
	(216,'Document',9,82),
	(217,'Document',9,83),
	(218,'Document',9,84),
	(219,'Document',9,85),
	(220,'Document',9,86),
	(221,'Document',9,87),
	(222,'Document',9,88),
	(223,'Document',10,5),
	(224,'Document',11,5),
	(225,'Document',2,89),
	(227,'Document',13,91),
	(229,'Document',12,92),
	(230,'Document',NULL,12),
	(231,'Document',2,12),
	(232,'Module',6,4),
	(233,'Module',6,93),
	(234,'Module',6,94);

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
	(4,'Tag1'),
	(5,''),
	(6,'Tag 6'),
	(7,'Tag 6'),
	(8,'Tag'),
	(9,'Tagggggggg'),
	(10,'Test'),
	(11,'Hello'),
	(12,'World'),
	(14,'Hello World'),
	(15,'Hello Dan'),
	(16,'job'),
	(17,'compensation'),
	(18,'injuries'),
	(19,'right'),
	(20,'discrimination'),
	(21,'legal'),
	(22,'working'),
	(23,'conditions'),
	(24,'minimum'),
	(25,'wage'),
	(26,'safe'),
	(27,'workplace'),
	(28,'illness'),
	(29,'healthy'),
	(30,'care'),
	(31,'family'),
	(32,'coworkers'),
	(33,'free'),
	(34,'risk'),
	(35,'death'),
	(36,'injury'),
	(37,'domestic'),
	(38,'worker'),
	(39,'medical'),
	(40,'prescription'),
	(41,'lunch'),
	(42,'breaks'),
	(43,'employer'),
	(44,'protected'),
	(45,'threaten'),
	(46,'damage'),
	(47,'retaliate'),
	(48,'violate'),
	(49,'come'),
	(50,'together'),
	(51,'change'),
	(52,'speak'),
	(53,'representative'),
	(54,'overtime'),
	(55,'pay'),
	(56,'physical'),
	(57,'harm'),
	(58,'serious'),
	(59,'goggles'),
	(60,'masks'),
	(61,'gloves'),
	(62,'freedom'),
	(63,'threats'),
	(64,'claim'),
	(65,'work'),
	(66,'breast'),
	(67,'milk'),
	(68,'union'),
	(69,'unite'),
	(70,'improve'),
	(71,'earn'),
	(72,'paid'),
	(73,'employees'),
	(74,'commission'),
	(75,'opportunity'),
	(76,'services'),
	(77,'year'),
	(78,'justice'),
	(79,'attorney'),
	(80,'assistance'),
	(81,'vision'),
	(82,'reality'),
	(83,'MFY'),
	(84,'end'),
	(85,'root'),
	(86,'reform'),
	(87,'law'),
	(88,'employment'),
	(89,'Hllow'),
	(90,'Test tag'),
	(91,'TAAAAAGGGGG'),
	(92,'Test_tag'),
	(93,'tag2'),
	(94,'tag3');

/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
