# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: localhost (MySQL 5.5.38)
# Database: nlg
# Generation Time: 2016-10-04 12:08:32 +0000
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
	(68,2,'Module',16,0),
	(69,2,'Module',17,1),
	(70,2,'Module',18,2),
	(71,2,'Module',19,3),
	(72,2,'Module',20,4),
	(73,2,'Module',21,5),
	(74,2,'Module',22,6),
	(75,2,'Module',23,7),
	(76,2,'Module',24,8),
	(77,2,'Module',25,9),
	(100,1,'Module',6,0),
	(101,1,'Module',7,1),
	(102,1,'Module',8,2),
	(103,1,'Module',9,3),
	(104,1,'Module',10,4),
	(105,1,'Module',11,5),
	(106,1,'Module',12,6),
	(107,1,'Module',13,7),
	(108,1,'Module',14,8),
	(109,1,'Module',15,9);

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
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `documents` WRITE;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;

INSERT INTO `documents` (`id`, `__meta info__`, `author`, `title`, `based_on`, `created`, `modified`, `deleted`)
VALUES
	(1,NULL,NULL,'Dealing with the Police',0,'2016-09-27 11:21:47','2016-09-27 11:58:24',0),
	(2,NULL,NULL,'Know Your Rights Street Guide',0,'2016-09-27 11:28:27','2016-09-27 11:44:45',0);

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



# Dump of table modules
# ------------------------------------------------------------

DROP TABLE IF EXISTS `modules`;

CREATE TABLE `modules` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
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

