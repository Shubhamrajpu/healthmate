SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";





-- Table structure for table `admin`

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `aemail` varchar(255) NOT NULL,
  `apassword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`aemail`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;





-- Table structure for table `appointment`

DROP TABLE IF EXISTS `appointment`;
CREATE TABLE IF NOT EXISTS `appointment` (
  `appoid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(10) DEFAULT NULL,
  `apponum` int(3) DEFAULT NULL,
  `scheduleid` int(10) DEFAULT NULL,
  `appodate` date DEFAULT NULL,
  PRIMARY KEY (`appoid`),
  KEY `pid` (`pid`),
  KEY `scheduleid` (`scheduleid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;





-- Table structure for table `doctor`

DROP TABLE IF EXISTS `doctor`;
CREATE TABLE IF NOT EXISTS `doctor` (
  `docid` int(11) NOT NULL AUTO_INCREMENT,
  `docemail` varchar(255) DEFAULT NULL,
  `docname` varchar(255) DEFAULT NULL,
  `docpassword` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `doctel` varchar(15) DEFAULT NULL,
  `specialties` int(2) DEFAULT NULL,
  `docnic` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`docid`),
  KEY `specialties` (`specialties`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;



-- Table structure for table `patient`

DROP TABLE IF EXISTS `patient`;
CREATE TABLE IF NOT EXISTS `patient` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `pemail` varchar(255) DEFAULT NULL,
  `pname` varchar(255) DEFAULT NULL,
  `ppassword` varchar(255) DEFAULT NULL,
  `paddress` varchar(255) DEFAULT NULL,
  `page` varchar(15) DEFAULT NULL,
  `pdob` date DEFAULT NULL,
  `ptel` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;




-- Table structure for table `schedule`

DROP TABLE IF EXISTS `schedule`;
CREATE TABLE IF NOT EXISTS `schedule` (
  `scheduleid` int(11) NOT NULL AUTO_INCREMENT,
  `docid` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `scheduledate` date DEFAULT NULL,
  `scheduletime` time DEFAULT NULL,
  `nop` int(4) DEFAULT NULL,
  PRIMARY KEY (`scheduleid`),
  KEY `docid` (`docid`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;



-- Table structure for table `specialties`

DROP TABLE IF EXISTS `specialties`;
CREATE TABLE IF NOT EXISTS `specialties` (
  `id` int(2) NOT NULL,
  `sname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


INSERT INTO `specialties` (`id`, `sname`) VALUES
(1, 'Accident and emergency medicine'),
(2, 'Allergology'),
(3, 'Anaesthetics'),
(4, 'Biological hematology'),
(5, 'Cardiology'),
(6, 'Child psychiatry'),
(7, 'Clinical biology'),
(8, 'Clinical chemistry'),
(9, 'Clinical neurophysiology'),
(10, 'Clinical radiology'),
(11, 'Dental, oral and maxillo-facial surgery'),
(12, 'Dermato-venerology'),
(13, 'Dermatology'),
(14, 'Endocrinology'),
(15, 'Gastro-enterologic surgery'),
(16, 'Gastroenterology'),
(17, 'General hematology'),
(18, 'General Practice'),
(19, 'General surgery'),
(20, 'Geriatrics'),
(21, 'Immunology'),
(22, 'Infectious diseases'),
(23, 'Internal medicine'),
(24, 'Laboratory medicine'),
(25, 'Maxillo-facial surgery'),
(26, 'Microbiology'),
(27, 'Nephrology'),
(28, 'Neuro-psychiatry'),
(29, 'Neurology'),
(30, 'Neurosurgery'),
(31, 'Nuclear medicine'),
(32, 'Obstetrics and gynecology'),
(33, 'Occupational medicine'),
(34, 'Ophthalmology'),
(35, 'Orthopaedics'),
(36, 'Otorhinolaryngology'),
(37, 'Paediatric surgery'),
(38, 'Paediatrics'),
(39, 'Pathology'),
(40, 'Pharmacology'),
(41, 'Physical medicine and rehabilitation'),
(42, 'Plastic surgery'),
(43, 'Podiatric Medicine'),
(44, 'Podiatric Surgery'),
(45, 'Psychiatry'),
(46, 'Public health and Preventive Medicine'),
(47, 'Radiology'),
(48, 'Radiotherapy'),
(49, 'Respiratory medicine'),
(50, 'Rheumatology'),
(51, 'Stomatology'),
(52, 'Thoracic surgery'),
(53, 'Tropical medicine'),
(54, 'Urology'),
(55, 'Vascular surgery'),
(56, 'Venereology');


-- Table structure for table `webuser`

DROP TABLE IF EXISTS `webuser`;
CREATE TABLE IF NOT EXISTS `webuser` (
  `email` varchar(255) NOT NULL,
  `usertype` char(1) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


COMMIT;
