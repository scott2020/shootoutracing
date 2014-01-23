-- MySQL dump 8.23
--
-- Host: localhost    Database: shootout
---------------------------------------------------------
-- Server version	3.23.58

--
-- Table structure for table `_report_users`
--

DROP TABLE IF EXISTS _report_users;
CREATE TABLE _report_users (
  ID int(11) NOT NULL auto_increment,
  login_id varchar(255) NOT NULL default '0',
  login_pass varchar(255) NOT NULL default '0',
  PRIMARY KEY  (ID),
  KEY login_id (login_id)
) TYPE=MyISAM;

--
-- Dumping data for table `_report_users`
--


LOCK TABLES _report_users WRITE;
INSERT INTO _report_users VALUES (1,'scott','fartman');
UNLOCK TABLES;

--
-- Table structure for table `_xml_report`
--

DROP TABLE IF EXISTS _xml_report;
CREATE TABLE _xml_report (
  ID int(11) NOT NULL auto_increment,
  deleted smallint(1) NOT NULL default '0',
  user_id int(11) NOT NULL default '0',
  shared smallint(1) NOT NULL default '0',
  name varchar(255) NOT NULL default '',
  xml text NOT NULL,
  date_lastrun datetime NOT NULL default '0000-00-00 00:00:00',
  date_created datetime NOT NULL default '0000-00-00 00:00:00',
  last_run_by int(11) NOT NULL default '0',
  PRIMARY KEY  (ID),
  KEY shared (shared),
  KEY deleted (deleted),
  KEY user_id (user_id)
) TYPE=MyISAM;

--
-- Dumping data for table `_xml_report`
--


