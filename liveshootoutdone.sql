-- MySQL dump 8.23
--
-- Host: localhost    Database: shootout
---------------------------------------------------------
-- Server version	3.23.58

--
-- Table structure for table `_report_users`
--

CREATE TABLE `_report_users` (
  `ID` int(11) NOT NULL auto_increment,
  `login_id` varchar(255) NOT NULL default '0',
  `login_pass` varchar(255) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `login_id` (`login_id`)
) TYPE=MyISAM;

--
-- Dumping data for table `_report_users`
--


INSERT INTO `_report_users` VALUES (1,'scott','fartman');

--
-- Table structure for table `_xml_report`
--

CREATE TABLE `_xml_report` (
  `ID` int(11) NOT NULL auto_increment,
  `deleted` smallint(1) NOT NULL default '0',
  `user_id` int(11) NOT NULL default '0',
  `shared` smallint(1) NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `xml` text NOT NULL,
  `date_lastrun` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_created` datetime NOT NULL default '0000-00-00 00:00:00',
  `last_run_by` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `shared` (`shared`),
  KEY `deleted` (`deleted`),
  KEY `user_id` (`user_id`)
) TYPE=MyISAM;

--
-- Dumping data for table `_xml_report`
--


INSERT INTO `_xml_report` VALUES (1,0,1,0,'test 1','<report id=\"0\" shared=\"0\" user_id=\"undefined\" name=\"test 1\" orientation=\"\"><ReportPage h=\"1056\" w=\"816\"><sections><ReportSection moveable=\"false\" immortal=\"true\" type=\"titleHeader\" h=\"30\"><elements /></ReportSection><ReportSection moveable=\"false\" immortal=\"true\" type=\"header\" h=\"30\"><elements /></ReportSection><ReportSection moveable=\"false\" immortal=\"true\" type=\"body\" h=\"30\"><elements><FieldElement data=\"competitors.driver_first\" font=\"Times New Roman\" color=\"0\" size=\"12\" valign=\"middle\" align=\"center\" underline=\"false\" italic=\"false\" bold=\"false\" text=\"driver_first\" bgColor=\"0xf7f7f7\" lineColor=\"0\" lineSize=\"1\" useFill=\"true\" useLine=\"true\" h=\"22\" w=\"65\" y=\"4\" x=\"52\" /><FieldElement data=\"competitors.driver_last\" font=\"Times New Roman\" color=\"0\" size=\"12\" valign=\"middle\" align=\"center\" underline=\"false\" italic=\"false\" bold=\"false\" text=\"driver_last\" bgColor=\"0xf7f7f7\" lineColor=\"0\" lineSize=\"1\" useFill=\"true\" useLine=\"true\" h=\"22\" w=\"65\" y=\"4\" x=\"149\" /><FieldElement data=\"undefined\" font=\"Times New Roman\" color=\"0\" size=\"12\" valign=\"middle\" align=\"center\" underline=\"false\" italic=\"false\" bold=\"false\" text=\"&lt; EMPTY &gt;\" bgColor=\"0xf7f7f7\" lineColor=\"0\" lineSize=\"1\" useFill=\"true\" useLine=\"true\" h=\"22\" w=\"65\" y=\"4\" x=\"255\" /></elements></ReportSection><ReportSection moveable=\"false\" immortal=\"true\" type=\"footer\" h=\"30\"><elements /></ReportSection><ReportSection moveable=\"false\" immortal=\"true\" type=\"titleFooter\" h=\"30\"><elements /></ReportSection></sections></ReportPage><filters /><sorts><sort type=\"ASC\" field=\"competitors.driver_first\" screen=\"competitors\" /></sorts></report>','2004-06-18 18:23:11','2004-06-18 17:23:58',1);
INSERT INTO `_xml_report` VALUES (2,0,1,0,'ass','<report id=\"2\" shared=\"0\" user_id=\"undefined\" name=\"ass\" orientation=\"\"><ReportPage h=\"1056\" w=\"816\"><sections><ReportSection moveable=\"false\" immortal=\"true\" type=\"titleHeader\" h=\"30\"><elements><TextElement font=\"Times New Roman\" color=\"0\" size=\"12\" valign=\"middle\" align=\"left\" underline=\"false\" italic=\"false\" bold=\"false\" text=\"Budweiser Shootout 2004\" bgColor=\"16777215\" lineColor=\"0\" lineSize=\"1\" useFill=\"true\" useLine=\"true\" h=\"19\" w=\"274\" y=\"7\" x=\"93\" /></elements></ReportSection><ReportSection moveable=\"false\" immortal=\"true\" type=\"header\" h=\"30\"><elements><TextElement font=\"Times New Roman\" color=\"0\" size=\"12\" valign=\"middle\" align=\"left\" underline=\"false\" italic=\"false\" bold=\"false\" text=\"Speeds by competitor\" bgColor=\"16777215\" lineColor=\"0\" lineSize=\"1\" useFill=\"true\" useLine=\"true\" h=\"24\" w=\"176\" y=\"1\" x=\"252\" /></elements></ReportSection><ReportSection groupByData=\"speeds.competitor_id\" groupByLabel=\"speeds.competitor_id\" moveable=\"true\" immortal=\"false\" type=\"sumSection\" h=\"30\"><elements><FieldElement data=\"speeds.competitor_id\" font=\"Times New Roman\" color=\"0\" size=\"12\" valign=\"middle\" align=\"center\" underline=\"false\" italic=\"false\" bold=\"false\" text=\"speeds.competitor_id\" bgColor=\"16250871\" lineColor=\"0\" lineSize=\"1\" useFill=\"true\" useLine=\"true\" h=\"18\" w=\"148\" y=\"5\" x=\"402\" /><TextElement font=\"Times New Roman\" color=\"0\" size=\"12\" valign=\"middle\" align=\"left\" underline=\"false\" italic=\"false\" bold=\"false\" text=\"Speeds for Competitor\" bgColor=\"16777215\" lineColor=\"0\" lineSize=\"1\" useFill=\"true\" useLine=\"true\" h=\"22\" w=\"135\" y=\"4\" x=\"272\" /></elements></ReportSection><ReportSection moveable=\"false\" immortal=\"true\" type=\"body\" h=\"27\"><elements><FieldElement data=\"speeds.timestamp\" font=\"Times New Roman\" color=\"0\" size=\"12\" valign=\"middle\" align=\"center\" underline=\"false\" italic=\"false\" bold=\"false\" text=\"timestamp\" bgColor=\"16250871\" lineColor=\"0\" lineSize=\"1\" useFill=\"true\" useLine=\"true\" h=\"22\" w=\"144\" y=\"1\" x=\"412\" /><FieldElement data=\"speeds.speed\" font=\"Times New Roman\" color=\"0\" size=\"12\" valign=\"middle\" align=\"center\" underline=\"false\" italic=\"false\" bold=\"false\" text=\"speed\" bgColor=\"16250871\" lineColor=\"0\" lineSize=\"1\" useFill=\"true\" useLine=\"true\" h=\"22\" w=\"65\" y=\"1\" x=\"321\" /></elements></ReportSection><ReportSection moveable=\"false\" immortal=\"true\" type=\"footer\" h=\"30\"><elements /></ReportSection><ReportSection moveable=\"false\" immortal=\"true\" type=\"titleFooter\" h=\"30\"><elements /></ReportSection></sections></ReportPage><filters /><sorts><sort type=\"ASC\" field=\"speeds.competitor_id\" screen=\"speeds\" /></sorts></report>','2004-06-20 22:59:48','2004-06-18 17:29:21',1);
INSERT INTO `_xml_report` VALUES (3,0,1,0,'crat','<report id=\"0\" shared=\"0\" user_id=\"undefined\" name=\"crat\" orientation=\"\"><ReportPage h=\"1056\" w=\"816\"><sections><ReportSection moveable=\"false\" immortal=\"true\" type=\"titleHeader\" h=\"30\"><elements><TextElement font=\"Times New Roman\" color=\"0\" size=\"12\" valign=\"middle\" align=\"left\" underline=\"false\" italic=\"false\" bold=\"false\" text=\"apples\" bgColor=\"16777215\" lineColor=\"0\" lineSize=\"1\" useFill=\"true\" useLine=\"true\" h=\"26\" w=\"212\" y=\"0\" x=\"108\" /></elements></ReportSection><ReportSection moveable=\"false\" immortal=\"true\" type=\"header\" h=\"30\"><elements /></ReportSection><ReportSection moveable=\"false\" immortal=\"true\" type=\"body\" h=\"103\"><elements><FieldElement data=\"competitors.competitor_id\" font=\"Times New Roman\" color=\"0\" size=\"12\" valign=\"middle\" align=\"center\" underline=\"false\" italic=\"false\" bold=\"false\" text=\"competitor_id\" bgColor=\"0xf7f7f7\" lineColor=\"0\" lineSize=\"1\" useFill=\"true\" useLine=\"true\" h=\"25\" w=\"149\" y=\"37\" x=\"60\" /><FieldElement data=\"competitors.driver_first\" font=\"Times New Roman\" color=\"0\" size=\"12\" valign=\"middle\" align=\"center\" underline=\"false\" italic=\"false\" bold=\"false\" text=\"driver_first\" bgColor=\"0xf7f7f7\" lineColor=\"0\" lineSize=\"1\" useFill=\"true\" useLine=\"true\" h=\"24\" w=\"147\" y=\"37\" x=\"215\" /><FieldElement data=\"competitors.driver_last\" font=\"Times New Roman\" color=\"0\" size=\"12\" valign=\"middle\" align=\"center\" underline=\"false\" italic=\"false\" bold=\"false\" text=\"driver_last\" bgColor=\"0xf7f7f7\" lineColor=\"0\" lineSize=\"1\" useFill=\"true\" useLine=\"true\" h=\"24\" w=\"181\" y=\"41\" x=\"376\" /><FieldElement data=\"competitors.boat_class\" font=\"Times New Roman\" color=\"0\" size=\"12\" valign=\"middle\" align=\"center\" underline=\"false\" italic=\"false\" bold=\"false\" text=\"boat_class\" bgColor=\"0xf7f7f7\" lineColor=\"0\" lineSize=\"1\" useFill=\"true\" useLine=\"true\" h=\"23\" w=\"108\" y=\"37\" x=\"570\" /></elements></ReportSection><ReportSection moveable=\"false\" immortal=\"true\" type=\"footer\" h=\"30\"><elements /></ReportSection><ReportSection moveable=\"false\" immortal=\"true\" type=\"titleFooter\" h=\"30\"><elements /></ReportSection></sections></ReportPage><filters /><sorts><sort type=\"asc\" field=\"competitors.driver_first\" screen=\"competitors\" /></sorts></report>','2004-06-19 23:42:17','2004-06-19 23:42:17',0);

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `class_id` int(3) NOT NULL auto_increment,
  `class_name` varchar(8) default NULL,
  `class_count` varchar(4) default NULL,
  PRIMARY KEY  (`class_id`)
) TYPE=MyISAM;

--
-- Dumping data for table `classes`
--


INSERT INTO `classes` VALUES (1,'ZZZZ','39');
INSERT INTO `classes` VALUES (2,'P1DE','2');
INSERT INTO `classes` VALUES (3,'V3S2','7');
INSERT INTO `classes` VALUES (4,'V3P2','4');
INSERT INTO `classes` VALUES (5,'C3P2','5');
INSERT INTO `classes` VALUES (6,'PWC3','17');
INSERT INTO `classes` VALUES (7,'C4P2','9');
INSERT INTO `classes` VALUES (8,'V4S2','2');
INSERT INTO `classes` VALUES (9,'C2S1','2');
INSERT INTO `classes` VALUES (10,'V2S2','3');
INSERT INTO `classes` VALUES (11,'CO2S2','3');
INSERT INTO `classes` VALUES (12,'','1');
INSERT INTO `classes` VALUES (13,'CO1S2','2');
INSERT INTO `classes` VALUES (14,'V1M1','3');
INSERT INTO `classes` VALUES (15,'V3F2','4');
INSERT INTO `classes` VALUES (16,'V3FP2','2');
INSERT INTO `classes` VALUES (17,'C2S2','3');
INSERT INTO `classes` VALUES (18,'V2S1','2');
INSERT INTO `classes` VALUES (19,'C4F2','2');
INSERT INTO `classes` VALUES (20,'CO2M','1');
INSERT INTO `classes` VALUES (21,'P1S1','2');
INSERT INTO `classes` VALUES (22,'PWC','1');
INSERT INTO `classes` VALUES (23,'PWC1','5');
INSERT INTO `classes` VALUES (24,'V4F3','2');
INSERT INTO `classes` VALUES (25,'V4F2','3');
INSERT INTO `classes` VALUES (26,'C4M2','2');
INSERT INTO `classes` VALUES (27,'C3M2','2');
INSERT INTO `classes` VALUES (28,'VO1S2','2');
INSERT INTO `classes` VALUES (29,'V5P2','3');
INSERT INTO `classes` VALUES (30,'V6P2','2');
INSERT INTO `classes` VALUES (31,'P2S1','2');
INSERT INTO `classes` VALUES (32,'P3S2','2');
INSERT INTO `classes` VALUES (33,'CO2M2','3');
INSERT INTO `classes` VALUES (34,'C1P1','6');
INSERT INTO `classes` VALUES (35,'C2F2','2');
INSERT INTO `classes` VALUES (36,'C5P2','5');
INSERT INTO `classes` VALUES (37,'V2F1','2');
INSERT INTO `classes` VALUES (38,'V3FM2','2');
INSERT INTO `classes` VALUES (39,'V1F1','3');
INSERT INTO `classes` VALUES (40,'V4M2','4');
INSERT INTO `classes` VALUES (41,'C2P2','4');
INSERT INTO `classes` VALUES (42,'V3M2','4');
INSERT INTO `classes` VALUES (43,'PO2S2','2');
INSERT INTO `classes` VALUES (44,'VO1S1','2');
INSERT INTO `classes` VALUES (45,'HYDRO','2');
INSERT INTO `classes` VALUES (46,'V2F2','2');
INSERT INTO `classes` VALUES (47,'V4P2','3');
INSERT INTO `classes` VALUES (48,'V2M2','2');
INSERT INTO `classes` VALUES (49,'CCO2F2','2');
INSERT INTO `classes` VALUES (50,'C2P1','2');
INSERT INTO `classes` VALUES (51,'V5F2','3');
INSERT INTO `classes` VALUES (52,'PX-17','2');
INSERT INTO `classes` VALUES (53,'V2P1','2');
INSERT INTO `classes` VALUES (54,'V2M1','3');
INSERT INTO `classes` VALUES (55,'C1M1','2');
INSERT INTO `classes` VALUES (56,'V4FP2','3');
INSERT INTO `classes` VALUES (57,'V1P2','2');
INSERT INTO `classes` VALUES (58,'V1P1','2');
INSERT INTO `classes` VALUES (59,'CO3S3','2');
INSERT INTO `classes` VALUES (60,'C1S1','2');
INSERT INTO `classes` VALUES (61,'V5S2','2');
INSERT INTO `classes` VALUES (62,'V5S3','2');
INSERT INTO `classes` VALUES (63,'C2M2','2');
INSERT INTO `classes` VALUES (64,'C5P4','2');
INSERT INTO `classes` VALUES (65,'V5M2','2');
INSERT INTO `classes` VALUES (66,'P1P1','2');
INSERT INTO `classes` VALUES (67,'CCO4M2','2');
INSERT INTO `classes` VALUES (68,'CC4P2','2');
INSERT INTO `classes` VALUES (69,'CO2F2','2');

--
-- Table structure for table `competitors`
--

CREATE TABLE `competitors` (
  `competitor_id` int(4) NOT NULL auto_increment,
  `driver_first` varchar(25) NOT NULL default '',
  `driver_middle` char(2) default NULL,
  `driver_last` varchar(25) NOT NULL default '',
  `driver_dob` varchar(11) default NULL,
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
  `boat_cuinch` int(4) default NULL,
  `boat_outdrivetype` varchar(10) default NULL,
  `boat_mods` varchar(60) default NULL,
  `boat_state` char(2) default NULL,
  `driver_email` varchar(30) default NULL,
  PRIMARY KEY  (`competitor_id`)
) TYPE=MyISAM;

--
-- Dumping data for table `competitors`
--


INSERT INTO `competitors` VALUES (1,'Charley','','Bergfeld','10/17/67','204 Crescent Road','address2','Valley Park','MO',63088,'496844938','314 799-7827','Charley','','Bergfeld','','','',0,'','None','','Chuck','Bergfeld','emeraddress','573 348-4618','EmerRelationupdate','V3M2',2,'Chazecutioner',1986,'Fountain','V',33,2,'big blocks',605,'Arneson','None','SU','chazbergfeld@aol.com');
INSERT INTO `competitors` VALUES (2,'Kevin','','Brandes','12/16/63','184 NE Hidden Ridge Place','address2','Lees Summit','MO',64064,'B653516634560','816 838-3636','Kevin','','Brandes','','','',0,'','None','','De','Brandes','emeraddress','816 838-1968','EmerRelationupdate','ZZZZ',2,'X cellerator',2004,'Cigarette','V',42,2,'',540,'Mercury #6','Blowers','SU','kevin@westportent.com');
INSERT INTO `competitors` VALUES (3,'Bruce','','Bullock','03/17/52','3101 Nasa Road One','address2','Seabrook','TX',77586,'06255332','281 326-7202','Richard','','Monical','3025 County Road 510','Brazoria','TX',77422,'979 487-8004','Bullock Marine','3101 Nasa Road One, Seabrook TX   77586','Travis','Brewer','emeraddress','281326-660','EmerRelationupdate','ZZZZ',3,'Best of Times 2',2003,'Skater','',36,2,'',588,'Speedmaste','Supercharged','SU','bbul980148@aol.com');
INSERT INTO `competitors` VALUES (4,'Rick','','Butler','07/01/57','176 Sugar Mountain Drive','address2','Fenton','MO',63026,'H056217001','314 630-2417','Rick','','Butler','Same','','',0,'','None','','Jackie','Butler','emeraddress','314 630-3225','EmerRelationupdate','V3F2',2,'Haul \'N But\'s',2000,'Advantage','',32,2,'',502,'Bravo One','None','SU','rick.butler@mavtech.cc');
INSERT INTO `competitors` VALUES (5,'Steve','','Cline','12/16/62','805 N. Calhoun Street','address2','West Liberty','IA',52776,'481-74-0592','319 627-6555','Carol','','Cline','Same','','',0,'','JB Hooks','Business 54, Lake Ozark, MO 65049','Carol','Cline','emeraddress','319 631-4536','EmerRelationupdate','V3FP2',1,'Turkey Toy',1997,'Fountain','V',35,2,'big block',525,'Bravo One','None','SU','tcfllc@Lcom.net');
INSERT INTO `competitors` VALUES (6,'Jim','','Darr','06/21/63','233 Ledges','address2','Osage Beach','MO',65065,'488744490','636 236-4141','Jim','','Darr','','','',0,'','Midwest Performance Marine','233 Ledges, Osage Beach, MO 65065','Jeff','Darr','emeraddress','636 236-1872','emerRelation','ZZZZ',6,'Thaz Right',2005,'Nor-Tech','',36,2,'',602,'Mercury 6','None','ST','jimdarr4490@aol.com');
INSERT INTO `competitors` VALUES (7,'Carolyn','','Dorris','04/05/50','229 Serenity Bay','address2','Linn Creek','MO',65052,'545809160','573 346-7026','Play Craft Pontoon Compan','','','Hwy. 7 North','Richland','MO',65556,'573 765-3265','Play Craft Boats','P.O. Box 708, Richland, MO 65556','Jim','Dorris','emeraddress','417 849-0752','EmerRelationupdate','P2S1',1,'Powertoon X-Treme',2005,'Play Craft Boats','',27,1,'',496,'Bravo 3','None','SU','playcraft@aol.com');
INSERT INTO `competitors` VALUES (8,'Jim','','Dorris','04/25/44','2229 Serenity Bay','address2','Linn Creek','MO',65052,'428824656','573 346-7026','Play Craft Pontoon Compan','','','Hwy. 7 North','Richland','MO',65556,'573 765-3265','Play Craft Boats','P.O. Box 708, Richland, MO 65556','Carolyn','Dorris','emeraddress','573 216-7026','EmerRelationupdate','P3S2',1,'Powertoon X-Treme',2005,'Play Craft Boats','',32,2,'',496,'Bravo 1','None','SU','playcraft@aol.com');
INSERT INTO `competitors` VALUES (9,'Doug','','Edwards','05/11/62','14648 Halsey','address2','Olathe','KS',66062,'K01-67-1602','913 908-6696','Doug & Sue','','Edwards','Same','','',0,'','None','','Verl','Edwards','emeraddress','573 374-7829','EmerRelationupdate','V3M2',1,'Patience',1986,'Fountain','V',33,2,'',540,'Mercruiser','Naturally Aspirated 650 HP','SU','kdedwards@sprintmail.com');
INSERT INTO `competitors` VALUES (10,'Garvin Tyson','','Brad Smith','01/25/75','1509 Main Street','address2','Joplin','MO',64804,'486963601','417 437-0665','Tyson','','Garvin','Same','','',0,'','Brad Smith Racing Engines','W. 7th Street, Joplin, MO 64804','Janet','Garvin','emeraddress','417 850-4879','EmerRelationupdate','C5P2',4,'BIG YELLOW CAT',2003,'Mid-West Designs','Tunne',42,2,'Big Block',632,'Arneson AS','4 turbos','SU','tysongarvin@yahoo.com');
INSERT INTO `competitors` VALUES (42,'Bob','','Sepulveda','','3124 Maracaido Dr','address2','Lake Havasu Cit','AZ',86404,'576-740292','928 486-2740','Advantage Boats Inc.','','','1000 N. Lake Havasu Ave.','Lake Havasu Cit','AZ',86404,'','Advantage Boats Inc','Same','Linda','Sepulveda','emeraddress','928 486-2287','EmerRelationupdate','C3P2',2,'Party Cat',2004,'Advantage','Tunne',0,2,'Big Block',509,'TCM','Supercharged','SU','rob@advantageboats.com');
INSERT INTO `competitors` VALUES (12,'John','','Haydock','09/24/59','1223 Waveland Avenue','address2','Gurnee','IL',60031,'H320-4615-9272','847 336-5515','John','','Haydock','Same','','',0,'','None','','Liz','Haydock','emeraddress','847 336-5515','emerRelation','ZZZZ',11,'',1998,'Wellcraft','',38,2,'',502,'Bravo','None','ST','johnhaydoc@aol.com');
INSERT INTO `competitors` VALUES (13,'Ron','L.','Hodges','12/03/42','4150 Lake Mist Drive','address2','Kennesaw','GA',30144,'GA049513485','770 519-3483','Ron & Lisa','','Hodges','Same','','',0,'','Enterprise Performance Boats','Same','Lisa','Ellis-Hodges','emeraddress','404 514-1512','EmerRelationupdate','CO1S2',1,'The Last Fast One',2002,'Eliminator','Tunne',26,2,'Outboard',300,'','None','SU','ellishodges1@aol.com');
INSERT INTO `competitors` VALUES (14,'Eric','','James','08/06/74','3420 Watson Road','address2','St. Louis','MO',63139,'489-78-2054','314 853-4766','Eric','','James','Same','','',0,'','None','','Joshua','James','emeraddress','314 644-5676','EmerRelationupdate','ZZZZ',13,'',1991,'Challenger','',24,1,'',502,'Bravo 1','Speedmaster lower','SU','emjames@sbcglobal.net');
INSERT INTO `competitors` VALUES (15,'Michael','','Jones','09/29/62','8108 Hardwicke Drive','address2','Johnston','IA',50131,'478-86-2069','515 276-9996','Michael','','Jones','Same','','',0,'','Mallard Printing & Promotion,','10052 Justin Dr, Urbandale IA 50322','Jana','Jones','emeraddress','515 770-9996','EmerRelationupdate','V3S2',4,'Naut D Bouys',1998,'Baja','V',33,1,'',502,'Merc','None','SU','mallardprinting@aol.com');
INSERT INTO `competitors` VALUES (16,'Brandon','','Lee','06/09/??','2818 E. 47th Place','address2','Tulsa','OK',74105,'081611726','918 760-3966','Brandon','','Lee','Same','','',0,'','None','','Larry','Lee','emeraddress','918 640-3698','EmerRelationupdate','V4M2',2,'Roughneck',2002,'Cigarette','V',38,2,'',557,'Mercury XR','Naturally Aspirated','SU','blee@ramenergy.com');
INSERT INTO `competitors` VALUES (17,'Joseph','','Lino','01/17/66','11927 W. 58th Terrace','address2','Shawnee','KS',66216,'k01-05-3769','913 207-5146','Joseph','','Lino','Same','','',0,'','Linos Vac Services','11950 W. 63rd St., Shawnee, KS  66216','Tom','Ledoux','emeraddress','913 634-8423','EmerRelationupdate','V4F3',1,'Wet Zone',2003,'Baja Custom Edition','',40,3,'Big Block',502,'Bravo One','None','SU','joelino@luxmanracing.com');
INSERT INTO `competitors` VALUES (18,'Justin','','Martin','04/28/83','30788 Vale Drive','address2','Rocky Mount','MO',65072,'MO497987097','573 216-2511','Justin','','Martin','Same','','',0,'','None','','Don','Martin','emeraddress','314 560-4815','EmerRelationupdate','PWC3',1,'',2000,'Yamaha','',10,1,'',0,'Jet','Yes','SU','gp1200rl@aol.com');
INSERT INTO `competitors` VALUES (19,'Lance','F.','Messinger','03/03/54','343 Belview Court','address2','Longmont','CO',80501,'95-100-1592 CO','303 550-6699','Lance','F.','Messinger','Same','','',0,'','None','','Cheryl','Messinger','emeraddress','303 817-6935','EmerRelationupdate','C5P2',3,'Blowout',2004,'Douglas Marine','',42,2,'',632,'Mercruiser','','SU','lancemessinger@netscape.net');
INSERT INTO `competitors` VALUES (20,'Brain','','Miller','04/25/72','195 Nanti Street','address2','Park Forest','IL',60466,'M460-0757-2118','708 747-0296','Brian','','Miller','241 Washington Pkwy.','Frankfort','IL',60423,'815 469-6832','None','','Keri','Goff','emeraddress','708 805-8678','EmerRelationupdate','V2M2',1,'',1979,'Wellcraft','V',30,2,'',540,'TRS','None','SU','rfine509@ameritech.net');
INSERT INTO `competitors` VALUES (21,'Rusty','','Rahm','02/23/70','10505 Highland Lane','address2','Olathe','KS',66061,'497-82-4726','913 248-1800','Rusty','','Rahm','Same','','',0,'','None','','Natalie','Rahm','emeraddress','573 365-3059','EmerRelationupdate','V6P2',1,'Leave An Impression',2003,'Outerlimits','V',51,2,'Sm. Blk.',653,'#6','','SU','rrahm@millmrk.com');
INSERT INTO `competitors` VALUES (22,'Brett','','Ramsey','01/12/81','26612 Fallbrook Avenue','address2','Wyoming','MN',55092,'R-520-098-261-0','651 462-2880','Bob','','Menne','Same','','',0,'','None','','Steven','Ramsey','emeraddress','651 433-2500','EmerRelationupdate','ZZZZ',21,'Go Big or Go Home',2005,'Premier Marine','',25,2,'',185,'','None','SU','bramsey@pontoon.com');
INSERT INTO `competitors` VALUES (23,'Ben','','Robertson','07/13/54','P.O. Box 457','address2','Washington','NC',27889,'sc/4668501','252 945-8627','Reggie','','Fountain','Same','','',0,'','Fountain Powerboats','Same','Betty','Smith','emeraddress','252 975-2000','emerRelation','ZZZZ',22,'Fountain Mercury/Pier 57',2005,'Fountain','',42,1,'',556,'Mercruiser','','ST','benrobertson@fountainpowerboat');
INSERT INTO `competitors` VALUES (24,'Matt','','Schade','06/25/69','14328 Manchester Road','address2','Manchester','MO',63011,'493781232','314 503-0272','Matt','','Schade','Same','','',0,'','None','','Deanna','Schade','emeraddress','314 503-3184','emerRelation','ZZZZ',23,'Premiums',2004,'Hustler','',38,2,'',600,'Arenson Su','Twin Cobra 750 naturally aspirated','ST','mschade@amfam.com');
INSERT INTO `competitors` VALUES (25,'Larry Sears &','','Chip Hackman','04/21/??','3109 NW 58th Terrace','address2','Kansas City','MO',64151,'492-62-2536','816 741-7017','Larry','','Sears','Same','','',0,'','None','','Penny','McColloch','emeraddress','503 807-6877','EmerRelationupdate','C4P2',8,'Hollow Point',1999,'Skater','',36,2,'',588,'6A Merc','Blown','SU','lsears@kc.rr.com');
INSERT INTO `competitors` VALUES (57,'Jim','','Mitchell','6-30-50','PO Box 741','address2','Richland','MO',65556,'493-50-7026','573-765-4192','Jim & Gary','','Mitchell','P.O. Box 741','Richland','MO',65556,'','self','','Terri','Mitchell','emeraddress','573-765-4192','EmerRelationupdate','P1S1',1,'Miss Behavin',2004,'Playcraft Powertone','',26,0,'sm blk',350,'','none','SU','');
INSERT INTO `competitors` VALUES (58,'Kevin','','McVey','7-31-61','PO Box 2101','address2','Lake Ozark','MO',65049,'MO 496-62-3222','573-216-8088','Kevin','','McVey','','','',0,'','none','','Earl','Hartenstein','emeraddress','573-372-2686','EmerRelationupdate','PWC1',1,'',2004,'Kawasaki','V',89,1,'',781,'jet pump','stock -- inline twin w/oval 38mm Mikuni carbs','SU','hkmcvey@yahoo.com');
INSERT INTO `competitors` VALUES (27,'John','','Shook','05/14/62','6371 Lemon Gulch Drive','address2','Castle Rock','CO',80108,'92-212-8270','303 663-1472','John','','Shook','Same','','',0,'','None','','Emily','Shook','emeraddress','303 522-3257','EmerRelationupdate','V4P2',2,'No Name',2003,'Donzi','V',39,2,'',496,'Bravo 3','Pro charger','SU','jshookj@aol.com');
INSERT INTO `competitors` VALUES (28,'Stephen Sweet &','','Neil Wobble','07/18/59','6990 State Road 111','address2','South Roxana','IL',62087,'S300-7915-9204','618 254-6900','Stephen','','Sweet','Same','','',0,'','Lake Environmental Inc.','Same','Bertha','Sweet','emeraddress','618 259-7228','EmerRelationupdate','C5P2',2,'Sweet',2004,'Skater','',46,2,'',657,'Mercury #6','','SU','Steve@abatementmgmt.com');
INSERT INTO `competitors` VALUES (29,'John','','Tesdall','06/28/64','330 NW Watercrest Drive','address2','Ankeny','IA',50021,'484-80-1004','515 965-0881','John','','Tesdall','Same','','',0,'','Offshore Only.Com & My Charmin','Ft. Lauderdale, FL','Kristin','Tesdall','emeraddress','515 240-9950','EmerRelationupdate','V2F2',1,'',1998,'Baja','',29,2,'',502,'Bravo 1','','SU','mrmrsjt@aol.com');
INSERT INTO `competitors` VALUES (30,'Chris','','Wall','11/27/59','17183 W FM 455','address2','Celina','TX',75009,'08104704','214 538-5385','Chris','','Wall','Same','','',0,'','None','','Melanie','Wall','emeraddress','972 382-3612','EmerRelationupdate','V3P2',1,'Dragonheart',2002,'Sunsation','V',32,2,'',540,'Imco extre','Vortech Chargers','SU','Dragonheartboat@aol.com');
INSERT INTO `competitors` VALUES (31,'Steve','','Wallace','07/19/69','29714 Red Arrow Road','address2','Rocky Mount','MO',65072,'32060899 MO','573 365-9421','Advanced Marine Inc.','','','Same','','',0,'','Advanced Marine Inc.','Same','Pam','Tellman','emeraddress','573 348-5635','emerRelation','CO2S2',2,'',1994,'Skater','',28,2,'',0,'','','ST','Lesco@charter.net');
INSERT INTO `competitors` VALUES (32,'Matt','','Zoz','03/29/68','8115 238th Street','address2','Alvo','NE',68304,'g20012216','402 430-9984','Matt','','Zoz','Same','','',0,'','None','','Mike','Zoz','emeraddress','402 867-2014','emerRelation','ZZZZ',31,'',1996,'Checkmate','',28,1,'',502,'Merc','None','ST','maz3811@alltel.net');
INSERT INTO `competitors` VALUES (33,'Daniel','','Zwisler','10/11/53','999 E. Eisenhower Blvd.','address2','Loveland','CO',80537,'CO 94-279-2693','970 218-3131','Dan & Jan','','Zwisler','881 Summers Place Dr. 2A','Camdenton','MO',65065,'970 218-3131','HIP National Bank','','Austin','Godinez','emeraddress','970-566-1135','EmerRelationupdate','C4P2',5,'Pammy',2003,'Douglas Marine','Tunne',36,2,'',557,'','','SU','djagz3@msn.com');
INSERT INTO `competitors` VALUES (34,'Randy','','Scism','02/06/56','2024 Waters Edge Ct.','address2','Lake St. Louis','MO',63367,'487-58-7436','314 277-4000','Marine Technology Inc.','','','117 Avalon Industrial Par','Wentzville','MO',63385,'636 639-1166','Marine Technology, Inc.','Same','Cherell','Scism','emeraddress','636 795-2980','emerRelation','ZZZZ',33,'Marine Technology',2005,'MTI','',44,2,'',540,'BPM','','ST','marinetech@socket.net');
INSERT INTO `competitors` VALUES (35,'Bryan Haupt &','','Wes Enlow','07/19/64','24300 E. Truman','address2','Independence','MO',64056,'495784802','816 305-9854','Bryan','','Haupt','Same','','',0,'','Cleaning Frenzy, Throttle Up P','2172 N. Great Neck, Virginia Beach, VA 23454','Sherri','Haupt','emeraddress','816 650-5716','EmerRelationupdate','CCO2F2',1,'Racing Frenzy',2004,'AMT','',30,2,'',0,'Mercury','       (custom offshore race boat)','SU','bhaupt@mhctruck.com');
INSERT INTO `competitors` VALUES (36,'Gene','','Heiniemi','07/24/58','4204 Trenton Road','address2','Eagan','MN',55123,'H-550-275-149-5','651 295-2085','Gene','','Heiniemi','Same','','',0,'','None','','Jules','McCarthy','emeraddress','651 295-2085','emerRelation','ZZZZ',35,'Bad Habit',2000,'Eliminator','',30,2,'',502,'','None','ST','pwrboatfreek@juno.com');
INSERT INTO `competitors` VALUES (37,'Roger','','Brose','11/06/58','9149 NW Lakeridge Lane','address2','Polk City','IA',50226,'479865671','515 964-2309','Roger','','Brose','Same','','',0,'','None','','Sherri','Brose','emeraddress','515 669-7278','EmerRelationupdate','V3S2',2,'',1999,'Baja','',33,2,'Sm. Blk.',502,'Bravo One','None','SU','bajasst@mchsi.com');
INSERT INTO `competitors` VALUES (38,'David Brown &','','Chip Hackmann','01/02/53','3 Howe Crossing','address2','Festus','MO',63028,'560946504','636 933-0946','David Brown &','','Chip Hackmann','Same','','',0,'','Competition Marine Center','St. Charles, MO','Lisa','Brown','emeraddress','314 707-7079','EmerRelationupdate','C4P2',4,'',1995,'Skater','Tunne',40,2,'Small Bloc',580,'Merc #6 Sp','Supercharged','SU','');
INSERT INTO `competitors` VALUES (39,'Curt','','Gordy','01/25/68','7019 MW Emerald Hills Dr.','address2','Parkville','MO',64152,'494895273','816 215-2425','Curt','','Gordy','Same','','',0,'','None','','Shaunna','Gordy','emeraddress','573 216-1164','emerRelation','ZZZZ',38,'Let It Ride',2001,'Donzi','',38,2,'',502,'Bravo','None','ST','cgordy@mwinfra.com');
INSERT INTO `competitors` VALUES (40,'Tony','','Riddle','05/20/59','7817 N. Hull','address2','Kansas City','MO',64151,'495681482','816 589-8729','Tony','','Riddle','Same','','',0,'','None','','Lisa','Riddle','emeraddress','816 560-5729','EmerRelationupdate','V3S2',1,'Flat Busted',2001,'Donzi','V',33,2,'Small Bloc',496,'Mercury','None','SU','triddle2@kc.rr.com');
INSERT INTO `competitors` VALUES (41,'Herman Custard &','','Daniel Derebery','08/13/60','2226 Meadow','address2','Carrollton','TX',75007,'03346617','214 695-6068','Herman','','Custard','Same','','',0,'','None','','Daphne','Custard','emeraddress','972 473-7781','EmerRelationupdate','C3P2',1,'Junkman',1997,'Skater','Tunne',32,2,'big block',572,'#6','1050 HP Derebery Performance Marine','SU','caleumc@swbell.net');
INSERT INTO `competitors` VALUES (43,'Rod Tschiggfrie &','','Edward Tschiggfrie','01/02/41','400 Julien Dubuque Dr.','address2','DubuQue','IA',52003,'T221-224-41-002','563 590-3026','Edward','','Tschiggfrie','Same','','',0,'','Race Crafters','Same','Joan','Tschiggfrie','emeraddress','563 590-8266','EmerRelationupdate','C4P2',1,'Scorcerer',2001,'Skater','Tunne',40,2,'Big Block',588,'Arneson','Electronic Engines with Shiftable Trannys','SU','chickti@aol.com');
INSERT INTO `competitors` VALUES (44,'Adam','','Stewart','5','HCR 77, Box 304','address2','Sunrise Beach','MO',65079,'498-88-6716','573 374-5209','Broken Arrow','','','','','',0,'','Broken Arrow','','Lou','Miller','emeraddress','573 216-2419','EmerRelationupdate','V4S2',1,'36\' Bowrider',2004,'Envision','V',36,2,'Big Block',296,'Bravo 1','None','SU','');
INSERT INTO `competitors` VALUES (45,'Joe','','Miller','06/03/1968','HCR 77, Box 304','address2','Sunrise Beach','MO',65079,'510-88-0997','573-374-5209','Broken Arrow','','','HCR 77, Box 304','Sunrise Beach','MO',65079,'573-216-2419','Broken Arrow','Same','Lou','Miller','emeraddress','573-216-2419','EmerRelationupdate','C2S1',1,'27 Daytona',2004,'Eliminator','Tunne',27,1,'Big Block',496,'Bravo 1','NONE','SU','');
INSERT INTO `competitors` VALUES (46,'J.M.','','Karsch III','6-17-1975','HCR 77, Box 304','address2','Sunrise Beach','MO',65079,'490-96-6906','573-374-5209','Broken Arrow','','','','','',0,'','Broken Arrow','','John','Karsch','emeraddress','573-374-5209','EmerRelationupdate','V2S2',1,'Eliminator 300 Eagle',2004,'Eliminator','V',30,2,'Big Block',496,'Bravo 1','None','SU','');
INSERT INTO `competitors` VALUES (47,'Jim','','Melley','02/18/67','1042 Ardmore Trail','address2','Hoschton','GA',30548,'059192589','678 614-8292','Jim','','Melley','Same','','',0,'','Diamond Marine','Ft. Lauderdale, FL','Jodi','Melley','emeraddress','678 592-2728','EmerRelationupdate','CO2S2',1,'',2002,'Skater','Tunne',28,2,'Outboard',0,'','None','SU','');
INSERT INTO `competitors` VALUES (48,'Bryan','','Polidan','07/25/77','104050 North Road','address2','Fenton','MO',48430,'P435 098 440 58','810 714-2660','Bryan','','Polidan','Same','','',0,'','None','','James','Polidan','emeraddress','810 629-5504','EmerRelationupdate','V1M1',1,'',1997,'Checkmate','V',24,1,'Big Block',502,'Bravo','Heads, Cam, Exhaust','SU','');
INSERT INTO `competitors` VALUES (49,'W. David','','Scott','','P.O. Box 236','address2','Edwardsville','IL',62025,'530090449162','618 692-1300','Nauti Marine Inc','','','','','',0,'','Bacardi Silver/Anheuser Busch','St. Louis, MO','Myrick','Coil','emeraddress','618 410-3433','EmerRelationupdate','CC4P2',1,'Bacardi Silver',2002,'Skater','Tunne',36,2,'Big Block',557,'','Supercharged','SU','david@natuiboats.com');
INSERT INTO `competitors` VALUES (50,'Slug','','Hefner','07/11/46','2600 N. Westwood','address2','Poplar Bluff','MO',63901,'500-42-2826','573 785-1403','Slug','','Hefner','Same','','',0,'','None','','Paula','Hefner','emeraddress','573 785-1403','EmerRelationupdate','C4P2',3,'',2001,'NTI','Tunne',42,2,'Big Block',540,'Mercury #6','','SU','');
INSERT INTO `competitors` VALUES (51,'Gary','','Reiss','11/21/57','7217 Cardinal','address2','Algonac','MI',48001,'R200271676891','310 794-5953','Gary & Jean','','Reiss','Same','','',0,'','Extreme Boats Magazine, St. Cl','','Shirley Jean','Reiss','emeraddress','586 405-8448','EmerRelationupdate','V3F2',1,'Corporal Punishment',1999,'Phantom','V',34,2,'Big Block',502,'Bravo\'s','None','SU','greiss@comcast.net');
INSERT INTO `competitors` VALUES (52,'Dan','','Zimmerly','9-18-66','5242 Wren Lane','address2','Osage Beach','MO',65065,'495-82-7986','573-302-0906','WFO Watercraft Rental','','','5066 Chateau Ln., Hwy. 54','Osage Beach','MO',65065,'','WFO','','Jackie','Zimmerly','emeraddress','348-3795','EmerRelationupdate','PWC3',2,'',2001,'Polaris','',0,1,'',0,'Jet','','SU','');
INSERT INTO `competitors` VALUES (53,'Donald','','Shunk','2-16-1970','1911 Bellamy Dr.','address2','Champaign','IL',61821,'S 520-1847-0047','217-316-4546','Donald','','Shunk','','','',0,'','American Offshore','Dickinson, TX','Jennifer','Shunk','emeraddress','217-621-3065','EmerRelationupdate','C2S2',1,'',2004,'American Offshore','Tunne',30,2,'big block',496,'Bravo','n/a','SU','dshunk@ameritech.net');
INSERT INTO `competitors` VALUES (54,'Ronnie','','Denbow','6-08-1960','212 County Line Road','address2','St. Joseph','MO',64505,'490720854','816-279-0020','Ronnie & Gayle','','Denbow','Same','Same','MO',0,'Same','Hyvee of St. Joseph, MO','','Gayle','Denbow','emeraddress','816-390-2880','EmerRelationupdate','V2S1',1,'Blown Income',1996,'Profile','V',27,1,'Big Block',502,'','NONE','SU','');
INSERT INTO `competitors` VALUES (55,'Greg','','Surdyke','','5863 Highway 54','address2','Osage Beach','MO',65065,'','','Greg','','Surdyke','','','',0,'','Surdyke Yamaha','','Ginger','Surdyke','emeraddress','302-1656','EmerRelationupdate','PWC3',3,'',2001,'Yamaha','',0,0,'',0,'','','SU','Ozark@Surdyke.com');
INSERT INTO `competitors` VALUES (56,'Jeffrey','','Lautz','06-07-1972','5726 State Road 162','address2','Glen Carbon','IL',62034,'L320-4337-2162','618-288-3274','Jeff','','Lautz','Same','Same','IL',0,'Same','Bellwood Family Dentistry','321 N. Bellwood','Karen','Lautz','emeraddress','618-581-8027','EmerRelationupdate','C4F2',1,'Open Wide',1999,'Skater','V',36,2,'Big Block',500,'','','SU','');
INSERT INTO `competitors` VALUES (59,'Matthew','','Burghor','12-28-73','1900 Huntingfield','address2','Mexico','MO',65265,'490-98-0146','573-819-7135','Matthew','','Burghor','','','',0,'','Missouri Crop Management','Mexico, MO','Julie','Burghor','emeraddress','573-819-2451','EmerRelationupdate','PWC3',4,'Easton',2004,'SeaDoo','V',11,1,'sm blk',1500,'jet','stock 215 horse','SU','');
INSERT INTO `competitors` VALUES (60,'J. J.','','Hardy','','PO Box 2309','address2','Lake Ozark','MO',65049,'494-88-6335','573-280-9334','Matthew','R','Burgher','','','',0,'','Missouri Crop Management','2709 E. Liberty, Mexico, MO 65265','Crystal','Ward','emeraddress','573-280-3225','EmerRelationupdate','PWC3',5,'Underdog',2002,'Kawasaki','V',11,1,'small bloc',300,'Jet','1200 stxr (triple pipes, magnum pump, R & D heals & carbowle','SU','');
INSERT INTO `competitors` VALUES (61,'Dennis','','Fischer','7-26-85','3405 Foxborough Circle','address2','St. Charles','MO',63301,'MO 50134032','636-947-9494','Bob','','Fischer','','','',0,'','none','','Bob','Fischer','emeraddress','314-952-9494','EmerRelationupdate','PWC3',6,'',2002,'Kawasaki 1200stx-r','',0,0,'',1149,'','none','SU','');
INSERT INTO `competitors` VALUES (62,'Eugene','','Bausch','05-07-966','5771 Hillview','address2','','MO',63011,'497-84-2932','636-271-7240','Carl','','Mayer','','','',0,'','Don Mawl Real Estate','','Tonya','Bausch','emeraddress','636-271-7240','EmerRelationupdate','PWC3',7,'',1996,'Sea Doo','',0,0,'',800,'Jet Pump','None','SU','');
INSERT INTO `competitors` VALUES (63,'Carl','','Mayer','07-30-1959','4048 Domenico','address2','Bridgeton','MO',63044,'487-70-08d70','739-1294','Carl','','Mayer','Same','Same','MO',0,'Same','Don Mawl Real Estate','','Don','Mawl','emeraddress','573-348-1960','EmerRelationupdate','PWC3',8,'00G Gone',2002,'Kawasaki','',0,0,'',1200,'Jet Pump','','SU','');
INSERT INTO `competitors` VALUES (64,'Charlie','','Schaefer','6-15-1958','19370 Sandridge Road','address2','Carlyle','IL',62231,'5160-1768-1450','618-594-4882','Charlie','','Schaefer','Same','Same','IL',0,'Same','','','Bob','Schaefer','emeraddress','618-594-2323','EmerRelationupdate','V4F2',1,'Nauti-Girl',1999,'','V',0,2,'Big Block',500,'Merc','None','SU','charlie@schaefercontracting.co');
INSERT INTO `competitors` VALUES (65,'Dave Burns &','','Garry Hewkil','07-04-1959','2620 W. Grovers','address2','Phoenix','AZ',85053,'B11135405','','Linda','','Burns','','','',0,'','Skater Boats/Outtwieler Perfor','','Al','Burns','emeraddress','602-526-8900','EmerRelationupdate','C4M2',1,'Wildcat',2003,'Skater 368','Tunne',36,2,'Big Block',700,'Merc 6','None','SU','dave@burnspestelimination.com');
INSERT INTO `competitors` VALUES (66,'Garry Hukill &','','Dave Burns','03-27-1969','2620 W. Grovers','address2','Phoenix','AZ',85053,'A00271553','602-291-7138','Garry','','Hukill','Same','Same','AZ',0,'Same','Skater Boats/Duttweiller Perf.','','Angela','Hukill','emeraddress','602-291-7435','EmerRelationupdate','C3M2',1,'Straycat',2005,'Skater','Tunne',32,2,'Big Block',665,'6 Drives','','SU','garyh@burnspestelimination.com');
INSERT INTO `competitors` VALUES (67,'Craig','','Bernadet','11-07-67','846 Pennsylvania','address2','University City','MO',63130,'808-44-9695','314 369-2255','Carl','','Mayer','','','',0,'','Don Mawl Real Estate','','Dean','Beaucage','emeraddress','314 369-3336','EmerRelationupdate','PWC3',9,'Mad Dog',2002,'Kawasake','',0,0,'',1200,'Jet','None','SU','');
INSERT INTO `competitors` VALUES (68,'Ryan','','Flick','04/23/82','970 Grandolfway','address2','Eureka','MO',63025,'','314 960-8955','Jet','','Draft','P.O. Box 686','Osage Beach','MO',65065,'','Jet Draft','Same','Dennis','Flick','emeraddress','636 938-3321','EmerRelationupdate','PWC3',10,'',2001,'Yamaha','',0,1,'',1200,'','','SU','rcf67f@mizzou.edu');
INSERT INTO `competitors` VALUES (69,'John','','Bull','07/23/76','HCR 77, Box 236','address2','Sunrise Beach','MO',65079,'500-96-5255','573 374-6085','Jet','','Draft','P.O. Box 686','Osage Beach','MO',65065,'','Jet Draft','Same','Clyde','Bull','emeraddress','374-6085','EmerRelationupdate','PWC1',2,'',1989,'Kawasaki','',0,1,'',650,'','','SU','');
INSERT INTO `competitors` VALUES (70,'Dan','','OKeefe','02/03/75','P.O. Box 686','address2','Osage Beach','MO',65065,'495-90-8802','573 216-0690','Jet','','Draft','Same','','',0,'','Jet Draft','Same','Joanne','OKeefe','emeraddress','573 216-7556','EmerRelationupdate','PWC3',11,'',2003,'Sea Do RXP','',0,1,'',1400,'','','SU','');
INSERT INTO `competitors` VALUES (71,'Mike','','Malone','11/16/89','3540 Douglas','address2','Florissant','MO',63034,'490627445','314 291-0910','Mike','','Malone','Same','','',0,'','Jet Draft','','Mary','Malone','emeraddress','314 974-5441','EmerRelationupdate','PWC3',12,'',2003,'Sea Do RXP','',0,1,'',1400,'Jet','None','SU','');
INSERT INTO `competitors` VALUES (72,'Mike','','Malone','11/28/52','3540 Douglas','address2','Florissant','MO',63034,'490627445','314 921-0910','Mike','','Malone','Same','','',0,'','Jet Draft','','Mary','Malone','emeraddress','314 974-5441','EmerRelationupdate','PWC3',13,'',2002,'Sea Do XP','',0,1,'',950,'Jet','everything','SU','');
INSERT INTO `competitors` VALUES (73,'James','','Powell','08-03-1965','PO Box 1182','address2','Sand Springs','OK',74063,'','918-625-5493','James','','Powell','Same','Same','OK',0,'Same','Same','Same','Susan','Powell','emeraddress','918-243-5429','EmerRelationupdate','VO1S2',1,'',1989,'Profile','V',26,2,'Outboard',153,'','None','SU','jamespow@msn.com');
INSERT INTO `competitors` VALUES (74,'James','','Brose','','204 W. Apache St.','address2','Polk City','IA',50226,'910221076','515 208-5666','Roger','','Brose','9149 NW Lake Ridge','Polk City','IA',50226,'','Roger & Sherri Brose','Same','Roger rose','Brose','emeraddress','515 669-8443','EmerRelationupdate','PWC1',3,'Mad Kaw',1987,'Kawasaki','',0,1,'',0,'','Everything','SU','');
INSERT INTO `competitors` VALUES (75,'Adam','','Toalson','06/15/83','52 Port Bagnell','address2','Eldon','MO',65026,'494-04-9704','573 365-1995','Randy & Jane','','Kelly','','','',0,'','Team Jane Kelly Remax Realty','','Bob','Toalson','emeraddress','573 280-7995','EmerRelationupdate','PWC1',4,'',2002,'Polaris','',0,0,'',777,'','','SU','racer742@usmo.com');
INSERT INTO `competitors` VALUES (76,'Preston','','Smith','05/16/85','203 A. South 7th','address2','Clinton','MO',64735,'487-96-9339','660 885-8639','Gregg','','Smith','1316 Price Lane','','',0,'','Gregg Smith Ford Lincoln Mercu','Same','Gregg','Smith','emeraddress','660 924-1084','EmerRelationupdate','PWC3',14,'',2003,'Kawasaki','',0,0,'',0,'','','SU','sm.thp123@northwood.edu');
INSERT INTO `competitors` VALUES (77,'Vicki','','Brown','04/22/64','RR3, Box 2132','address2','Sunrise Beach','MO',65079,'J156232006','573 374-4525','Terry','','Brown','','','',0,'','None','','Terry','Brown','emeraddress','573 374-4525','EmerRelationupdate','PWC3',15,'',2001,'Seadoo GTX','',0,1,'',960,'','','SU','vbrown@portocima.com');
INSERT INTO `competitors` VALUES (78,'James','','Lichtenberg','07-19-1977','5420 Chest Drive','address2','Kansas City','KS',66106,'KO1-23-0167','816-305-3723','Jim','','Lichtenberg','Same','Same','',0,'Same','Jim Lichtenberg','Same','','','emeraddress','317-413-4258','EmerRelationupdate','PWC3',16,'',1998,'Sea Doo','',9,0,'',951,'','','SU','');
INSERT INTO `competitors` VALUES (79,'Michael Lembcke &','','Darryl Sims','','670 Wesley Drive','address2','Atlanta','GA',30318,'253 964616','404 644-2008','Mike','','Lembcke','Same','','',0,'','Mike Lembcke','Same','Wendy','Lembcke','emeraddress','404 351-7319','EmerRelationupdate','CO2M2',1,'',1999,'Douglas Skater','Tunne',28,2,'Big Block',0,'','','SU','Mike@BavarianImports.Net');
INSERT INTO `competitors` VALUES (80,'Bruce','','Taylor','06-13-1944','705 Scottwood','address2','Peoria','IL',61615,'','309-692-6529','Bruce','','Taylor','Same','Same','',0,'Same','','','Mary','Taylor','emeraddress','309-692-6529','EmerRelationupdate','C1P1',1,'',2002,'Eliminator','Tunne',26,1,'Big Block',0,'YR-JTS Jar','Supercharger','SU','btaylor');
INSERT INTO `competitors` VALUES (81,'Leon Derebery &','','Art Zunker','4/26/54','235 Highport Rd.','address2','Pottsboro','TX',75076,'07379093','','Leon Derebery &','','Art Zunker','Same','','',0,'','Derebery Performance Marine','Same','Cheryl','Zunker','emeraddress','903 880-2241','EmerRelationupdate','C3P2',3,'B\'Yond Reason',1999,'Skater','Tunne',32,2,'Big Block',598,'Merc 6','Blown','SU','dpmpower@aol.com');
INSERT INTO `competitors` VALUES (82,'Jason','','Zolecki','05-28-1976','11617 Hidden Valley Lane','address2','Versailles','MO',65084,'329-76-1530','573-378-5611','Ed & Danna','','Guffey','33480 Lakewood Shores Dr.','Sunrise Beach','MO',65079,'','Midland Marble & Granite','33480 Lakewood Dr.','Donald','Zolecki','emeraddress','573-374-1357','EmerRelationupdate','V3P2',2,'Ragged Edge',1997,'Wellcraft Scarab','V',33,2,'Big Block',502,'Bravo 1','Prochargers, Headers, 5 Blade Props','SU','jason5933@aol.com');
INSERT INTO `competitors` VALUES (83,'Robert Engel &','','Chad Engel','4-23-49/11-','16555 Pine St.','address2','Omaha','NE',68130,'G01343901/H1228','402-333-1226','Robert','','Engel','16555 Pine St.','Omaha','NE',68130,'402-333-1226','Custom Image Motor Sports','2139 S. 156th Circle, Omaha, NE. 68130','Patrica','Engel','emeraddress','402-333-1226','EmerRelationupdate','C2F2',1,'',2002,'Eliminator','Tunne',30,2,'Big Block',502,'Bravo XIZ','None','SU','bob@rwearehitects.com');
INSERT INTO `competitors` VALUES (84,'Mark Wetterau &','','Brian Travers','12/??/57','10611 Country View','address2','St. Louis','MO',63141,'497706125','314 997-3267','Mark','','Wetterau','','St. Louis','MO',0,'','Wetterau Associates','Same','Ginny','Wetterau','emeraddress','573 348-2062','EmerRelationupdate','C5P2',1,'Double Take',2002,'Skater','Tunne',48,2,'Big Block',557,'','1300 Sterlings','SU','briantravers@sblglobal.net');
INSERT INTO `competitors` VALUES (85,'Rob Abner &','','Dave Baginski','11-12-76','266 E. Park St.','address2','Westerville','OH',43081,'RT414620','614-206-4788','Rich','','Clarke','','','',0,'','AX','','Shannon','Abner','emeraddress','614-865-0116','EmerRelationupdate','V2F1',1,'Mutual Fun Offshore',2001,'Fountain','V',29,1,'big blk',502,'XR','','SU','dbaginski@JackMaxton.com');
INSERT INTO `competitors` VALUES (86,'Dave Wyer &','','Nathan Henderickson','10-31-73','RR2 Box 291','address2','Sunrise Beach','MO',65079,'335605893','573-374-7095','Wilbus Marine','','','Rt 3 Box 70,','Sunrise Beach','MO',65079,'','','','Connie Weger &','Bob Sepulveda','emeraddress','573-374-7095','EmerRelationupdate','V3FM2',1,'Team Wilbus',2004,'Advantage','V',32,2,'big blk',504,'XR Plot','none','SU','');
INSERT INTO `competitors` VALUES (87,'Mike','','Gordon','5-25-62','6515 Switzer','address2','Shawnee','KS',66203,'KS 510667325','913-485-3151','Mike','','Gordon','','','',0,'','Revolution Marine','','Annie','Brown','emeraddress','913-756-2607','EmerRelationupdate','V1F1',1,'One Vision Racing',1999,'Active Thunder','V',25,1,'big blk',502,'Bravo 1','none','SU','H82LUZ1@aol.com');
INSERT INTO `competitors` VALUES (88,'Matt','','Schade','6-25-69','14328 Manchester','address2','Manchester','MO',63011,'493781232','314-503-0272','same','','','','','',0,'','','','Deanna','Schade','emeraddress','314-503-3184','EmerRelationupdate','V4M2',1,'Premiums',2004,'Hustler','',38,2,'',600,'Arenson Su','Twin Cobra 750 naturally aspirated','SU','mschade@amfam.com');
INSERT INTO `competitors` VALUES (89,'Joe Heintz &','','Tony Angle','8-3-62','3401 Hwy FF','address2','Pacific','MO',63069,'477-90-9951 489','636-938-6006','Joe','','Heintz','3449 State Hwy FF','Pacific','MO',63069,'','','','Andra','Angle','emeraddress','314-705-2458','EmerRelationupdate','C2P2',1,'Instant Air',1985,'Chris Cat','tunne',30,2,'big blk',540,'#5 speed','Boyd 1000','SU','');
INSERT INTO `competitors` VALUES (90,'Dustin','','Gray','12-24-71','RR1','address2','Lake Shelbyvill','IL',62534,'G600-1787-1365','217-774-3326','Dustin','','Gray','','','',0,'','Dustin Gray Motors','','Dina','Gray','emeraddress','217-756-8237','EmerRelationupdate','V3S2',3,'',1996,'Challanger','V',33,2,'big blk',502,'Bravo','none','SU','');
INSERT INTO `competitors` VALUES (91,'Brad','','Rowland','9-21-68','RR3 Box 362B','address2','Lake Shelbyvill','IL',61951,'R453-0656-0132','217-259-8025','Brad','','Rowland','','','',0,'','Parker Marine','','Shelly','Rowland','emeraddress','217-259-8065','EmerRelationupdate','PO2S2',1,'Tooned In',2002,'Odyssey','',27,2,'outboard',0,'','NOT JIM DORRIS BOAT!!!','SU','');
INSERT INTO `competitors` VALUES (92,'Paul','','Browne','11-02-68','RR2 Box 42AA','address2','Sullivan','IL',61951,'B-650-4556-8312','217-728-8520','Paul','','Browne','','','',0,'','','','Carol','Browne','emeraddress','217-254-7029','EmerRelationupdate','VO1S1',1,'',2004,'Bullet','V',22,1,'outboard',250,'','','SU','');
INSERT INTO `competitors` VALUES (93,'Dennis','','Parvey','10-4-51','2455 133rd Lane','address2','Ham Lake','MN',55304,'P-610-139-497-7','763-754-2006','Dennis','','Parvey','','','',0,'','','','Paula','Parvey','emeraddress','763-755-9737','EmerRelationupdate','V5P2',2,'',2000,'Black Thunder','V',43,2,'big blk',0,'Merc #6','super-charged','SU','dparvey@qwest.net');
INSERT INTO `competitors` VALUES (94,'Dave','','Villwock','2-10-54','29707 52nd Ave. So.','address2','Auburn','WA',98001,'VILLWDB461CS','206-310-4000','Hydroplanes Inc.','','','','','',0,'','Budweiser','','Mark','Smith (pits)','emeraddress','206-915-2386','EmerRelationupdate','HYDRO',1,'Miss Budweiser',1998,'','',31,1,'',0,'','','SU','dvillwock400@msn');
INSERT INTO `competitors` VALUES (95,'Bob','','Castle','01-03-1946','2430 170th Road','address2','Wathewa','KS',66090,'510-46-8139','','Bob & Jan','','Castle','Same','','',0,'','None','','Jan','Castle','emeraddress','816-262-9192','EmerRelationupdate','V1F1',2,'Freedom',2004,'Profile','V',26,1,'Big Block',0,'XR','None','SU','bjcastle@ccp.com');
INSERT INTO `competitors` VALUES (96,'Kevin','','Brandes','','','address2','','',0,'','','','','','','','',0,'','','','','','emeraddress','','emerRelation','V4P2',1,'',0,'','',0,0,'',0,'','','ST','');
INSERT INTO `competitors` VALUES (97,'Bob Morgan &','','Dennis Hillhouse','','26525 W. 77th','address2','Lenexa','KS',66227,'512601057','913-422-7482','Dennis & Marci','','Hillhouse','','','',0,'','Rex Materials','','Marci','Hillhouse','emeraddress','816-589-8727','EmerRelationupdate','C4P2',6,'Recovery',2002,'Skater','Tunne',40,2,'Big Block',557,'#6','None','SU','');
INSERT INTO `competitors` VALUES (98,'Gary','','McNulty','12-26-1961','9798 W. Vista Drive','address2','Hillsboro','MO',63050,'K133166016','636-797-5932','Gary','','McNulty','Same','','',0,'Same','None','','Jewel','McNulty','emeraddress','314-602-4762','EmerRelationupdate','C2P1',1,'',1988,'Profile','Tunne',28,1,'Big Block',502,'Bravo One','B&M supercharger & super chiller','SU','gmcnulty@thieltool.com');
INSERT INTO `competitors` VALUES (99,'Richard','','Bennett','10/27/75','304 Royal Oaks Dr.','address2','Anderson','SC',25689,'SC 004302340','864-314-3260','Richard','','Bennett','Same','','',0,'','None','','Heather','Bennett','emeraddress','864 314-5547','EmerRelationupdate','C2P2',2,'',2004,'DCB','Tunne',29,2,'Big Block',604,'Bravo','','SU','');
INSERT INTO `competitors` VALUES (100,'David','','Caughey','09-23-1961','PO Box 5297','address2','Durant','OK',74701,'080888518','580-920-8805','David','','Caughey','Same','','',0,'Same','Derebemy','','Mark','Caughey','emeraddress','405-238-9695','EmerRelationupdate','C1P1',2,'',1998,'American','Tunne',26,1,'Big Block',586,'','Blowers (Alcohol)','SU','');
INSERT INTO `competitors` VALUES (101,'Dan','','Anderson','06-21-1950','RR 1, Box 1836','address2','Sunrise Beach','MO',65079,'MO56353001','573-374-5054','Dan','','Anderson','Same','','',0,'Same','Extreme Auto Body','Hwy. 5, Laurie, MO','Lou Ann','Anderson','emeraddress','573-480-6443','EmerRelationupdate','V5F2',1,'Nauti Buoy',1999,'Fountain','V',42,2,'Big Block',500,'','None','SU','nautibuoymo@sbcglobal.net');
INSERT INTO `competitors` VALUES (102,'David','','Callan','','','address2','','',0,'','','','','','','','',0,'','','','','','emeraddress','','emerRelation','PX-17',1,'',0,'','',0,0,'',0,'','','ST','');
INSERT INTO `competitors` VALUES (103,'Dennis','','McElhaney','04/12/62','3802 SE 5th','address2','Desmoines','IA',50315,'485-88-0025','515 223-7390','Dennis','','McElhaney','Same','','',0,'','None','','Kristina','Coon','emeraddress','515 210-5990','EmerRelationupdate','C1P1',3,'',1989,'Eliminator','Tunne',23,1,'Big Block',540,'IMCO','Blower','SU','kcoon@sumogroup.com');
INSERT INTO `competitors` VALUES (104,'Rick','','Grigsby','04/27/62','12841 Valley','address2','Wayland','MO',49348,'G621738051323','269 792-6941','Rick','','Grigsby','Same','','',0,'','None','','Tim','Mead','emeraddress','269 672-7443','EmerRelationupdate','V2P1',1,'',2003,'Checkmate','V',30,1,'Big Block',509,'XP','Blown','SU','');
INSERT INTO `competitors` VALUES (105,'Jim','','Valako','06/07/57','3800 3 Mile','address2','Grand Rapids','MI',49544,'V420367777427','616 735-0800','Jim','','Valykeo','','','',0,'','Valako Race Heads/Black Russin','Same','Rachel','Cornell','emeraddress','616 453-0748','EmerRelationupdate','V2M1',1,'Heads I Win',1992,'Fountain','V',27,1,'Big Block',565,'Bravo','Valako Race Heads efi tunnel ram','SU','valakoraceheads@aol.com');
INSERT INTO `competitors` VALUES (106,'Todd','','Maschmeier','07/14/68','332 S Kendall Ave.','address2','Independence','MO',64056,'9201253048','816 682-6946','Todd','','Maschmeier','Same','','',0,'','None','','Buddy','Maschmeier','emeraddress','816 795-7825','EmerRelationupdate','C1M1',1,'',2000,'Firehawk','Tunne',26,1,'Big Block',605,'Bravo','','SU','');
INSERT INTO `competitors` VALUES (107,'Terry','','Sobo','06-21-1963','233 Ledges','address2','Lake Ozark','MO',65065,'488744490','636-236-4141','Terry','','Sobo','Same','Same','',0,'Same','Midwest Performance Marine/Nor','233 Ledgers, Osage Beach, MO 65065','Jeff','Darr','emeraddress','636-236-1872','EmerRelationupdate','C4P2',7,'Thaz Right',2005,'Nortech','',36,2,'',602,'Merc 6/Dry','None','SU','jmdarr4490@aol.com');
INSERT INTO `competitors` VALUES (108,'Brian','','Crowley','06-12-1976','7301 N. Myrtle','address2','Gladstone','MO',64119,'490-96-9335','816-436-4747','Brian','','Crowley','Same','','',0,'Same','Lake Cumberland Marine','125 Clifty Road','Roger','Crowley','emeraddress','816-781-527','EmerRelationupdate','V4FP2',1,'',2003,'Cigarette','V',36,2,'Sm. Block',502,'Bravo XR','None','SU','crowley@tesbook.com');
INSERT INTO `competitors` VALUES (109,'Tim','','Porter','03-09-1958','1192 Lake Road','address2','Liberty','MO',64068,'K011206001','816-792-0919','Big Thunder Marine Inc.','','','32697 Green Hills Road','Gravois Mills','MO',0,'','Big Thunder Marine, Inc.','32697 Green Hills Road','Diana','Porter','emeraddress','816-792-0919','EmerRelationupdate','V4FP2',2,'',2004,'Donzi ZR','V',38,2,'Big Block',508,'Bravo One','None','SU','');
INSERT INTO `competitors` VALUES (110,'Rob','','Morgan','12-8-67','15666 S. ????','address2','Olathe','KS',66062,'511 74 8897','','Rob','','Morgan','','','',0,'','Big Thunder Marina','','Bob','Morgan','emeraddress','573-374-5692','EmerRelationupdate','CO2F2',1,'Cat in the Act V',2000,'Skater','tunne',28,2,'outboard',0,'','2.5 EFI Race Offshore','SU','');
INSERT INTO `competitors` VALUES (111,'Leo','','Wiseman','07-01-1954','2370 Patterson','address2','Shelbyville','MI',49344,'W255507101521','269-672-7548','Leo','','Wiseman','Same','','',0,'Same','Pole Barn Engines','Wayland, MI.','Cindy','Wiseman','emeraddress','616-481-8194','EmerRelationupdate','V1P1',1,'Wise Guy',2001,'Velocity','V',26,1,'Big Block',0,'Bravo','supercharged','SU','');
INSERT INTO `competitors` VALUES (112,'Don','','Helwig Sr.','07/08/52','11721 Lamon','address2','Alsip','IL',60803,'H420-1955-2194','708 214-3562','Don','','Helwig Sr.','Same','','',0,'','Dent Clinic','Matteson, ILL','Barb','Helwig','emeraddress','708 712-3562','EmerRelationupdate','V3S2',5,'Smokin Attitude',1991,'Cigarette','V',35,2,'Big Block',502,'Bravo','','SU','dynodon33@hotmail.com');
INSERT INTO `competitors` VALUES (113,'Don','','Stout','5/17/40','Hwy 13 Box 529','address2','Lexingler','MO',64067,'488-40-6332','660-259-4691','Don','','Stout','','','',0,'','S&K Industries','','Teri','Stout','emeraddress','660-259-4629','EmerRelationupdate','C3P2',4,'Bunstock II',1989,'Skater','Tunne',32,2,'Outboard',572,'V','Blower','SU','dons@classicnet.net');
INSERT INTO `competitors` VALUES (114,'Jim','','Fender','9/10/50','2105 Crest Terrace','address2','St Joseph','MO',64506,'496-56-8918','816-279-4348','Jim','','Fender','','','',0,'','None','','Linda','Fender','emeraddress','374-4150','EmerRelationupdate','CO3S3',1,'Steppin Out',1989,'Skater','Tunne',32,3,'Outboard',0,'','None','SU','');
INSERT INTO `competitors` VALUES (115,'Phil','','Steidle','2/6/44','272 Palisades Drive','address2','Four Seasons','MO',65049,'','','Phil','','Steidle','1126 Industrial Drive','','',0,'','Steidles Cabinet Shop','1126 Industrial Drive','Carolyn','Steidle','emeraddress','348-2919','EmerRelationupdate','C1S1',1,'Hot Stuff',1999,'American Offshore','Tunne',26,1,'Big',502,'Bravo','None','SU','');
INSERT INTO `competitors` VALUES (116,'Joe','','Jenkins','12/06/45','18701 Hemphill Rd.','address2','Tonganoxie','KS',66086,'KS 514-40-0137','913 369-3220','Joe','','Jenkins','Same','','',0,'','None','','Janet','Jenkins','emeraddress','816 392-4080','EmerRelationupdate','V4M2',3,'Head Hunter',1991,'Cigarette','V',38,2,'Big Block',540,'Bravo','','SU','');
INSERT INTO `competitors` VALUES (117,'Mark','','Kinser','11-04-1961','10890 NW 54th','address2','Grimes','IA',50111,'482-84-7748','515-986-2253','Mark','','Kinser','Same','','',0,'Same','None','','Amy','Kinser','emeraddress','515-986-2253','EmerRelationupdate','C1P1',4,'',2001,'Eliminator','Tunne',26,1,'Big Block',581,'#6','Lots','SU','');
INSERT INTO `competitors` VALUES (118,'Larry','','Nellis','10-13-1964','7403 S. Hardsay','address2','Oak Grove','MO',64075,'380644509','816-985-7656','Larry','','Nellis','Same','','',0,'Same','Mikeys Mini Mart','Sunrise Beach, MO.','Greta','Nellis','emeraddress','816-726-5981','EmerRelationupdate','C1P1',5,'Instigater',2000,'Eliminator','Tunne',25,1,'Big Block',502,'Bravo','Procharger','SU','larryatkc@aol.com');
INSERT INTO `competitors` VALUES (119,'Rome','','Mason','10-31-1073','Rt. 3, Box 70','address2','Sunrise Beach','MO',65079,'335605893','573-374-7095','Big Willy','','','Same','','',0,'Same','Team Wilbus Marine','','Connie','Weyer','emeraddress','573-374-7095','EmerRelationupdate','V3P2',3,'Billy Baroo',2000,'Advantage','V',32,2,'Sm. Blk.',502,'XK','Supercharged','SU','');
INSERT INTO `competitors` VALUES (120,'Eric','','Casperson','09-09-1954','1101 Desert Willow','address2','Norman','OK',73071,'OK081305595','405-329-3855','Preston','','Durham','','','',0,'','Durham Steel Bld./Boyd\'s Racin','1202 N. Flood','Preston','Durham','emeraddress','405-370-7746','EmerRelationupdate','V1M1',2,'Can You Hear Me Now?',1992,'Baja','V',26,1,'Big Block',502,'Bravo','Pro Action, Heads, Brodix Intake, Donianator (Single)','SU','boydmachine@sbcglobal.net');
INSERT INTO `competitors` VALUES (121,'John','','Malecky','08-30-1961','21640 Millsdale','address2','Elwood','IL',60421,'M420-4706-1247','815-727-745-','John','','Malecky','Same','','',0,'Same','Raymonds','Hwy. 5, Gravois Mills, MO.','Wendy','Anderson','emeraddress','708-774-8830','EmerRelationupdate','V5S2',1,'Hammer Time',2005,'Fountain','V',42,2,'Big Blk.',496,'Bravo','None','SU','');
INSERT INTO `competitors` VALUES (122,'Larry','','Nellis','10/13/1964','7403 S. Hardsau','address2','Oak Grove','MO',64075,'MO380644509','816-985-7656','Larry','','Nellis','Same','','',0,'Same','Mikeys Mini Mart','Sunrise Beach, MO.','Greta','Nellis','emeraddress','816-726-5981','EmerRelationupdate','C2S2',2,'Nice Try',2002,'Eliminator','Tunne',28,2,'Big Block',496,'Bravo','None','SU','larryatkc@aol.com');
INSERT INTO `competitors` VALUES (123,'Rick','','Kuhlmann','01-01-1957','1732 N. 10th','address2','Nebaska City','NE',68410,'G11010880','402-873-6602','Rick','','Kuhlmann','Same','','',0,'Same','Adventure Cruises','Captain Mark-573-434-1153','Willard','Kuhlmann','emeraddress','402-873-6002','EmerRelationupdate','V5S3',1,'Here\'s The Deal',1994,'Fountain','V',42,3,'Big Block',502,'Bravo','All Stock, 415 HP, 2yr class','SU','');
INSERT INTO `competitors` VALUES (124,'Dave','','Bernshausen','07-14-1952','233 Southmoor','address2','Manito','IL',61546,'B652-42-2200','309-968-6817','Dave','','Bernshausen','Same','','',0,'Same','None','','Jean','Bernshausen','emeraddress','309-968-6817','EmerRelationupdate','V2S2',2,'Bullet Proof',1988,'Cigarette','V',31,2,'Big Block',454,'Bravo One','None','SU','jdbernshausen@grics.net');
INSERT INTO `competitors` VALUES (125,'David','','Hughes','05-14-1956','15023 Ridge Lake','address2','Chester Field','MO',63017,'495629746','636-532-1985','David','','Hughes','Same','','',0,'Same','None','','Terry','Hughes','emeraddress','636-532-1985','EmerRelationupdate','V5F2',2,'White Lightning 2',1998,'Fountain','V',42,2,'Big Block',502,'J/O','None','SU','later1@swbell.net');
INSERT INTO `competitors` VALUES (126,'John','','Fairleigh','05-15-1965','311 W. Road 250','address2','Scott City','KS',67871,'K00209770','620-874-4280','John & Jennifer','','Fairleigh','Same','','',0,'Same','Midwest Boat Party.com','','Jennifer','Fairleigh','emeraddress','620-874-2232','EmerRelationupdate','C2M2',1,'Evil Twin',2003,'DCB F-29','Tunne',29,2,'Big Block',580,'Bravo','625 HP, N/A Engines','SU','jenjohn@wbsnet.org.');
INSERT INTO `competitors` VALUES (127,'Ed','','Thomas','03-31-1971','3191 Black Heath Ct.','address2','Port Huron','MI',480060,'T520189941254','810-987-7255','Ed & Sara','','Thomas','Same','','',0,'Same','None','','Ed & Kathy','Thomas','emeraddress','810-982-5387','EmerRelationupdate','V3S2',6,'Sunsation',2003,'Sunsation','V',32,2,'Big Block',0,'','None','SU','');
INSERT INTO `competitors` VALUES (128,'Frank','','Taylor','09-04-1951','527 Sun Valley','address2','Farmington','MO',63640,'480-68-4208','573-756-6535','Frank','','Taylor','Same','','',0,'Same','Taylor Engineering','109 E. Columbia, Famington, MO.','Carla','Moody','emeraddress','573-756-65-3','EmerRelationupdate','V3M2',3,'Pure Pleasure',2002,'Advantage','V',32,2,'Big Block',496,'Bravo One','Intake Manifold','SU','engrft@sbcglobal.net');
INSERT INTO `competitors` VALUES (129,'Dennis','','Hillhouse','08-05-1965','32697 Green Hills Road','address2','Olathe','KS',0,'496-74-4225','573-374-5692','Robert (Bob)','','Morgan','','','',0,'','Big Thunder Marine/R.E.W. Mate','Gravois Mills, MO.','Sue','Schulte','emeraddress','573-374-5692','EmerRelationupdate','C5P4',1,'\"Big Foot\"',2001,'Skater','Tunne',46,4,'Big Block',540,'Merc #6','None','SU','');
INSERT INTO `competitors` VALUES (130,'Jim','','Hamil','','13557 Road','address2','Sterling','CO',80751,'92-092-9658','970-322-4023','Jim','','Hamil','Same','','',0,'Same','Horizon Motor Sports','805 W. Main/Sterling, Co. 80751','Robey','Hamil','emeraddress','970-520-6007','EmerRelationupdate','C2P2',3,'',2005,'Eliminator','Tunne',30,2,'Big Block',550,'lmco','None','SU','');
INSERT INTO `competitors` VALUES (131,'Charles West &','','Thomas Powell','09-25-1975','2775 S. Midwest Blvd.','address2','Midwest City','OK',73110,'081044584','405-733-9000','Charles','','West','Same','','',0,'Same','None','','Charles','West','emeraddress','405-642-2947','EmerRelationupdate','V5M2',1,'Remember Me',2000,'Fountain','V',43,2,'Big Block',540,'XR','None','SU','');
INSERT INTO `competitors` VALUES (132,'Tom','','Huge','04-09-1954','126 N. Woodland','address2','Kirkwood','MO',63122,'494-52-0105','314-966-8158','Tom','','Huge','Same','','',0,'Same','Met Jeanette','','Jeanette','Huge','emeraddress','314-422-8365','EmerRelationupdate','V3F2',3,'Miss Nette',2001,'Fountain','V',35,2,'Big Block',500,'Bravo','None','SU','');
INSERT INTO `competitors` VALUES (133,'Joe','','Dinatale','03-09-1961','46 Pickwick','address2','Camdenton','MO',65020,'478-70-7959','573-873-3290','Joe','','Dinatale','Same','','',0,'Same','None','','Joan','Dinatale','emeraddress','573-216-0892','EmerRelationupdate','P1P1',1,'Freaktilla',1997,'Rinker Float','',24,1,'Big Block',509,'Bravo One','Stand off box, Hydrlic Steering','SU','joenjoan@hotmail.com');
INSERT INTO `competitors` VALUES (134,'Steve','','Helsel','04-04-1961','4512 Trail View N.E.','address2','Grand Rapids','MI',49525,'H424-777-152-26','616-365-1679','Steve & Tammy','','Helsel','Same','','',0,'Same','None','','Tammy','Helsel','emeraddress','616-365-1679','EmerRelationupdate','V2M1',2,'Top Secret',1997,'Checkmate','V',28,1,'Big Block',588,'Bravo One','None','SU','');
INSERT INTO `competitors` VALUES (135,'Mike','','Misplay','01-17-1963','P.O. Box 232','address2','Sterling','CO',80751,'95-017-3835','970-580-1035','Mike','','Misplay','Same','','',0,'Same','Horizon Motor Sports/G.T. Pro','Sterling, CO.','Norman','Misplay','emeraddress','972-221-5133','EmerRelationupdate','CCO4M2',1,'Total Insanity',2003,'Eliminator','Tunne',36,2,'Sm. Block',588,'IMCOSC','None','SU','mikem@rodinetechnology');

--
-- Table structure for table `speeds`
--

CREATE TABLE `speeds` (
  `run_id` int(3) NOT NULL auto_increment,
  `competitor_id` int(4) default NULL,
  `speed` int(3) default NULL,
  `timestamp` timestamp(14) NOT NULL,
  `disqual` char(1) default NULL,
  `disqual_reason` varchar(60) default NULL,
  `boat_class` varchar(10) default NULL,
  PRIMARY KEY  (`run_id`)
) TYPE=MyISAM;

--
-- Dumping data for table `speeds`
--


INSERT INTO `speeds` VALUES (1,61,51,20040828102127,NULL,NULL,'PWC3');
INSERT INTO `speeds` VALUES (2,60,57,20040828102159,NULL,NULL,'PWC3');
INSERT INTO `speeds` VALUES (3,55,54,20040828102240,NULL,NULL,'PWC3');
INSERT INTO `speeds` VALUES (4,59,57,20040828102337,NULL,NULL,'PWC3');
INSERT INTO `speeds` VALUES (5,63,57,20040828102410,NULL,NULL,'PWC3');
INSERT INTO `speeds` VALUES (6,62,48,20040828102440,NULL,NULL,'PWC3');
INSERT INTO `speeds` VALUES (7,18,54,20040828102530,NULL,NULL,'PWC3');
INSERT INTO `speeds` VALUES (8,67,48,20040828102642,NULL,NULL,'PWC3');
INSERT INTO `speeds` VALUES (9,52,54,20040828102709,NULL,NULL,'PWC3');
INSERT INTO `speeds` VALUES (10,74,0,20040828103019,NULL,NULL,'PWC1');
INSERT INTO `speeds` VALUES (11,58,37,20040828103040,NULL,NULL,'PWC1');
INSERT INTO `speeds` VALUES (12,75,43,20040828103129,NULL,NULL,'PWC1');
INSERT INTO `speeds` VALUES (13,70,56,20040828103311,NULL,NULL,'PWC3');
INSERT INTO `speeds` VALUES (14,69,39,20040828103358,NULL,NULL,'PWC1');
INSERT INTO `speeds` VALUES (15,76,56,20040828103448,NULL,NULL,'PWC3');
INSERT INTO `speeds` VALUES (16,68,49,20040828103615,NULL,NULL,'PWC3');
INSERT INTO `speeds` VALUES (17,55,56,20040828103707,NULL,NULL,'PWC3');
INSERT INTO `speeds` VALUES (18,62,44,20040828104001,NULL,NULL,'PWC3');
INSERT INTO `speeds` VALUES (19,18,52,20040828104215,NULL,NULL,'PWC3');
INSERT INTO `speeds` VALUES (20,67,43,20040828104246,NULL,NULL,'PWC3');
INSERT INTO `speeds` VALUES (21,74,35,20040828104417,NULL,NULL,'PWC1');
INSERT INTO `speeds` VALUES (22,63,56,20040828104516,NULL,NULL,'PWC3');
INSERT INTO `speeds` VALUES (23,52,57,20040828104541,NULL,NULL,'PWC3');
INSERT INTO `speeds` VALUES (24,59,54,20040828104704,NULL,NULL,'PWC3');
INSERT INTO `speeds` VALUES (25,75,42,20040828104816,NULL,NULL,'PWC1');
INSERT INTO `speeds` VALUES (26,70,58,20040828104957,NULL,NULL,'PWC3');
INSERT INTO `speeds` VALUES (27,58,37,20040828105020,NULL,NULL,'PWC1');
INSERT INTO `speeds` VALUES (28,61,51,20040828105143,NULL,NULL,'PWC3');
INSERT INTO `speeds` VALUES (29,77,46,20040828105237,NULL,NULL,'PWC3');
INSERT INTO `speeds` VALUES (30,72,49,20040828105406,NULL,NULL,'PWC3');
INSERT INTO `speeds` VALUES (31,76,50,20040828105503,NULL,NULL,'PWC3');
INSERT INTO `speeds` VALUES (32,68,46,20040828105601,NULL,NULL,'PWC3');
INSERT INTO `speeds` VALUES (33,62,42,20040828105659,NULL,NULL,'PWC3');
INSERT INTO `speeds` VALUES (34,78,0,20040828105846,NULL,NULL,'PWC3');
INSERT INTO `speeds` VALUES (35,69,38,20040828105921,NULL,NULL,'PWC1');
INSERT INTO `speeds` VALUES (36,60,39,20040828110014,NULL,NULL,'PWC3');
INSERT INTO `speeds` VALUES (37,18,49,20040828110113,NULL,NULL,'PWC3');
INSERT INTO `speeds` VALUES (38,63,43,20040828110202,NULL,NULL,'PWC3');
INSERT INTO `speeds` VALUES (39,74,38,20040828110333,NULL,NULL,'PWC1');
INSERT INTO `speeds` VALUES (40,70,54,20040828110437,NULL,NULL,'PWC3');
INSERT INTO `speeds` VALUES (41,52,53,20040828110535,NULL,NULL,'PWC3');
INSERT INTO `speeds` VALUES (42,61,46,20040828110633,NULL,NULL,'PWC3');
INSERT INTO `speeds` VALUES (43,58,38,20040828110727,NULL,NULL,'PWC1');
INSERT INTO `speeds` VALUES (44,77,46,20040828110904,NULL,NULL,'PWC3');
INSERT INTO `speeds` VALUES (45,72,50,20040828111048,NULL,NULL,'PWC3');
INSERT INTO `speeds` VALUES (46,76,54,20040828111133,NULL,NULL,'PWC3');
INSERT INTO `speeds` VALUES (47,78,46,20040828111333,NULL,NULL,'PWC3');
INSERT INTO `speeds` VALUES (48,69,38,20040828111514,NULL,NULL,'PWC1');
INSERT INTO `speeds` VALUES (49,63,54,20040828111557,NULL,NULL,'PWC3');
INSERT INTO `speeds` VALUES (50,60,54,20040828111647,NULL,NULL,'PWC3');
INSERT INTO `speeds` VALUES (51,62,43,20040828111805,NULL,NULL,'PWC3');
INSERT INTO `speeds` VALUES (52,70,55,20040828111844,NULL,NULL,'PWC3');
INSERT INTO `speeds` VALUES (53,18,47,20040828111945,NULL,NULL,'PWC3');
INSERT INTO `speeds` VALUES (54,52,52,20040828112039,NULL,NULL,'PWC3');
INSERT INTO `speeds` VALUES (55,68,47,20040828112132,NULL,NULL,'PWC3');
INSERT INTO `speeds` VALUES (56,61,49,20040828112225,NULL,NULL,'PWC3');
INSERT INTO `speeds` VALUES (57,71,48,20040828112309,NULL,NULL,'PWC3');
INSERT INTO `speeds` VALUES (58,76,51,20040828112404,NULL,NULL,'PWC3');
INSERT INTO `speeds` VALUES (59,78,48,20040828112515,NULL,NULL,'PWC3');
INSERT INTO `speeds` VALUES (60,69,40,20040828112702,NULL,NULL,'PWC1');
INSERT INTO `speeds` VALUES (61,74,34,20040828112828,NULL,NULL,'PWC1');
INSERT INTO `speeds` VALUES (62,70,57,20040828113016,NULL,NULL,'PWC3');
INSERT INTO `speeds` VALUES (63,60,55,20040828113112,NULL,NULL,'PWC3');
INSERT INTO `speeds` VALUES (64,52,55,20040828113158,NULL,NULL,'PWC3');
INSERT INTO `speeds` VALUES (65,68,49,20040828113252,NULL,NULL,'PWC3');
INSERT INTO `speeds` VALUES (66,61,49,20040828113346,NULL,NULL,'PWC3');
INSERT INTO `speeds` VALUES (67,18,46,20040828113439,NULL,NULL,'PWC3');
INSERT INTO `speeds` VALUES (68,63,43,20040828113552,NULL,NULL,'PWC3');
INSERT INTO `speeds` VALUES (69,71,52,20040828113639,NULL,NULL,'PWC3');
INSERT INTO `speeds` VALUES (70,76,47,20040828113732,NULL,NULL,'PWC3');
INSERT INTO `speeds` VALUES (71,78,42,20040828113822,NULL,NULL,'PWC3');
INSERT INTO `speeds` VALUES (72,70,58,20040828113919,NULL,NULL,'PWC3');
INSERT INTO `speeds` VALUES (73,71,39,20040828114029,NULL,NULL,'PWC3');
INSERT INTO `speeds` VALUES (74,59,46,20040828114121,NULL,NULL,'PWC3');
INSERT INTO `speeds` VALUES (75,60,52,20040828114257,NULL,NULL,'PWC3');
INSERT INTO `speeds` VALUES (76,61,45,20040828114316,NULL,NULL,'PWC3');
INSERT INTO `speeds` VALUES (77,52,51,20040828114504,NULL,NULL,'PWC3');
INSERT INTO `speeds` VALUES (78,68,50,20040828114741,NULL,NULL,'PWC3');
INSERT INTO `speeds` VALUES (79,78,48,20040828114844,NULL,NULL,'PWC3');
INSERT INTO `speeds` VALUES (80,94,168,20040828120454,NULL,NULL,'HYDRO');
INSERT INTO `speeds` VALUES (81,73,61,20040828121639,NULL,NULL,'VO1S2');
INSERT INTO `speeds` VALUES (82,47,0,20040828124137,NULL,NULL,'CO2S2');
INSERT INTO `speeds` VALUES (83,13,92,20040828122751,NULL,NULL,'CO1S2');
INSERT INTO `speeds` VALUES (84,17,75,20040828123642,NULL,NULL,'V4F3');
INSERT INTO `speeds` VALUES (85,42,115,20040828123709,NULL,NULL,'C3P2');
INSERT INTO `speeds` VALUES (86,21,112,20040828123737,NULL,NULL,'V6P2');
INSERT INTO `speeds` VALUES (87,51,75,20040828123850,NULL,NULL,'V3F2');
INSERT INTO `speeds` VALUES (88,82,92,20040828123917,NULL,NULL,'V3P2');
INSERT INTO `speeds` VALUES (89,64,75,20040828124000,NULL,NULL,'V4F2');
INSERT INTO `speeds` VALUES (90,54,60,20040828124049,NULL,NULL,'V2S1');
INSERT INTO `speeds` VALUES (91,80,92,20040828124205,NULL,NULL,'C1P1');
INSERT INTO `speeds` VALUES (92,38,0,20040828124416,NULL,NULL,'C4P2');
INSERT INTO `speeds` VALUES (93,65,0,20040828124515,NULL,NULL,'C4M2');
INSERT INTO `speeds` VALUES (94,7,52,20040828124625,NULL,NULL,'P2S1');
INSERT INTO `speeds` VALUES (95,8,64,20040828124755,NULL,NULL,'P3S2');
INSERT INTO `speeds` VALUES (96,79,87,20040828124945,NULL,NULL,'CO2M2');
INSERT INTO `speeds` VALUES (97,81,120,20040828125331,NULL,NULL,'C3P2');
INSERT INTO `speeds` VALUES (98,41,127,20040828125524,NULL,NULL,'C3P2');
INSERT INTO `speeds` VALUES (99,93,96,20040828125751,NULL,NULL,'V5P2');
INSERT INTO `speeds` VALUES (100,47,103,20040828130017,NULL,NULL,'CO2S2');
INSERT INTO `speeds` VALUES (101,84,125,20040828130515,NULL,NULL,'C5P2');
INSERT INTO `speeds` VALUES (102,48,61,20040828130717,NULL,NULL,'V1M1');
INSERT INTO `speeds` VALUES (103,66,108,20040828130944,NULL,NULL,'C3M2');
INSERT INTO `speeds` VALUES (104,17,77,20040828131139,NULL,NULL,'V4F3');
INSERT INTO `speeds` VALUES (105,94,150,20040828131748,NULL,NULL,'HYDRO');
INSERT INTO `speeds` VALUES (106,21,108,20040828132656,NULL,NULL,'V6P2');
INSERT INTO `speeds` VALUES (107,29,75,20040828132904,NULL,NULL,'V2F2');
INSERT INTO `speeds` VALUES (108,82,85,20040828133136,NULL,NULL,'V3P2');
INSERT INTO `speeds` VALUES (109,91,68,20040828133406,NULL,NULL,'PO2S2');
INSERT INTO `speeds` VALUES (110,92,64,20040828133703,NULL,NULL,'VO1S1');
INSERT INTO `speeds` VALUES (111,89,108,20040828133902,NULL,NULL,'C2P2');
INSERT INTO `speeds` VALUES (112,90,65,20040828134130,NULL,NULL,'V3S2');
INSERT INTO `speeds` VALUES (113,5,69,20040828134356,NULL,NULL,'V3FP2');
INSERT INTO `speeds` VALUES (114,95,63,20040828134610,NULL,NULL,'V1F1');
INSERT INTO `speeds` VALUES (115,102,171,20040828135053,NULL,NULL,'PX-17');
INSERT INTO `speeds` VALUES (116,44,54,20040828135520,NULL,NULL,'V4S2');
INSERT INTO `speeds` VALUES (117,93,99,20040828135719,NULL,NULL,'V5P2');
INSERT INTO `speeds` VALUES (118,41,129,20040828135936,NULL,NULL,'C3P2');
INSERT INTO `speeds` VALUES (119,97,0,20040828140131,NULL,NULL,'C4P2');
INSERT INTO `speeds` VALUES (121,56,89,20040828141030,NULL,NULL,'C4F2');
INSERT INTO `speeds` VALUES (122,40,68,20040828141123,NULL,NULL,'V3S2');
INSERT INTO `speeds` VALUES (123,33,118,20040828141428,NULL,NULL,'C4P2');
INSERT INTO `speeds` VALUES (124,43,132,20040828141739,NULL,NULL,'C4P2');
INSERT INTO `speeds` VALUES (125,49,168,20040829142557,NULL,NULL,'CC4P2');
INSERT INTO `speeds` VALUES (126,87,71,20040828142246,NULL,NULL,'V1F1');
INSERT INTO `speeds` VALUES (127,16,78,20040828142528,NULL,NULL,'V4M2');
INSERT INTO `speeds` VALUES (128,98,81,20040828143100,NULL,NULL,'C2P1');
INSERT INTO `speeds` VALUES (129,86,87,20040828143229,NULL,NULL,'V3FM2');
INSERT INTO `speeds` VALUES (130,83,93,20040828143504,NULL,NULL,'C2F2');
INSERT INTO `speeds` VALUES (131,37,65,20040828143722,NULL,NULL,'V3S2');
INSERT INTO `speeds` VALUES (132,84,126,20040828144248,NULL,NULL,'C5P2');
INSERT INTO `speeds` VALUES (133,82,98,20040828144442,NULL,NULL,'V3P2');
INSERT INTO `speeds` VALUES (134,29,74,20040828144633,NULL,NULL,'V2F2');
INSERT INTO `speeds` VALUES (135,103,60,20040828144854,NULL,NULL,'C1P1');
INSERT INTO `speeds` VALUES (136,104,83,20040828145644,NULL,NULL,'V2P1');
INSERT INTO `speeds` VALUES (137,28,119,20040828145936,NULL,NULL,'C5P2');
INSERT INTO `speeds` VALUES (138,5,71,20040828150113,NULL,NULL,'V3FP2');
INSERT INTO `speeds` VALUES (139,85,72,20040828150338,NULL,NULL,'V2F1');
INSERT INTO `speeds` VALUES (140,35,100,20040828150609,NULL,NULL,'CCO2F2');
INSERT INTO `speeds` VALUES (141,99,130,20040828150801,NULL,NULL,'C2P2');
INSERT INTO `speeds` VALUES (142,107,132,20040828151018,NULL,NULL,'C4P2');
INSERT INTO `speeds` VALUES (143,97,126,20040828151259,NULL,NULL,'C4P2');
INSERT INTO `speeds` VALUES (144,9,76,20040828151456,NULL,NULL,'V3M2');
INSERT INTO `speeds` VALUES (145,15,62,20040828151732,NULL,NULL,'V3S2');
INSERT INTO `speeds` VALUES (146,93,95,20040828151913,NULL,NULL,'V5P2');
INSERT INTO `speeds` VALUES (147,56,92,20040828152106,NULL,NULL,'C4F2');
INSERT INTO `speeds` VALUES (148,101,71,20040828152951,NULL,NULL,'V5F2');
INSERT INTO `speeds` VALUES (149,7,52,20040828153323,NULL,NULL,'P2S1');
INSERT INTO `speeds` VALUES (150,8,64,20040828153538,NULL,NULL,'P3S2');
INSERT INTO `speeds` VALUES (151,88,87,20040828153907,NULL,NULL,'V4M2');
INSERT INTO `speeds` VALUES (152,4,73,20040828154128,NULL,NULL,'V3F2');
INSERT INTO `speeds` VALUES (153,96,93,20040828154405,NULL,NULL,'V4P2');
INSERT INTO `speeds` VALUES (154,20,78,20040828154551,NULL,NULL,'V2M2');
INSERT INTO `speeds` VALUES (155,106,78,20040828154804,NULL,NULL,'C1M1');
INSERT INTO `speeds` VALUES (156,45,67,20040828155033,NULL,NULL,'C2S1');
INSERT INTO `speeds` VALUES (157,98,85,20040828155254,NULL,NULL,'C2P1');
INSERT INTO `speeds` VALUES (158,40,68,20040828155539,NULL,NULL,'V3S2');
INSERT INTO `speeds` VALUES (159,43,134,20040828155759,NULL,NULL,'C4P2');
INSERT INTO `speeds` VALUES (160,38,109,20040828155958,NULL,NULL,'C4P2');
INSERT INTO `speeds` VALUES (161,30,87,20040828160201,NULL,NULL,'V3P2');
INSERT INTO `speeds` VALUES (162,66,120,20040828160353,NULL,NULL,'C3M2');
INSERT INTO `speeds` VALUES (163,37,63,20040828160609,NULL,NULL,'V3S2');
INSERT INTO `speeds` VALUES (164,21,111,20040828160805,NULL,NULL,'V6P2');
INSERT INTO `speeds` VALUES (165,28,121,20040828161130,NULL,NULL,'C5P2');
INSERT INTO `speeds` VALUES (166,85,73,20040828161342,NULL,NULL,'V2F1');
INSERT INTO `speeds` VALUES (167,86,0,20040828161617,NULL,NULL,'V3FM2');
INSERT INTO `speeds` VALUES (168,109,78,20040829110230,NULL,NULL,'V4FP2');
INSERT INTO `speeds` VALUES (169,80,82,20040828162057,NULL,NULL,'C1P1');
INSERT INTO `speeds` VALUES (170,53,82,20040828165417,NULL,NULL,'');
INSERT INTO `speeds` VALUES (171,49,184,20040829142557,NULL,NULL,'CC4P2');
INSERT INTO `speeds` VALUES (172,94,187,20040829111344,NULL,NULL,'HYDRO');
INSERT INTO `speeds` VALUES (173,98,82,20040829111613,NULL,NULL,'C2P1');
INSERT INTO `speeds` VALUES (174,81,154,20040829111808,NULL,NULL,'C3P2');
INSERT INTO `speeds` VALUES (175,19,138,20040829112135,NULL,NULL,'C5P2');
INSERT INTO `speeds` VALUES (176,111,100,20040829112316,NULL,NULL,'V1P1');
INSERT INTO `speeds` VALUES (177,93,100,20040829112559,NULL,NULL,'V5P2');
INSERT INTO `speeds` VALUES (178,65,124,20040829112756,NULL,NULL,'C4M2');
INSERT INTO `speeds` VALUES (179,83,0,20040829113041,NULL,NULL,'C2F2');
INSERT INTO `speeds` VALUES (180,33,137,20040829113257,NULL,NULL,'C4P2');
INSERT INTO `speeds` VALUES (181,84,0,20040829113836,NULL,NULL,'C5P2');
INSERT INTO `speeds` VALUES (182,47,111,20040829114048,NULL,NULL,'CO2S2');
INSERT INTO `speeds` VALUES (183,114,102,20040829114154,NULL,NULL,'CO3S3');
INSERT INTO `speeds` VALUES (184,112,67,20040829114252,NULL,NULL,'V3S2');
INSERT INTO `speeds` VALUES (185,31,110,20040829114426,NULL,NULL,'CO2S2');
INSERT INTO `speeds` VALUES (186,25,123,20040829114649,NULL,NULL,'C4P2');
INSERT INTO `speeds` VALUES (187,115,76,20040829114921,NULL,NULL,'C1S1');
INSERT INTO `speeds` VALUES (188,13,98,20040829115146,NULL,NULL,'CO1S2');
INSERT INTO `speeds` VALUES (189,104,93,20040829115511,NULL,NULL,'V2P1');
INSERT INTO `speeds` VALUES (190,110,98,20040829144352,NULL,NULL,'CO2F2');
INSERT INTO `speeds` VALUES (191,21,118,20040829120505,NULL,NULL,'V6P2');
INSERT INTO `speeds` VALUES (192,85,80,20040829120658,NULL,NULL,'V2F1');
INSERT INTO `speeds` VALUES (193,86,83,20040829120953,NULL,NULL,'V3FM2');
INSERT INTO `speeds` VALUES (194,51,83,20040829121217,NULL,NULL,'V3F2');
INSERT INTO `speeds` VALUES (195,64,83,20040829121506,NULL,NULL,'V4F2');
INSERT INTO `speeds` VALUES (196,20,85,20040829121654,NULL,NULL,'V2M2');
INSERT INTO `speeds` VALUES (197,123,71,20040829121852,NULL,NULL,'V5S3');
INSERT INTO `speeds` VALUES (198,9,85,20040829122130,NULL,NULL,'V3M2');
INSERT INTO `speeds` VALUES (199,121,71,20040829122407,NULL,NULL,'V5S2');
INSERT INTO `speeds` VALUES (200,80,92,20040829122849,NULL,NULL,'C1P1');
INSERT INTO `speeds` VALUES (201,54,67,20040829123130,NULL,NULL,'V2S1');
INSERT INTO `speeds` VALUES (202,28,122,20040829123343,NULL,NULL,'C5P2');
INSERT INTO `speeds` VALUES (203,103,68,20040829123658,NULL,NULL,'C1P1');
INSERT INTO `speeds` VALUES (204,79,102,20040829124003,NULL,NULL,'CO2M2');
INSERT INTO `speeds` VALUES (205,17,81,20040829124212,NULL,NULL,'V4F3');
INSERT INTO `speeds` VALUES (206,1,89,20040829124416,NULL,NULL,'V3M2');
INSERT INTO `speeds` VALUES (207,125,77,20040829124639,NULL,NULL,'V5F2');
INSERT INTO `speeds` VALUES (208,120,76,20040829125134,NULL,NULL,'V1M1');
INSERT INTO `speeds` VALUES (209,66,126,20040829125622,NULL,NULL,'C3M2');
INSERT INTO `speeds` VALUES (210,88,97,20040829125859,NULL,NULL,'V4M2');
INSERT INTO `speeds` VALUES (211,97,141,20040829130117,NULL,NULL,'C4P2');
INSERT INTO `speeds` VALUES (212,118,86,20040829130347,NULL,NULL,'C1P1');
INSERT INTO `speeds` VALUES (213,30,98,20040829130609,NULL,NULL,'V3P2');
INSERT INTO `speeds` VALUES (214,91,85,20040829130914,NULL,NULL,'PO2S2');
INSERT INTO `speeds` VALUES (215,108,89,20040829131243,NULL,NULL,'V4FP2');
INSERT INTO `speeds` VALUES (216,101,71,20040829131516,NULL,NULL,'V5F2');
INSERT INTO `speeds` VALUES (217,127,76,20040829131843,NULL,NULL,'V3S2');
INSERT INTO `speeds` VALUES (218,19,141,20040829132045,NULL,NULL,'C5P2');
INSERT INTO `speeds` VALUES (219,93,103,20040829132500,NULL,NULL,'V5P2');
INSERT INTO `speeds` VALUES (220,65,121,20040829132828,NULL,NULL,'C4M2');
INSERT INTO `speeds` VALUES (221,128,74,20040829133027,NULL,NULL,'V3M2');
INSERT INTO `speeds` VALUES (222,84,133,20040829133312,NULL,NULL,'C5P2');
INSERT INTO `speeds` VALUES (223,44,59,20040829133622,NULL,NULL,'V4S2');
INSERT INTO `speeds` VALUES (224,107,142,20040829133906,NULL,NULL,'C4P2');
INSERT INTO `speeds` VALUES (225,126,105,20040829134330,NULL,NULL,'C2M2');
INSERT INTO `speeds` VALUES (226,4,76,20040829134549,NULL,NULL,'V3F2');
INSERT INTO `speeds` VALUES (227,112,68,20040829134804,NULL,NULL,'V3S2');
INSERT INTO `speeds` VALUES (228,130,136,20040829135442,NULL,NULL,'C2P2');
INSERT INTO `speeds` VALUES (229,25,145,20040829135622,NULL,NULL,'C4P2');
INSERT INTO `speeds` VALUES (230,87,77,20040829135943,NULL,NULL,'V1F1');
INSERT INTO `speeds` VALUES (231,29,82,20040829140025,NULL,NULL,'V2F2');
INSERT INTO `speeds` VALUES (232,82,102,20040829140234,NULL,NULL,'V3P2');
INSERT INTO `speeds` VALUES (233,109,86,20040829140457,NULL,NULL,'V4FP2');
INSERT INTO `speeds` VALUES (234,115,76,20040829140736,NULL,NULL,'C1S1');
INSERT INTO `speeds` VALUES (235,8,69,20040829141038,NULL,NULL,'P3S2');
INSERT INTO `speeds` VALUES (236,7,57,20040829141321,NULL,NULL,'P2S1');
INSERT INTO `speeds` VALUES (237,110,100,20040829144352,NULL,NULL,'CO2F2');
INSERT INTO `speeds` VALUES (238,83,101,20040829141801,NULL,NULL,'C2F2');
INSERT INTO `speeds` VALUES (239,53,89,20040829142539,NULL,NULL,'C2S2');
INSERT INTO `speeds` VALUES (240,89,116,20040829142736,NULL,NULL,'C2P2');
INSERT INTO `speeds` VALUES (241,86,96,20040829142920,NULL,NULL,'V3FM2');
INSERT INTO `speeds` VALUES (242,132,77,20040829143415,NULL,NULL,'V3F2');
INSERT INTO `speeds` VALUES (243,35,108,20040829143629,NULL,NULL,'CCO2F2');
INSERT INTO `speeds` VALUES (244,106,108,20040829143835,NULL,NULL,'C1M1');
INSERT INTO `speeds` VALUES (245,113,0,20040829144228,NULL,NULL,'C3P2');
INSERT INTO `speeds` VALUES (246,16,86,20040829144256,NULL,NULL,'V4M2');
INSERT INTO `speeds` VALUES (247,20,83,20040829144421,NULL,NULL,'V2M2');
INSERT INTO `speeds` VALUES (248,123,70,20040829144632,NULL,NULL,'V5S3');
INSERT INTO `speeds` VALUES (249,38,137,20040829144823,NULL,NULL,'C4P2');
INSERT INTO `speeds` VALUES (250,54,67,20040829145020,NULL,NULL,'V2S1');
INSERT INTO `speeds` VALUES (251,96,104,20040829145427,NULL,NULL,'V4P2');
INSERT INTO `speeds` VALUES (252,56,97,20040829145634,NULL,NULL,'C4F2');
INSERT INTO `speeds` VALUES (253,100,91,20040829145912,NULL,NULL,'C1P1');
INSERT INTO `speeds` VALUES (254,5,77,20040829150112,NULL,NULL,'V3FP2');
INSERT INTO `speeds` VALUES (255,10,109,20040829150315,NULL,NULL,'C5P2');
INSERT INTO `speeds` VALUES (256,99,142,20040829150506,NULL,NULL,'C2P2');
INSERT INTO `speeds` VALUES (257,15,67,20040829150827,NULL,NULL,'V3S2');
INSERT INTO `speeds` VALUES (258,94,198,20040829151458,NULL,NULL,'HYDRO');
INSERT INTO `speeds` VALUES (259,105,93,20040829151756,NULL,NULL,'V2M1');
INSERT INTO `speeds` VALUES (260,28,130,20040829152216,NULL,NULL,'C5P2');
INSERT INTO `speeds` VALUES (261,92,78,20040829152523,NULL,NULL,'VO1S1');
INSERT INTO `speeds` VALUES (262,90,78,20040829152635,NULL,NULL,'V3S2');
INSERT INTO `speeds` VALUES (263,101,73,20040829152831,NULL,NULL,'V5F2');
INSERT INTO `speeds` VALUES (264,117,140,20040829152947,NULL,NULL,'C1P1');
INSERT INTO `speeds` VALUES (265,103,75,20040829153149,NULL,NULL,'C1P1');
INSERT INTO `speeds` VALUES (266,124,63,20040829153425,NULL,NULL,'V2S2');
INSERT INTO `speeds` VALUES (267,31,114,20040829153621,NULL,NULL,'CO2S2');
INSERT INTO `speeds` VALUES (268,129,147,20040829153859,NULL,NULL,'C5P4');
INSERT INTO `speeds` VALUES (269,21,117,20040829154034,NULL,NULL,'V6P2');
INSERT INTO `speeds` VALUES (270,119,91,20040829154235,NULL,NULL,'V3P2');
INSERT INTO `speeds` VALUES (271,84,134,20040829154614,NULL,NULL,'C5P2');
INSERT INTO `speeds` VALUES (272,125,77,20040829154706,NULL,NULL,'V5F2');
INSERT INTO `speeds` VALUES (273,30,98,20040829154900,NULL,NULL,'V3P2');
INSERT INTO `speeds` VALUES (274,133,75,20040829155531,NULL,NULL,'P1P1');
INSERT INTO `speeds` VALUES (275,122,90,20040829155658,NULL,NULL,'C2S2');
INSERT INTO `speeds` VALUES (276,127,76,20040829155740,NULL,NULL,'V3S2');
INSERT INTO `speeds` VALUES (277,17,80,20040829155837,NULL,NULL,'V4F3');
INSERT INTO `speeds` VALUES (278,131,82,20040829160020,NULL,NULL,'V5M2');
INSERT INTO `speeds` VALUES (279,40,71,20040829160242,NULL,NULL,'V3S2');
INSERT INTO `speeds` VALUES (280,66,129,20040829160446,NULL,NULL,'C3M2');
INSERT INTO `speeds` VALUES (281,47,113,20040829160652,NULL,NULL,'CO2S2');
INSERT INTO `speeds` VALUES (282,130,148,20040829160856,NULL,NULL,'C2P2');
INSERT INTO `speeds` VALUES (283,120,77,20040829161200,NULL,NULL,'V1M1');
INSERT INTO `speeds` VALUES (284,82,110,20040829161312,NULL,NULL,'V3P2');
INSERT INTO `speeds` VALUES (285,29,82,20040829161503,NULL,NULL,'V2F2');
INSERT INTO `speeds` VALUES (286,108,90,20040829161722,NULL,NULL,'V4FP2');
INSERT INTO `speeds` VALUES (287,135,0,20040829161938,NULL,NULL,'CCO4M2');
INSERT INTO `speeds` VALUES (288,107,139,20040829162241,NULL,NULL,'C4P2');
INSERT INTO `speeds` VALUES (289,49,187,20040829162532,NULL,NULL,'CC4P2');
INSERT INTO `speeds` VALUES (290,129,154,20040829162804,NULL,NULL,'C5P4');

