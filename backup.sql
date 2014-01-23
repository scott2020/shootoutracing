-- MySQL dump 8.22
--
-- Host: localhost    Database: shootout
---------------------------------------------------------
-- Server version	3.23.54

--
-- Table structure for table 'classes'
--

CREATE TABLE `classes` (
  `class_id` int(3) NOT NULL auto_increment,
  `class_name` varchar(8) default NULL,
  `class_count` int(2) default NULL,
  PRIMARY KEY  (`class_id`)
) TYPE=MyISAM;

--
-- Dumping data for table 'classes'
--



--
-- Table structure for table 'competitors'
--

CREATE TABLE `competitors` (
  `competitor_id` int(4) NOT NULL default '0',
  `driver_first` varchar(25) NOT NULL default '',
  `driver_middle` char(2) default NULL,
  `driver_last` varchar(25) NOT NULL default '',
  `driver_dob` int(11) default NULL,
  `driver_address` varchar(25) default NULL,
  `driver_address2` varchar(20) default NULL,
  `driver_city` varchar(15) default NULL,
  `driver_state` char(2) default NULL,
  `driver_zip` mediumint(5) default NULL,
  `driver_dl` varchar(15) default NULL,
  `driver_phone` varchar(12) default NULL,
  `owner_first` varchar(25) default NULL,
  `owner_middle` char(2) default NULL,
  `owner_last` varchar(20) default NULL,
  `owner_address` varchar(25) default NULL,
  `owner_city` varchar(15) default NULL,
  `owner_state` char(2) default NULL,
  `owner_zip` mediumint(5) default NULL,
  `owner_phone` varchar(12) default NULL,
  `sponsor_name` varchar(30) default NULL,
  `sponsor_address` varchar(50) default NULL,
  `emer_first` varchar(25) default NULL,
  `emer_last` varchar(25) default NULL,
  `emer_address` varchar(50) default NULL,
  `emer_phone` varchar(12) default NULL,
  `emer_relation` varchar(30) default NULL,
  `boat_class` varchar(8) default NULL,
  `boat_number` int(2) default NULL,
  `boat_name` varchar(30) default NULL,
  `boat_year` smallint(4) default NULL,
  `boat_mfg` varchar(20) default NULL,
  `boat_hull` varchar(5) default NULL,
  `boat_length` tinyint(4) default NULL,
  `boat_engines` tinyint(2) default NULL,
  `boat_block` varchar(10) default NULL,
  `boat_cuinch` tinyint(4) default NULL,
  `boat_outdrivetype` varchar(10) default NULL,
  `boat_mods` varchar(60) default NULL,
  `boat_state` char(2) default NULL,
  PRIMARY KEY  (`competitor_id`)
) TYPE=MyISAM;

--
-- Dumping data for table 'competitors'
--


INSERT INTO `competitors` VALUES (1,'i9u','u','u',0,'uu','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `competitors` VALUES (2,'scott','m','bastard',2,'1233 hoemr st','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `competitors` VALUES (3,'','','',0,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `competitors` VALUES (4,'uuuuuuuu','','',0,'u','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `competitors` VALUES (5,'sdf','','',0,'','address2','','',0,'','','','','','','','',0,'','','',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `competitors` VALUES (6,'dsf','sd','asdf',0,'sdf','address2','sdfa','df',454,'sdf','sdf','sdf','sd','sdf','dsfa','dasf','sd',0,'sdf','sdfa','sdf',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `competitors` VALUES (7,'','','',0,'','address2','','',0,'','','','','','','','',0,'','','',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `competitors` VALUES (8,'sd','','',0,'','address2','','',0,'','','','','','','','',0,'','','','','','emeraddress','','emerRelation',NULL,0,'d',0,'','',0,0,'',0,'','','ST');
INSERT INTO `competitors` VALUES (9,'drfirst','dr','drlast',0,'draddress','address2','drcity','dr',0,'dilicense','drphone','ofirst','om','olast','oaddress','osity','OS',0,'ophone','spname','spaddress','emerfirst','emerlast','emeraddress','emerphoe','emerRelation',NULL,0,'boatnbame',127,'boatmfg','V',33,3,'400',127,'boatoutdri','big mother of the big ass bitch','ST');
INSERT INTO `competitors` VALUES (10,'','','',0,'','address2','','',0,'','','','','','','','',0,'','','','','','emeraddress','','emerRelation',NULL,0,'',127,'','',0,0,'',0,'','','ST');
INSERT INTO `competitors` VALUES (11,'','','',0,'','address2','','',0,'','','','','','','','',0,'','','','','','emeraddress','','emerRelation',NULL,0,'',2002,'','',0,0,'',0,'','','ST');

--
-- Table structure for table 'speeds'
--

CREATE TABLE `speeds` (
  `run_id` int(3) NOT NULL auto_increment,
  `competitor_id` int(4) default NULL,
  `speed` int(3) default NULL,
  `timestamp` timestamp(14) NOT NULL,
  `disqual` char(1) default NULL,
  `disqual_reason` varchar(60) default NULL,
  PRIMARY KEY  (`run_id`)
) TYPE=MyISAM;

--
-- Dumping data for table 'speeds'
--