LOCK TABLES _xml_report WRITE;
INSERT INTO _xml_report VALUES (1,0,1,0,'test 1','<report id=\"0\" shared=\"0\" user_id=\"undefined\" name=\"test 1\" orientation=\"\"><ReportPage h=\"1056\" w=\"816\"><sections><ReportSection moveable=\"false\" immortal=\"true\" type=\"titleHeader\" h=\"30\"><elements /></ReportSection><ReportSection moveable=\"false\" immortal=\"true\" type=\"header\" h=\"30\"><elements /></ReportSection><ReportSection moveable=\"false\" immortal=\"true\" type=\"body\" h=\"30\"><elements><FieldElement data=\"competitors.driver_first\" font=\"Times New Roman\" color=\"0\" size=\"12\" valign=\"middle\" align=\"center\" underline=\"false\" italic=\"false\" bold=\"false\" text=\"driver_first\" bgColor=\"0xf7f7f7\" lineColor=\"0\" lineSize=\"1\" useFill=\"true\" useLine=\"true\" h=\"22\" w=\"65\" y=\"4\" x=\"52\" /><FieldElement data=\"competitors.driver_last\" font=\"Times New Roman\" color=\"0\" size=\"12\" valign=\"middle\" align=\"center\" underline=\"false\" italic=\"false\" bold=\"false\" text=\"driver_last\" bgColor=\"0xf7f7f7\" lineColor=\"0\" lineSize=\"1\" useFill=\"true\" useLine=\"true\" h=\"22\" w=\"65\" y=\"4\" x=\"149\" /><FieldElement data=\"undefined\" font=\"Times New Roman\" color=\"0\" size=\"12\" valign=\"middle\" align=\"center\" underline=\"false\" italic=\"false\" bold=\"false\" text=\"&lt; EMPTY &gt;\" bgColor=\"0xf7f7f7\" lineColor=\"0\" lineSize=\"1\" useFill=\"true\" useLine=\"true\" h=\"22\" w=\"65\" y=\"4\" x=\"255\" /></elements></ReportSection><ReportSection moveable=\"false\" immortal=\"true\" type=\"footer\" h=\"30\"><elements /></ReportSection><ReportSection moveable=\"false\" immortal=\"true\" type=\"titleFooter\" h=\"30\"><elements /></ReportSection></sections></ReportPage><filters /><sorts><sort type=\"ASC\" field=\"competitors.driver_first\" screen=\"competitors\" /></sorts></report>','2004-06-18 18:23:11','2004-06-18 17:23:58',1);
INSERT INTO _xml_report VALUES (2,0,1,0,'ass','<report id=\"2\" shared=\"0\" user_id=\"undefined\" name=\"ass\" orientation=\"\"><ReportPage h=\"1056\" w=\"816\"><sections><ReportSection moveable=\"false\" immortal=\"true\" type=\"titleHeader\" h=\"30\"><elements><TextElement font=\"Times New Roman\" color=\"0\" size=\"12\" valign=\"middle\" align=\"left\" underline=\"false\" italic=\"false\" bold=\"false\" text=\"Budweiser Shootout 2004\" bgColor=\"16777215\" lineColor=\"0\" lineSize=\"1\" useFill=\"true\" useLine=\"true\" h=\"19\" w=\"274\" y=\"7\" x=\"93\" /></elements></ReportSection><ReportSection moveable=\"false\" immortal=\"true\" type=\"header\" h=\"30\"><elements><TextElement font=\"Times New Roman\" color=\"0\" size=\"12\" valign=\"middle\" align=\"left\" underline=\"false\" italic=\"false\" bold=\"false\" text=\"Speeds by competitor\" bgColor=\"16777215\" lineColor=\"0\" lineSize=\"1\" useFill=\"true\" useLine=\"true\" h=\"24\" w=\"176\" y=\"1\" x=\"252\" /></elements></ReportSection><ReportSection groupByData=\"speeds.competitor_id\" groupByLabel=\"speeds.competitor_id\" moveable=\"true\" immortal=\"false\" type=\"sumSection\" h=\"30\"><elements><FieldElement data=\"speeds.competitor_id\" font=\"Times New Roman\" color=\"0\" size=\"12\" valign=\"middle\" align=\"center\" underline=\"false\" italic=\"false\" bold=\"false\" text=\"speeds.competitor_id\" bgColor=\"16250871\" lineColor=\"0\" lineSize=\"1\" useFill=\"true\" useLine=\"true\" h=\"18\" w=\"148\" y=\"5\" x=\"402\" /><TextElement font=\"Times New Roman\" color=\"0\" size=\"12\" valign=\"middle\" align=\"left\" underline=\"false\" italic=\"false\" bold=\"false\" text=\"Speeds for Competitor\" bgColor=\"16777215\" lineColor=\"0\" lineSize=\"1\" useFill=\"true\" useLine=\"true\" h=\"22\" w=\"135\" y=\"4\" x=\"272\" /></elements></ReportSection><ReportSection moveable=\"false\" immortal=\"true\" type=\"body\" h=\"27\"><elements><FieldElement data=\"speeds.timestamp\" font=\"Times New Roman\" color=\"0\" size=\"12\" valign=\"middle\" align=\"center\" underline=\"false\" italic=\"false\" bold=\"false\" text=\"timestamp\" bgColor=\"16250871\" lineColor=\"0\" lineSize=\"1\" useFill=\"true\" useLine=\"true\" h=\"22\" w=\"144\" y=\"1\" x=\"412\" /><FieldElement data=\"speeds.speed\" font=\"Times New Roman\" color=\"0\" size=\"12\" valign=\"middle\" align=\"center\" underline=\"false\" italic=\"false\" bold=\"false\" text=\"speed\" bgColor=\"16250871\" lineColor=\"0\" lineSize=\"1\" useFill=\"true\" useLine=\"true\" h=\"22\" w=\"65\" y=\"1\" x=\"321\" /></elements></ReportSection><ReportSection moveable=\"false\" immortal=\"true\" type=\"footer\" h=\"30\"><elements /></ReportSection><ReportSection moveable=\"false\" immortal=\"true\" type=\"titleFooter\" h=\"30\"><elements /></ReportSection></sections></ReportPage><filters /><sorts><sort type=\"ASC\" field=\"speeds.competitor_id\" screen=\"speeds\" /></sorts></report>','2004-06-20 22:59:48','2004-06-18 17:29:21',1);
INSERT INTO _xml_report VALUES (3,0,1,0,'crat','<report id=\"0\" shared=\"0\" user_id=\"undefined\" name=\"crat\" orientation=\"\"><ReportPage h=\"1056\" w=\"816\"><sections><ReportSection moveable=\"false\" immortal=\"true\" type=\"titleHeader\" h=\"30\"><elements><TextElement font=\"Times New Roman\" color=\"0\" size=\"12\" valign=\"middle\" align=\"left\" underline=\"false\" italic=\"false\" bold=\"false\" text=\"apples\" bgColor=\"16777215\" lineColor=\"0\" lineSize=\"1\" useFill=\"true\" useLine=\"true\" h=\"26\" w=\"212\" y=\"0\" x=\"108\" /></elements></ReportSection><ReportSection moveable=\"false\" immortal=\"true\" type=\"header\" h=\"30\"><elements /></ReportSection><ReportSection moveable=\"false\" immortal=\"true\" type=\"body\" h=\"103\"><elements><FieldElement data=\"competitors.competitor_id\" font=\"Times New Roman\" color=\"0\" size=\"12\" valign=\"middle\" align=\"center\" underline=\"false\" italic=\"false\" bold=\"false\" text=\"competitor_id\" bgColor=\"0xf7f7f7\" lineColor=\"0\" lineSize=\"1\" useFill=\"true\" useLine=\"true\" h=\"25\" w=\"149\" y=\"37\" x=\"60\" /><FieldElement data=\"competitors.driver_first\" font=\"Times New Roman\" color=\"0\" size=\"12\" valign=\"middle\" align=\"center\" underline=\"false\" italic=\"false\" bold=\"false\" text=\"driver_first\" bgColor=\"0xf7f7f7\" lineColor=\"0\" lineSize=\"1\" useFill=\"true\" useLine=\"true\" h=\"24\" w=\"147\" y=\"37\" x=\"215\" /><FieldElement data=\"competitors.driver_last\" font=\"Times New Roman\" color=\"0\" size=\"12\" valign=\"middle\" align=\"center\" underline=\"false\" italic=\"false\" bold=\"false\" text=\"driver_last\" bgColor=\"0xf7f7f7\" lineColor=\"0\" lineSize=\"1\" useFill=\"true\" useLine=\"true\" h=\"24\" w=\"181\" y=\"41\" x=\"376\" /><FieldElement data=\"competitors.boat_class\" font=\"Times New Roman\" color=\"0\" size=\"12\" valign=\"middle\" align=\"center\" underline=\"false\" italic=\"false\" bold=\"false\" text=\"boat_class\" bgColor=\"0xf7f7f7\" lineColor=\"0\" lineSize=\"1\" useFill=\"true\" useLine=\"true\" h=\"23\" w=\"108\" y=\"37\" x=\"570\" /></elements></ReportSection><ReportSection moveable=\"false\" immortal=\"true\" type=\"footer\" h=\"30\"><elements /></ReportSection><ReportSection moveable=\"false\" immortal=\"true\" type=\"titleFooter\" h=\"30\"><elements /></ReportSection></sections></ReportPage><filters /><sorts><sort type=\"asc\" field=\"competitors.driver_first\" screen=\"competitors\" /></sorts></report>','2004-06-19 23:42:17','2004-06-19 23:42:17',0);
UNLOCK TABLES;

