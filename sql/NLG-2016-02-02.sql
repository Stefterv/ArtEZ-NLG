-- phpMyAdmin SQL Dump
-- version 4.0.10.6
-- http://www.phpmyadmin.net
--
-- Host: 10.3.0.195
-- Generation Time: Feb 02, 2016 at 11:11 AM
-- Server version: 5.5.41
-- PHP Version: 5.5.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `steftnp108_nlg`
--

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE IF NOT EXISTS `documents` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `__meta info__` int(11) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `based_on` int(11) DEFAULT NULL,
  `changed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `__meta info__`, `author`, `title`, `based_on`, `changed`, `deleted`) VALUES
(1, NULL, 'Stef Tervelde', 'Lorem ipsum dolor sit amet', 0, '2015-06-02 12:11:13', 1),
(2, NULL, 'Jan Hopkens', 'Injuries, Funds and Minimum wage<br>', 0, '2015-06-11 16:22:10', 0),
(3, NULL, 'Pieter de Breejen', 'YOU HAVE THE RIGHT TO BE COMPENSATED FOR ON-THE-JOB INJURIES', 1, '2015-06-11 16:21:45', 0),
(4, NULL, 'Cas Spoelstra', 'FREE FROM DISCRIMINATION', 3, '2015-06-02 12:30:27', 0),
(5, NULL, 'Ralf Kladjes', 'COMPENSATION FOR INJURIES', 0, '2015-06-02 12:30:05', 0),
(6, NULL, 'Neeltje van der Bleskens', 'COME TOGETHER', 0, '2015-06-02 12:30:28', 0),
(7, NULL, 'Joost ter Laken', 'MINIMUM WAGE', 0, '2015-06-02 12:30:29', 0),
(8, NULL, 'Alex van Bergen', 'HEALTHY WORKING CONDITIONS', 0, '2015-06-02 12:30:31', 0),
(9, NULL, 'Hans de Bruijn', 'LEGAL SERVICES', 1, '2015-06-02 14:19:28', 0),
(10, NULL, NULL, 'Long article', 0, '2015-06-16 13:53:51', 0),
(11, NULL, NULL, 'Illness', 0, '2015-06-16 14:02:07', 0),
(12, NULL, NULL, 'Test moduleÂ ', 0, '2015-06-16 14:22:30', 0),
(13, NULL, NULL, 'This is test document 2&nbsp;', 0, '2015-09-29 18:11:08', 0),
(14, NULL, NULL, 'Hallo', 0, '2015-10-20 19:11:22', 0),
(15, NULL, NULL, '', 0, '2015-10-20 19:13:07', 0),
(16, NULL, NULL, 'Safe Workplace Test document', 0, '2015-12-14 09:49:55', 0);

-- --------------------------------------------------------

--
-- Table structure for table `document_links`
--

CREATE TABLE IF NOT EXISTS `document_links` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `document_id` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=673 ;

--
-- Dumping data for table `document_links`
--

INSERT INTO `document_links` (`id`, `document_id`, `type`, `item_id`, `rank`) VALUES
(17, 1, 'Module', 1, 0),
(320, 6, 'Module', 35, 0),
(321, 6, 'Module', 36, 1),
(322, 6, 'Module', 37, 2),
(323, 6, 'Module', 38, 3),
(326, 7, 'Module', 39, 0),
(327, 7, 'Module', 40, 1),
(328, 7, 'Module', 41, 2),
(329, 7, 'Module', 42, 3),
(330, 7, 'Module', 43, 4),
(331, 7, 'Module', 44, 5),
(358, 10, 'Module', 57, 0),
(359, 10, 'Module', 58, 1),
(360, 10, 'Module', 59, 2),
(361, 10, 'Module', 60, 3),
(362, 10, 'Module', 61, 4),
(363, 10, 'Module', 62, 5),
(364, 10, 'Module', 63, 6),
(365, 10, 'Module', 64, 7),
(366, 10, 'Module', 65, 8),
(367, 10, 'Module', 66, 9),
(368, 10, 'Module', 67, 10),
(369, 10, 'Module', 68, 11),
(370, 10, 'Module', 69, 12),
(507, 11, 'Module', 9, 0),
(508, 11, 'Module', 7, 1),
(509, 11, 'Module', 8, 2),
(510, 11, 'Module', 70, 3),
(511, 11, 'Module', 71, 4),
(532, 4, 'Module', 25, 0),
(533, 4, 'Module', 28, 1),
(534, 4, 'Module', 29, 2),
(535, 4, 'Module', 26, 3),
(536, 4, 'Module', 27, 4),
(537, 4, 'Module', 31, 5),
(538, 4, 'Module', 30, 6),
(539, 4, 'Module', 102, 7),
(540, 13, 'Module', 103, 0),
(541, 13, 'Module', 104, 1),
(542, 9, 'Module', 49, 0),
(543, 9, 'Module', 51, 1),
(544, 9, 'Module', 50, 2),
(545, 12, 'Module', 81, 0),
(546, 12, 'Module', 105, 1),
(562, 2, 'Module', 12, 0),
(563, 2, 'Module', 18, 1),
(564, 2, 'Module', 19, 2),
(565, 2, 'Module', 82, 3),
(566, 2, 'Module', 106, 4),
(573, 14, 'Module', 107, 0),
(574, 14, 'Module', 108, 1),
(577, 15, 'Module', 6, 0),
(578, 15, 'Module', 7, 1),
(579, 15, 'Module', 109, 2),
(629, 8, 'Module', 87, 0),
(630, 8, 'Module', 85, 1),
(631, 8, 'Module', 86, 2),
(632, 8, 'Module', 88, 3),
(633, 8, 'Module', 89, 4),
(634, 8, 'Module', 90, 5),
(635, 8, 'Module', 91, 6),
(636, 8, 'Module', 92, 7),
(637, 8, 'Module', 93, 8),
(638, 8, 'Module', 94, 9),
(639, 8, 'Module', 95, 10),
(640, 8, 'Module', 96, 11),
(641, 8, 'Module', 97, 12),
(642, 8, 'Module', 112, 13),
(663, 16, 'Module', 6, 0),
(664, 16, 'Module', 7, 1),
(665, 16, 'Module', 113, 2),
(666, 5, 'Module', 32, 0),
(667, 5, 'Module', 33, 1),
(668, 5, 'Module', 34, 2),
(669, 3, 'Module', 24, 0),
(670, 3, 'Module', 22, 1),
(671, 3, 'Module', 23, 2),
(672, 3, 'Module', 13, 3);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE IF NOT EXISTS `images` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `src` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `src`) VALUES
(1, 'https://scontent-fra.xx.fbcdn.net/hphotos-xfp1/t31.0-8/11155166_824543114259985_4442859464793940531_o.jpg'),
(2, 'https://scontent-fra.xx.fbcdn.net/hphotos-xfp1/t31.0-8/11155166_824543114259985_4442859464793940531_o.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE IF NOT EXISTS `modules` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=114 ;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `title`, `created`, `changed`, `based_on`, `type`, `content`, `__meta info__`, `author_id`, `master`) VALUES
(1, '', NULL, '2015-06-02 12:54:04', NULL, NULL, 'consectetur adipisicing elit', NULL, NULL, 0),
(2, '', NULL, '2015-06-02 12:54:08', NULL, NULL, 'test', NULL, NULL, 0),
(3, '', NULL, '2015-06-02 12:54:08', NULL, NULL, 'hello', NULL, NULL, 0),
(4, '', NULL, '2015-06-02 12:54:09', NULL, NULL, 'modules_3', NULL, NULL, 0),
(5, '', NULL, '2015-06-02 12:54:11', NULL, NULL, '', NULL, NULL, 0),
(6, 'Safe workplace', '0000-00-00 00:00:00', '2015-06-01 20:27:20', NULL, NULL, 'YOU HAVE THE RIGHT TO A SAFE WORKPLACE AND HEALTHY WORKING CONDITIONS YOU have the right to â€”â€¨Free protective equipment (goggles, masks, gloves) when workplace hazards exist. Refuse to work when dangerous conditions present immediate risk of death or serious physical harm and to assert your rights to a safe workplace without threats or retaliation. Donâ€™t let your employer violate your rights! Call OSHA at (212) 337-2378 or visit www.osha.gov', NULL, NULL, 1),
(7, 'Minimum wage', '0000-00-00 00:00:00', '2015-06-02 12:10:53', NULL, NULL, 'HAVE THE RIGHT TO MINIMUM WAGE AND OVERTIME PAY YOU have the right to - Make a minimum of $8.75* per hour, even if you are undocumented or a \r\ndomestic worker. - Payment of overtime compensation if you work over 40 \r\nhours a week, even if you are undocumented or a domestic worker (live-in\r\n domestic workers must be paid overtime after 44 hours a week). - Assert \r\nyour right to be paid without threats or retaliation. Donâ€™t let your employer violate your rights! Call\r\n the NY Dept. of Labor at (888) 469-7365 or the US Dept. of Labor at \r\n(866) 487-9243 to make a employer discriminates against you.* Increases to $9.00/hour on December 31, 2015', NULL, NULL, 1),
(8, 'Compensation', '0000-00-00 00:00:00', '2015-06-01 20:27:40', NULL, NULL, 'YOU HAVE THE RIGHT TO BE COMPENSATED FOR ON-THE- JOB INJURIES <br>YOU have the right to â€” for your injuries, even if you are undocumented or a full-time domestic worker.&nbsp; Ongoing medical care and prescription coverage by a doctor of your own choice, if you are found eligible for workersâ€™ compensation. Freedom from threats or retaliation for making a claim. &nbsp;<br><br>Donâ€™t let your employer violate your rights! <br>Call the at (877) 632-4996 if you are discriminated against for making a claim. <br>', NULL, NULL, 1),
(9, 'Illness', '0000-00-00 00:00:00', '2015-06-01 20:27:49', NULL, NULL, 'YOU HAVE THE RIGHT TO TIME OFF FOR ILLNESS AND TO CARE FOR YOUR FAMILY <br>YOU have the right to â€”<br>â€¨Earn up to 40 hours of paid time off for illness or family care if your employer has more than 5 employees.Â  Express breast milk at work during paid or unpaid breaks or lunch time, and in a separate room, if available. YOU may have the right to â€” Up to 12 weeks unpaid time off from work for illness or to care for family and still keep your job, or a similar job, if your employer has more than 50 employees. <br><br>EDIT<br><br>Find out if you have the right to time off! <br>Call the NYC Dept. of Consumer Affairs at 311 for information about paid time off.â€¨Call the NY Dept. of Labor at (888) 469-7365 for information about expressing breast milk. <br>Call the US Dept. of Labor at (866) 487-9243 for information about unpaid weeks off. <br>', NULL, NULL, 1),
(10, 'Discrimination', '0000-00-00 00:00:00', '2015-06-01 20:27:57', NULL, NULL, 'YOU HAVE THE RIGHT TO WORK FREE FROM DISCRIMINATION <br>It is against the law for your employer to â€” <br><br>Fire you, pay you less, or give you different work because of your race, color, age, creed, national origin, citizenship status, gender, gen- der identity, sexual orientation, disability, arrest or conviction record, marital or partnership status, unemployment status, or status as a victim of domestic violence, stalking, or sex offenses, even if you are undocumented. Perpetrate or to allow sexual harassment against you. Deny you a reasonable (and not burdensome) accommodation to allow you to perform your job, if you are disabled. Retaliate against you because you opposed a discriminatory practice. <br><br>Donâ€™t let your employer violate your rights! <br>Equal Opportunity Employment Commission (800) 669-4000â€¨NYS Division of Human Rights (within 1 year) at (718) 741-8400 <br>NYC Commission on Human Rights (within 1 year) at (212) 306-7450 <br><br><div>Lorem ipsum dolor sit amet, evertitur interesset ius eu. Et eos ancillae maiestatis adipiscing. Eum populo repudiare dissentiet cu. Duo ad debet diceret, nam eu harum exerci instructior, ad vitae homero indoctum ius. Id discere labores indoctum his, usu ex brute suscipit.</div><div><br></div><div>Ad nam utinam officiis. Est inani soluta placerat cu. Elitr senserit no vim, fabulas vituperatoribus ei mei, at nam quis dissentias. Sea latine feugait cu, ut debet commune cum, in stet facilisis vel. Et erat rebum blandit eum, mea disputando instructior ex.</div><div><br></div><div>No movet latine sed, ne mei ipsum repudiare, legimus sensibus in nec. Vidit ocurreret nec eu, in modo aliquid vim, ea eam natum temporibus. Ei his hinc alterum copiosae. Quodsi lucilius cum ne.</div><div><br></div><div>Vim meis iisque assueverit et. Nisl fuisset verterem ei mei, eros dolores maluisset ne quo. Et noster accumsan eum, modus affert et mea. Nec fierent mediocrem salutatus in. Constituto appellantur eu sed, ei ferri deterruisset duo.</div><div><br></div><div>Nobis possim nusquam vis id, et enim nullam pro, dicat corpora complectitur ut per. Te sed appareat similique. Cum magna detraxit lobortis te, id suas quodsi perfecto pri. Vis eu saepe eruditi.</div><br><span style=', NULL, NULL, 1),
(11, 'Injuries', '0000-00-00 00:00:00', '2015-06-01 20:28:06', NULL, NULL, 'YOU HAVE THE RIGHT TO BE COMPENSATED FOR ON-THE- JOB INJURIES <br>YOU have the right to â€” for your injuries, even if you are undocumented or a full-time domestic worker.Â  Ongoing medical care and prescription coverage by a doctor of your own choice, if you are found eligible for workersâ€™ compensation. Freedom from threats or retaliation for making a claim. Â <br><br>Donâ€™t let your employer violate your rights! <br>Call the at (877) 632-4996 if you are discriminated against for making a claim. <br>', NULL, NULL, 1),
(12, 'Injuries', NULL, '2015-06-02 12:54:35', NULL, NULL, 'YOU HAVE THE RIGHT TO BE COMPENSATED FOR ON-THE- JOB INJURIES <br>YOU have the right to â€” for your injuries, even if you are undocumented or a full-time domestic worker.&nbsp; Ongoing medical care and prescription coverage by a doctor of your own choice, if you are found eligible for workersâ€™ compensation. Freedom from threats or retaliation for making a claim. &nbsp;<br><br>Donâ€™t let your employer violate your rights! <br>Call the at (877) 632-4996 if you are discriminated against for making a claim. <br>', NULL, NULL, 0),
(13, '', NULL, '2015-06-02 12:54:59', NULL, NULL, 'YOU have the right to -- Cash benefits and medical treatment for your injuries, even if you are undocumented or a full-time domestic worker. Ongoing medical care and prescription coverage by a doctor of your own choice, if you are found eligible for workers'' compensation.  <BR><BR> Freedom from threats or retaliation for making a claim. <BR><BR> Don''t let your employer violate your rights! call the NYS Workers'' Compensation Board at (877) 632-4996 if you are discriminated against for making a claim.', NULL, NULL, 0),
(14, 'Minimum Wage', NULL, '2015-06-02 13:47:55', NULL, NULL, 'YOU HAVE THE RIGHT TO MINIMUM WAGE AND OVERTIME PAY  YOU have the right to â€”  Make a minimum of $8.75* per hour, even if you are undocumented or a domestic worker.   Payment of overtime compensation if you work over 40 hours a week, even if you are undocumented or a domestic worker (live-in domestic workers must be paid overtime after 44 hours a week).   Assert your right to be paid without threats or retaliation.  Donâ€™t let your employer violate your rights! Call the NY Dept. of Labor at (888) 469-7365 or the US Dept. of Labor at (866) 487-9243 to make a   employer discriminates against you. * Increases to $9.00/hour on December 31, 2015', NULL, NULL, 0),
(15, '', NULL, '2015-06-02 14:06:06', NULL, NULL, '', NULL, NULL, 0),
(16, '', NULL, '2015-06-02 14:14:08', NULL, NULL, '', NULL, NULL, 0),
(17, 'Right to a safe workplace', NULL, '2015-06-11 16:12:24', NULL, NULL, 'YOU HAVE THE RIGHT TO A SAFE WORKPLACE AND HEALTHY WORKING CONDITIONS  YOU have the right to â€”  Free protective equipment (goggles, masks, gloves) when workplace hazards exist.   Refuse to work when dangerous conditions present immediate risk of death or serious physical harm and to assert your rights to a safe workplace without threats or retaliation.   Donâ€™t let your employer violate your rights!  Call OSHA at (212) 337-2378 or visit www.osha.gov', NULL, NULL, 0),
(18, 'Funds', NULL, '2015-06-11 16:12:25', NULL, NULL, 'These funds go to cover bail expenses and associated costs to ensure that protesters can be released as soon as possible and to ensure due process and legal representation is available to all.', NULL, NULL, 0),
(19, 'Minimum wage<br>', NULL, '2015-06-11 16:12:25', NULL, NULL, 'YOU HAVE THE RIGHT TO MINIMUM WAGE AND OVERTIME PAY<br>YOU have the right to â€”â€¨Make a minimum of $8.75* per hour, even if you are undocumented or a domestic worker. Payment of overtime compensation if you work over 40 hours a week, even if you are undocumented or a domestic worker (live-in domestic workers must be paid overtime after 44 hours a week). Assert your right to be paid without threats or retaliation. <br><br>Donâ€™t let your employer violate your rights!<br>Call the NY Dept. of Labor at (888) 469-7365 or the US Dept. of Labor at (866) 487-9243 to make a employer discriminates against you.<br>* Increases to $9.00/hour on December 31, 2015', NULL, NULL, 0),
(20, 'RIGHT TO WORK FREE FROM DISCRIMINATION', NULL, '2015-06-11 16:20:35', NULL, NULL, 'YOU HAVE THE RIGHT TO WORK FREE FROM DISCRIMINATION  It is against the law for your employer to  Fire you, pay you less, or give you different work because of your race, color, age, creed, national origin, citizenship status, gender, gender identity, sexual orientation, disability, arrest or conviction record, marital or partnership status, unemployment status, or status as a victim of domestic violence, stalking, or sex offenses, even if you are undocumented.  Perpetrate or to allow sexual harassment against you.   Deny you a reasonable (and not burdensome) accommodation to allow you to perform your job, if you are disabled.   Retaliate against you because you opposed a discriminatory practice.  Donâ€™t let your employer violate your rights!   Equal Opportunity Employment Commission (800) 669-4000 NYS Division of Human Rights (within 1 year) at (718) 741-8400 NYC Commission on Human Rights (within 1 year) at (212) 306-7450', NULL, NULL, 0),
(21, 'RIGHT TO COME TOGETHER WITH YOUR COWORKERS', NULL, '2015-06-11 16:20:27', NULL, NULL, 'YOU HAVE THE RIGHT TO COME TOGETHER WITH YOUR COWORKERS TO CHANGE WORKING CONDITIONS  YOU have the right to Form a union or to unite as a group of workers to improve wages and working conditions.   Choose a representative to speak to your employer on your behalf.  Speak to your employer, alone or with coworkers, on behalf of other workers about the working conditions at your place of work.', NULL, NULL, 0),
(22, '', NULL, '2015-06-11 16:26:36', NULL, NULL, 'YOU HAVE THE RIGHT TO TIME OFF FOR ILLNESS AND TO CARE FOR YOUR FAMILY&nbsp;<div><br></div><div>YOU have the right to â€” Earn up to 40 hours of paid time off for illness or family care if your employer has more than 5 employees. Express breast milk at work during paid or unpaid breaks or lunch time, and in a separate room, if available. YOU may have the right to â€” Up to 12 weeks unpaid time off from work for illness or to care for family and still keep your job, or a similar job, if your employer has more than 50 employees. Find out if you have the right to time off! Call the NYC Dept. of Consumer Affairs at 311 for information about paid time off. Call the NY Dept. of Labor at (888) 469-7365 for information about expressing breast milk. Call the US Dept. of Labor at (866) 487-9243 for information about unpaid weeks off.</div>', NULL, NULL, 0),
(23, '', NULL, '2015-06-11 16:26:57', NULL, NULL, 'YOU HAVE THE RIGHT TO WORK FREE FROM DISCRIMINATION It is against the law for your employer to â€” Fire you, pay you less, or give you different work because of your race, color, age, creed, national origin, citizenship status, gender, gen- der identity, sexual orientation, disability, arrest or conviction record, marital or partnership status, unemployment status, or status as a victim of domestic violence, stalking, or sex offenses, even if you are undocumented. Perpetrate or to allow sexual harassment against you. Deny you a reasonable (and not burdensome) accommodation to allow you to perform your job, if you are disabled. Retaliate against you because you opposed a discriminatory practice. Donâ€™t let your employer violate your rights! Equal Opportunity Employment Commission (800) 669-4000 NYS Division of Human Rights (within 1 year) at (718) 741-8400 NYC Commission on Human Rights (within 1 year) at (212) 306-7450', NULL, NULL, 0),
(24, '', NULL, '2015-06-11 16:27:11', NULL, NULL, 'MFY Legal Services, Inc. envisions a society in which no one is denied justice because he or she cannot afford an attorney. To make this vision a reality, MFY provides free legal assistance to residents of New York City on a wide range of civil legal issues, prioritizing services to vulnerable and under-served populations, while simultaneously working to end the root causes of inequities through impact litigation, law reform, and policy advocacy. The Labor & Employment Committee of the National Lawyers Guild - New York City Chapter fosters a community of progressive labor and em- ployment lawyers, law students, and legal workers in New York City through professional development programs, movement support work, and mentoring. The National Lawyers Guild (NLG) is an associ- ation of progressive lawyers, jurists, law students, and legal workers seeking to reconstruct United States legal values to emphasize human rights over property rights. The struggles of working people for economic and social justice have been central to the NLGâ€™s work since its founding in 1937.', NULL, NULL, 0),
(25, 'Safe workplace<br>', NULL, '2015-06-11 16:30:39', NULL, NULL, 'YOU HAVE THE RIGHT TO A SAFE WORKPLACE AND HEALTHY WORKING CONDITIONS YOU have the right to â€” Free protective equipment (goggles, masks, gloves) when workplace hazards exist. Refuse to work when dangerous conditions present immediate risk of death or serious physical harm and to assert your rights to a safe workplace without threats or retaliation. Donâ€™t let your employer violate your rights! Call OSHA at (212) 337-2378 or visit www.osha.gov', NULL, NULL, 0),
(26, 'Minimum wage<br>', NULL, '2015-06-11 16:31:19', NULL, NULL, 'YOU HAVE THE RIGHT TO MINIMUM WAGE AND OVERTIME PAY YOU have the right to â€” Make a minimum of $8.75* per hour, even if you are undocumented or a domestic worker. Payment of overtime compensation if you work over 40 hours a week, even if you are undocumented or a domestic worker (live-in domestic workers must be paid overtime after 44 hours a week). Assert your right to be paid without threats or retaliation. Donâ€™t let your employer violate your rights! Call the NY Dept. of Labor at (888) 469-7365 or the US Dept. of Labor at (866) 487-9243 to make an employer discriminates against you. * Increases to $9.00/hour on December 31, 2015', NULL, NULL, 0),
(27, 'Come together<br>', NULL, '2015-06-11 16:31:43', NULL, NULL, 'YOU HAVE THE RIGHT TO COME TOGETHER WITH YOUR COWORKERS TO CHANGE WORKING CONDITIONS YOU have the right to â€” Form a union or to unite as a group of workers to improve wages and working conditions. Choose a representative to speak to your employer on your behalf. Speak to your employer, alone or with cowork- ers, on behalf of other workers about the working conditions at your place of work. Your activity will not be protected by the law if you threaten your employer, damage equipment, or publicly attack your employerâ€™s products. It is illegal for your employer to discriminate or retaliate against you because you unite with your coworkers to improve wages and working conditions. Donâ€™t let your employer violate your rights! If you are discriminated or retaliated against, call the at (212) 264-0300 (or (718) 330-7713 if you work in Brooklyn, Queens, or Staten Island).', NULL, NULL, 0),
(28, 'Illness', NULL, '2015-06-11 16:31:57', NULL, NULL, 'YOU HAVE THE RIGHT TO TIME OFF FOR ILLNESS AND TO CARE FOR YOUR FAMILY YOU have the right to â€” Earn up to 40 hours of paid time off for illness or family care if your employer has more than 5 employees. Express breast milk at work during paid or unpaid breaks or lunch time, and in a separate room, if available. YOU may have the right to â€” Up to 12 weeks unpaid time off from work for illness or to care for family and still keep your job, or a similar job, if your employer has more than 50 employees. Find out if you have the right to time off! Call the NYC Dept. of Consumer Affairs at 311 for information about paid time off. Call the NY Dept. of Labor at (888) 469-7365 for information about expressing breast milk. Call the US Dept. of Labor at (866) 487-9243 for information about unpaid weeks off.', NULL, NULL, 0),
(29, 'Overtime<br>', NULL, '2015-06-11 16:32:09', NULL, NULL, 'YOU HAVE THE RIGHT TO MINIMUM WAGE AND OVERTIME PAY YOU have the right to â€” Make a minimum of $8.75* per hour, even if you are undocumented or a domestic worker. Payment of overtime compensation if you work over 40 hours a week, even if you are undocumented or a domestic worker (live-in domestic workers must be paid overtime after 44 hours a week). Assert your right to be paid without threats or retaliation. Donâ€™t let your employer violate your rights! Call the NY Dept. of Labor at (888) 469-7365 or the US Dept. of Labor at (866) 487-9243 to make an employer discriminates against you. * Increases to $9.00/hour on December 31, 2015', NULL, NULL, 0),
(30, 'Healthy working conditions<br>', NULL, '2015-06-11 16:32:38', NULL, NULL, 'YOU HAVE THE RIGHT TO A SAFE WORKPLACE AND HEALTHY WORKING CONDITIONS YOU have the right to â€” Free protective equipment (goggles, masks, gloves) when workplace hazards exist. Refuse to work when dangerous conditions present immediate risk of death or serious physical harm and to assert your rights to a safe workplace without threats or retaliation. Donâ€™t let your employer violate your rights! Call OSHA at (212) 337-2378 or visit www.osha.gov<br>', NULL, NULL, 0),
(31, 'Compensation', NULL, '2015-06-11 16:32:53', NULL, NULL, 'YOU HAVE THE RIGHT TO BE COMPENSATED FOR ON-THE- JOB INJURIES YOU have the right to â€”&nbsp; for your injuries, even if you are undocumented or a full-time domestic worker. Ongoing medical care and prescription coverage by a doctor of your own choice, if you are found eligible for workersâ€™ compensation. Freedom from threats or retaliation for making a claim. Donâ€™t let your employer violate your rights! Call the (877) 632-4996 if you are discriminated against for making a claim.', NULL, NULL, 0),
(32, '', NULL, '2015-06-11 16:34:33', NULL, NULL, 'YOU HAVE THE RIGHT TO BE COMPENSATED FOR ON-THE- JOB INJURIES YOU have the right to â€” for your injuries, even if you are undocumented or a full-time domestic worker. Ongoing medical care and prescription coverage by a doctor of your own choice, if you are found eligible for workersâ€™ compensation. Freedom from threats or retaliation for making a claim. Donâ€™t let your employer violate your rights! Call the (877) 632-4996 if you are discriminated against for making a claim.', NULL, NULL, 0),
(33, '', NULL, '2015-06-11 16:34:49', NULL, NULL, 'YOU HAVE THE RIGHT TO TIME OFF FOR ILLNESS AND TO CARE FOR YOUR FAMILY YOU have the right to â€” Earn up to 40 hours of paid time off for illness or family care if your employer has more than 5 employees. Express breast milk at work during paid or unpaid breaks or lunch time, and in a separate room, if available. YOU may have the right to â€” Up to 12 weeks unpaid time off from work for illness or to care for family and still keep your job, or a similar job, if your employer has more than 50 employees. Find out if you have the right to time off! Call the NYC Dept. of Consumer Affairs at 311 for information about paid time off. Call the NY Dept. of Labor at (888) 469-7365 for information about expressing breast milk. Call the US Dept. of Labor at (866) 487-9243 for information about unpaid weeks off.', NULL, NULL, 0),
(34, '', NULL, '2015-06-11 16:35:08', NULL, NULL, 'YOU HAVE THE RIGHT TO COME TOGETHER WITH YOUR COWORKERS TO CHANGE WORKING CONDITIONS YOU have the right to â€” Form a union or to unite as a group of workers to improve wages and working conditions. Choose a representative to speak to your employer on your behalf. Speak to your employer, alone or with cowork- ers, on behalf of other workers about the working conditions at your place of work. your activity will not be protected by the law if you threaten your employer, damage equipment, or publicly attack your employerâ€™s products. It is illegal for your employer to discriminate or retaliate against you because you unite with your coworkers to improve wages and working conditions. Donâ€™t let your employer violate your rights! If you are discriminated or retaliated against, call the at (212) 264-0300 (or (718) 330-7713 if you work in Brooklyn, Queens, or Staten Island).', NULL, NULL, 0),
(35, '', NULL, '2015-06-11 16:39:51', NULL, NULL, 'YOU HAVE THE RIGHT TO COME TOGETHER WITH YOUR COWORKERS TO CHANGE WORKING CONDITIONS YOU have the right to â€” Form a union or to unite as a group of workers to improve wages and working conditions. Choose a representative to speak to your employer on your behalf. Speak to your employer, alone or with cowork- ers, on behalf of other workers about the working conditions at your place of work.&nbsp; your activity will not be protected by the law if you threaten your employer, damage equipment, or publicly attack your employerâ€™s products. It is illegal for your employer to discriminate or retaliate against you because you unite with your coworkers to improve wages and working conditions. Donâ€™t let your employer violate your rights! If you are discriminated or retaliated against, call the&nbsp; at (212) 264-0300 (or (718) 330-7713 if you work in Brooklyn, Queens, or Staten Island).', NULL, NULL, 0),
(36, '', NULL, '2015-06-11 16:40:32', NULL, NULL, 'MFY Legal Services, Inc. envisions a society in which no one is denied justice because he or she cannot afford an attorney. To make this vision a reality, MFY provides free legal assistance to residents of New York City on a wide range of civil legal issues, prioritizing services to vulnerable and under-served populations, while simultaneously working to end the root causes of inequities through impact litigation, law reform, and policy advocacy. The Labor & Employment Committee of the National Lawyers Guild - New York City Chapter fosters a community of progressive labor and em- ployment lawyers, law students, and legal workers in New York City through professional development programs, movement support work, and mentoring. The National Lawyers Guild (NLG) is an associ- ation of progressive lawyers, jurists, law students, and legal workers seeking to reconstruct United States legal values to emphasize human rights over property rights. The struggles of working people for economic and social justice have been central to the NLGâ€™s work since its founding in 1937.', NULL, NULL, 0),
(37, '', NULL, '2015-06-11 16:40:43', NULL, NULL, 'YOU HAVE THE RIGHT TO WORK FREE FROM DISCRIMINATION It is against the law for your employer to â€” Fire you, pay you less, or give you different work because of your race, color, age, creed, national origin, citizenship status, gender, gen- der identity, sexual orientation, disability, arrest or conviction record, marital or partnership status, unemployment status, or status as a victim of domestic violence, stalking, or sex offenses, even if you are undocumented. Perpetrate or to allow sexual harassment against you. Deny you a reasonable (and not burdensome) accommodation to allow you to perform your job, if you are disabled. Retaliate against you because you opposed a discriminatory practice. Donâ€™t let your employer violate your rights! Equal Opportunity Employment Commission&nbsp; (800) 669-4000 NYS Division of Human Rights (within 1 year) at (718) 741-8400 NYC Commission on Human Rights (within 1 year) at (212) 306-7450', NULL, NULL, 0),
(38, '', NULL, '2015-06-11 16:40:52', NULL, NULL, 'YOU HAVE THE RIGHT TO TIME OFF FOR ILLNESS AND TO CARE FOR YOUR FAMILY YOU have the right to â€” Earn up to 40 hours of paid time off for illness or family care if your employer has more than 5 employees. Express breast milk at work during paid or unpaid breaks or lunch time, and in a separate room, if available. YOU may have the right to â€” Up to 12 weeks unpaid time off from work for illness or to care for family and still keep your job, or a similar job, if your employer has more than 50 employees. Find out if you have the right to time off! Call the NYC Dept. of Consumer Affairs at 311 for information about paid time off. Call the NY Dept. of Labor at (888) 469-7365 for information about expressing breast milk. Call the US Dept. of Labor at (866) 487-9243 for information about unpaid weeks off.', NULL, NULL, 0),
(39, '', NULL, '2015-06-11 16:45:32', NULL, NULL, 'Know Your Rights: A Guide for Workers in New York City is a project of the Labor &amp; Employment Committee of the National Lawyers Guild â€“ New York City Chapter and MFY Legal Services, Inc.&nbsp; www.nlgnyc.org and www.mfy.org. <br>', NULL, NULL, 0),
(40, '', NULL, '2015-06-11 16:45:32', NULL, NULL, 'YOU HAVE THE RIGHT TO MINIMUM WAGE AND OVERTIME PAY YOU have the right to â€” Make a minimum of $8.75* per hour, even if you are undocumented or a domestic worker. Payment of overtime compensation if you work over 40 hours a week, even if you are undocumented or a domestic worker (live-in domestic workers must be paid overtime after 44 hours a week). Assert your right to be paid without threats or retaliation. Donâ€™t let your employer violate your rights! Call the NY Dept. of Labor at (888) 469-7365 or the US Dept. of Labor at (866) 487-9243 to make a&nbsp; employer discriminates against you. * Increases to $9.00/hour on December 31, 2015', NULL, NULL, 0),
(41, '', NULL, '2015-06-11 16:45:32', NULL, NULL, 'YOU HAVE THE RIGHT TO A SAFE WORKPLACE AND HEALTHY WORKING CONDITIONS YOU have the right to â€” Free protective equipment (goggles, masks, gloves) when workplace hazards exist. Refuse to work when dangerous conditions present immediate risk of death or serious physical harm and to assert your rights to a safe workplace without threats or retaliation. Donâ€™t let your employer violate your rights! Call OSHA at (212) 337-2378 or visit www.osha.gov <br>', NULL, NULL, 0),
(42, '', NULL, '2015-06-11 16:45:32', NULL, NULL, 'YOU HAVE THE RIGHT TO TIME OFF FOR ILLNESS AND TO CARE FOR YOUR FAMILY YOU have the right to â€” Earn up to 40 hours of paid time off for illness or family care if your employer has more than 5 employees. Express breast milk at work during paid or unpaid breaks or lunch time, and in a separate room, if available. YOU may have the right to â€” Up to 12 weeks unpaid time off from work for illness or to care for family and still keep your job, or a similar job, if your employer has more than 50 employees. Find out if you have the right to time off! Call the NYC Dept. of Consumer Affairs at 311 for information about paid time off. Call the NY Dept. of Labor at (888) 469-7365 for information about expressing breast milk. Call the US Dept. of Labor at (866) 487-9243 for information about unpaid weeks off.', NULL, NULL, 0),
(43, '', NULL, '2015-06-11 16:45:32', NULL, NULL, 'YOU HAVE THE RIGHT TO WORK FREE FROM DISCRIMINATION It is against the law for your employer to â€” Fire you, pay you less, or give you different work because of your race, color, age, creed, national origin, citizenship status, gender, gen- der identity, sexual orientation, disability, arrest or conviction record, marital or partnership status, unemployment status, or status as a victim of domestic violence, stalking, or sex offenses, even if you are undocumented. Perpetrate or to allow sexual harassment against you. Deny you a reasonable (and not burdensome) accommodation to allow you to perform your job, if you are disabled. Retaliate against you because you opposed a discriminatory practice. Donâ€™t let your employer violate your rights! Equal Opportunity Employment Commission&nbsp; (800) 669-4000 NYS Division of Human Rights (within 1 year) at (718) 741-8400 NYC Commission on Human Rights (within 1 year) at (212) 306-7450', NULL, NULL, 0),
(44, '', NULL, '2015-06-11 16:45:32', NULL, NULL, 'YOU HAVE THE RIGHT TO MINIMUM WAGE AND OVERTIME PAY YOU have the right to â€” Make a minimum of $8.75* per hour, even if you are undocumented or a domestic worker. Payment of overtime compensation if you work over 40 hours a week, even if you are undocumented or a domestic worker (live-in domestic workers must be paid overtime after 44 hours a week). Assert your right to be paid without threats or retaliation. Donâ€™t let your employer violate your rights! Call the NY Dept. of Labor at (888) 469-7365 or the US Dept. of Labor at (866) 487-9243 to make a&nbsp; employer discriminates against you. * Increases to $9.00/hour on December 31, 2015', NULL, NULL, 0),
(45, '', NULL, '2015-06-11 16:47:13', NULL, NULL, 'YOU HAVE THE RIGHT TO A SAFE WORKPLACE AND HEALTHY WORKING CONDITIONS YOU have the right to â€” Free protective equipment (goggles, masks, gloves) when workplace hazards exist. Refuse to work when dangerous conditions present immediate risk of death or serious physical harm and to assert your rights to a safe workplace without threats or retaliation. Donâ€™t let your employer violate your rights! Call OSHA at (212) 337-2378 or visit www.osha.gov =', NULL, NULL, 0),
(46, '', NULL, '2015-06-11 16:47:13', NULL, NULL, 'YOU HAVE THE RIGHT TO BE COMPENSATED FOR ON-THE- JOB INJURIES YOU have the right to â€” = for your injuries, even if you are undocumented or a full-time domestic worker. Ongoing medical care and prescription coverage by a doctor of your own choice, if you are found eligible for workersâ€™ compensation. Freedom from threats or retaliation for making a claim. Donâ€™t let your employer violate your rights! Call the = (877) 632-4996 if you are discriminated against for making a claim.', NULL, NULL, 0),
(47, '', NULL, '2015-06-11 16:47:13', NULL, NULL, 'YOU HAVE THE RIGHT TO TIME OFF FOR ILLNESS AND TO CARE FOR YOUR FAMILY YOU have the right to â€” Earn up to 40 hours of paid time off for illness or family care if your employer has more than 5 employees. Express breast milk at work during paid or unpaid breaks or lunch time, and in a separate room, if available. YOU may have the right to â€” Up to 12 weeks unpaid time off from work for illness or to care for family and still keep your job, or a similar job, if your employer has more than 50 employees. Find out if you have the right to time off! Call the NYC Dept. of Consumer Affairs at 311 for information about paid time off. Call the NY Dept. of Labor at (888) 469-7365 for information about expressing breast milk. Call the US Dept. of Labor at (866) 487-9243 for information about unpaid weeks off.', NULL, NULL, 0),
(48, '', NULL, '2015-06-11 16:47:13', NULL, NULL, 'YOU HAVE THE RIGHT TO COME TOGETHER WITH YOUR COWORKERS TO CHANGE WORKING CONDITIONS YOU have the right to â€” Form a union or to unite as a group of workers to improve wages and working conditions. Choose a representative to speak to your employer on your behalf. Speak to your employer, alone or with cowork- ers, on behalf of other workers about the working conditions at your place of work.&nbsp; your activity will not be protected by the law if you threaten your employer, damage equipment, or publicly attack your employerâ€™s products. It is illegal for your employer to discriminate or retaliate against you because you unite with your coworkers to improve wages and working conditions. Donâ€™t let your employer violate your rights! If you are discriminated or retaliated against, call the = at (212) 264-0300 (or (718) 330-7713 if you work in Brooklyn, Queens, or Staten Island).', NULL, NULL, 0),
(49, '', NULL, '2015-06-11 16:49:58', NULL, NULL, 'MFY Legal Services, Inc. envisions a society in which no one is denied justice because he or she cannot afford an attorney. To make this vision a reality, MFY provides free legal assistance to residents of New York City on a wide range of civil legal issues, prioritizing services to vulnerable and under-served populations, while simultaneously working to end the root causes of inequities through impact litigation, law reform, and policy advocacy. The Labor & Employment Committee of the National Lawyers Guild - New York City Chapter fosters a community of progressive labor and em- ployment lawyers, law students, and legal workers in New York City through professional development programs, movement support work, and mentoring. The National Lawyers Guild (NLG) is an associ- ation of progressive lawyers, jurists, law students, and legal workers seeking to reconstruct United States legal values to emphasize human rights over property rights. The struggles of working people for economic and social justice have been central to the NLGâ€™s work since its founding in 1937.', NULL, NULL, 0),
(50, '', NULL, '2015-06-11 16:49:58', NULL, NULL, 'YOU HAVE THE RIGHT TO COME TOGETHER WITH YOUR COWORKERS TO CHANGE WORKING CONDITIONS YOU have the right to â€” Form a union or to unite as a group of workers to improve wages and working conditions. Choose a representative to speak to your employer on your behalf. Speak to your , alone or with cowork- ers, on behalf of other workers about the working conditions at your place of work.&nbsp; your activity will not be protected by the law if you threaten your employer, damage equipment, or publicly attack your employerâ€™s products. It is illegal for your employer to discriminate or retaliate against you because you unite with your coworkers to improve wages and working conditions. Donâ€™t let your employer violate your rights! If you are discriminated or retaliated against, call the&nbsp; at (212) 264-0300 (or (718) 330-7713 if you work in Brooklyn, Queens, or Staten Island).', NULL, NULL, 0),
(51, '', NULL, '2015-06-11 16:49:58', NULL, NULL, 'YOU HAVE THE RIGHT TO WORK FREE FROM DISCRIMINATION It is against the law for your employer to â€” Fire you, pay you less, or give you different work because of your race, color, age, creed, national origin, citizenship status, gender, gen- der identity, sexual orientation, disability, arrest or conviction record, marital or partnership status, unemployment status, or status as a victim of domestic violence, stalking, or sex offenses, even if you are undocumented. Perpetrate or to allow sexual harassment against you. Deny you a reasonable (and not burdensome) accommodation to allow you to perform your job, if you are disabled. Retaliate against you because you opposed a discriminatory practice. Donâ€™t let your employer violate your rights! Equal Opportunity Employment Commission&nbsp; (800) 669-4000 NYS Division of Human Rights (within 1 year) at (718) 741-8400 NYC Commission on Human Rights (within 1 year) at (212) 306-7450', NULL, NULL, 0),
(52, 'TestModule<br>', NULL, '2015-06-11 21:41:10', NULL, NULL, 'Yay!', NULL, NULL, 0),
(53, 'Text', NULL, '2015-06-11 21:42:45', NULL, NULL, 'test', NULL, NULL, 0),
(54, 'Text', NULL, '2015-06-11 21:43:39', NULL, NULL, 'Test2', NULL, NULL, 0),
(55, 'Hello', NULL, '2015-06-14 18:44:16', NULL, NULL, '', NULL, NULL, 0),
(56, '<p style="color: rgb(0, 0, 0); font-size: 14.3999996185303px; white-space: normal;">MFY Legal Services, Inc. envisions a society in which no one is denied justice because he or she cannot afford an attorney. To make this vision a reality, MFY provides fre', NULL, '2015-06-16 13:53:44', NULL, NULL, '', NULL, NULL, 0),
(57, 'Module #1', NULL, '2015-06-16 13:53:51', NULL, NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat dolorem tempore esse fuga at. Voluptatem velit fugit sit. Quidem non praesentium, fugiat provident ut alias quibusdam blanditiis laborum autem illo aliquid odit modi sequi. Explicabo maxime vitae odit, illo, quae sunt nisi facilis, dicta, autem possimus temporibus. Atque similique, mollitia deserunt, rerum asperiores minima a quisquam in molestiae dignissimos fugit nulla amet magni ad sit ullam. Aliquid nulla laborum explicabo dolor aspernatur quos ab omnis in eius. Et amet nesciunt aliquid odio, ipsum deserunt architecto sint nulla, itaque consequatur laborum laboriosam sapiente consequuntur quas dicta id magnam ducimus atque iure ea a assumenda. Recusandae excepturi, fugit, sunt ut deleniti perspiciatis quasi ex officia reprehenderit consequatur voluptatibus officiis. Pariatur explicabo assumenda reprehenderit numquam aliquam, maiores vel quibusdam molestias dolor maxime. Omnis nihil odio nam minus, molestias praesentium quam consequatur iusto natus laboriosam libero laudantium saepe veniam eius, modi unde. Dicta quaerat tempore laboriosam aliquid culpa omnis voluptas harum, delectus enim tenetur voluptatum quos nostrum, cum asperiores, soluta rem obcaecati aspernatur reprehenderit mollitia odit explicabo dolor. Ipsum suscipit, placeat voluptate, harum velit assumenda hic impedit veniam quo mollitia praesentium nam laborum ipsa nesciunt voluptatum ipsam nobis fugiat ex repellat natus esse. Hic, excepturi alias qui non magnam! Reiciendis aliquam corporis voluptatum minus, sequi libero, velit, commodi consectetur ut qui laboriosam autem molestias. Beatae quos delectus cum odio a corporis ad ducimus neque ut pariatur soluta voluptas minima libero doloribus, optio blanditiis molestias consequatur enim, consectetur illum totam quaerat! Earum ex placeat natus ab quas, tenetur doloribus ipsa, rem corporis itaque repellat nobis harum cumque temporibus sequi et sit, quibusdam dolore incidunt debitis eius nihil voluptas magnam! Minus voluptatum dolore ipsam corporis quasi mollitia quod ad, voluptatem ea laudantium quibusdam at excepturi. Ipsam impedit quibusdam dicta excepturi illo harum, nihil, maxime ab magnam tenetur ad amet nemo repudiandae cupiditate id saepe laudantium, quidem deleniti est a, iste! Pariatur quasi, voluptate facilis iste quos nisi optio modi, consectetur, excepturi deleniti quaerat ad fuga eaque veritatis rerum! Nihil enim amet blanditiis voluptas quasi facilis illum eum distinctio, ipsam, nesciunt rerum repellat dolorem eos aliquam vero quibusdam et ipsa asperiores laudantium vitae sequi dolor!&nbsp;', NULL, NULL, 0),
(58, 'Module #2', NULL, '2015-06-16 13:53:51', NULL, NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat dolorem tempore esse fuga at. Voluptatem velit fugit sit. Quidem non praesentium, fugiat provident ut alias quibusdam blanditiis laborum autem illo aliquid odit modi sequi. Explicabo maxime vitae odit, illo, quae sunt nisi facilis, dicta, autem possimus temporibus. Atque similique, mollitia deserunt, rerum asperiores minima a quisquam in molestiae dignissimos fugit nulla amet magni ad sit ullam. Aliquid nulla laborum explicabo dolor aspernatur quos ab omnis in eius. Et amet nesciunt aliquid odio, ipsum deserunt architecto sint nulla, itaque consequatur laborum laboriosam sapiente consequuntur quas dicta id magnam ducimus atque iure ea a assumenda. Recusandae excepturi, fugit, sunt ut deleniti perspiciatis quasi ex officia reprehenderit consequatur voluptatibus officiis. Pariatur explicabo assumenda reprehenderit numquam aliquam, maiores vel quibusdam molestias dolor maxime. Omnis nihil odio nam minus, molestias praesentium quam consequatur iusto natus laboriosam libero laudantium saepe veniam eius, modi unde. Dicta quaerat tempore laboriosam aliquid culpa omnis voluptas harum, delectus enim tenetur voluptatum quos nostrum, cum asperiores, soluta rem obcaecati aspernatur reprehenderit mollitia odit explicabo dolor. Ipsum suscipit, placeat voluptate, harum velit assumenda hic impedit veniam quo mollitia praesentium nam laborum ipsa nesciunt voluptatum ipsam nobis fugiat ex repellat natus esse. Hic, excepturi alias qui non magnam! Reiciendis aliquam corporis voluptatum minus, sequi libero, velit, commodi consectetur ut qui laboriosam autem molestias. Beatae quos delectus cum odio a corporis ad ducimus neque ut pariatur soluta voluptas minima libero doloribus, optio blanditiis molestias consequatur enim, consectetur illum totam quaerat! Earum ex placeat natus ab quas, tenetur doloribus ipsa, rem corporis itaque repellat nobis harum cumque temporibus sequi et sit, quibusdam dolore incidunt debitis eius nihil voluptas magnam! Minus voluptatum dolore ipsam corporis quasi mollitia quod ad, voluptatem ea laudantium quibusdam at excepturi. Ipsam impedit quibusdam dicta excepturi illo harum, nihil, maxime ab magnam tenetur ad amet nemo repudiandae cupiditate id saepe laudantium, quidem deleniti est a, iste! Pariatur quasi, voluptate facilis iste quos nisi optio modi, consectetur, excepturi deleniti quaerat ad fuga eaque veritatis rerum! Nihil enim amet blanditiis voluptas quasi facilis illum eum distinctio, ipsam, nesciunt rerum repellat dolorem eos aliquam vero quibusdam et ipsa asperiores laudantium vitae sequi dolor!&nbsp;', NULL, NULL, 0),
(59, 'Module #3', NULL, '2015-06-16 13:58:13', NULL, NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat dolorem tempore esse fuga at. Voluptatem velit fugit sit. Quidem non praesentium, fugiat provident ut alias quibusdam blanditiis laborum autem illo aliquid odit modi sequi. Explicabo maxime vitae odit, illo, quae sunt nisi facilis, dicta, autem possimus temporibus. Atque similique, mollitia deserunt, rerum asperiores minima a quisquam in molestiae dignissimos fugit nulla amet magni ad sit ullam. Aliquid nulla laborum explicabo dolor aspernatur quos ab omnis in eius. Et amet nesciunt aliquid odio, ipsum deserunt architecto sint nulla, itaque consequatur laborum laboriosam sapiente consequuntur quas dicta id magnam ducimus atque iure ea a assumenda. Recusandae excepturi, fugit, sunt ut deleniti perspiciatis quasi ex officia reprehenderit consequatur voluptatibus officiis. Pariatur explicabo assumenda reprehenderit numquam aliquam, maiores vel quibusdam molestias dolor maxime. Omnis nihil odio nam minus, molestias praesentium quam consequatur iusto natus laboriosam libero laudantium saepe veniam eius, modi unde. Dicta quaerat tempore laboriosam aliquid culpa omnis voluptas harum, delectus enim tenetur voluptatum quos nostrum, cum asperiores, soluta rem obcaecati aspernatur reprehenderit mollitia odit explicabo dolor. Ipsum suscipit, placeat voluptate, harum velit assumenda hic impedit veniam quo mollitia praesentium nam laborum ipsa nesciunt voluptatum ipsam nobis fugiat ex repellat natus esse. Hic, excepturi alias qui non magnam! Reiciendis aliquam corporis voluptatum minus, sequi libero, velit, commodi consectetur ut qui laboriosam autem molestias. Beatae quos delectus cum odio a corporis ad ducimus neque ut pariatur soluta voluptas minima libero doloribus, optio blanditiis molestias consequatur enim, consectetur illum totam quaerat! Earum ex placeat natus ab quas, tenetur doloribus ipsa, rem corporis itaque repellat nobis harum cumque temporibus sequi et sit, quibusdam dolore incidunt debitis eius nihil voluptas magnam! Minus voluptatum dolore ipsam corporis quasi mollitia quod ad, voluptatem ea laudantium quibusdam at excepturi. Ipsam impedit quibusdam dicta excepturi illo harum, nihil, maxime ab magnam tenetur ad amet nemo repudiandae cupiditate id saepe laudantium, quidem deleniti est a, iste! Pariatur quasi, voluptate facilis iste quos nisi optio modi, consectetur, excepturi deleniti quaerat ad fuga eaque veritatis rerum! Nihil enim amet blanditiis voluptas quasi facilis illum eum distinctio, ipsam, nesciunt rerum repellat dolorem eos aliquam vero quibusdam et ipsa asperiores laudantium vitae sequi dolor!&nbsp;', NULL, NULL, 0),
(60, 'Master module #1', NULL, '2015-06-16 13:58:55', NULL, NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sed velit vitae orci gravida ullamcorper. Nunc efficitur iaculis fermentum. Donec ut nunc non risus varius hendrerit quis eu velit. In id massa orci. Nam massa quam, interdum ac diam quis, faucibus mollis metus. Praesent magna massa, finibus vel accumsan et, pellentesque sit amet tortor. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\n', NULL, NULL, 0),
(61, 'Master module #2', NULL, '2015-06-16 13:58:55', NULL, NULL, 'Pellentesque nec tellus vitae eros ullamcorper convallis id ac nunc. Vivamus luctus magna ut dapibus ultricies. Vivamus dapibus in nibh eget imperdiet. Mauris in pulvinar risus, id suscipit sapien. Nullam pretium hendrerit metus a imperdiet. Phasellus nec dictum ante, sed tincidunt dui. Sed quis libero neque. Fusce volutpat, velit vel consectetur laoreet, lectus diam rutrum lectus, vel laoreet nunc ligula id arcu.', NULL, NULL, 0),
(62, 'Master module #3', NULL, '2015-06-16 13:58:55', NULL, NULL, 'Proin sodales gravida dapibus. Integer porttitor rutrum quam, in posuere erat ullamcorper in. In sed ligula id leo vulputate rhoncus. Vestibulum pellentesque neque in neque porta, in accumsan leo maximus. Nam maximus, nisi vitae euismod ultricies, lorem eros blandit lorem, vel consequat quam velit quis ex. Sed consequat dolor neque, id vestibulum felis sodales ut. Cras magna velit, posuere tincidunt volutpat nec, pellentesque in mi. Phasellus ac placerat tellus. Vivamus bibendum lacinia justo, quis commodo ante ultricies nec.', NULL, NULL, 0),
(63, 'Master module #4', NULL, '2015-06-16 13:58:55', NULL, NULL, 'Nulla eleifend purus dictum est semper porta. Pellentesque finibus lorem ac lorem ornare accumsan. Duis ex nisi, ornare at lacus ut, aliquet vulputate tellus. Etiam mollis lectus eget maximus fringilla. Vivamus euismod consequat velit, a maximus lectus tempor non. Duis mollis urna ut velit consectetur, non convallis risus porta. Etiam quis tortor eu eros finibus tempor id at felis. Ut vulputate lacinia tortor, quis commodo felis pharetra dictum. Fusce egestas finibus urna, eu tincidunt arcu sollicitudin non.', NULL, NULL, 0),
(64, 'Master module #5', NULL, '2015-06-16 13:59:53', NULL, NULL, 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam vitae nisl et metus tincidunt cursus. Pellentesque vulputate vitae dolor ac consequat. Vivamus sodales, libero sit amet efficitur cursus, mauris leo vulputate augue, gravida bibendum dui ipsum vel neque. Aliquam a egestas libero. Pellentesque efficitur dui velit, in consequat purus ullamcorper nec. Nam malesuada nisi id sapien eleifend vulputate quis ullamcorper libero. Praesent eu erat eget nisi ornare lacinia.', NULL, NULL, 0),
(65, 'Master module #6', NULL, '2015-06-16 13:59:53', NULL, NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sed velit vitae orci gravida ullamcorper. Nunc efficitur iaculis fermentum. Donec ut nunc non risus varius hendrerit quis eu velit. In id massa orci. Nam massa quam, interdum ac diam quis, faucibus mollis metus. Praesent magna massa, finibus vel accumsan et, pellentesque sit amet tortor. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\n', NULL, NULL, 0),
(66, 'Master module #1', NULL, '2015-06-16 13:59:53', NULL, NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sed velit vitae orci gravida ullamcorper. Nunc efficitur iaculis fermentum. Donec ut nunc non risus varius hendrerit quis eu velit. In id massa orci. Nam massa quam, interdum ac diam quis, faucibus mollis metus. Praesent magna massa, finibus vel accumsan et, pellentesque sit amet tortor. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\n', NULL, NULL, 0),
(67, 'Master module #2', NULL, '2015-06-16 13:59:53', NULL, NULL, 'Pellentesque nec tellus vitae eros ullamcorper convallis id ac nunc. Vivamus luctus magna ut dapibus ultricies. Vivamus dapibus in nibh eget imperdiet. Mauris in pulvinar risus, id suscipit sapien. Nullam pretium hendrerit metus a imperdiet. Phasellus nec dictum ante, sed tincidunt dui. Sed quis libero neque. Fusce volutpat, velit vel consectetur laoreet, lectus diam rutrum lectus, vel laoreet nunc ligula id arcu.', NULL, NULL, 0);
INSERT INTO `modules` (`id`, `title`, `created`, `changed`, `based_on`, `type`, `content`, `__meta info__`, `author_id`, `master`) VALUES
(68, 'Master module #3', NULL, '2015-06-16 13:59:53', NULL, NULL, 'Proin sodales gravida dapibus. Integer porttitor rutrum quam, in posuere erat ullamcorper in. In sed ligula id leo vulputate rhoncus. Vestibulum pellentesque neque in neque porta, in accumsan leo maximus. Nam maximus, nisi vitae euismod ultricies, lorem eros blandit lorem, vel consequat quam velit quis ex. Sed consequat dolor neque, id vestibulum felis sodales ut. Cras magna velit, posuere tincidunt volutpat nec, pellentesque in mi. Phasellus ac placerat tellus. Vivamus bibendum lacinia justo, quis commodo ante ultricies nec.', NULL, NULL, 0),
(69, 'Master module #4', NULL, '2015-06-16 13:59:53', NULL, NULL, 'Nulla eleifend purus dictum est semper porta. Pellentesque finibus lorem ac lorem ornare accumsan. Duis ex nisi, ornare at lacus ut, aliquet vulputate tellus. Etiam mollis lectus eget maximus fringilla. Vivamus euismod consequat velit, a maximus lectus tempor non. Duis mollis urna ut velit consectetur, non convallis risus porta. Etiam quis tortor eu eros finibus tempor id at felis. Ut vulputate lacinia tortor, quis commodo felis pharetra dictum. Fusce egestas finibus urna, eu tincidunt arcu sollicitudin non.', NULL, NULL, 0),
(70, 'Master module #4', NULL, '2015-06-16 14:02:07', NULL, NULL, 'Nulla eleifend purus dictum est semper porta. Pellentesque finibus lorem ac lorem ornare accumsan. Duis ex nisi, ornare at lacus ut, aliquet vulputate tellus. Etiam mollis lectus eget maximus fringilla. Vivamus euismod consequat velit, a maximus lectus tempor non. Duis mollis urna ut velit consectetur, non convallis risus porta. Etiam quis tortor eu eros finibus tempor id at felis. Ut vulputate lacinia tortor, quis commodo felis pharetra dictum. Fusce egestas finibus urna, eu tincidunt arcu sollicitudin non.', NULL, NULL, 0),
(71, 'SubsectionÂ ', NULL, '2015-06-16 14:02:07', NULL, NULL, 'This is a new edit<div><br></div>', NULL, NULL, 0),
(72, '', '0000-00-00 00:00:00', '2015-06-16 14:04:32', NULL, NULL, '', NULL, NULL, 0),
(73, '', '0000-00-00 00:00:00', '2015-06-16 14:04:57', NULL, NULL, '', NULL, NULL, 0),
(74, '', '0000-00-00 00:00:00', '2015-06-16 14:05:27', NULL, NULL, '', NULL, NULL, 0),
(75, '', '0000-00-00 00:00:00', '2015-06-16 14:06:01', NULL, NULL, '', NULL, NULL, 0),
(76, '', '0000-00-00 00:00:00', '2015-06-16 14:06:02', NULL, NULL, '', NULL, NULL, 0),
(77, '', '0000-00-00 00:00:00', '2015-06-16 14:06:08', NULL, NULL, '', NULL, NULL, 0),
(78, '', '0000-00-00 00:00:00', '2015-06-16 14:06:22', NULL, NULL, '', NULL, NULL, 0),
(79, '', '0000-00-00 00:00:00', '2015-06-16 14:06:41', NULL, NULL, '', NULL, NULL, 0),
(80, '', '0000-00-00 00:00:00', '2015-06-16 14:06:59', NULL, NULL, '', NULL, NULL, 0),
(81, 'Untitled', NULL, '2015-06-16 14:22:30', NULL, NULL, '<div>Lorem ipsum dolor sit amet, evertitur interesset ius eu. Et eos ancillae maiestatis adipiscing. Eum populo repudiare dissentiet cu. Duo ad debet diceret, nam eu harum exerci instructior, ad vitae homero indoctum ius. Id discere labores indoctum his, usu ex brute suscipit.</div><div><br></div><div>Ad nam utinam officiis. Est inani soluta placerat cu. Elitr senserit no vim, fabulas vituperatoribus ei mei, at nam quis dissentias. Sea latine feugait cu, ut debet commune cum, in stet facilisis vel. Et erat rebum blandit eum, mea disputando instructior ex.</div><div><br></div><div>No movet latine sed, ne mei ipsum repudiare, legimus sensibus in nec. Vidit ocurreret nec eu, in modo aliquid vim, ea eam natum temporibus. Ei his hinc alterum copiosae. Quodsi lucilius cum ne.</div><div><br></div><div>Vim meis iisque assueverit et. Nisl fuisset verterem ei mei, eros dolores maluisset ne quo. Et noster accumsan eum, modus affert et mea. Nec fierent mediocrem salutatus in. Constituto appellantur eu sed, ei ferri deterruisset duo.</div><div><br></div><div>Nobis possim nusquam vis id, et enim nullam pro, dicat corpora complectitur ut per. Te sed appareat similique. Cum magna detraxit lobortis te, id suas quodsi perfecto pri. Vis eu saepe eruditi.</div>', NULL, NULL, 0),
(82, 'Hello world', NULL, '2015-06-16 14:22:52', NULL, NULL, '', NULL, NULL, 0),
(83, '', '0000-00-00 00:00:00', '2015-06-29 16:55:39', NULL, NULL, '', NULL, NULL, 0),
(84, '', '0000-00-00 00:00:00', '2015-06-29 17:12:39', NULL, NULL, '', NULL, NULL, 0),
(85, 'test textÂ <br>', NULL, '2015-07-13 22:58:00', NULL, NULL, 'This is some test text&nbsp;<div><br></div>', NULL, NULL, 0),
(86, 'Minimum wage<br>', NULL, '2015-07-13 22:59:40', NULL, NULL, 'HAVE THE RIGHT TO MINIMUM WAGE AND OVERTIME PAY<br>YOU have the right to\r\n â€”â€¨Make a minimum of $8.75* per hour, even if you are undocumented or a \r\ndomestic worker. Payment of overtime compensation if you work over 40 \r\nhours a week, even if you are undocumented or a domestic worker (live-in\r\n domestic workers must be paid overtime after 44 hours a week). Assert \r\nyour right to be paid without threats or retaliation. <br><br>Donâ€™t let your employer violate your rights!<br>Call\r\n the NY Dept. of Labor at (888) 469-7365 or the US Dept. of Labor at \r\n(866) 487-9243 to make a employer discriminates against you.<br>* Increases to $9.00/hour on December 31, 2015', NULL, NULL, 0),
(87, 'Discrimination', NULL, '2015-07-13 22:59:40', NULL, NULL, 'YOU HAVE THE RIGHT TO WORK FREE FROM DISCRIMINATION <br>It is against the law for your employer to â€” <br><br>Fire you, pay you less, or give you different work because of your race, color, age, creed, national origin, citizenship status, gender, gen- der identity, sexual orientation, disability, arrest or conviction record, marital or partnership status, unemployment status, or status as a victim of domestic violence, stalking, or sex offenses, even if you are undocumented. Perpetrate or to allow sexual harassment against you. Deny you a reasonable (and not burdensome) accommodation to allow you to perform your job, if you are disabled. Retaliate against you because you opposed a discriminatory practice. <br><br>Donâ€™t let your employer violate your rights! <br>Equal Opportunity Employment Commission (800) 669-4000â€¨NYS Division of Human Rights (within 1 year) at (718) 741-8400 <br>NYC Commission on Human Rights (within 1 year) at (212) 306-7450 <br>', NULL, NULL, 0),
(88, 'Minimum wage<br>', NULL, '2015-07-13 23:01:18', NULL, NULL, 'HAVE THE RIGHT TO MINIMUM WAGE AND OVERTIME PAY<br>YOU have the right to\r\n â€”â€¨Make a minimum of $8.75* per hour, even if you are undocumented or a \r\ndomestic worker. Payment of overtime compensation if you work over 40 \r\nhours a week, even if you are undocumented or a domestic worker (live-in\r\n domestic workers must be paid overtime after 44 hours a week). Assert \r\nyour right to be paid without threats or retaliation. <br><br>Donâ€™t let your employer violate your rights!<br>Call\r\n the NY Dept. of Labor at (888) 469-7365 or the US Dept. of Labor at \r\n(866) 487-9243 to make a employer discriminates against you.<br>* Increases to $9.00/hour on December 31, 2015', NULL, NULL, 0),
(89, 'Injuries', NULL, '2015-07-13 23:01:18', NULL, NULL, 'YOU HAVE THE RIGHT TO BE COMPENSATED FOR ON-THE- JOB INJURIES <br>YOU have the right to â€” for your injuries, even if you are undocumented or a full-time domestic worker.&nbsp; Ongoing medical care and prescription coverage by a doctor of your own choice, if you are found eligible for workersâ€™ compensation. Freedom from threats or retaliation for making a claim. &nbsp;<br><br>Donâ€™t let your employer violate your rights! <br>Call the at (877) 632-4996 if you are discriminated against for making a claim. <br>', NULL, NULL, 0),
(90, 'Compensation', NULL, '2015-07-13 23:01:18', NULL, NULL, 'YOU HAVE THE RIGHT TO BE COMPENSATED FOR ON-THE- JOB INJURIES <br>YOU have the right to â€” for your injuries, even if you are undocumented or a full-time domestic worker.&nbsp; Ongoing medical care and prescription coverage by a doctor of your own choice, if you are found eligible for workersâ€™ compensation. Freedom from threats or retaliation for making a claim. &nbsp;<br><br>Donâ€™t let your employer violate your rights! <br>Call the at (877) 632-4996 if you are discriminated against for making a claim. <br>', NULL, NULL, 0),
(91, 'Safe workplace<br>', NULL, '2015-07-13 23:02:34', NULL, NULL, 'YOU HAVE THE RIGHT TO A SAFE WORKPLACE AND HEALTHY WORKING CONDITIONS <br>YOU have the right to â€”â€¨Free protective equipment (goggles, masks, gloves) when workplace hazards exist. Refuse to work when dangerous conditions present immediate risk of death or serious physical harm and to assert your rights to a safe workplace without threats or retaliation. Donâ€™t let your employer violate your rights! <br><br>Call OSHA at (212) 337-2378 or visit www.osha.gov<br><br>', NULL, NULL, 0),
(92, 'Compensation', NULL, '2015-07-13 23:02:34', NULL, NULL, 'YOU HAVE THE RIGHT TO BE COMPENSATED FOR ON-THE- JOB INJURIES <br>YOU have the right to â€” for your injuries, even if you are undocumented or a full-time domestic worker.&nbsp; Ongoing medical care and prescription coverage by a doctor of your own choice, if you are found eligible for workersâ€™ compensation. Freedom from threats or retaliation for making a claim. &nbsp;<br><br>Donâ€™t let your employer violate your rights! <br>Call the at (877) 632-4996 if you are discriminated against for making a claim. <br>', NULL, NULL, 0),
(93, 'Safe workplace<br>', NULL, '2015-07-13 23:03:36', NULL, NULL, 'YOU HAVE THE RIGHT TO A SAFE WORKPLACE AND HEALTHY WORKING CONDITIONS <br>YOU have the right to â€”â€¨Free protective equipment (goggles, masks, gloves) when workplace hazards exist. Refuse to work when dangerous conditions present immediate risk of death or serious physical harm and to assert your rights to a safe workplace without threats or retaliation. Donâ€™t let your employer violate your rights! <br><br>Call OSHA at (212) 337-2378 or visit www.osha.gov<br><br>', NULL, NULL, 0),
(94, 'Minimum wage<br>', NULL, '2015-07-13 23:03:36', NULL, NULL, 'HAVE THE RIGHT TO MINIMUM WAGE AND OVERTIME PAY<br>YOU have the right to\r\n â€”â€¨Make a minimum of $8.75* per hour, even if you are undocumented or a \r\ndomestic worker. Payment of overtime compensation if you work over 40 \r\nhours a week, even if you are undocumented or a domestic worker (live-in\r\n domestic workers must be paid overtime after 44 hours a week). Assert \r\nyour right to be paid without threats or retaliation. <br><br>Donâ€™t let your employer violate your rights!<br>Call\r\n the NY Dept. of Labor at (888) 469-7365 or the US Dept. of Labor at \r\n(866) 487-9243 to make a employer discriminates against you.<br>* Increases to $9.00/hour on December 31, 2015', NULL, NULL, 0),
(95, 'Illness', NULL, '2015-07-13 23:03:36', NULL, NULL, 'YOU HAVE THE RIGHT TO TIME OFF FOR ILLNESS AND TO CARE FOR YOUR FAMILY <br>YOU have the right to â€”<br>â€¨Earn up to 40 hours of paid time off for illness or family care if your employer has more than 5 employees.&nbsp; Express breast milk at work during paid or unpaid breaks or lunch time, and in a separate room, if available. YOU may have the right to â€” Up to 12 weeks unpaid time off from work for illness or to care for family and still keep your job, or a similar job, if your employer has more than 50 employees. <br><br>EDIT<br><br>Find out if you have the right to time off! <br>Call the NYC Dept. of Consumer Affairs at 311 for information about paid time off.â€¨Call the NY Dept. of Labor at (888) 469-7365 for information about expressing breast milk. <br>Call the US Dept. of Labor at (866) 487-9243 for information about unpaid weeks off. <br>', NULL, NULL, 0),
(96, 'Injuries', NULL, '2015-07-13 23:03:36', NULL, NULL, 'YOU HAVE THE RIGHT TO BE COMPENSATED FOR ON-THE- JOB INJURIES <br>YOU have the right to â€” for your injuries, even if you are undocumented or a full-time domestic worker.&nbsp; Ongoing medical care and prescription coverage by a doctor of your own choice, if you are found eligible for workersâ€™ compensation. Freedom from threats or retaliation for making a claim. &nbsp;<br><br>Donâ€™t let your employer violate your rights! <br>Call the at (877) 632-4996 if you are discriminated against for making a claim. <br>', NULL, NULL, 0),
(97, 'Compensation', NULL, '2015-07-13 23:03:36', NULL, NULL, 'YOU HAVE THE RIGHT TO BE COMPENSATED FOR ON-THE- JOB INJURIES <br>YOU have the right to â€” for your injuries, even if you are undocumented or a full-time domestic worker.&nbsp; Ongoing medical care and prescription coverage by a doctor of your own choice, if you are found eligible for workersâ€™ compensation. Freedom from threats or retaliation for making a claim. &nbsp;<br><br>Donâ€™t let your employer violate your rights! <br>Call the at (877) 632-4996 if you are discriminated against for making a claim. <br>', NULL, NULL, 0),
(98, '', '0000-00-00 00:00:00', '2015-09-29 17:49:29', NULL, NULL, '', NULL, NULL, 0),
(99, '', '0000-00-00 00:00:00', '2015-09-29 18:01:29', NULL, NULL, '', NULL, NULL, 0),
(100, '', '0000-00-00 00:00:00', '2015-09-29 18:01:57', NULL, NULL, '', NULL, NULL, 0),
(101, '', '0000-00-00 00:00:00', '2015-09-29 18:02:58', NULL, NULL, '', NULL, NULL, 0),
(102, 'Illness', NULL, '2015-09-29 18:10:09', NULL, NULL, 'YOU HAVE THE RIGHT TO TIME OFF FOR ILLNESS AND TO CARE FOR YOUR FAMILY <br>YOU have the right to â€”<br>â€¨Earn up to 40 hours of paid time off for illness or family care if your employer has more than 5 employees.&nbsp; Express breast milk at work during paid or unpaid breaks or lunch time, and in a separate room, if available. YOU may have the right to â€” Up to 12 weeks unpaid time off from work for illness or to care for family and still keep your job, or a similar job, if your employer has more than 50 employees. <br><br>EDIT<br><br>Find out if you have the right to time off! <br>Call the NYC Dept. of Consumer Affairs at 311 for information about paid time off.â€¨Call the NY Dept. of Labor at (888) 469-7365 for information about expressing breast milk. <br>Call the US Dept. of Labor at (866) 487-9243 for information about unpaid weeks off. <br>', NULL, NULL, 0),
(103, 'Illness', NULL, '2015-09-29 18:11:08', NULL, NULL, 'YOU HAVE THE RIGHT TO TIME OFF FOR ILLNESS AND TO CARE FOR YOUR FAMILY <br>YOU have the right to â€”<br>â€¨Earn up to 40 hours of paid time off for illness or family care if your employer has more than 5 employees.&nbsp; Express breast milk at work during paid or unpaid breaks or lunch time, and in a separate room, if available. YOU may have the right to â€” Up to 12 weeks unpaid time off from work for illness or to care for family and still keep your job, or a similar job, if your employer has more than 50 employees. <br><br>EDIT<br><br>Find out if you have the right to time off! <br>Call the NYC Dept. of Consumer Affairs at 311 for information about paid time off.â€¨Call the NY Dept. of Labor at (888) 469-7365 for information about expressing breast milk. <br>Call the US Dept. of Labor at (866) 487-9243 for information about unpaid weeks off. <br>', NULL, NULL, 0),
(104, 'Discrimination', NULL, '2015-09-29 18:11:08', NULL, NULL, 'YOU HAVE THE RIGHT TO WORK FREE FROM DISCRIMINATION <br>It is against the law for your employer to â€” <br><br>Fire you, pay you less, or give you different work because of your race, color, age, creed, national origin, citizenship status, gender, gen- der identity, sexual orientation, disability, arrest or conviction record, marital or partnership status, unemployment status, or status as a victim of domestic violence, stalking, or sex offenses, even if you are undocumented. Perpetrate or to allow sexual harassment against you. Deny you a reasonable (and not burdensome) accommodation to allow you to perform your job, if you are disabled. Retaliate against you because you opposed a discriminatory practice. <br><br>Donâ€™t let your employer violate your rights! <br>Equal Opportunity Employment Commission (800) 669-4000â€¨NYS Division of Human Rights (within 1 year) at (718) 741-8400 <br>NYC Commission on Human Rights (within 1 year) at (212) 306-7450 <br><br><div>Lorem ipsum dolor sit amet, evertitur interesset ius eu. Et eos ancillae maiestatis adipiscing. Eum populo repudiare dissentiet cu. Duo ad debet diceret, nam eu harum exerci instructior, ad vitae homero indoctum ius. Id discere labores indoctum his, usu ex brute suscipit.</div><div><br></div><div>Ad nam utinam officiis. Est inani soluta placerat cu. Elitr senserit no vim, fabulas vituperatoribus ei mei, at nam quis dissentias. Sea latine feugait cu, ut debet commune cum, in stet facilisis vel. Et erat rebum blandit eum, mea disputando instructior ex.</div><div><br></div><div>No movet latine sed, ne mei ipsum repudiare, legimus sensibus in nec. Vidit ocurreret nec eu, in modo aliquid vim, ea eam natum temporibus. Ei his hinc alterum copiosae. Quodsi lucilius cum ne.</div><div><br></div><div>Vim meis iisque assueverit et. Nisl fuisset verterem ei mei, eros dolores maluisset ne quo. Et noster accumsan eum, modus affert et mea. Nec fierent mediocrem salutatus in. Constituto appellantur eu sed, ei ferri deterruisset duo.</div><div><br></div><div>Nobis possim nusquam vis id, et enim nullam pro, dicat corpora complectitur ut per. Te sed appareat similique. Cum magna detraxit lobortis te, id suas quodsi perfecto pri. Vis eu saepe eruditi.</div><br><span style=', NULL, NULL, 0),
(105, 'Illness', NULL, '2015-09-29 18:16:07', NULL, NULL, 'YOU HAVE THE RIGHT TO TIME OFF FOR ILLNESS AND TO CARE FOR YOUR FAMILY <br>YOU have the right to â€”<br>â€¨Earn up to 40 hours of paid time off for illness or family care if your employer has more than 5 employees.&nbsp; Express breast milk at work during paid or unpaid breaks or lunch time, and in a separate room, if available. YOU may have the right to â€” Up to 12 weeks unpaid time off from work for illness or to care for family and still keep your job, or a similar job, if your employer has more than 50 employees. <br><br>EDIT<br><br>Find out if you have the right to time off! <br>Call the NYC Dept. of Consumer Affairs at 311 for information about paid time off.â€¨Call the NY Dept. of Labor at (888) 469-7365 for information about expressing breast milk. <br>Call the US Dept. of Labor at (866) 487-9243 for information about unpaid weeks off. <br>', NULL, NULL, 0),
(106, 'Untitled', NULL, '2015-10-12 19:25:24', NULL, NULL, '', NULL, NULL, 0),
(107, 'Is dit een titel?<br><br>', NULL, '2015-10-20 19:11:22', NULL, NULL, 'Ja blijkbaar<div><br></div>', NULL, NULL, 0),
(108, 'Dut is een titel<br><br>', NULL, '2015-10-20 19:11:22', NULL, NULL, '', NULL, NULL, 0),
(109, 'test', NULL, '2015-10-20 19:13:30', NULL, NULL, '', NULL, NULL, 0),
(110, 'Untitled', NULL, '2015-12-08 17:25:25', NULL, NULL, '', NULL, NULL, 0),
(111, 'Untitled', NULL, '2015-12-08 17:25:25', NULL, NULL, '', NULL, NULL, 0),
(112, 'Untitled', NULL, '2015-12-08 17:27:39', NULL, NULL, '', NULL, NULL, 0),
(113, 'Untitled', NULL, '2015-12-19 11:01:18', NULL, NULL, '', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE IF NOT EXISTS `tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=105 ;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `title`) VALUES
(4, 'Tag1'),
(5, ''),
(6, 'Tag 6'),
(7, 'Tag 6'),
(8, 'Tag'),
(9, 'Tagggggggg'),
(10, 'Test'),
(11, 'Hello'),
(12, 'World'),
(14, 'Hello World'),
(15, 'Hello Dan'),
(16, 'job'),
(17, 'compensation'),
(18, 'injuries'),
(19, 'right'),
(20, 'discrimination'),
(21, 'legal'),
(22, 'working'),
(23, 'conditions'),
(24, 'minimum'),
(25, 'wage'),
(26, 'safe'),
(27, 'workplace'),
(28, 'illness'),
(29, 'healthy'),
(30, 'care'),
(31, 'family'),
(32, 'coworkers'),
(33, 'free'),
(34, 'risk'),
(35, 'death'),
(36, 'injury'),
(37, 'domestic'),
(38, 'worker'),
(39, 'medical'),
(40, 'prescription'),
(41, 'lunch'),
(42, 'breaks'),
(43, 'employer'),
(44, 'protected'),
(45, 'threaten'),
(46, 'damage'),
(47, 'retaliate'),
(48, 'violate'),
(49, 'come'),
(50, 'together'),
(51, 'change'),
(52, 'speak'),
(53, 'representative'),
(54, 'overtime'),
(55, 'pay'),
(56, 'physical'),
(57, 'harm'),
(58, 'serious'),
(59, 'goggles'),
(60, 'masks'),
(61, 'gloves'),
(62, 'freedom'),
(63, 'threats'),
(64, 'claim'),
(65, 'work'),
(66, 'breast'),
(67, 'milk'),
(68, 'union'),
(69, 'unite'),
(70, 'improve'),
(71, 'earn'),
(72, 'paid'),
(73, 'employees'),
(74, 'commission'),
(75, 'opportunity'),
(76, 'services'),
(77, 'year'),
(78, 'justice'),
(79, 'attorney'),
(80, 'assistance'),
(81, 'vision'),
(82, 'reality'),
(83, 'MFY'),
(84, 'end'),
(85, 'root'),
(86, 'reform'),
(87, 'law'),
(88, 'employment'),
(89, 'docter'),
(90, 'long'),
(91, 'text'),
(92, 'module'),
(93, 'dog'),
(94, 'race'),
(95, 'doctor'),
(96, 'police'),
(97, 'immigration'),
(98, 'payment'),
(99, 'partnership'),
(100, 'Safety'),
(101, 'women'),
(102, 'healthcare'),
(103, 'refugee'),
(104, 'labor');