INSERT INTO `modules` (`id`, `title`, `created`, `modified`, `based_on`, `type`, `content`, `__meta info__`, `author_id`, `master`)
VALUES
	(1,'Questioning','2016-09-27 11:13:27','2016-09-27 11:14:19',NULL,NULL,'Interrogation isnâ€™t always bright lights and rubber hoses â€” usually itâ€™s just a conversation.  Whenever the cops ask you anything besides your name and address, itâ€™s legally safest to say these Magic Words: \r\n\r\nâ€œI am going to remain silent. I want to see a lawyer.â€\r\n\r\nThis invokes the rights which protect you from interrogation.   When you say this, the cops (and all other law enforcement officials) are legally required to stop asking you questions.  They probably wonâ€™t stop, so just repeat the Magic Words or remain silent until they catch on.\r\n\r\n Remember, anything you say to the authorities can and will be used against you and your friends in court.  Thereâ€™s no way to predict what information the police might try to use or how theyâ€™d use it.  Plus, the police often misquote or lie altogether about what was said.  So say only the Magic Words and let all the cops and witnesses know that this is your policy.  Make sure that when youâ€™re arrested with other people, the rest of the group knows the Magic Words and promises to use them. \r\n\r\nOne of the jobs of cops is to get information out of people, and they usually donâ€™t have any scruples about how they do it.  Cops are legally allowed to lie when theyâ€™re investigating, and they are trained to be manipulative. The only thing you should say to cops, other than identifying yourself, is the Magic Words: â€œI am going to remain silent.  I want to see a lawyer.â€  \r\n\r\nHere are some lies they will tell you: \r\n	â€¢	â€œYouâ€™re not a suspect â€” just help us understand what happened here and then you can go.â€  \r\n	â€¢	â€œIf you donâ€™t answer my questions, Iâ€™ll have no choice but to arrest you.  Do you want to go to jail?â€\r\n	â€¢	â€œIf you donâ€™t answer my questions, Iâ€™m going to charge you with resisting arrest.â€\r\n	â€¢	â€œAll of your friends have cooperated and we let them go home.  Youâ€™re the only one left.â€\r\n\r\n	Cops are sneaky and there are lots of ways they can trick you into talking. Here are some scams theyâ€™ll pull:\r\n	â€¢	Good Cop/ Bad Cop:  Bad cop is aggressive and menacing, while good cop is nice, friendly, and familiar (usually good cop is the same race and gender as you).  The idea is bad cop scares you so bad you are desperately looking for a friend.  Good cop is that friend. \r\n	â€¢	The cops will tell you that your friends ratted on you so that you will snitch on them.  Meanwhile, they tell your friends the same thing.  If anyone breaks and talks, you all go down.  \r\n	â€¢	The cops will tell you that they have all the evidence they need to convict you and that if you â€œtake responsibilityâ€ and confess the judge will be impressed by your honesty and go easy on you.  What they really mean is: â€œwe donâ€™t have enough evidence yet, please confess.â€\r\n\r\nJail is a very isolating and intimidating place.  It is really easy to believe what the cops tell you.  Insist upon speaking with a lawyer before you answer any questions or sign anything.\r\n\r\nThe Golden Rule: Never trust a cop.',NULL,NULL,1),
	(2,'The Miranda Warnings','2016-09-27 11:15:05','2016-09-27 11:15:05',NULL,NULL,'The police do not have to read you your rights (also known as the Miranda warnings).  Miranda applies when there is (a) an interrogation (b) by a police officer of other agent of law enforcement (c) while the suspect is in police custody (you do not have to be formally arrested to be â€œin custodyâ€).  Even when all these conditions are met, the police intentionally violate Miranda. And though your rights have been violated, what you say can be used against you.   For this reason, it is better not to wait for the cops â€“ you know what your rights are, so you can invoke them by saying the Magic Words, â€œI am going to remain silent. I want to see a lawyer.â€\r\n\r\nIf youâ€™ve been arrested and realize that you have started answering questions, donâ€™t panic.  Just re-invoke your rights by saying the Magic Words again.  Donâ€™t let them trick you into thinking that because you answered some of their questions, you have to answer all of them.',NULL,NULL,1),
	(3,'Police Encounters','2016-09-27 11:17:00','2016-09-27 11:17:33',NULL,NULL,'There are three basic types of encounters with the police: \r\n\r\nConversation, Detention, and Arrest.  \r\n\r\n	Conversation: When the cops are trying to get information, but donâ€™t have enough evidence to detain or arrest you, theyâ€™ll try to weasel some information out of you.  They may call this a â€œcasual encounterâ€ or a â€œfriendly conversationâ€.  If you talk to them, you may give them the information they need to arrest you or your friends.  In most situations, itâ€™s better and safer not to talk to cops.\r\n\r\nDetention: Police can detain you only if they have reasonable suspicion (see below) that you are involved in a crime.  Detention means that, though you arenâ€™t arrested, you canâ€™t leave.  Detention is supposed to last a short time and they arenâ€™t supposed to move you.  During detention, the police can pat you down and go into your bag to make sure you donâ€™t have any weapons.  They arenâ€™t supposed to go into your pockets unless they feel a weapon.  \r\n\r\nIf the police are asking questions, ask if you are being detained.  If not, leave and say nothing else to them.  If you are being detained, you may want to ask why.  Then you should say the Magic Words: â€œI am going to remain silent.  I want a lawyerâ€ and nothing else.\r\nA detention can easily turn into arrest.  If the police are detaining you and they get information that you are involved in a crime, they will arrest you, even if it has nothing to do with your detention.  For example, if someone gets pulled over for speeding (detained) and the cop sees drugs in the car, the cops will arrest her for possession of the drugs even though it has nothing to do with her getting pulled over.  Cops have two reasons to detain you: 1) they are writing you a citation (a traffic ticket, for example), or 2) they want to arrest you but they donâ€™t have enough information yet to do so.\r\n\r\nArrest: Police can arrest you only if they have probable cause (see below) that you are involved in a crime.  When you are arrested, the cops can search you to the skin and go through you car and any belongings.  By law, an officer strip searching you must be the same gender as you.\r\n\r\nIf the police come to your door with an arrest warrant, go outside and lock the door behind you.  Cops are allowed to search any room you go into, so donâ€™t go back into the house for any reason.  If they have an arrest warrant, hiding wonâ€™t help because they are allowed to force their way in if they know you are there.  Itâ€™s usually better to just go with them without giving them an opportunity to search.',NULL,NULL,1),
	(4,'Reasonable Suspicion vs. Probable Cause','2016-09-27 11:18:12','2016-09-27 11:18:12',NULL,NULL,'\r\nReasonable suspicion must be based on more than a hunch â€” cops must be able to put their suspicion into words.  For example, cops canâ€™t just stop someone and say, â€œShe looked like she was up to something.â€  They need to be more specific, like, â€œShe was standing under the overpass staring up at some graffiti that hadnâ€™t been there 2 hours ago.  She had the same graffiti pattern written on her backpack.  I suspected that she had put up the graffiti.â€\r\nCops need more proof to say they have a probable cause than to say they have a reasonable suspicion.  For example, â€œA store owner called to report someone matching her description tagging a wall across the street.  As I drove up to the store, I saw her running away spattered with paint and carrying a spray can in her hand.â€ ',NULL,NULL,1),
	(5,'Searches','2016-09-27 11:18:58','2016-09-27 11:18:58',NULL,NULL,'Never consent to a search!  If the police try to search your house, car, backpack, pockets, etc. say the Magic Words 2: â€œI do not consent to this search.â€  This may not stop them from forcing their way in and searching anyway, but if they search you illegally, they probably wonâ€™t be able to use the evidence against you in court.  You have nothing to lose from refusing to consent to a search and lots to gain.  Do not physically resist cops when they are trying to search because you could get hurt and charged with resisting arrest or assault.  Just keep repeating the Magic Words 2 so that the cops and all witnesses know that this is your policy.\r\n\r\nBe careful about casual consent.  That is, if you are stopped by the cops and you get out of the car but donâ€™t close the door, they can search the car and claim that they though you were indicating consent by leaving the door ajar.  Also, if you say, â€œIâ€™d rather you didnâ€™t search,â€ they can claim that you were reluctantly giving them permission to search.  Always just say the Magic Words 2: â€œI do not consent to this search.â€  \r\n\r\nIf the cops have a search warrant, nothing changes â€” itâ€™s legally safest to just say the Magic Words 2.  Again, you have nothing to lose from refusing to consent to a search, and lots to gain if the search warrant is incorrect or invalid in some way.  If they do have a search warrant, ask to read it.  A valid warrant must have a recent date (usually not more than a couple of weeks), the correct address, and a judgeâ€™s or magistrateâ€™s signature; some warrants indicate the time of day the cops can search.   You should say the Magic Words 2 whether or not the search warrant appears correct.  The same goes for any government official who tries to search you, your belongings, or your house.',NULL,NULL,1),
	(6,'IN GENERAL','2016-09-27 11:21:47','0000-00-00 00:00:00',NULL,NULL,'When dealing with the police, keep your hands in view and donâ€™t make sudden movements.  Avoid passing behind them.  Nervous cops are dangerous cops.  Also, never touch the police or their equipment (vehicles, flashlights, animals, etc.) â€” you can get beat up and charged with assault.\r\n\r\nThe police do not decide your charges; they can only make recommendations.  The prosecutor is the only person who can actually charge you.  Remember this the next time the cops start rattling off all the charges theyâ€™re supposedly â€œgoing to give you.â€',NULL,NULL,0),
	(7,'QUESTIONING','2016-09-27 11:21:47','0000-00-00 00:00:00',NULL,NULL,'Interrogation isnâ€™t always bright lights and rubber hoses â€” usually itâ€™s just a conversation.  Whenever the cops ask you anything besides your name and address, itâ€™s legally safest to say these Magic Words: \r\n\r\nâ€œI am going to remain silent. I want to see a lawyer.â€\r\n\r\nThis invokes the rights which protect you from interrogation.   When you say this, the cops (and all other law enforcement officials) are legally required to stop asking you questions.  They probably wonâ€™t stop, so just repeat the Magic Words or remain silent until they catch on.\r\n\r\n Remember, anything you say to the authorities can and will be used against you and your friends in court.  Thereâ€™s no way to predict what information the police might try to use or how theyâ€™d use it.  Plus, the police often misquote or lie altogether about what was said.  So say only the Magic Words and let all the cops and witnesses know that this is your policy.  Make sure that when youâ€™re arrested with other people, the rest of the group knows the Magic Words and promises to use them. \r\n\r\nOne of the jobs of cops is to get information out of people, and they usually donâ€™t have any scruples about how they do it.  Cops are legally allowed to lie when theyâ€™re investigating, and they are trained to be manipulative. The only thing you should say to cops, other than identifying yourself, is the Magic Words: â€œI am going to remain silent.  I want to see a lawyer.â€  \r\n\r\nHere are some lies they will tell you: \r\n	â€¢	â€œYouâ€™re not a suspect â€” just help us understand what happened here and then you can go.â€  \r\n	â€¢	â€œIf you donâ€™t answer my questions, Iâ€™ll have no choice but to arrest you.  Do you want to go to jail?â€\r\n	â€¢	â€œIf you donâ€™t answer my questions, Iâ€™m going to charge you with resisting arrest.â€\r\n	â€¢	â€œAll of your friends have cooperated and we let them go home.  Youâ€™re the only one left.â€\r\n\r\n	Cops are sneaky and there are lots of ways they can trick you into talking. Here are some scams theyâ€™ll pull:\r\n	â€¢	Good Cop/ Bad Cop:  Bad cop is aggressive and menacing, while good cop is nice, friendly, and familiar (usually good cop is the same race and gender as you).  The idea is bad cop scares you so bad you are desperately looking for a friend.  Good cop is that friend. \r\n	â€¢	The cops will tell you that your friends ratted on you so that you will snitch on them.  Meanwhile, they tell your friends the same thing.  If anyone breaks and talks, you all go down.  \r\n	â€¢	The cops will tell you that they have all the evidence they need to convict you and that if you â€œtake responsibilityâ€ and confess the judge will be impressed by your honesty and go easy on you.  What they really mean is: â€œwe donâ€™t have enough evidence yet, please confess.â€\r\n\r\nJail is a very isolating and intimidating place.  It is really easy to believe what the cops tell you.  Insist upon speaking with a lawyer before you answer any questions or sign anything.\r\n\r\nThe Golden Rule: Never trust a cop.',NULL,NULL,0),
	(8,'THE MIRANDA WARNINGS','2016-09-27 11:21:47','0000-00-00 00:00:00',NULL,NULL,'The police do not have to read you your rights (also known as the Miranda warnings).  Miranda applies when there is (a) an interrogation (b) by a police officer of other agent of law enforcement (c) while the suspect is in police custody (you do not have to be formally arrested to be â€œin custodyâ€).  Even when all these conditions are met, the police intentionally violate Miranda. And though your rights have been violated, what you say can be used against you.   For this reason, it is better not to wait for the cops â€“ you know what your rights are, so you can invoke them by saying the Magic Words, â€œI am going to remain silent. I want to see a lawyer.â€\r\n\r\nIf youâ€™ve been arrested and realize that you have started answering questions, donâ€™t panic.  Just re-invoke your rights by saying the Magic Words again.  Donâ€™t let them trick you into thinking that because you answered some of their questions, you have to answer all of them.',NULL,NULL,0),
	(9,'POLICE ENCOUNTERS','2016-09-27 11:21:47','0000-00-00 00:00:00',NULL,NULL,'There are three basic types of encounters with the police: \r\n\r\nConversation, Detention, and Arrest.  \r\n\r\n	Conversation: When the cops are trying to get information, but donâ€™t have enough evidence to detain or arrest you, theyâ€™ll try to weasel some information out of you.  They may call this a â€œcasual encounterâ€ or a â€œfriendly conversationâ€.  If you talk to them, you may give them the information they need to arrest you or your friends.  In most situations, itâ€™s better and safer not to talk to cops.\r\n\r\nDetention: Police can detain you only if they have reasonable suspicion (see below) that you are involved in a crime.  Detention means that, though you arenâ€™t arrested, you canâ€™t leave.  Detention is supposed to last a short time and they arenâ€™t supposed to move you.  During detention, the police can pat you down and go into your bag to make sure you donâ€™t have any weapons.  They arenâ€™t supposed to go into your pockets unless they feel a weapon.  \r\n\r\nIf the police are asking questions, ask if you are being detained.  If not, leave and say nothing else to them.  If you are being detained, you may want to ask why.  Then you should say the Magic Words: â€œI am going to remain silent.  I want a lawyerâ€ and nothing else.\r\nA detention can easily turn into arrest.  If the police are detaining you and they get information that you are involved in a crime, they will arrest you, even if it has nothing to do with your detention.  For example, if someone gets pulled over for speeding (detained) and the cop sees drugs in the car, the cops will arrest her for possession of the drugs even though it has nothing to do with her getting pulled over.  Cops have two reasons to detain you: 1) they are writing you a citation (a traffic ticket, for example), or 2) they want to arrest you but they donâ€™t have enough information yet to do so.\r\n\r\nArrest: Police can arrest you only if they have probable cause (see below) that you are involved in a crime.  When you are arrested, the cops can search you to the skin and go through you car and any belongings.  By law, an officer strip searching you must be the same gender as you.\r\n\r\nIf the police come to your door with an arrest warrant, go outside and lock the door behind you.  Cops are allowed to search any room you go into, so donâ€™t go back into the house for any reason.  If they have an arrest warrant, hiding wonâ€™t help because they are allowed to force their way in if they know you are there.  Itâ€™s usually better to just go with them without giving them an opportunity to search.',NULL,NULL,0),
	(10,'REASONABLE SUSPICION VS. PROBABLE CAUSE','2016-09-27 11:21:47','0000-00-00 00:00:00',NULL,NULL,'\r\nReasonable suspicion must be based on more than a hunch â€” cops must be able to put their suspicion into words.  For example, cops canâ€™t just stop someone and say, â€œShe looked like she was up to something.â€  They need to be more specific, like, â€œShe was standing under the overpass staring up at some graffiti that hadnâ€™t been there 2 hours ago.  She had the same graffiti pattern written on her backpack.  I suspected that she had put up the graffiti.â€\r\nCops need more proof to say they have a probable cause than to say they have a reasonable suspicion.  For example, â€œA store owner called to report someone matching her description tagging a wall across the street.  As I drove up to the store, I saw her running away spattered with paint and carrying a spray can in her hand.â€ ',NULL,NULL,0),
	(11,'SEARCHES','2016-09-27 11:21:47','0000-00-00 00:00:00',NULL,NULL,'Never consent to a search!  If the police try to search your house, car, backpack, pockets, etc. say the Magic Words 2: â€œI do not consent to this search.â€  This may not stop them from forcing their way in and searching anyway, but if they search you illegally, they probably wonâ€™t be able to use the evidence against you in court.  You have nothing to lose from refusing to consent to a search and lots to gain.  Do not physically resist cops when they are trying to search because you could get hurt and charged with resisting arrest or assault.  Just keep repeating the Magic Words 2 so that the cops and all witnesses know that this is your policy.\r\n\r\nBe careful about casual consent.  That is, if you are stopped by the cops and you get out of the car but donâ€™t close the door, they can search the car and claim that they though you were indicating consent by leaving the door ajar.  Also, if you say, â€œIâ€™d rather you didnâ€™t search,â€ they can claim that you were reluctantly giving them permission to search.  Always just say the Magic Words 2: â€œI do not consent to this search.â€  \r\n\r\nIf the cops have a search warrant, nothing changes â€” itâ€™s legally safest to just say the Magic Words 2.  Again, you have nothing to lose from refusing to consent to a search, and lots to gain if the search warrant is incorrect or invalid in some way.  If they do have a search warrant, ask to read it.  A valid warrant must have a recent date (usually not more than a couple of weeks), the correct address, and a judgeâ€™s or magistrateâ€™s signature; some warrants indicate the time of day the cops can search.   You should say the Magic Words 2 whether or not the search warrant appears correct.  The same goes for any government official who tries to search you, your belongings, or your house.',NULL,NULL,0),
	(12,'INFILTRATORS AND INFORMANTS','2016-09-27 11:21:47','0000-00-00 00:00:00',NULL,NULL,'Undercover cops sometimes infiltrate political organizations.  They can lie about being cops even if asked directly.  Undercover cops can even break the law (narcs get hazard pay for doing drugs as part of their cover) and encourage others to do so as well.  This is not legally entrapment.',NULL,NULL,0),
	(13,'FBI AND OTHER GOVERNMENT AGENTS','2016-09-27 11:21:47','0000-00-00 00:00:00',NULL,NULL,'The essence of the Magic Words â€“ Iâ€™m keeping my mouth shut until I talk to a lawyer â€“ not only applies to police but also to the FBI, ICE, CIA, even IRS.    If you want to be nice and polite, tell them that you donâ€™t wish to speak with them until youâ€™ve spoken with your lawyer, or that you wonâ€™t answer questions without a lawyer present.  If you are being investigated as a result of your political activity, you can call the National Lawyers Guild at (415) 285-1055; they will help you find a lawyer you can talk to.    \r\n',NULL,NULL,0),
	(14,'TAKING NOTES','2016-09-27 11:21:47','0000-00-00 00:00:00',NULL,NULL,'Whenever you interact with or observe the police, always write down what is said and who said it.  Write down the copsâ€™ names and badge numbers and the names and contact information of any witnesses.  Record everything that happens.  If you are expecting a lot of police contact, get in the habit of carrying a small tape recorder and a camera with you.  Be careful â€” cops donâ€™t like people taking notes, especially if the cops are planning on doing something illegal.  Observing them and documenting their actions may have very different results; for example, it may cause them to respond aggressively, or it may prevent them from abusing you or your friends.\r\n',NULL,NULL,0),
	(15,'CONCLUSION','2016-09-27 11:21:47','0000-00-00 00:00:00',NULL,NULL,'People deal with police in all kinds of circumstances.  You must make an individual decision about how you will interact with law enforcement.  It is important to know your legal rights, but it is also important for you to decide when and how to use them in order to best protect yourself.',NULL,NULL,0),
	(16,'Intro','2016-09-27 11:28:27','0000-00-00 00:00:00',NULL,NULL,'The Tampa 2012 Legal Support for the Republic National Convention (RNC) protests is made up of members of the National Lawyers Guild (NLG). Based on past experiences with mass defense in other cities, we are providing some basic information on what you might expect from law enforcement during the RNC protests in Tampa.\r\nWhile this is intended to provide some information in response to frequently asked questions about potential law enforcement conduct toward demonstrators, it is by no means an indication that any potential application (or misapplication) of the law by the police as described herein would be proper. In fact, the temporary Tampa Ordinance raises significant constitutional questions. Quickly enacted pop-up ordinances, like the one for this event, have not been subject to judicial review and interpretation in advance and lack clarity as to application and the lawfulness of any application. The NLG recognizes that at National Special Security Event demonstrations federal and local law enforcement routinely commit mass civil rights violations, including selective enforcement and false arrest. The point of this informational leaflet is to assist people in the full exercise of your rights to demonstrate and protest.\r\nSome actions taken by the police may be unlawful and, if you are arrested, you may have defenses. By providing this information, we are not suggesting that these arrest practices are lawful.\r\n',NULL,NULL,0),
	(17,'Our Hotline','2016-09-27 11:28:27','0000-00-00 00:00:00',NULL,NULL,'The NLGâ€™s legal hotline is a number for people to call in from jail when arrested, for reports from the street, and for information from friends and loved ones about people arrested. Anyone arrested should be prepared to have no or limited access to a phone while in jail prior to first appearance. If arrested, you may not have access to your property (cell phone, whatâ€™s in your pockets). To make a call from jail, you need the number memorized or written on your body.',NULL,NULL,0),
	(18,'IMPORTANT DISCLAIMER','2016-09-27 11:28:27','0000-00-00 00:00:00',NULL,NULL,'This overview is not exhaustive and is not, in any way, an attempt to give or offer legal advice. For specific legal advice, you must consult an attorney.',NULL,NULL,0),
	(19,'ARREST INFO','2016-09-27 11:28:27','0000-00-00 00:00:00',NULL,NULL,'It is impossible to know what charges police will use when making arrests or to predict what release procedures the police will use. In some circumstances, individuals are arrested, taken to a police facility or jail, booked and released on a written promise to appear. Other times, people are arrested, booked and only released before their first court appearance by posting bail. In Tampa, we have heard that people charged with protest related misdemeanors and felonies will be held at the Hillsborough County Jail (Orient Road and N. Falkenburg Road) and that a first court appearance (where you enter a plea and any bond is set) may be done by video from the jail. Everything you say at first appearance may be recorded; these statements can be used against you. Talk to a lawyer before saying anything about your case. We will try to have someone from NLG legal support at first appearances. As more information becomes available about arrest procedures, we will post it to our website.\r\nThe NLG does not have resources to represent everyone arrested. We are working with the Hillsborough County Public Defender\'s Office to share information about any arrests and incidents witnessed by NLG Legal Observers.Â® If needed, we have information available about private attorneys who may represent activists for free or at some cost, but the NLG cannot guarantee private representation to anyone. You will have to arrange your own legal representation with any private attorneys. The NLG does not endorse any particular attorney. We have limited resources to visit people in jail to facilitate communication and information sharing with the Public Defenders. You should assert your views and wishes about your legal defense into that process.',NULL,NULL,0),
	(20,'SOME STATE AND LOCAL LAWS YOU SHOULD KNOW ABOUT','2016-09-27 11:28:27','0000-00-00 00:00:00',NULL,NULL,'Based on a review of state law and Tampa local ordinances, law enforcement may attempt to use the following laws to prosecute protesters. This list is not exhaustive, nor is the information provided about each possible offense comprehensive.\r\n\r\n<b>Traffic Laws</b> Law enforcement may selectively enforce traffic and pedestrian laws against protesters. If you want to avoid citations, obey all traffic laws. Failing to do so gives the police an excuse to stop you, run your name for warrants, search your property, or issue you an expensive citation. This includes standing in the street while waiting to cross intersections and jaywalking. Riding your bike in a bike lane or walking it on the sidewalk when in heavy traffic areas might help you avoid problems.\r\n\r\n<b>Unlawful Assembly</b> Police may unlawfully use this charge to conduct arrests after giving a dispersal order or sometimes when no order or a defective order is given. Pay attention to dispersal orders; it can be helpful if you are falsely arrested.\r\n\r\n<b>Resisting Officer (Resisting Arrest)</b> Non-cooperation with the arrest process may result in this charge. Generally, physical, rather than verbal, acts are considered resisting an officer. For example, struggling with police, or going limp. Refusing to answer questions, in most cases, is not resisting. Refusing to obey lawful orders of law enforcement can also result in arrest for this offense. If police believe you have used force or threat of force to resist arrest, you could be charged with a felony (Resisting an Officer with Violence).\r\n\r\n<b>Assault or Battery on a Law Enforcement Officer</b> The battery charge is a felony and can involve more serious penalties if a weapon is involved. These charges might be used if you threaten a police officer or touch him/her or his/her things (cars, batons, bikes, horses, etc.).\r\n\r\n<b>Disorderly Conduct</b> If the disorder involves damage to people or property (especially involving police officers or their possessions) the charges may be enhanced from a misdemeanor vandalism, etc. to a felony.\r\n\r\n<b>Sidewalk Obstruction</b> In general, you have the right to be on the sidewalk so long as you are not blocking the free flow of traffic on it. A PUBLIC SIDEWALK CAN BE WITHIN THE AREA DEFINED AS AN UNLAWFUL ASSEMBLY AND PERSONS ON THE SIDEWALK MAY BE ORDERED TO DISPERSE. Under the new temporary Tampa RNC ordinance, law enforcement may also subject people to citation or arrest on a sidewalk if you are carrying any of the listed prohibited materials (see below).\r\n\r\n<b>Masks</b> Under the temporary Tampa RNC ordinance, it is unlawful for any person to â€œwear any mask, or device whereby any portion of the face is hidden, concealed or covered as to conceal the identity of the wearer in the Event Zone.â€ This law allows â€œmasks or devicesâ€ on the official parade route and the public viewing area. See our posted map of the â€œEvent Zoneâ€ which covers a large part of downtown Tampa. Generally, wearing a facial covering for the purpose of political expression, for example, expressing solidarity with a political group, such as the Zapatistas, is not illegal and is a form of political speech protected by the First Amendment. You have the right to protest anonymously; however, wearing a hood or mask to conceal your identity can be unlawful if you are wearing it to hide your identity with the intent to break the law. Bottom line: if you wear a mask in downtown Tampa, you could be ordered by police to remove it or risk arrest for a violation of the law (up to $500 fine and/or up to 60 days in jail).\r\n\r\n<b>Sleeping and Camping in Public</b> Under local Tampa laws, you may be cited or arrested, for camping or sleeping on public sidewalks, in public parks and on public lands (including sleeping in a car parked in public) or on private parking lots (without the permission of the owner of the private property or roads). Camping is defined by Tampa laws as a â€œpublic nuisanceâ€ and the City may remove your temporary shelter, bedding or personal belongings. We believe that using a tent or similar structure as part of First Amendment political expression and not solely for shelter is protected under a recent court case by FL NLG attorneys; however, if an officer issues an order otherwise, your property may be taken and you may be risking arrest. Document these actions by police and report them to the NLG.\r\n\r\n<b>Photographing, Video Taping and Audiorecording</b> If you are lawfully present in a public space, you have a right to photograph things in plain view, including the police. However, a Florida law makes it illegal to audio record a conversation without all partiesâ€™ consent. This law could be used by police to order you to stop audio recording (this includes video recording with audio). We believe that you have a right to observe and document police activity in public spaces, but if a police officer orders you to stop audio recording and you donâ€™t, you may be risking arrest. Document these actions by police and report them to the NLG.\r\nSigns, Banners and Stick Supports: The temporary Tampa RNC ordinance restricting what size sign supports you can carry and what they can be made out applies on public property owned, operated, managed or leased by the City of Tampa.',NULL,NULL,0),
	(21,'If you have the intent to cause injury, harm or damage to any person or property, it is unlawful to','2016-09-27 11:43:16','0000-00-00 00:00:00',NULL,NULL,'â–ª have any type of wood unless it is one-fourth (1/4) inch or less in thickness and two (2) inches or less in width or if the item is not generally rectangular in shape, it cannot be more than 3â„4 inch at its thickest dimension. These items are ok to have if not filled with any material, liquid or gas and both ends are blunt (not pointed).\r\nâ–ª have any hollow or solid metal, plastic or hard material that is greater than 3â„4 inch thick and 1/8 inch wall thickness. These items are ok to have if not filled with any material, liquid or gas and both ends are blunt (not pointed).\r\n\r\nIn plain language: Signs supports, banner and puppet supports used in a lawful manner on Tampa public streets, sidewalks and parks = probably ok, but if law enforcement thinks you are using them unlawfully, you may be risking arrest or them taking your items',NULL,NULL,0),
	(22,'PROHIBITED ITEMS UNDER THE TEMPORARY RNC ORDINANCE','2016-09-27 11:43:16','0000-00-00 00:00:00',NULL,NULL,'Under the temporary Tampa RNC ordinance, many items are prohibited in different places in the City (event zone, city wide or the â€œviewing areaâ€). Some things are banned from an area even if the person carrying it has no intent to cause any injury, harm or damage to person or property. These prohibited items include (partial list):\r\nï‚· gas masks or similar breathing devices to protect respiratory tracts and/or face against irritating or noxious gases or materials (not allowed in Event Zone)\r\nï‚· any container or inflatable device filled with any liquid or solid with the intent to cause harm\r\nï‚· glass bottles or ceramic containers regardless of any intent to cause harm (non-glass and non-ceramic containers\r\nfilled with water are ok if there is no intent to cause harm)\r\nï‚· lighting a campfire\r\nï‚· spray paint cans, water guns (with intent to cause harm to person or property)\r\nï‚· rope, chain, cable, wire, string, line, tape or any similar materials with tensile strength greater than 30 lbs. and longer\r\nthan 6 feet\r\nï‚· locks â€“ padlocks, chain locks or similar locks (but locks attached to a bike should be allowed)\r\nï‚· material designed, intended or readily adaptable for use as a portable shield, including umbrellas\r\nï‚· throwing, projecting or launching objects with intent to cause intimidation, injury, harm or damage to any person or\r\nproperty\r\n\r\nâ€œPUBLIC VIEWING AREAâ€ - The following items are prohibited in an area created by the City for protesters near the RNC site.\r\nï‚· anything on the list above\r\nï‚· camping gear\r\nï‚· coolers and ice chests\r\nï‚· fireworks\r\nï‚· non-plastic containers, bottles, cans and thermoses\r\nï‚· sticks and poles that do not meet the requirements in the ordinance\r\nï‚· ladders, bipods, tripods\r\nï‚· umbrellas with metal tips\r\nï‚· â€œany other item that law enforcement determines to be a clear and present danger to the health, safety, welfare and\r\ngood order of the persons in the public viewing areaâ€\r\n\r\nMEDICS: There is an exception if you are a licensed medical professional performing your medical duties, you can have certain items in the event zone including: containers filled with liquid or solids, glass bottles, ceramic vessels, breathing devices.',NULL,NULL,0),
	(23,'SEARCHES AND STOPS','2016-09-27 11:44:45','0000-00-00 00:00:00',NULL,NULL,'<b>Refer to our other Know Your Rights documents on the website for more detailed information about searches.</b>\r\nThere may be police checkpoints set up around the protest areas, including the â€œpublic viewing areaâ€ to conduct searches. If a law enforcement officer demands to search your bag or person, ask first if you are suspected of criminal activity or under arrest and, if so, what is the criminal charge. If there is no suspected crime and no arrest, you may lawfully refuse to have your bags or person searched. Keep in mind, however, that the officer may still try to bar your entry into an area. This would not likely be lawful but, if you want to pass by the officer, you may have no choice but to give in to the unlawful demand. Be sure to state clearly \"I do not consent to this search.\" If arrested, your bags can be searched incident to an arrest.\r\nIn general, avoid carrying:\r\nï‚· illegal drugs\r\nï‚· weapons (even pocket knives)\r\nï‚· personal items you don\'t want the cops to see (datebooks, phone contacts, etc.)\r\nIf you are stopped by the police:\r\nï‚· In Florida, police may stop and ask you for identification and to explain your presence if they have reasonable suspicion to stop you; in these circumstances, failure to identify yourself and what you are doing could result in arrest\r\nï‚· Ask if you are free to go. If you are not under arrest, you can walk away.\r\nï‚· Remember that cops are allowed to lie to you and they will. Talk to a lawyer before you sign anything or tell the\r\npolice anything.\r\nï‚· If you are a non-citizen or a minor, see the important information below that can affect you.\r\nï‚· Memorize this sentence: I am going to remain silent. I want to see a lawyer. You can invoke your rights even if the\r\ncops don\'t tell you what they are.',NULL,NULL,0),
	(24,'SPECIAL CONSIDERATIONS FOR NONÂ·CITIZENS','2016-09-27 11:44:45','0000-00-00 00:00:00',NULL,NULL,'If you are not a citizen, even if you have a â€œgreen cardâ€ or a visa, being arrested in protest actions might have serious consequences in your life. You might have problems with immigration in the future or could face deportation from the U.S. If arrested, immediately request an attorney. Non-citizens who are arrested should not say anything about your immigration status, birth place, entry, departure or stay in the U.S. until you have talked to an attorney. The choices you make about plea bargains, trials, etc., could impact your immigration status, and your lawyer needs to know it.\r\nLawyers are always telling you to talk to a lawyer, but it is especially important here. This short sheet can\'t possibly provide enough information on immigration law, which is extremely complex, and changes all the time. If you have questions, you should talk to a licensed immigration attorney.',NULL,NULL,0),
	(25,'SPECIAL CONSIDERATIONS FOR MINORS','2016-09-27 11:44:45','0000-00-00 00:00:00',NULL,NULL,'Minors involved in the RNC protests and those providing legal support to them should operate under the assumption that, if arrested, they will be released only to a parent or legal guardian. If minors refuse to provide identification or give their name and age when arrested, they could be processed as an adult and detained in the adult holding facilities. Those who are obviously minors will most likely be separated from adults upon arrest.',NULL,NULL,0),
	(26,'TEST TEXT 2','2016-09-27 11:56:28','0000-00-00 00:00:00',NULL,NULL,'lorem',NULL,NULL,0);

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
	(1,'Module',1,1),
	(2,'Module',1,2),
	(3,'Module',1,3),
	(4,'Module',2,1),
	(5,'Module',2,2),
	(6,'Module',2,4),
	(7,'Module',3,1),
	(8,'Module',3,2),
	(9,'Module',3,4),
	(10,'Module',4,1),
	(11,'Module',4,2),
	(12,'Module',4,4),
	(13,'Module',5,5),
	(14,'Document',1,1),
	(15,'Document',1,4),
	(16,'Document',1,6),
	(17,'Document',1,2),
	(18,'Document',2,5);

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
	(1,'police'),
	(2,'questioning'),
	(3,'lawyer'),
	(4,'arrest'),
	(5,''),
	(6,'searching');

/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