--
-- Table structure for table `classes`
--

DROP TABLE IF EXISTS classes;
CREATE TABLE classes (
  class_id int(3) NOT NULL auto_increment,
  class_name varchar(8) default NULL,
  class_count varchar(4) default NULL,
  PRIMARY KEY  (class_id)
) TYPE=MyISAM;

--
-- Dumping data for table `classes`
--


LOCK TABLES classes WRITE;
INSERT INTO classes VALUES (1,'C1P1','2');
INSERT INTO classes VALUES (2,'AAAA','4');
INSERT INTO classes VALUES (3,'C2P3','3');
INSERT INTO classes VALUES (4,'PWC1','3');
INSERT INTO classes VALUES (5,'PWC2','2');
INSERT INTO classes VALUES (6,'SMP2','3');
INSERT INTO classes VALUES (7,'C1D2F','3');
INSERT INTO classes VALUES (8,'Z2A1R','3');
INSERT INTO classes VALUES (9,'BB2A','2');
UNLOCK TABLES;

--
-- Table structure for table `competitors`
--

DROP TABLE IF EXISTS competitors;
CREATE TABLE competitors (
  competitor_id int(4) NOT NULL auto_increment,
  driver_first varchar(25) NOT NULL default '',
  driver_middle char(2) default NULL,
  driver_last varchar(25) NOT NULL default '',
  driver_dob int(11) default NULL,
  driver_address varchar(25) default NULL,
  driver_address2 varchar(20) default NULL,
  driver_city varchar(15) default NULL,
  driver_state char(2) default NULL,
  driver_zip mediumint(5) default NULL,
  driver_dl varchar(15) default NULL,
  driver_phone varchar(12) default NULL,
  owner_first varchar(25) default NULL,
  owner_middle char(2) default NULL,
  owner_last varchar(20) default NULL,
  owner_address varchar(25) default NULL,
  owner_city varchar(15) default NULL,
  owner_state char(2) default NULL,
  owner_zip mediumint(5) default NULL,
  owner_phone varchar(12) default NULL,
  sponsor_name varchar(30) default NULL,
  sponsor_address varchar(50) default NULL,
  emer_first varchar(25) default NULL,
  emer_last varchar(25) default NULL,
  emer_address varchar(50) default NULL,
  emer_phone varchar(12) default NULL,
  emer_relation varchar(30) default NULL,
  boat_class varchar(8) default NULL,
  boat_number int(2) default NULL,
  boat_name varchar(30) default NULL,
  boat_year smallint(4) default NULL,
  boat_mfg varchar(20) default NULL,
  boat_hull varchar(5) default NULL,
  boat_length tinyint(4) default NULL,
  boat_engines tinyint(2) default NULL,
  boat_block varchar(10) default NULL,
  boat_cuinch int(4) default NULL,
  boat_outdrivetype varchar(10) default NULL,
  boat_mods varchar(60) default NULL,
  boat_state char(2) default NULL,
  driver_email varchar(30) default NULL,
  PRIMARY KEY  (competitor_id)
) TYPE=MyISAM;