-- --------------------------------------------------------

--
-- Table structure for table `tag_links`
--

CREATE TABLE IF NOT EXISTS `tag_links` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `link_type` varchar(255) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=292 ;

--
-- Dumping data for table `tag_links`
--

INSERT INTO `tag_links` (`id`, `link_type`, `item_id`, `tag_id`) VALUES
(1, 'Document', 1, 1),
(2, 'Module', 1, 1),
(3, 'Module', 1, 1),
(130, 'Document', 3, 16),
(131, 'Document', 3, 17),
(132, 'Document', 3, 18),
(133, 'Document', 3, 19),
(134, 'Document', 3, 20),
(135, 'Document', 3, 21),
(136, 'Document', 2, 22),
(137, 'Document', 2, 23),
(138, 'Document', 2, 24),
(139, 'Document', 2, 25),
(140, 'Document', 2, 19),
(141, 'Document', 2, 26),
(142, 'Document', 2, 27),
(143, 'Document', 2, 18),
(144, 'Document', 2, 28),
(145, 'Document', 2, 29),
(146, 'Document', 2, 30),
(147, 'Document', 2, 31),
(148, 'Document', 2, 32),
(149, 'Document', 4, 20),
(150, 'Document', 4, 33),
(151, 'Document', 4, 27),
(152, 'Document', 4, 29),
(153, 'Document', 4, 34),
(154, 'Document', 4, 35),
(155, 'Document', 4, 36),
(157, 'Document', 5, 18),
(158, 'Document', 5, 37),
(159, 'Document', 5, 38),
(160, 'Document', 5, 39),
(161, 'Document', 5, 30),
(162, 'Document', 5, 40),
(163, 'Document', 5, 41),
(164, 'Document', 5, 42),
(165, 'Document', 5, 43),
(166, 'Document', 5, 44),
(167, 'Document', 5, 45),
(168, 'Document', 5, 46),
(169, 'Document', 5, 47),
(170, 'Document', 5, 48),
(172, 'Document', 6, 49),
(173, 'Document', 6, 50),
(174, 'Document', 6, 32),
(175, 'Document', 6, 51),
(176, 'Document', 6, 22),
(177, 'Document', 6, 23),
(178, 'Document', 6, 19),
(179, 'Document', 6, 52),
(180, 'Document', 6, 53),
(181, 'Document', 7, 24),
(182, 'Document', 7, 25),
(183, 'Document', 7, 54),
(184, 'Document', 7, 55),
(185, 'Document', 7, 19),
(187, 'Document', 8, 29),
(188, 'Document', 8, 56),
(189, 'Document', 8, 57),
(190, 'Document', 8, 58),
(191, 'Document', 8, 59),
(192, 'Document', 8, 60),
(193, 'Document', 8, 61),
(194, 'Document', 8, 62),
(195, 'Document', 8, 63),
(196, 'Document', 8, 64),
(197, 'Document', 8, 65),
(198, 'Document', 8, 66),
(199, 'Document', 8, 67),
(200, 'Document', 8, 68),
(201, 'Document', 8, 69),
(202, 'Document', 8, 70),
(203, 'Document', 7, 26),
(204, 'Document', 7, 71),
(205, 'Document', 7, 72),
(206, 'Document', 7, 73),
(207, 'Document', 7, 74),
(208, 'Document', 7, 75),
(209, 'Document', 9, 21),
(210, 'Document', 9, 76),
(211, 'Document', 9, 77),
(212, 'Document', 9, 78),
(213, 'Document', 9, 79),
(214, 'Document', 9, 80),
(215, 'Document', 9, 81),
(216, 'Document', 9, 82),
(217, 'Document', 9, 83),
(218, 'Document', 9, 84),
(219, 'Document', 9, 85),
(220, 'Document', 9, 86),
(221, 'Document', 9, 87),
(222, 'Document', 9, 88),
(223, 'Document', 2, 5),
(224, 'Document', 10, 5),
(225, 'Module', 7, 89),
(226, 'Document', 10, 90),
(227, 'Document', 10, 91),
(228, 'Document', 10, 92),
(229, 'Module', 6, 26),
(230, 'Module', 6, 29),
(231, 'Module', 6, 27),
(232, 'Module', 7, 24),
(233, 'Module', 7, 25),
(234, 'Module', 7, 54),
(235, 'Module', 7, 55),
(236, 'Document', 11, 93),
(237, 'Module', 8, 17),
(238, 'Module', 8, 18),
(239, 'Module', 8, 19),
(240, 'Module', 9, 28),
(241, 'Module', 9, 30),
(242, 'Module', 9, 31),
(244, 'Module', 10, 20),
(245, 'Module', 10, 19),
(246, 'Module', 10, 33),
(247, 'Module', 10, 94),
(248, 'Module', 11, 18),
(249, 'Module', 11, 95),
(250, 'Module', 11, 62),
(253, 'Document', 12, 5),
(254, 'Module', 0, 29),
(255, 'Module', 0, 30),
(256, 'Module', 0, 95),
(257, 'Module', 0, 96),
(258, 'Module', 0, 97),
(259, 'Module', 6, 43),
(260, 'Document', 8, 17),
(261, 'Module', 7, 38),
(262, 'Module', 7, 98),
(263, 'Module', 10, 99),
(264, 'Module', 98, 5),
(265, 'Module', 99, 96),
(266, 'Module', 99, 100),
(267, 'Module', 99, 101),
(268, 'Module', 100, 29),
(269, 'Module', 100, 30),
(270, 'Module', 100, 95),
(271, 'Module', 100, 96),
(272, 'Module', 100, 97),
(273, 'Module', 101, 29),
(274, 'Module', 101, 30),
(275, 'Module', 101, 95),
(276, 'Module', 101, 96),
(277, 'Module', 101, 97),
(278, 'Document', 12, 96),
(279, 'Document', 12, 101),
(280, 'Document', 12, 102),
(281, 'Document', 12, 100),
(282, 'Document', 13, 96),
(283, 'Document', 13, 103),
(284, 'Document', 13, 25),
(285, 'Document', 13, 97),
(286, 'Document', 14, 8),
(287, 'Document', 15, 5),
(288, 'Module', 6, 34),
(289, 'Document', 16, 65),
(290, 'Document', 16, 26),
(291, 'Document', 16, 104);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