--
-- Dumping data for table `competitors`
--


LOCK TABLES competitors WRITE;
INSERT INTO competitors VALUES (1,'Jamesl','W','Khanderd',2,'14 West Cray SE','address2','Zonesville','MO',65585,'S4324324','616-774-8847','Barry','A','Mague','3454 Lomg ER','Appleton City','MO',65055,'','Lake Filling Station','43 344','AWE','Sta','emeraddress','','EmerRelationupdate','AAAA',1,'Watersport',2001,'Seacraft Dee','V',21,2,'small',424,'Out','Vlowers, light fans stuff','SU','jack@test.com');
INSERT INTO competitors VALUES (2,'Homer','J','Simpson',0,'','address2','Springfield','MO',48984,'','','Maggie','L','Simpson','','','',0,'','Lage Loipsoesn','','','','emeraddress','','EmerRelationupdate','AAAA',2,'Gone Fission',1992,'Hanesburn','V',27,4,'Big',424,'3','None','SU','homer@simpson.com');
INSERT INTO competitors VALUES (3,'Harry','M','Poolerer',0,'','address2','Gainesburl','FL',38984,'','','Jimmy','','Spencer','','','',0,'','NASCAR','','','','emeraddress','','EmerRelationupdate','C1D2F',1,'John Henry',2001,'Sprintcranfg','V',22,2,'outboard',323,'O','Jets','SU','hpoolerere@happle.com');
INSERT INTO competitors VALUES (4,'Caravan','L','Dogeer',0,'','address2','Jimestown','IL',48984,'','','Viggie','','Popper','','Bastville','IL',48984,'','Marquis Snot Rags','','','','emeraddress','','EmerRelationupdate','C1P1',1,'Butter Beer',1999,'Wainesinspoerg','V',19,2,'B',282,'C','None','SU','myeye@netra.com');
INSERT INTO competitors VALUES (5,'Livrcan','L','Anderson',0,'','address2','Bigtown','CA',48888,'','','No','','Owner','','','',0,'','Budweiser High Carb','','','','emeraddress','','EmerRelationupdate','C2P3',1,'MRS Bud',2002,'Bladbowol','V',33,2,'S',388,'V','None','SU','anderSEN@Dogworld.com');
INSERT INTO competitors VALUES (6,'Apple','','Johnson',0,'','address2','Fullertonvillec','MO',48884,'','','Aoole','','Johnson','','Hell','MI',48983,'','','','','','emeraddress','','EmerRelationupdate','PWC1',1,'Cold as ice',1937,'Oldtimer','V',19,3,'Big',484,'V','turbo chargers','SU','ajohn234@hotmail.com');
INSERT INTO competitors VALUES (7,'Anson','','Williams',0,'','address2','Oakland','CA',4894,'','','Rich','','Cunningham','','Fullerfile','CA',48983,'','Universal Studios','','','','emeraddress','','EmerRelationupdate','SMP2',1,'Happy Daze',2002,'Powerquest','V',22,3,'B',388,'K','None','SU','awilliam@aso.com');
INSERT INTO competitors VALUES (8,'Steve','L','Dougan',3,'48 Big St','address2','Los Altos','MO',58998,'L389938','573-374-3894','Shelly','H','Dougan','','Camdenton','MO',68948,'343-4898','Klondike Bars','34 Here St Louis','Bobbty','Brown','emeraddress','389-3898','EmerRelationupdate','SMP2',2,'Dustin all over the place',2002,'Power Ranger','V',37,3,'big block',389,'Something','none','SU','sdougaht@lakeregional.com');
INSERT INTO competitors VALUES (9,'Jeramy','','Kardon',2,'123 Anyplace Jount','address2','Barfolairlsio','IL',58984,'','573-444-8784','Blowfish','','Desk','','','',0,'','','','','','emeraddress','','emerRelation','PWC2',1,'The Jones',2001,'Lake Sims','Tunne',34,3,'Outboard',388,'K','None','ST','jappy@aol.com');
INSERT INTO competitors VALUES (10,'Krev','','Compaq',0,'','address2','Jimmy','TN',58985,'','','Compaq','','Computer Corp','','Dallas','TX',0,'','Helpbox Software','','','','emeraddress','','emerRelation','C1D2F',2,'Putter',1998,'Anchor Mall','V',23,2,'small',333,'P','None','ST','kcomapd@yahoo.com');
INSERT INTO competitors VALUES (11,'Pentium','M','Dictate',0,'234 Howard Lane','address2','Grand Rapids','MI',48495,'','323-238-4893','Pentium','M','Dictatey','','','',0,'','Sony Trinitron Monitors','','','','emeraddress','','EmerRelationupdate','Z2A1R',1,'Sweet Georgia Brown',2002,'Sailcraft','Tunne',18,1,'outboard',389,'Drive','Jets, Blowers, Turbos, Nuclear Reactor T','SU','bisg@aol.com');
INSERT INTO competitors VALUES (12,'Kathy','','Johnson',0,'389 Home Place','address2','Otzego','IL',48984,'','','Jimmy','','Johnson','','Happyville','IL',0,'','Unsponsored','','','','emeraddress','','emerRelation','Z2A1R',2,'Great Lakes',1999,'Seedoo','V',12,1,'small',128,'P','None','ST','safplleee@msn.com');
INSERT INTO competitors VALUES (13,'Falcon','','Birdie',3,'19 Hospital Dr','address2','Camdenton','MO',88948,'','','Jack','','Zwheleimailu','8578 Rho Dr','Osage Beach','MO',58958,'389-232-2343','Caravan Coffee Shop','23849 here place','','','emeraddress','','emerRelation','C2P3',2,'Logwatch Water',1999,'Fusion Beach','V',38,2,'Big',388,'A','Turbo, Deisel','ST','sdv@apples.com');
INSERT INTO competitors VALUES (14,'Charles','','Rogers',0,'','address2','Detriot','MI',48984,'','','Henry','','Ford Sr.','238','Detroit','MI',4894,'','Ford Motor Co','3289','','','emeraddress','','emerRelation','AAAA',3,'Wide Receiver',1928,'Ford Model A','V',34,3,'outboard',344,'3','None','ST','crogers@asdom.cmo');
UNLOCK TABLES;

--
-- Table structure for table `speeds`
--

DROP TABLE IF EXISTS speeds;
CREATE TABLE speeds (
  run_id int(3) NOT NULL auto_increment,
  competitor_id int(4) default NULL,
  speed int(3) default NULL,
  timestamp timestamp(14) NOT NULL,
  disqual char(1) default NULL,
  disqual_reason varchar(60) default NULL,
  boat_class varchar(10) default NULL,
  PRIMARY KEY  (run_id)
) TYPE=MyISAM;

--
-- Dumping data for table `speeds`
--


LOCK TABLES speeds WRITE;
INSERT INTO speeds VALUES (1,2,64,20040823122555,NULL,NULL,'AAAA');
INSERT INTO speeds VALUES (2,1,64,20040823122604,NULL,NULL,'AAAA');
INSERT INTO speeds VALUES (3,3,74,20040823122618,NULL,NULL,'C1D2F');
INSERT INTO speeds VALUES (4,4,34,20040823122631,NULL,NULL,'C1P1');
INSERT INTO speeds VALUES (5,4,56,20040823122703,NULL,NULL,'C1P1');
INSERT INTO speeds VALUES (6,4,56,20040823122716,NULL,NULL,'C1P1');
INSERT INTO speeds VALUES (7,5,89,20040823122737,NULL,NULL,'C2P3');
INSERT INTO speeds VALUES (8,5,87,20040823122748,NULL,NULL,'C2P3');
INSERT INTO speeds VALUES (9,6,87,20040823122801,NULL,NULL,'PWC1');
INSERT INTO speeds VALUES (10,6,121,20040823122812,NULL,NULL,'PWC1');
INSERT INTO speeds VALUES (11,7,56,20040823122823,NULL,NULL,'SMP2');
INSERT INTO speeds VALUES (12,6,44,20040823122839,NULL,NULL,'PWC1');
INSERT INTO speeds VALUES (13,7,46,20040823122850,NULL,NULL,'SMP2');
INSERT INTO speeds VALUES (14,3,78,20040823122905,NULL,NULL,'C1D2F');
INSERT INTO speeds VALUES (15,8,68,20040823122918,NULL,NULL,'SMP2');
INSERT INTO speeds VALUES (16,9,47,20040823122935,NULL,NULL,'PWC2');
INSERT INTO speeds VALUES (17,10,47,20040823123000,NULL,NULL,'C1D2F');
INSERT INTO speeds VALUES (18,10,85,20040823123013,NULL,NULL,'C1D2F');
INSERT INTO speeds VALUES (19,7,45,20040823123025,NULL,NULL,'SMP2');
INSERT INTO speeds VALUES (20,11,142,20040823123040,NULL,NULL,'Z2A1R');
INSERT INTO speeds VALUES (22,11,110,20040823123104,NULL,NULL,'Z2A1R');
INSERT INTO speeds VALUES (24,3,88,20040823123132,NULL,NULL,'C1D2F');
INSERT INTO speeds VALUES (25,1,74,20040823123143,NULL,NULL,'AAAA');
INSERT INTO speeds VALUES (26,9,65,20040823123152,NULL,NULL,'PWC2');
INSERT INTO speeds VALUES (27,9,39,20040823123203,NULL,NULL,'PWC2');
INSERT INTO speeds VALUES (28,2,87,20040823123212,NULL,NULL,'AAAA');
INSERT INTO speeds VALUES (29,7,45,20040823123223,NULL,NULL,'SMP2');
INSERT INTO speeds VALUES (30,10,56,20040823123234,NULL,NULL,'C1D2F');
INSERT INTO speeds VALUES (31,1,78,20040823121211,NULL,NULL,'AAAA');
INSERT INTO speeds VALUES (37,12,148,20040823145110,NULL,NULL,'Z2A1R');
INSERT INTO speeds VALUES (38,12,159,20040823145118,NULL,NULL,'Z2A1R');
INSERT INTO speeds VALUES (32,13,74,20040823142950,NULL,NULL,'C2P3');
INSERT INTO speeds VALUES (33,13,89,20040823142959,NULL,NULL,'C2P3');
INSERT INTO speeds VALUES (34,13,92,20040823143059,NULL,NULL,'C2P3');
INSERT INTO speeds VALUES (35,3,96,20040823143336,NULL,NULL,'C1D2F');
INSERT INTO speeds VALUES (36,14,74,20040823143347,NULL,NULL,'BB2A');
INSERT INTO speeds VALUES (39,13,54,20040825162020,NULL,NULL,'C2P3');
UNLOCK TABLES;

