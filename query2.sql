use `teqip_prod`;


/*Table structure for table `academic_cycle` */
SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `academic_cycle`;

CREATE TABLE `academic_cycle` (
  `id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(195) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `visibility` tinyint(4) DEFAULT '1',
  `update_disabled` tinyint(4) DEFAULT '0',
  `sort_order` tinyint(4) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `academic_cycle` */

insert  into `academic_cycle`(`id`,`code`,`name`,`description`,`status`,`visibility`,`update_disabled`,`sort_order`,`created_at`,`updated_at`,`created_by`,`updated_by`,`updated`) values 

('AUGUST','AUGUST','AUGUST','AUGUST',1,1,0,NULL,NULL,NULL,NULL,NULL,'2021-01-10 20:22:33'),

('DECEMBER','DECEMBER','DECEMBER','DECEMBER',1,1,0,NULL,NULL,NULL,NULL,NULL,'2021-01-10 20:22:37'),

('JANUARY','JANUARY','JANUARY','JANUARY',1,1,0,NULL,NULL,NULL,NULL,NULL,'2021-01-10 20:22:40'),

('JULY','JULY','JULY','JULY',1,1,0,NULL,NULL,NULL,NULL,NULL,'2021-01-10 20:22:45');

/*Table structure for table `adm_cycle` */

DROP TABLE IF EXISTS `adm_cycle`;

CREATE TABLE `adm_cycle` (
  `id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0',
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `adm_cycle` */

insert  into `adm_cycle`(`id`,`name`,`status`,`created_at`,`updated_at`,`created_by`,`updated_by`,`updated`) values 

('JULY','JULY',1,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `core_course_program` */

DROP TABLE IF EXISTS `core_course_program`;

CREATE TABLE `core_course_program` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(3) unsigned DEFAULT '1',
  `visible` tinyint(3) unsigned DEFAULT '1',
  `description` text COLLATE utf8_unicode_ci,
  `created_at` int(10) unsigned DEFAULT NULL,
  `updated_at` int(10) unsigned DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `core_course_program` */

insert  into `core_course_program`(`id`,`title`,`status`,`visible`,`description`,`created_at`,`updated_at`,`created_by`,`updated_by`) values 

(1,'B.A (H)',1,1,'Bachelor of Arts (Honours)',NULL,NULL,NULL,NULL),

(2,'B.A (P)',1,1,'Bachelor of Arts (Programme)',NULL,NULL,NULL,NULL),

(3,'B.Com (H)',1,1,'Bachelor of Commerce (Honours)',NULL,NULL,NULL,NULL),

(4,'B.Com (P)',1,1,'Bachelor of Commerce (Program)',NULL,NULL,NULL,NULL),

(5,'B.Sc (H)',1,1,'Bachelor of Science (Honours)',NULL,NULL,NULL,NULL),

(6,'B.Sc (P)',1,1,'Bachelor of Science (Program)',NULL,NULL,NULL,NULL),

(7,'Bachelor',1,1,'Bachelors Programme',NULL,4294967295,NULL,NULL),

(8,'M.A.',1,1,'',NULL,4294967295,NULL,NULL),

(9,'M.Com.',1,1,'',NULL,4294967295,NULL,NULL),

(10,'M.Sc.',1,1,'',NULL,4294967295,NULL,NULL),

(11,'B.A.(Voc)',1,1,'',NULL,4294967295,NULL,NULL),

(12,'B.P.Ed',1,1,'',NULL,4294967295,NULL,NULL),

(13,'Diploma',1,1,'',NULL,4294967295,NULL,NULL),

(14,'B.Voc',1,1,'',NULL,4294967295,NULL,NULL),

(16,'MBA',1,1,'Management Course',NULL,4294967295,NULL,NULL),

(17,'M.Phil.-Ph.D Programme',1,1,'Integrated M.Phil.-Ph.D Programme\r\n',NULL,4294967295,NULL,NULL),

(18,'Integrated M.Sc',1,1,'Integrated M.Sc',NULL,4294967295,NULL,NULL),

(19,'Integrated B.A. B. Ed.',1,1,'',NULL,4294967295,NULL,NULL),

(20,'M. Ed.',1,1,'',NULL,4294967295,NULL,NULL),

(21,'M.A./M.Sc.',1,1,'',NULL,4294967295,NULL,NULL),

(22,'M.Tech',1,1,'',NULL,4294967295,NULL,NULL),

(23,'Integrated M.A',1,1,'',NULL,4294967295,NULL,NULL),

(24,'Integrated B.Sc. B. Ed.',1,1,'',NULL,4294967295,NULL,NULL),

(26,'B.Tech',1,1,'kjdslfgh',NULL,4294967295,NULL,NULL);

/*Table structure for table `core_course_stream` */

DROP TABLE IF EXISTS `core_course_stream`;

CREATE TABLE `core_course_stream` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(3) unsigned DEFAULT '1',
  `visible` tinyint(3) unsigned DEFAULT '1',
  `description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `core_course_stream` */

insert  into `core_course_stream`(`id`,`title`,`status`,`visible`,`description`,`created_at`,`updated_at`,`created_by`,`updated_by`) values 

(1,'Arts & Humanities',1,1,'Arts & Humanities',NULL,NULL,NULL,NULL),

(2,'Commerce',1,1,'Commerce',NULL,NULL,NULL,NULL),

(3,'Science',1,1,'Science',NULL,NULL,NULL,NULL),

(4,'Social Sciences',1,1,'Social Sciences',NULL,NULL,NULL,NULL),

(6,'Management',1,1,'Management Courses',NULL,NULL,NULL,NULL),

(7,'Research Programme',1,1,'',NULL,NULL,NULL,NULL),

(8,'Computer Science',1,1,'jksajlkl;sgh',NULL,NULL,NULL,NULL);

/*Table structure for table `core_course_type` */

DROP TABLE IF EXISTS `core_course_type`;

CREATE TABLE `core_course_type` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `short_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `status` tinyint(4) unsigned DEFAULT '1',
  `visible` tinyint(4) unsigned DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `core_course_type` */

insert  into `core_course_type`(`id`,`title`,`short_code`,`description`,`status`,`visible`,`created_at`,`updated_at`,`created_by`,`updated_by`) values 

(1,'Undergraduate','UG ','UG Degree Course\r\ntest',1,1,NULL,NULL,NULL,NULL),

(2,'Post-Graduate','PG','PG Degree Course',1,1,NULL,NULL,NULL,NULL),

(3,'Diploma','DP','Diploma Course',1,1,NULL,NULL,NULL,NULL),

(4,'Certificate','CR','Certificate Course',1,1,NULL,NULL,NULL,NULL),

(5,'Five Year Integrated Programme','V Year','Five Year Integrates Course',1,1,NULL,'2017-12-30 12:54:20',NULL,NULL),

(7,'M.Phil.-Ph.D Programme','MPHD','Integrated M.Phil.-Ph.D Programme',1,1,NULL,'2019-06-17 12:08:42',NULL,NULL),

(9,'PG Course','PGC','adgfj',1,1,NULL,'2019-07-09 04:52:41',NULL,NULL);

/*Table structure for table `core_enrolled_status_of_student` */

DROP TABLE IF EXISTS `core_enrolled_status_of_student`;

CREATE TABLE `core_enrolled_status_of_student` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `update_disabled` tinyint(3) unsigned DEFAULT '0',
  `created_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `ip` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `core_enrolled_status_of_student` */

insert  into `core_enrolled_status_of_student`(`id`,`name`,`status`,`update_disabled`,`created_at`,`created_by`,`updated_at`,`updated_by`,`ip`) values 

(1,'Ex-Student',1,0,1570437424,214,1570437424,214,'::1'),

(2,'Enrolled',1,0,1570437434,214,1570437434,214,'::1'),

(3,'Dropped',1,0,1570437445,214,1570437445,214,'::1');

/*Table structure for table `core_evaluation_criteria` */

DROP TABLE IF EXISTS `core_evaluation_criteria`;

CREATE TABLE `core_evaluation_criteria` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(3) unsigned DEFAULT '1',
  `visible` tinyint(3) unsigned DEFAULT '1',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `core_evaluation_criteria` */

insert  into `core_evaluation_criteria`(`id`,`title`,`short_code`,`status`,`visible`,`description`,`created_at`,`updated_at`,`created_by`,`updated_by`) values 

(1,'Percentage','%',1,1,'',NULL,NULL,NULL,NULL),

(2,'Grade','CGPA',1,1,NULL,NULL,NULL,NULL,NULL),

(4,'Points Based','PB',1,1,'',NULL,'2019-07-09 05:47:46',NULL,NULL),

(5,'Credit based','CB',1,1,'Programme has credit-based criteria',NULL,NULL,NULL,NULL);

/*Table structure for table `core_master_programs` */

DROP TABLE IF EXISTS `core_master_programs`;

CREATE TABLE `core_master_programs` (
  `id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abbreviated` varchar(198) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expanded` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `program_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `broad_discipline` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `program_level` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `short_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `minimum_duration_year` decimal(10,2) DEFAULT NULL,
  `minimum_duration_month` decimal(10,2) DEFAULT NULL,
  `entry_qualification` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `gazette` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `update_disabled` tinyint(4) DEFAULT '0',
  `status` tinyint(4) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `ip` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `program_type` (`program_type`),
  KEY `broad_discipline` (`broad_discipline`),
  KEY `program_level` (`program_level`),
  CONSTRAINT `core_master_programs_ibfk_1` FOREIGN KEY (`program_type`) REFERENCES `core_program_type` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `core_master_programs_ibfk_2` FOREIGN KEY (`broad_discipline`) REFERENCES `core_program_discipline` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `core_master_programs_ibfk_3` FOREIGN KEY (`program_level`) REFERENCES `core_program_level` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `core_master_programs` */

insert  into `core_master_programs`(`id`,`abbreviated`,`expanded`,`program_type`,`broad_discipline`,`program_level`,`short_code`,`title`,`minimum_duration_year`,`minimum_duration_month`,`entry_qualification`,`gazette`,`update_disabled`,`status`,`created_at`,`updated_at`,`created_by`,`updated_by`,`ip`) values 

('ANPRNGT','Anu Parangat','Anu Parangat','DEGREE','MS','POSTMASTER','Anu Parangat','Anu Parangat',1.00,NULL,'Master\'s','',0,1,1569227313,1571664154,214,214,'::1'),

('ARVDCHRYA','Ayurvedacharya',' Ayurvedacharya','DEGREE','MS','BACHELOR','Ayurvedacharya','Ayurvedacharya',5.00,NULL,'10+2','',0,1,1569227377,1571664103,214,214,'::1'),

('AYRVDVSPT','Ayurveda Vachaspati','Ayurveda Vachaspati','DEGREE','MS','POSTMASTER','Ayurveda Vachaspati','Ayurveda Vachaspati',3.00,NULL,'Master\'s','',0,1,1569227259,1571664285,214,214,'::1'),

('BA','BA','Bachelor of Arts','DEGREE','AHS','BACHELOR',NULL,NULL,3.00,36.00,'','',0,1,1571751110,1571751110,214,214,'::1'),

('BAH','B.A.(Hons)','Bachelor of Arts(Hons)','DEGREE','AHS','BACHELOR','BA/B.A. (Hons)','Bachelor of Arts/Bachelor of Arts(Hons)',3.00,NULL,'10+2','',0,1,1569227168,1571751062,214,214,'::1'),

('BAJ','BA(Journalism)','Bachelor of Arts(Journalism)','DEGREE','JC','BACHELOR','BA(Journalism)','Bachelor of Arts(Journalism)',3.00,NULL,'10+2','',0,1,1569226250,1571667278,214,214,'10.107.102.52'),

('BAMBIM','BAM/BIM','Bachelor of Ayurvedic Medicine & Surgery','DEGREE','MS','BACHELOR',NULL,NULL,5.00,60.00,'10+2','',0,1,1571723258,1571723258,214,214,'10.107.105.203'),

('BAMS','BAMS','Bachelor of Ayurvedic Medicine & Surgery','DEGREE','MS','BACHELOR','BAMS','Bachelor of Ayurvedic Medicine & Surgery',5.00,NULL,'10+2','',0,1,1569230287,1571662814,214,214,'::1'),

('BARCH','B.Arch','Bachelor of Architecture','DEGREE','EG','BACHELOR','B. Arch','Bachelor of Architecture',5.00,NULL,'10+2','',0,1,1569240405,1571652111,214,214,'10.107.105.203'),

('BASC','B.S.Sc','Bachelor of Arts (Social Science)','DEGREE','AHS','BACHELOR','B.S.Sc.','Bachelor of Arts (Social Science)',3.00,NULL,'10+2','',0,1,1569229659,1571663295,214,214,'::1'),

('BASLP','B.ASLP','Bachelor in Audiology and Speech Language Pathology','DEGREE','RS','BACHELOR','B.ASLP','Bachelor in Audiology and Speech Language Pathology',4.00,NULL,'10+2','',0,1,1569234935,1571650358,214,214,'10.107.105.203'),

('BAUU','B.Az.','Afzal-Ul-Ulma','DEGREE','SDU','BACHELOR','B. AU. ','Afzal-Ul-Ulma ',3.00,NULL,'10+2 (Alim /Afzal-Ul-Ulma Preliminary)','',0,1,1569242335,1571653913,214,214,'10.107.105.203'),

('BBA','BBA','Bachelor of Business Administration','DEGREE','BA','BACHELOR','BBA','Bachelor of Business Administration',3.00,NULL,'10+2','',0,1,1569231860,1571658633,214,214,'10.107.105.203'),

('BBSBBMBBE','BBS/BBM/BBE','BBA OR B.COM OR B.COM (HONS)','DEGREE','BA','BACHELOR','BBS/BBM/BBE','BBA OR B.COM OR B.COM (HONS)',3.00,NULL,'10+2','',0,1,1569242078,1571653460,214,214,'10.107.105.203'),

('BCA','BCA','Bachelor of Computer Applications','DEGREE','SC','BACHELOR','BCA','Bachelor of Computer Applications',3.00,NULL,'10+2','',0,1,1569238697,1571651724,214,214,'10.107.105.203'),

('BCE','BCE','Bachelor of Technology/ Bachelor of Engineering(Civil Engineering)','DEGREE','EG','BACHELOR','BCE','Bachelor of Technology/ Bachelor of Engineering(Civil Engineering)',4.00,NULL,'10+2','',0,1,1569241092,1571652721,214,214,'10.107.105.203'),

('BCHE','B.Ch.E.',' Bachelor of Technology/ Bachelor of Engineering(Chemical Engineering)','DEGREE','EG','BACHELOR','B. Ch. E. ','Bachelor of Technology/ Bachelor of Engineering(Chemical Engineering)',4.00,NULL,'10+2','',0,1,1569240981,1571652622,214,214,'10.107.105.203'),

('BCHMTECH','B.Chem.Tech','Bachelor of Technology/ Bachelor of Engineering(Chemical Technology)','DEGREE','EG','BACHELOR','B. Chem. Tech','Bachelor of Technology/ Bachelor of Engineering(Chemical Technology)',4.00,NULL,'10+2','',0,1,1569241045,1571652696,214,214,'10.107.105.203'),

('BCL','BCL','LLB(Civil Law) or  LLB(Commercial Law)','DEGREE','LAW','BACHELOR','BCL','LLB(Civil Law) or as LLB(Commercial Law), as the case may be',3.00,NULL,'Bachelor\'s','',0,1,1569231272,1571725356,214,214,'10.107.0.130'),

('BCOM','B.Com','Bachelor of Commerce','DEGREE','BA','BACHELOR',NULL,NULL,3.00,36.00,'10+2','',0,1,1571750748,1571750748,214,214,'::1'),

('BCOMH','B.Com(Hons)','Bachelor of Commerce(Hons)','DEGREE','BA','BACHELOR','B.Com/B.Com(Hons)','Bachelor of Commerce/Bachelor of Commerce(Hons)',3.00,NULL,'10+2','',0,1,1569231695,1571750522,214,214,'::1'),

('BDANCE','B.Dance','Bachelor of Performing Arts(Dance) / Bachelor of Fine Arts(Dance)','DEGREE','FA','BACHELOR','B.Dance','BPA(Dance) / BFA(Dance)',4.00,NULL,'10+2','',0,1,1569243945,1571655474,214,214,'10.107.105.203'),

('BDES','B.Des.','Bachelor of Design','DEGREE','EG','BACHELOR','B. Des','Bachelor of Design',4.00,NULL,'10+2','',0,1,1569240814,1571652411,214,214,'10.107.105.203'),

('BDS','BDS','Bachelor of Dental Surgery','DEGREE','MS','BACHELOR','BDS','Bachelor of Dental Surgery',5.00,NULL,'10+2','',0,1,1569227198,1571664517,214,214,'::1'),

('BE','BE','Bachelor of Engineering','DEGREE','EG','BACHELOR','BE','Bachelor of Engineering',4.00,NULL,'10+2','',0,1,1569240304,1571652063,214,214,'10.107.105.203'),

('BED','B.Ed','Bachelor of Education','DEGREE','ED','BACHELOR','B.ED','Bachelor of Education',1.00,NULL,'Bachelor\'s','',0,1,1569229956,1571723127,214,214,'10.107.0.130'),

('BEDSED','B.Ed. Spl. Ed.','Bachelor of Education -  Special Education','DEGREE','RS','BACHELOR','B.Ed. Spl. Ed.','Bachelor of Education -  Special Education',1.00,NULL,'Bachelor\'s','',0,1,1569233869,1571650180,214,214,'10.107.105.203'),

('BEE','BEE','Bachelor of Technology/ Bachelor of Engineering(Electrical Engineering)','DEGREE','EG','BACHELOR','BEE','Bachelor of Technology/ Bachelor of Engineering(Electrical Engineering)',4.00,NULL,'10+2','',0,1,1569241147,1571652742,214,214,'10.107.105.203'),

('BELED','B.El.Ed','Bachelor of Elementary Education','DEGREE','ED','BACHELOR','B.El.Ed','Bachelor of Elementary Education',4.00,NULL,'10+2','',0,1,1569230233,1571723283,214,214,'10.107.0.130'),

('BFA','BFA','Bachelor of Fine Arts','DEGREE','FA','BACHELOR','BFA','Bachelor of Fine Arts',4.00,NULL,'10+2','',0,1,1569243095,1571655193,214,214,'10.107.105.203'),

('BFAZ','B.Faz.','Fazil','DEGREE','SDU','BACHELOR','B. Fz.','Fazil',3.00,NULL,'10+2 (Alim /Afzal-Ul-Ulema Preliminary)','',0,1,1569242281,1571653749,214,214,'10.107.105.203'),

('BFSC','B.F.Sc.','Bachelor of Fisheries science','DEGREE','AG','BACHELOR','B.F.Sc.','Bachelor of Fisheries science',4.00,NULL,'10+2','',0,1,1569224956,1571654162,214,214,'10.107.105.203'),

('BGL','BGL','LLB (General Law)','DEGREE','LAW','BACHELOR','BGL','LLB (General Law)',3.00,NULL,'Bachelor\'s','',0,1,1569231384,1571658972,214,214,'10.107.105.203'),

('BHM','BHM','Bachelor\'s of Hotel Management','DEGREE','HM','BACHELOR','BHM','Bachelor\'s of Hotel Management',4.00,NULL,'10+2','',0,1,1569244205,1571655996,214,214,'10.107.105.203'),

('BHMCT','BHMCT','Bachelor of Hotel Management & Catering Technology','DEGREE','HM','BACHELOR',NULL,NULL,4.00,48.00,'10+2','',0,1,1571727984,1571728222,214,214,'10.107.0.130'),

('BHMS','BHMS','Bachelor of Homeopathic Medicine & Surgery','DEGREE','MS','BACHELOR','BHMS','Bachelor of Homeopathic Medicine & Surgery',5.00,NULL,'10+2','',0,1,1569230793,1571662067,214,214,'::1'),

('BHMTT','BHMTT','Bachelor of Tourism &Travel Management(BTTM)/Bachelor of Hotel Management & Catering Technology)BHMCT/Bachelor of Hotel Management(BHM','DEGREE','HM','BACHELOR',NULL,NULL,4.00,48.00,'10+2','',0,1,1571728880,1571728880,214,214,'10.107.105.203'),

('BHTM','BHTM','Bachelor of Hotel Management(BHM)/Bachelor of Hotel Management & Catering Technology(BHMCT)/Bachelor of Tourism &Travel Management(BTTM)','DEGREE','HM','BACHELOR',NULL,NULL,4.00,48.00,'10+2','',0,1,1571728610,1571728955,214,214,'10.107.105.203'),

('BIBF','BIBF','BBA OR B.COM (International Business & Finance)','DEGREE','BA','BACHELOR','BIBF','BBA OR B.COM (International Business & Finance)',3.00,NULL,'10+2','',0,1,1569242130,1571653423,214,214,'10.107.105.203'),

('BID','B.I.D','Bachelor of Interior Design','DEGREE','EG','BACHELOR','B.I.D.','Bachelor of Interior Design',4.00,NULL,'10+2','',0,1,1569240706,1571652355,214,214,'10.107.105.203'),

('BJ','BJ','Bachelor of Journalism','DEGREE','JC','BACHELOR','BJ','Bachelor of Journalism',1.00,NULL,'Bachelor\'s','',0,1,1569226139,1571656617,214,214,'10.107.105.203'),

('BJMC','BA(Journalism & Mass Communication)','Bachelor of Arts(Journalism & Mass Communication)','DEGREE','JC','BACHELOR','BJMC/BMC','Bachelor of Arts(Journalism & Mass Communication)',3.00,NULL,'10+2','',0,1,1569226572,1571666622,214,214,'::1'),

('BKL','B.Kl.','Kamil','DEGREE','SDU','MASTER','M. Kl.','Kamil',2.00,NULL,'Fazil /Afzal-Ul-Ulma (BA)','',0,1,1569242408,1571653956,214,214,'10.107.105.203'),

('BL','BL','Bachelor of Law','DEGREE','LAW','BACHELOR',NULL,NULL,3.00,36.00,'Bachelor\'s','',0,1,1571721590,1571721590,214,214,'10.107.105.203'),

('BLIBISC','B.Lib.I.Sc.','Bachelor of Library & Information Sciences','DEGREE','LIS','BACHELOR','B.lib. l. Sc.','Bachelor of Library & Information Sciences',1.00,NULL,'Bachelor\'s','',0,1,1569242892,1571654411,214,214,'10.107.105.203'),

('BLIBSC','B.Lib.Sc.','BACHELOR OF LIBRARY SCIENCES','DEGREE','LIS','BACHELOR','B.LIB.SC.','BACHELOR OF LIBRARY SCIENCES',1.00,NULL,'BACHELOR\'S','',0,1,1569242778,1571654347,214,214,'10.107.105.203'),

('BLIT','B.Lit','Bachelor of Arts (Literature)','DEGREE','AHS','BACHELOR','B.Lit.','Bachelor of Arts (Literature)',3.00,NULL,'10+2','',0,1,1569227725,1571663751,214,214,'::1'),

('BMM','BMM','Bachelor of Arts/Science (Multimedia)','DEGREE','JC','BACHELOR','BMM','Bachelor of Arts/Science (Multimedia)',3.00,NULL,'10+2','',0,1,1569226696,1571666299,214,214,'::1'),

('BMS','BMS','Bachelor of Management Studies','DEGREE','BA','BACHELOR','BMS','Bachelor of Management Studies',3.00,NULL,'10+2','',0,1,1569241927,1571653158,214,214,'10.107.105.203'),

('BMUS','B.Mus.','Bachelor of Performing Arts(Music)/Bachelor of Fine Arts(Music)','DEGREE','FA','BACHELOR','B. Mus.','BPA(Music)/BFA(Music)',4.00,NULL,'10+2','',0,1,1569244100,1571655751,214,214,'10.107.105.203'),

('BNATAYU','B.Nat(Ayu)','Bachelor of Naturopathy & Yogic Sciences','DEGREE','MS','BACHELOR',NULL,NULL,5.00,60.00,'10+2','',0,1,1571723306,1571723306,214,214,'10.107.105.203'),

('BNATYOGIC','B.Nat(Yogic)','Bachelor of Naturopathy & Yogic Sciences','DEGREE','MS','BACHELOR',NULL,NULL,5.00,60.00,'10+2','',0,1,1571723335,1571723335,214,214,'10.107.105.203'),

('BNYS','BNYS','Bachelor of Naturopathy & Yogic Sciences','DEGREE','MS','BACHELOR','B. Nat(Yogic)','Bachelor of Naturopathy & Yogic Sciences',5.00,NULL,'10+2','',0,1,1569237052,1571650885,214,214,'10.107.105.203'),

('BOL','BOL','Bachelor of Arts(Oriental Learning)','DEGREE','AHS','BACHELOR','BOL','Bachelor of Arts(Oriental Learning)',3.00,NULL,'10+2','',0,1,1569227847,1571663621,214,214,'::1'),

('BOPTOM','B.Optom','Bachelor of Optometry','DEGREE','MS','BACHELOR','B.Optom','Bachelor of Optometry',4.00,NULL,'10+2','',0,1,1569232383,1571658157,214,214,'10.107.105.203'),

('BOT','BOT','Bachelor of Occupational Therapy','DEGREE','MS','BACHELOR','BOT','Bachelor of Occupational Therapy',4.00,NULL,'10+2','',0,1,1569232531,1571657746,214,214,'10.107.105.203'),

('BPA','BPA','Bachelor of Performing Arts','DEGREE','FA','BACHELOR','BPA','Bachelor of Performing Arts',4.00,NULL,'10+2','',0,1,1569243297,1571655396,214,214,'10.107.105.203'),

('BPE','BPE','Bachelor of Physical Education(BPEd)','DEGREE','ED','BACHELOR',NULL,NULL,1.00,12.00,'Bachelor\'s','',0,1,1571720808,1571720953,214,214,'10.107.105.203'),

('BPED','BPED','Bachelor of Physical Education','DEGREE','ED','BACHELOR','BPED','Bachelor of Physical Education',1.00,NULL,'Bachelor\'s','',0,1,1569230547,1571662581,214,214,'::1'),

('BPHARM','B.Pharm.','Bachelor of Pharmacy','DEGREE','MS','BACHELOR','B. Pharm.','Bachelor of Pharmacy',4.00,NULL,'10+2','',0,1,1569233484,1571657306,214,214,'10.107.105.203'),

('BPHAYU','B.Pharm(Ayu)','Bachelor of Pharmacy(Ayurveda)','DEGREE','MS','BACHELOR','B. Pharm.(Ayu)','Bachelor of Pharmacy(Ayurveda)',4.00,NULL,'10+2','',0,1,1569233547,1571656771,214,214,'10.107.105.203'),

('BPLAN','B.Plan','Bachelor of Planning','DEGREE','EG','BACHELOR','B. Plan','Bachelor of Planning',4.00,NULL,'10+2','',0,1,1569240527,1571652302,214,214,'10.107.105.203'),

('BPO','B.P.O.','Bachelor in Prosthetics & Orthotics','DEGREE','RS','BACHELOR','B.P.O. ','Bachelor in Prosthetics & Orthotics',4.00,NULL,'10+2','',0,1,1569234768,1571650267,214,214,'10.107.105.203'),

('BPS','BPS','Bachelor of Arts(Population Studies)','DEGREE','AHS','BACHELOR','BPS','Bachelor of Arts(Population Studies)',3.00,NULL,'10+2','',0,1,1569229359,1571663546,214,214,'::1'),

('BPT','BPT','Bachelor of Physiotherapy','DEGREE','MS','BACHELOR','BPT','Bachelor of Physiotherapy',4.00,NULL,'10+2','',0,1,1569233189,1571657644,214,214,'10.107.105.203'),

('BRS','BRS','Bachelor of Rural studies','DEGREE','AHS','BACHELOR','BRS','Bachelor of Rural studies',3.00,NULL,'10+2','',0,1,1569227597,1571722892,214,214,'10.107.0.130'),

('BRSC','B.R.Sc.','Bachelor in Rehabilitation Science','DEGREE','RS','BACHELOR','B. R. Sc. ','Bachelor in Rehabilitation Science',3.00,NULL,'10+2','',0,1,1569235198,1571650449,214,214,'10.107.105.203'),

('BSC','B.Sc.','Bachelor of Science','DEGREE','SC','BACHELOR',NULL,NULL,3.00,36.00,'10+2','',0,1,1571749598,1571749598,214,214,'::1'),

('BSCAG','B.Sc. (Agriculture)','Bachelor of Science (Agriculture)','DEGREE','AG','BACHELOR','B.Sc (Agriculture)','Bachelor of Science (Agriculture)',4.00,NULL,'10+2','',0,1,NULL,1571666584,NULL,214,'::1'),

('BSCH','B.Sc.(Hons)','Bachelor of Science(Hons)','DEGREE','SC','BACHELOR','B.Sc./B.Sc.(Hons)','Bachelor of Science/Bachelor of Science(Hons)',3.00,NULL,'10+2','',0,1,1569238299,1571749538,214,214,'::1'),

('BSCN','B.Sc.(Nursing)','Bachelor of Science(Nursing)','DEGREE','MS','BACHELOR','B.Sc.(Nursing)','Bachelor of Science(Nursing)',4.00,NULL,'10+2','',0,1,1569232292,1571658412,214,214,'10.107.105.203'),

('BSCS','B.Sc. (Sericulture)','Bachelor of Science (Sericulture)','DEGREE','AG','BACHELOR','B.Sc.(Sericulture)','Bachelor of Science (Sericulture)',4.00,NULL,'10+2','',0,1,1569224570,1571651812,214,214,'10.107.105.203'),

('BSCTR','B.Sc.(Trauma Care Management)','Bachelor of Science (Trauma Care Management)','DEGREE','MS','BACHELOR',NULL,NULL,4.00,48.00,'10+2','',0,1,1571723014,1571723014,214,214,'10.107.105.203'),

('BSHT','B.Sht.','Bachelor of Shastri/Shastri(Hons.)','DEGREE','SSD','BACHELOR','B. Sh.','Bachelor of Shastri/Shastri(Hons.)',3.00,NULL,'10+2','',0,1,1569241668,1571652949,214,214,'10.107.105.203'),

('BSMS','BSMS','Bachelor of Siddha Medicine & Surgery','DEGREE','MS','BACHELOR','BSMS','Bachelor of Siddha Medicine & Surgery',5.00,NULL,'10+2','',0,1,1569230092,1571663032,214,214,'::1'),

('BSS','BSS','Bachelor of Arts(Social Studies)','DEGREE','AHS','BACHELOR','BSS','Bachelor of Arts(Social Studies)',3.00,NULL,'10+2','',0,1,1569229544,1571663340,214,214,'::1'),

('BSSC','B.S.Sc.','Bachelor of Science (Sanitary Sciences)','DEGREE','SC','BACHELOR','B. S. Sc.','Bachelor of Science (Sanitary Sciences)',3.00,NULL,'10+2','',0,1,1569239350,1571721935,214,214,'10.107.105.203'),

('BSSHT','B.Ss.Sht.','Bachelor of Shiksha Shastri','DEGREE','SSD','BACHELOR','B. SK.','Bachelor of Shiksha Shastri',1.00,NULL,'Bachelor\'s','',0,1,1569241788,1571653044,214,214,'10.107.105.203'),

('BSTAT','B.Stat','Bachelor of Statistics','DEGREE','SC','BACHELOR','B. Stat','Bachelor of Statistics',3.00,NULL,'10+2','',0,1,1569238935,1571651885,214,214,'10.107.105.203'),

('BSTCM','BS(Trauma Care Management)','Bachelor of Science (Trauma Care Management)','DEGREE','MS','BACHELOR','B.Sc.(Trauma Care Management)','Bachelor of Science (Trauma Care Management)',4.00,NULL,'10+2','',0,1,1569233339,1571657559,214,214,'10.107.105.203'),

('BSW','BSW','Bachelor of Social Work','DEGREE','AHS','BACHELOR','BSW','Bachelor of Social Work',3.00,NULL,'10+2','',0,1,1569227378,1571668742,214,214,'10.107.0.158'),

('BTA','BTA','Bachelor of Tourism &Travel Management(BTTM)/BBA(Torism & Travel)','DEGREE','HM','BACHELOR',NULL,NULL,4.00,48.00,'10+2','',0,1,1571728676,1571728676,214,214,'10.107.105.203'),

('BTECH','B.Tech','Bachelor of Technology','DEGREE','EG','BACHELOR','B.Tech','Bachelor of Technology',4.00,NULL,'10+2','',0,1,1569239473,1571652006,214,214,'10.107.105.203'),

('BTTM','BTTM','Bachelor of Tourism & Travel Management','DEGREE','HM','BACHELOR',NULL,NULL,4.00,48.00,'10+2','',0,1,1571728096,1571728285,214,214,'10.107.0.130'),

('BUMS','BUMS','Bachelor of Unani Medicine & Surgery','DEGREE','MS','BACHELOR','BUMS','Bachelor of Unani Medicine & Surgery',5.00,NULL,'10+2','',0,1,1569230940,1571661684,214,214,'::1'),

('BVA','BVA','Bachelor of Visual Arts','DEGREE','FA','BACHELOR','BVA','Bachelor of Visual Arts',4.00,NULL,'10+2','',0,1,1569243203,1571655327,214,214,'10.107.105.203'),

('BVOC','B.Voc.','Bachelor of Vocation','DEGREE','VE','BACHELOR','B.Voc.','Bachelor of Vocation',3.00,NULL,'10+2','',0,1,1569238189,1571651466,214,214,'10.107.105.203'),

('BVSC','B.V.Sc.','Bachelor of Veterinary science','DEGREE','AG','BACHELOR','B.V.Sc.','Bachelor of Veterinary science',4.00,NULL,'10+2','',0,1,1569224772,1571652822,214,214,'10.107.105.203'),

('CERT','CERT','Certificate','CERTIFICATE','CERT','CERTIFICATE',NULL,NULL,0.00,0.00,'','',0,1,1571744082,1571744705,214,214,'::1'),

('DIPLOMA','Diploma','Diploma','DIPLOMA','DIPLOMA','DIPLOMA',NULL,NULL,0.00,0.00,'','',0,1,1571745033,1571745033,214,214,'::1'),

('DL','DL','Doctor of Law','DEGREE','LAW','POSTPHD',NULL,NULL,2.00,24.00,'PhD','',0,1,1571721858,1571721858,214,214,'10.107.105.203'),

('DLITT','D.Litt.','Doctor of Literature(Agriculture)','DEGREE','AG','POSTDOCTORAL','D.Litt.','Doctor of Literature',0.00,NULL,'PhD','',0,1,1569223809,1571816044,214,214,'10.107.105.203'),

('DLITTAHSS','D.Litt.','Doctor of Literature(Arts)','DEGREE','AHS','POSTDOCTORAL','D.Litt.','Doctor of Literature',0.00,NULL,'PhD','',0,1,1569223809,1571816144,214,214,'10.107.105.203'),

('DLITTARTS','D.Litt.','Doctor of Literature(Fine Arts)','DEGREE','FA','POSTDOCTORAL','D.Litt.','Doctor of Literature',0.00,NULL,'PhD','',0,1,1569223809,1571816073,214,214,'10.107.105.203'),

('DLITTCOM','D.Litt.','Doctor of Literature(Business Administration)','DEGREE','BA','POSTDOCTORAL','D.Litt.','Doctor of Literature',0.00,NULL,'PhD','',0,1,1569223809,1571816164,214,214,'10.107.105.203'),

('DLITTED','D.Litt.','Doctor of Literature(Eductaion)','DEGREE','ED','POSTDOCTORAL','D.Litt.','Doctor of Literature',0.00,NULL,'PhD','',0,1,1569223809,1571816094,214,214,'10.107.105.203'),

('DLITTETAD','D.Litt.','Doctor of Literature(Engg)','DEGREE','EG','POSTDOCTORAL','D.Litt.','Doctor of Literature',0.00,NULL,'PhD','',0,1,1569223809,1571816334,214,214,'10.107.105.203'),

('DLITTHM','D.Litt.','Doctor of Literature(HM)','DEGREE','HM','POSTDOCTORAL','D.Litt.','Doctor of Literature',0.00,NULL,'PhD','',0,1,1569223809,1571816128,214,214,'10.107.105.203'),

('DLITTLAW','D.Litt.','Doctor of Literature(Law)','DEGREE','LAW','POSTDOCTORAL','D.Litt.','Doctor of Literature',0.00,NULL,'PhD','',0,1,1569223809,1571816186,214,214,'10.107.105.203'),

('DLITTLIS','D.Litt.','Doctor of Literature(Library)','DEGREE','LIS','POSTDOCTORAL','D.Litt.','Doctor of Literature',0.00,NULL,'PhD','',0,1,1569223809,1571816202,214,214,'10.107.105.203'),

('DLITTMC','D.Litt.','Doctor of Literature(Journalism)','DEGREE','JC','POSTDOCTORAL','D.Litt.','Doctor of Literature',0.00,NULL,'PhD','',0,1,1569223809,1571816220,214,214,'10.107.105.203'),

('DLITTMED','D.Litt.','Doctor of Literature(Medicine)','DEGREE','MS','POSTDOCTORAL','D.Litt.','Doctor of Literature',0.00,NULL,'PhD','',0,1,1569223809,1571816234,214,214,'10.107.105.203'),

('DLITTRS','D.Litt.','Doctor of Literature(Rehabilitation)','DEGREE','RS','POSTDOCTORAL','D.Litt.','Doctor of Literature',0.00,NULL,'PhD','',0,1,1569223809,1571816256,214,214,'10.107.105.203'),

('DLITTSAN','D.Litt.','Doctor of Literature(Sanskrit)','DEGREE','SSD','POSTDOCTORAL','D.Litt.','Doctor of Literature',0.00,NULL,'PhD','',0,1,1569223809,1571816270,214,214,'10.107.105.203'),

('DLITTSC','D.Litt.','Doctor of Literature(Sciences)','DEGREE','SC','POSTDOCTORAL','D.Litt.','Doctor of Literature',0.00,NULL,'PhD','',0,1,1569223809,1571816283,214,214,'10.107.105.203'),

('DLITTUPA','D.Litt','Doctor of Literature(Specification Degrees)','DEGREE','SDU','POSTDOCTORAL','D.Litt.','Doctor of Literature',0.00,NULL,'PhD','',0,1,1569223809,1571816300,214,214,'10.107.105.203'),

('DLITTVE','D.Litt','Doctor of Literature(Voc)','DEGREE','VE','POSTDOCTORAL','D.Litt.','Doctor of Literature',2.00,NULL,'PhD','',0,1,1569223809,1571816319,214,214,'10.107.105.203'),

('DM','DM','Doctor of Medicine','DEGREE','MS','POSTMASTER','MD','Doctor of Medicine ',3.00,NULL,'MASTER\'S','',0,1,1569225794,1571655802,214,214,'10.107.105.203'),

('DMUS','D.Mus.','Doctor of Philosophy(Fine Arts)','DEGREE','FA','DOCTORAL','D. Mus.','Doctor of Philosophy',2.00,NULL,'Master\'s','',0,1,1569244159,1571823338,214,214,'10.107.105.203'),

('DSC','D.Sc.','Doctor of Science(Agriculture)','DEGREE','AG','POSTDOCTORAL','D.Sc.','Doctor of Science',0.00,NULL,'PhD','',0,1,1569224010,1571816424,214,214,'10.107.105.203'),

('DSCAHSS','D.Sc.','Doctor of Science(Arts)','DEGREE','AHS','POSTDOCTORAL','D.Sc.','Doctor of Science',0.00,NULL,'PhD','',0,1,1569224010,1571816434,214,214,'10.107.105.203'),

('DSCARTS','D.Sc.','Doctor of Science(Fine Arts)','DEGREE','FA','POSTDOCTORAL','D.Sc.','Doctor of Science',0.00,NULL,'PhD','',0,1,1569224010,1571816446,214,214,'10.107.105.203'),

('DSCCOM','D.Sc.','Doctor of Science(Business Administration)','DEGREE','BA','POSTDOCTORAL','D.Sc.','Doctor of Science',0.00,NULL,'PhD','',0,1,1569224010,1571816465,214,214,'10.107.105.203'),

('DSCED','D.Sc.','Doctor of Science(Education)','DEGREE','ED','POSTDOCTORAL','D.Sc.','Doctor of Science',0.00,NULL,'PhD','',0,1,1569224010,1571816484,214,214,'10.107.105.203'),

('DSCETADN','D.Sc.','Doctor of Science(Engg)','DEGREE','EG','POSTDOCTORAL',NULL,NULL,0.00,0.00,'PhD','',0,1,1571727467,1571816497,214,214,'10.107.105.203'),

('DSCHM','D.Sc.','Doctor of Science(HM)','DEGREE','HM','POSTDOCTORAL','D.Sc.','Doctor of Science',0.00,NULL,'PhD','',0,1,1569224010,1571816508,214,214,'10.107.105.203'),

('DSCLAW','D.Sc.','Doctor of Science(Law)','DEGREE','LAW','POSTDOCTORAL','D.Sc.','Doctor of Science',0.00,NULL,'PhD','',0,1,1569224010,1571816521,214,214,'10.107.105.203'),

('DSCLIS','D.Sc.','Doctor of Science(Library)','DEGREE','LIS','POSTDOCTORAL','D.Sc.','Doctor of Science',0.00,NULL,'PhD','',0,1,1569224010,1571816532,214,214,'10.107.105.203'),

('DSCMC','D.Sc.','Doctor of Science(Journalism)','DEGREE','JC','POSTDOCTORAL','D.Sc.','Doctor of Science',0.00,NULL,'PhD','',0,1,1569224010,1571816548,214,214,'10.107.105.203'),

('DSCMED','D.Sc.','Doctor of Science(Medicine)','DEGREE','MS','POSTDOCTORAL','D.Sc.','Doctor of Science',0.00,NULL,'PhD','',0,1,1569224010,1571816559,214,214,'10.107.105.203'),

('DSCRS','D.Sc.','Doctor of Science(Rehabilitation)','DEGREE','RS','POSTDOCTORAL','D.Sc.','Doctor of Science',0.00,NULL,'PhD','',0,1,1569224010,1571816583,214,214,'10.107.105.203'),

('DSCSAN','D.Sc.','Doctor of Science(Sanskrit)','DEGREE','SSD','POSTDOCTORAL','D.Sc.','Doctor of Science',0.00,NULL,'PhD','',0,1,1569224010,1571816604,214,214,'10.107.105.203'),

('DSCSC','D.Sc.','Doctor of Science(Sciences)','DEGREE','SC','POSTDOCTORAL','D.Sc.','Doctor of Science',0.00,NULL,'PhD','',0,1,1569224010,1571816619,214,214,'10.107.105.203'),

('DSCUPA','D.Sc.','Doctor of Science(Specification Degrees)','DEGREE','SDU','POSTDOCTORAL','D.Sc.','Doctor of Science',0.00,NULL,'PhD','',0,1,1569224010,1571816635,214,214,'10.107.105.203'),

('DSCVE','D.Sc.','Doctor of Science(Voc)','DEGREE','VE','POSTDOCTORAL','D.Sc.','Doctor of Science',0.00,NULL,'PhD','',0,1,1569224010,1571816648,214,214,'10.107.105.203'),

('DVV','Doc.V.V.','Vidya Varidhi','DEGREE','SSD','DOCTORAL','Doc. VV.','Vidya Varidhi',2.00,NULL,'Master\'s','',0,1,1569242102,1571653325,214,214,'10.107.105.203'),

('INTGAAD','INTEGRATED DEGREE (Agriculture and Allied Disciplines)','INTEGRATED DEGREE (Agriculture and Allied Disciplines)','INTEGRATED','AG','MASTER',NULL,NULL,5.00,60.00,'','',0,1,1581480266,1581480943,214,214,'::1'),

('INTGAHSS','INTEGRATED DEGREE(Arts/Humanities/Social Sciences)','INTEGRATED DEGREE (Arts/Humanities/Social Sciences)','INTEGRATED','AHS','MASTER',NULL,NULL,5.00,60.00,'','',0,1,1581480302,1581480998,214,214,'::1'),

('INTGBBA','INTEGRATED DEGREE (Business Administration/Commerce/management/Finance)','INTEGRATED DEGREE (Business Administration/Commerce/management/Finance)','INTEGRATED','BA','MASTER',NULL,NULL,5.00,60.00,'','',0,1,1581480317,1581481027,214,214,'::1'),

('INTGENG','INTEGRATED DEGREE (Engineering/Technology/Architecture/Design)','INTEGRATED DEGREE (Engineering/Technology/Architecture/Design)','INTEGRATED','EG','MASTER',NULL,NULL,5.00,60.00,'','',0,1,1581480372,1581481088,214,214,'::1'),

('INTGET','INTEGRATED DEGREE (Education/Teachers Training)','INTEGRATED DEGREE (Education/Teachers Training)','INTEGRATED','ED','MASTER',NULL,NULL,5.00,60.00,'','',0,1,1581480361,1581481118,214,214,'::1'),

('INTGFA','INTEGRATED DEGREE (Fine Arts/Performing Arts/Visual Arts/Applied Arts)','INTEGRATED DEGREE (Fine Arts/Performing Arts/Visual Arts/Applied Arts)','INTEGRATED','FA','MASTER',NULL,NULL,5.00,60.00,'','',0,1,1581480380,1581481139,214,214,'::1'),

('INTGHM','INTEGRATED DEGREE (Hotel Management/Hospitality/Tourism/Travel)','INTEGRATED DEGREE (Hotel Management/Hospitality/Tourism/Travel)','INTEGRATED','HM','MASTER',NULL,NULL,5.00,60.00,'','',0,1,1581480388,1581481162,214,214,'::1'),

('INTGJM','INTEGRATED DEGREE (Journalism/Mass Communication/Media)','INTEGRATED DEGREE (Journalism/Mass Communication/Media)','INTEGRATED','JC','MASTER',NULL,NULL,5.00,60.00,'','',0,1,1581480397,1581481187,214,214,'::1'),

('INTGLI','INTEGRATED DEGREE (Library & Information Sciences)','INTEGRATED DEGREE (Library & Information Sciences)','INTEGRATED','LIS','MASTER',NULL,NULL,5.00,60.00,'','',0,1,1581480422,1581481231,214,214,'::1'),

('INTGMD','INTEGRATED DEGREE (Medicine & Surgery/ Ayurveda/ Unani / Homeopathy / Health & Allied Sciences / Paramedical / Nursing)','INTEGRATED DEGREE (Medicine & Surgery/ Ayurveda/ Unani / Homeopathy / Health & Allied Sciences / Paramedical / Nursing)','INTEGRATED','MS','MASTER',NULL,NULL,5.00,60.00,'','',0,1,1581480431,1581481262,214,214,'::1'),

('INTGRS','INTEGRATED DEGREE (Rehabilitation Sciences)','INTEGRATED DEGREE (Rehabilitation Sciences)','INTEGRATED','RS','MASTER',NULL,NULL,5.00,60.00,'','',0,1,1581480452,1581481310,214,214,'::1'),

('INTGSC','INTEGRATED DEGREE (Sciences)','INTEGRATED DEGREE (Sciences)','INTEGRATED','SC','MASTER',NULL,NULL,5.00,60.00,'','',0,1,1581480468,1581481332,214,214,'::1'),

('LLB','LLB','Bachelor of Law','DEGREE','LAW','BACHELOR','BL','Master\'s of Law',3.00,NULL,'Bachelor\'s','',0,1,1569231477,1571723654,214,214,'10.107.0.130'),

('LLD','L.L.D.','Doctor of Laws(Agriculture)','DEGREE','AG','POSTDOCTORAL','LLD.','Doctor of Laws',2.00,NULL,'PhD','',0,1,1569224091,1571823046,214,214,'10.107.105.203'),

('LLDAHSS','L.L.D.','Doctor of Laws(Arts)','DEGREE','AHS','POSTDOCTORAL','LLD.','Doctor of Laws',2.00,NULL,'PhD','',0,1,1569224091,1571823068,214,214,'10.107.105.203'),

('LLDARTS','L.L.D.','Doctor of Laws(Fine Arts)','DEGREE','FA','POSTDOCTORAL','LLD.','Doctor of Laws',2.00,NULL,'PhD','',0,1,1569224091,1571823085,214,214,'10.107.105.203'),

('LLDCOM','L.L.D.','Doctor of Laws(Business Administration)','DEGREE','BA','POSTDOCTORAL','LLD.','Doctor of Laws',2.00,NULL,'PhD','',0,1,1569224091,1571823125,214,214,'10.107.105.203'),

('LLDED','L.L.D.','Doctor of Laws(Education)','DEGREE','ED','POSTDOCTORAL','LLD.','Doctor of Laws',2.00,NULL,'PhD','',0,1,1569224091,1571823155,214,214,'10.107.105.203'),

('LLDETADN','L.L.D.','Doctor of Laws(Engg)','DEGREE','EG','POSTDOCTORAL',NULL,NULL,2.00,24.00,'PhD','',0,1,1571727498,1571823166,214,214,'10.107.105.203'),

('LLDHM','L.L.D.','Doctor of Laws(HM)','DEGREE','HM','POSTDOCTORAL','LLD.','Doctor of Laws',2.00,NULL,'PhD','',0,1,1569224091,1571823177,214,214,'10.107.105.203'),

('LLDL','LLD','Doctor of Law','DEGREE','LAW','POSTPHD','DL','Doctor of Law',2.00,NULL,'PhD','',0,1,1569231591,1571658855,214,214,'10.107.105.203'),

('LLDLAW','L.L.D.','Doctor of Laws(Law)','DEGREE','LAW','POSTDOCTORAL','LLD.','Doctor of Laws',2.00,NULL,'PhD','',0,1,1569224091,1571823192,214,214,'10.107.105.203'),

('LLDLIS','L.L.D.','Doctor of Laws(Library)','DEGREE','LIS','POSTDOCTORAL','LLD.','Doctor of Laws',2.00,NULL,'PhD','',0,1,1569224091,1571823207,214,214,'10.107.105.203'),

('LLDMC','L.L.D.','Doctor of Laws(Journalism)','DEGREE','JC','POSTDOCTORAL','LLD.','Doctor of Laws',2.00,NULL,'PhD','',0,1,1569224091,1571823219,214,214,'10.107.105.203'),

('LLDMED','L.L.D.','Doctor of Laws(Medicine)','DEGREE','MS','POSTDOCTORAL','LLD.','Doctor of Laws',2.00,NULL,'PhD','',0,1,1569224091,1571823235,214,214,'10.107.105.203'),

('LLDRS','L.L.D.','Doctor of Laws(Rehabilitation)','DEGREE','RS','POSTDOCTORAL','LLD.','Doctor of Laws',2.00,NULL,'PhD','',0,1,1569224091,1571823252,214,214,'10.107.105.203'),

('LLDSAN','L.L.D.','Doctor of Laws(Sanskrit)','DEGREE','SSD','POSTDOCTORAL','LLD.','Doctor of Laws',2.00,NULL,'PhD','',0,1,1569224091,1571823266,214,214,'10.107.105.203'),

('LLDSC','LLD.','Doctor of Laws(Sciences)','DEGREE','SC','POSTDOCTORAL','LLD.','Doctor of Laws',2.00,NULL,'PhD','',0,1,1569224091,1571823279,214,214,'10.107.105.203'),

('LLDUPA','LLD','Doctor of Laws(Specification Degrees)','DEGREE','SDU','POSTDOCTORAL','LLD.','Doctor of Laws',2.00,NULL,'PhD','',0,1,1569224091,1571823298,214,214,'10.107.105.203'),

('LLDVE','LLD','Doctor of Laws(Voc)','DEGREE','VE','POSTDOCTORAL','LLD.','Doctor of Laws',2.00,NULL,'PhD','',0,1,1569224091,1571823311,214,214,'10.107.105.203'),

('LLM','LLM','Master of Law','DEGREE','LAW','MASTER','ML','Master\'s of Law',2.00,NULL,'Bachelor\'s','',0,1,1569231522,1571658891,214,214,'10.107.105.203'),

('MA','MA','Master of Arts','DEGREE','AHS','MASTER','MA','Master of Arts',2.00,NULL,'Bachelor\'s','',0,1,1569227257,1571664414,214,214,'::1'),

('MACH','M.Ach.','Master of Acharya','DEGREE','SSD','MASTER','M. Ac','Master of Acharya',2.00,NULL,'Bachelor\'s','',0,1,1569241729,1571652988,214,214,'10.107.105.203'),

('MAE','MAE','Master of Science in Applied Epidemiology','DEGREE','MS','MASTER','MAE','Master of Science in Applied Epidemiology',2.00,NULL,'Bachelor\'s','',0,1,1569238060,1571655106,214,214,'10.107.105.203'),

('MAJ','MA(Journalism)','Master of Arts (Journalism)','DEGREE','JC','MASTER','MA (Journalism)','Master of Arts (Journalism)',2.00,NULL,'Bachelor\'s','',0,1,1569226336,1571667750,214,214,'10.107.102.52'),

('MAMS','MAMS','Doctor of Medicine(Ayurveda)','DEGREE','MS','MASTER',NULL,NULL,3.00,36.00,'Bachelor\'s','',0,1,1571723406,1571723406,214,214,'10.107.105.203'),

('MARCH','M.Arch','Master Of Architecture','DEGREE','EG','MASTER','M. Arch','Master Of Architecture',2.00,NULL,'Bachelor\'s','',0,1,1569240487,1571652136,214,214,'10.107.105.203'),

('MASLP','M.ASLP','Master in Audiology and Speech Language Pathology','DEGREE','RS','MASTER','M.ASLP','Master in Audiology and Speech Language Pathology',2.00,NULL,'B.ASLP','',0,1,1569235012,1571650394,214,214,'10.107.105.203'),

('MBA','MBA','Master of Buisness Administration','DEGREE','BA','MASTER','MBA','Master of Buisness Administration',2.00,NULL,'Bachelor\'s','',0,1,1569231903,1571658444,214,214,'10.107.105.203'),

('MBBS','MBBS','Bachelor of Medicine and Bachelor of Surgery','DEGREE','MS','BACHELOR','MBBS','Bachelor of Medicine and Bachelor of Surgery',5.00,NULL,'10+2','',0,1,1569233611,1571656672,214,214,'10.107.105.203'),

('MBE','MBE','MA/MBA/M.COM (BUSINESS ECONOMICS)','DEGREE','BA','MASTER','MBE','MA/MBA/M.COM (BUSINESS ECONOMICS)',2.00,NULL,'BACHELOR\'S','',0,1,1569242567,1571654305,214,214,'10.107.105.203'),

('MCA','MCA','Master of Computer Application','DEGREE','SC','MASTER','MCA','Master of Computer Application',3.00,NULL,'Bachelor\'s','',0,1,1569238879,1571651854,214,214,'10.107.105.203'),

('MCHMED','M.Ch.','Master of Chirurgiae','DEGREE','MS','POSTMASTER','M.Ch.','Master of Chirurgiae',3.00,NULL,'Master\'s','',0,1,1569226291,1571667528,214,214,'10.107.102.52'),

('MCOM','M.Com','Master of Commerce','DEGREE','BA','MASTER','M.Com','Master of Commerce',2.00,NULL,'Bachelor\'s','',0,1,1569231778,1571658687,214,214,'10.107.105.203'),

('MD','DM','Doctor of Medicine','DEGREE','MS','MASTER','DM','Doctor of Medicine ',3.00,NULL,'Master\'s','',0,1,1569226180,1571719750,214,214,'::1'),

('MDANCE','M.Dance','Master of Performing Arts(Dance)/ Master of Fine Arts(Dance)','DEGREE','FA','MASTER','M. Dance','MPA(Dance)/MFA(Dance)',2.00,NULL,'Bachelor\'s','',0,1,1569244062,1571727955,214,214,'10.107.0.130'),

('MDAR','MD(Ayurveda)','Doctor of Medicine(Ayurveda)','DEGREE','MS','MASTER','MD(Ayurveda)','Doctor of Medicine(Ayurveda)',3.00,NULL,'Bachelor\'s','',0,1,1569230443,1571662769,214,214,'::1'),

('MDES','M.Des.','Master of Design','DEGREE','EG','MASTER','M. Des.','Master of Design',2.00,NULL,'Bachelor\'s','',0,1,1569240853,1571652429,214,214,'10.107.105.203'),

('MDHMO','MD(HOM)','Doctor of Medicine(Homeo)','DEGREE','MS','MASTER','MHMS','Doctor of Medicine(Homeo)',3.00,NULL,'Bachelor\'s','',0,1,1569237566,1571651300,214,214,'10.107.105.203'),

('MDS','MDS','Master of Dental Surgery','DEGREE','MS','MASTER',NULL,NULL,3.00,36.00,'Bachelor\'s','',0,1,1571722871,1571722871,214,214,'10.107.105.203'),

('MDUNANI','MD(Unani)','Doctor of Medicine(Unani)','DEGREE','MS','MASTER','MD(Unani)','Doctor of Medicine(Unani)',3.00,NULL,'Bachelor\'s','',0,1,1569231028,1571727232,214,214,'10.107.105.203'),

('ME','ME','Master of Engineering','DEGREE','EG','MASTER','ME','Master of Engineering',2.00,NULL,'Bachelor\'s','',0,1,1569240359,1571652081,214,214,'10.107.105.203'),

('MED','M.Ed.','Master of Education','DEGREE','ED','MASTER','M.Ed.','Master of Education',1.00,NULL,'B.Ed.','',0,1,1569230454,1571723317,214,214,'10.107.0.130'),

('MEDSPLED','M.Ed.Spl.Ed.','Master of Education - Special Education','DIPLOMA','RS','MASTER','M.Ed. Spl. Ed.','Master of Education -  Special Education',1.00,NULL,'B.Ed. Special Education','',0,1,1569234707,1571655085,214,214,'10.107.105.203'),

('MEE','MEE','Master of Technology/ Master of Engineering(Electrical Engineering) ','DEGREE','EG','MASTER','MEE','Master of Technology/ Master of Engineering(Electrical Engineering)',2.00,NULL,'Bachelor\'s','',0,1,1569241245,1571652871,214,214,'10.107.105.203'),

('MFA','MFA','MBA/M.COM (FINANCIAL ANALYSIS)','DEGREE','BA','MASTER','MFA','MBA/M.COM (FINANCIAL ANALYSIS)',2.00,NULL,'BACHELOR\'S','',0,1,1569242544,1571654213,214,214,'10.107.105.203'),

('MFAS','MFA','Master of Fine Arts','DEGREE','FA','MASTER','MFA','Master of Fine Arts',2.00,NULL,'Bachelor','',0,1,1569243133,1571655306,214,214,'10.107.105.203'),

('MFMMFC','MFM/MFC','Master of Business Administration(FINANCIAL MANAGEMENT)','DEGREE','BA','MASTER','MFM/MFC','MBA (FINANCIAL MANAGEMENT)',2.00,NULL,'BACHELOR\'S','',0,1,1569242198,1571653662,214,214,'10.107.105.203'),

('MFSC','M.F.Sc.',' Master of Fisheries Sciences','DEGREE','AG','MASTER','M.F.Sc.','Master of Fisheries Sciences',2.00,NULL,'Bachelor\'s','',0,1,1569225032,1571654598,214,214,'10.107.105.203'),

('MFT','MFT','MBA/M.COM (FOREIGN TRADE)','DEGREE','BA','MASTER','MFT','MBA/M.COM (FOREIGN TRADE)',2.00,NULL,'BACHELOR\'S','',0,1,1569242504,1571654076,214,214,'10.107.105.203'),

('MHA','MHA','MBA/M.COM (HOSPITAL ADMINISTRATION)','DEGREE','BA','MASTER','MHA','MBA/M.COM (HOSPITAL ADMINISTRATION)',2.00,NULL,'BACHELOR\'S','',0,1,1569242522,1571654192,214,214,'10.107.105.203'),

('MHA1','MHA','Mater of Hospital Administration','DEGREE','MS','MASTER','MHA','Mater of Hospital Administration',2.00,NULL,'Bachelor\'s','',0,1,1569227014,1571665966,214,214,'::1'),

('MHM','MHM','Master of Hotel Management','DEGREE','HM','MASTER',NULL,NULL,2.00,24.00,'Bachelor\'s','',0,1,1571727944,1571727944,214,214,'10.107.105.203'),

('MHMCT','MHMCT','Master of Hotel Management & Catering Technology','DEGREE','HM','MASTER',NULL,NULL,2.00,24.00,'Bachelor\'s','',0,1,1571728030,1571728030,214,214,'10.107.105.203'),

('MHMS','MHMS','Doctor of Medicine(Homeo)','DEGREE','MS','MASTER',NULL,NULL,3.00,36.00,'Bachelor\'s','',0,1,1571723428,1571723428,214,214,'10.107.105.203'),

('MHRD','MHRD','MBA/M.COM (HUMAN RESOURCE DEVELOPMENT)','DEGREE','BA','MASTER','MHRD/MHROD','MBA/M.COM (HUMAN RESOURCE DEVELOPMENT)',2.00,NULL,'BACHELOR\'S','',0,1,1569242458,1571654016,214,214,'10.107.105.203'),

('MIBMIBM','MIB/MIBM','MBA/M.COM (INTERNATIONAL BUSINESS)','DEGREE','BA','MASTER','MIB/MIBM','MBA/M.COM (INTERNATIONAL BUSINESS)',2.00,NULL,'BACHELOR\'S','',0,1,1569242269,1571653703,214,214,'10.107.105.203'),

('MID','M.I.D','Master of Interior Design','DEGREE','EG','MASTER','M.I.D.','Master of Interior Design',2.00,NULL,'Bachelor\'s','',0,1,1569240770,1571652379,214,214,'10.107.105.203'),

('MIND','M.Ind.','Master of Arts (Indology)','DEGREE','AHS','MASTER','M.Ind.','Master of Arts (Indology)',2.00,NULL,'Bachelor\'s','',0,1,1569229489,1571663432,214,214,'::1'),

('MJ','MJ','Master of Journalism','DEGREE','JC','MASTER','MJ','Master of Journalism',1.00,NULL,'Bachelor\'s','',0,1,1569226197,1571667037,214,214,'10.107.102.52'),

('MJMC','MJMC','Master of Arts(Mass Communication)','DEGREE','JC','MASTER','MMC','Master of Arts(Mass Communication)',2.00,NULL,'Bachelor\'s','',0,1,1569226748,1571666220,214,214,'::1'),

('MKTM','M.Mkt.M','MBA/M.COM (MARKETING MANAGEMENT)','DEGREE','BA','MASTER','M.MKT.M.','MBA/M.COM (MARKETING MANAGEMENT)',2.00,NULL,'BACHELOR\'S','',0,1,1569242487,1571654059,214,214,'10.107.105.203'),

('ML','ML','Master of Law','DEGREE','LAW','MASTER',NULL,NULL,2.00,24.00,'Bachelor\'s','',0,1,1571721739,1571721739,214,214,'10.107.105.203'),

('MLIBISC','M.Lib.I.Sc.','Master of Library & Information Sciences','DEGREE','LIS','MASTER','M.lib. l. Sc.','Master of Library & Information Sciences',1.00,NULL,'B. Lib. L. Sc.','',0,1,1569242965,1573472611,214,215,'172.31.26.219'),

('MLIBSC','M.Lib.Sc.','Master of Library Sciences','DEGREE','LIS','BACHELOR','M.lib. Sc.','Master of Library Sciences',1.00,NULL,'B. Lib. Sc.','',0,1,1569242984,1571654502,214,214,'10.107.105.203'),

('MLISC','M.L.I.Sc.','Master of Library & Information Sciences','DEGREE','LIS','MASTER','M. L. I. Sc.','Master of Library & Information Sciences',1.00,NULL,'B.Lib.L.Sc.','',0,1,1569243059,1571654558,214,214,'10.107.105.203'),

('MLIT','M.lit.','Master of Arts(Literature)','DEGREE','AHS','MASTER','M.Lit.','Master of Arts(Literature)',2.00,NULL,'Bachelor\'s','',0,1,1569227797,1571663712,214,214,'::1'),

('MMC','MMC','Masters of Arts(Mass Communication)','DEGREE','JC','MASTER',NULL,NULL,2.00,24.00,'Bachelor\'s','',0,1,1571721522,1571721522,214,214,'10.107.105.203'),

('MMS','MMS','Master of Management Studies','DEGREE','BA','MASTER','MMS','Master of Management Studies',2.00,NULL,'BACHELOR\'S','',0,1,1569241988,1571653180,214,214,'10.107.105.203'),

('MMUS','M.Mus.','Master of Performing Arts(Music)/Master of Fine Arts(Music)','DEGREE','FA','MASTER','M. Mus.','MPA(Music)/MFA(Music)',2.00,NULL,'Bachelor\'s','',0,1,1569244129,1571655897,214,214,'10.107.105.203'),

('MOL','MOL','Master of Arts(Oriental Learning)','DEGREE','AHS','MASTER','MOL','Master of  Arts(Oriental Learning)',2.00,NULL,'Bachelor\'s','',0,1,1569227918,1571663584,214,214,'::1'),

('MOPTOM','M.Optom','Master of Optometry','DEGREE','MS','MASTER','M. Optom','Master of Optometry',2.00,NULL,'B. Optom','',0,1,1569232475,1571658122,214,214,'10.107.105.203'),

('MOT','MOT','Master of Occupational Therapy','DEGREE','MS','MASTER','MOT','Master of Occupational Therapy',2.00,NULL,'Bachelor\'s','',0,1,1569233016,1571657697,214,214,'10.107.105.203'),

('MPA','MPA','Master of Performing Arts','DEGREE','FA','MASTER','MPA','Master of Performing Arts',2.00,NULL,'Bachelor\'s','',0,1,1569243246,1571655375,214,214,'10.107.105.203'),

('MPE','MPE','Master of Physical Education(MPEd)','DEGREE','ED','MASTER',NULL,NULL,1.00,12.00,'BPED','',0,1,1571720914,1571723454,214,214,'10.107.0.130'),

('MPED','MPED','Master of Physical Education','DEGREE','ED','MASTER','MPE','Master of Physical Education',1.00,NULL,'BPED','',0,1,1569230668,1571662516,214,214,'::1'),

('MPH','MPH','Master of Public Health','DEGREE','MS','MASTER','MPH','Master of Public Health',2.00,NULL,'Bachelor\'s','',0,1,1569227069,1571664727,214,214,'::1'),

('MPHARM','M.Pharm.',' Master of Pharmacy','DEGREE','MS','MASTER','M. Pharm.','Master of Pharmacy',2.00,NULL,'Bachelor\'s','',0,1,1569233434,1571727164,214,214,'10.107.105.203'),

('MPHIL','M.Phil.','Master of Philosophy(Agriculture)','DEGREE','AG','PREDOCTORAL','M.Phil','Master of Philosophy',1.00,NULL,'Master\'s','',0,1,1569224289,1571823661,214,214,'10.107.105.203'),

('MPHILAHSS','M.Phil','Master of Philosophy(Arts)','DEGREE','AHS','PREDOCTORAL','M.Phil','Master of Philosophy',1.00,NULL,'Master\'s','',0,1,1569224289,1571823671,214,214,'10.107.105.203'),

('MPHILARTS','M.Phil','Master of Philosophy(Fine Arts)','DEGREE','FA','PREDOCTORAL','M.Phil','Master of Philosophy',1.00,NULL,'Master\'s','',0,1,1569224289,1571823682,214,214,'10.107.105.203'),

('MPHILCOM','M.Phil','Master of Philosophy(Business Administration)','DEGREE','BA','PREDOCTORAL','M.Phil','Master of Philosophy',1.00,NULL,'Master\'s','',0,1,1569224289,1571823699,214,214,'10.107.105.203'),

('MPHILED','M.Phil','Master of Philosophy(Education)','DEGREE','ED','PREDOCTORAL','M.Phil','Master of Philosophy',1.00,NULL,'Master\'s','',0,1,1569224289,1571823709,214,214,'10.107.105.203'),

('MPHILETADN','Ph.D./D.Phil','Master of Philosophy(Engg)','DEGREE','EG','PREDOCTORAL',NULL,NULL,1.00,12.00,'Master\'s','',0,1,1571727611,1571823720,214,214,'10.107.105.203'),

('MPHILHM','M.Phil','Master of Philosophy(HM)','DEGREE','HM','PREDOCTORAL','M.Phil','Master of Philosophy',1.00,NULL,'Master\'s','',0,1,1569224289,1571823731,214,214,'10.107.105.203'),

('MPHILLAW','M.Phil','Master of Philosophy(Law)','DEGREE','LAW','PREDOCTORAL','M.Phil','Master of Philosophy',1.00,NULL,'Master\'s','',0,1,1569224289,1571823744,214,214,'10.107.105.203'),

('MPHILLIS','M.Phil','Master of Philosophy(Library)','DEGREE','LIS','PREDOCTORAL','M.Phil','Master of Philosophy',1.00,NULL,'Master\'s','',0,1,1569224289,1571823759,214,214,'10.107.105.203'),

('MPHILM','M.Phil.M.','Mumtaz(Mumtazul Tafseer, Mumtazul Mohaddisin, Mumtazul Fiqh, Mumtazul Adab etc.)','DEGREE','SDU','MPHIL','M. Mt.','Mumtaz(Mumtazul Tafseer, Mumtazul Mohaddisin, Mumtazul Fiqh, Mumtazul Adab etc.)',1.00,NULL,'Kamil(MA)','',0,1,1569242555,1571654275,214,214,'10.107.105.203'),

('MPHILMC','M.Phil','Master of Philosophy(Journalism)','DEGREE','JC','PREDOCTORAL','M.Phil','Master of Philosophy',1.00,NULL,'Master\'s','',0,1,1569224289,1571823775,214,214,'10.107.105.203'),

('MPHILMED','M.Phil','Master of Philosophy(Medicine)','DEGREE','MS','PREDOCTORAL','M.Phil','Master of Philosophy',1.00,NULL,'Master\'s','',0,1,1569224289,1571823790,214,214,'10.107.105.203'),

('MPHILPH','M.Phil','Master of Philosophy(Specification Degrees)','DEGREE','SDU','PREDOCTORAL','M.Phil','Master of Philosophy',1.00,NULL,'Master\'s','',0,1,1569224289,1571823805,214,214,'10.107.105.203'),

('MPHILRS','M.Phil','Master of Philosophy(Rehabilitation)','DEGREE','RS','PREDOCTORAL','M.Phil','Master of Philosophy',1.00,NULL,'Master\'s','',0,1,1569224289,1571823822,214,214,'10.107.105.203'),

('MPHILSAN','M.Phil','Master of Philosophy(Sanskrit)','DEGREE','SSD','PREDOCTORAL','M.Phil','Master of Philosophy',1.00,NULL,'Master\'s','',0,1,1569224289,1571823835,214,214,'10.107.105.203'),

('MPHILSC','M.Phil.Sc','Master of Philosophy(Sciences)','DEGREE','SC','PREDOCTORAL',NULL,NULL,1.00,12.00,'Master\'s','',0,1,1571722161,1571823850,214,214,'10.107.105.203'),

('MPHILSS','M.Phil','Master of Philosophy(Social Sciences)','DEGREE','AHSL','PREDOCTORAL','M.Phil','Master of Philosophy',1.00,NULL,'Master\'s','',0,1,1569224289,1571823759,214,214,'10.107.105.203'),

('MPHILVE','M.Phil.','Master of Philosophy(Voc)','DEGREE','VE','PREDOCTORAL','M.Phil','Master of Philosophy',1.00,NULL,'Master\'s','',0,1,1569224289,1571823864,214,214,'10.107.105.203'),

('MPLAN','M.Plan','Master of Planning','DEGREE','EG','MASTER','M. Plan','Master of Planning',2.00,NULL,'Bachelor\'s','',0,1,1569240572,1571652325,214,214,'10.107.105.203'),

('MPO','M.P.O','Master in Prosthetics & Orthotics','DEGREE','RS','MASTER','M.P.O.','Master in Prosthetics & Orthotics',2.00,NULL,'B.P.O.','',0,1,1569234873,1571650309,214,214,'10.107.105.203'),

('MPS','MPS','Master of Arts (Population studies)','DEGREE','AHS','MASTER','MPS','Master of Arts (Population studies)',2.00,NULL,'Bachelor\'s','',0,1,1569229418,1571663495,214,214,'::1'),

('MPT','MPT','Master of Physiotherapy','DEGREE','MS','MASTER','MPT','Master of Physiotherapy',2.00,NULL,'Bachelor\'s','',0,1,1569233242,1571657618,214,214,'10.107.105.203'),

('MRS','MRS','Master of Rural Studies','DEGREE','AHS','MASTER','MRS','Master of Rural Studies',2.00,NULL,'Bachelor\'s','',0,1,1569227647,1571663796,214,214,'::1'),

('MRSC','M.R.Sc.','Master in Rehabilitation Science','DEGREE','RS','MASTER',NULL,NULL,2.00,24.00,'Bachelor\'s','',0,1,1571722462,1571722462,214,214,'10.107.105.203'),

('MS','MS','Master of Surgery','DEGREE','MS','MASTER','MS','Master of Surgery',3.00,NULL,'Bachelor\'s','',0,1,1569226138,1571656518,214,214,'10.107.105.203'),

('MSACH','M.Ss.Ach.','Master of Shiksha Acharya','DEGREE','SSD','MASTER','M. SA.','Master of Shiksha Acharya',1.00,NULL,'Shiksha Shastri','',0,1,1569241900,1571653106,214,214,'10.107.105.203'),

('MSC','M.Sc.','Master of Science','DEGREE','SC','MASTER','M.Sc. ','Master of Science ',2.00,NULL,'Bachelor\'s','',0,1,1569238468,1571651700,214,214,'10.107.105.203'),

('MSCCAG','M.Sc.(Agriculture)','Master of Science (Agriculture)','DEGREE','AG','MASTER','M.Sc (Agriculture)','Master of Science (Agriculture)',2.00,NULL,'Bachelor\'s','',0,1,1569220315,1571664348,214,214,'::1'),

('MSCMA','M.Sc.(Medical Anatomy)','Master of Science(Medical Anatomy)','DEGREE','MS','MASTER','M.Sc.(Medical Anatomy)','Master of Science(Medical Anatomy)',2.00,NULL,'Bachelor\'s','',0,1,1569226366,1571667295,214,214,'::1'),

('MSCMB','M.Sc.(Medical Biochemistry)','Master of Science(Medical Biochemistry)','DEGREE','MS','MASTER','M.Sc.(Medical Biochemistry)','Master of Science(Medical Biochemistry)',2.00,NULL,'Bachelor\'s','',0,1,1569226434,1571666728,214,214,'::1'),

('MSCMM','M.Sc. (Medical Microbiology)','Master of Science in Medical Microbiology','DEGREE','MS','MASTER','M.Sc.(Medical Microbiology)','Master of Science in Medical Microbiology',2.00,NULL,'Bachelor\'s','',0,1,1569226490,1571666677,214,214,'::1'),

('MSCMP','M.Sc.(Medical Physiology)','Master of Science in Medical Physiology','DEGREE','MS','MASTER','M.Sc.(Medical Physiology)','Master of Science in Medical Physiology',2.00,NULL,'Bachelor\'s','',0,1,1569226952,1571666052,214,214,'::1'),

('MSCMPH','M.Sc. (Medical Pharmacology)','Master of Science in Medical Pharmacology','DEGREE','MS','MASTER','M.Sc.(Medical Pharmacology)','Master of Science in Medical Pharmacology',2.00,NULL,'Bachelor\'s','',0,1,1569226773,1571666126,214,214,'::1'),

('MSCN','M.Sc.(Nursing)','Master of Science(Nursing)','DEGREE','MS','MASTER','M.Sc.(Nursing)','Master of Science(Nursing)',2.00,NULL,'Bachelor\'s','',0,1,1569231873,1571658508,214,214,'10.107.105.203'),

('MSCS','M.Sc.(Sericulture)','Master of Science (Sericulture)','DEGREE','AG','MASTER','M.Sc. (Sericulture)','Master of Science (Sericulture)',2.00,NULL,'Bachelor\'s','',0,1,1569224689,1571652257,214,214,'10.107.105.203'),

('MSCSC','M.Sc.','Master of Philosophy(Sciences)','DEGREE','SC','PREDOCTORAL','M.Phil','Master of Philosophy',1.00,NULL,'Master\'s','',0,1,1569224289,1571823877,214,214,'10.107.105.203'),

('MSPHRM','MS(Pharm)','Master of Phamacy','DEGREE','MS','MASTER',NULL,NULL,2.00,24.00,'Bachelor\'s','',0,1,1571723510,1571723510,214,214,'10.107.105.203'),

('MSTAT','M.Stat','Master of Statistics','DEGREE','SC','MASTER','M.Stat','Master of Statistics',2.00,NULL,'Bachelor\'s','',0,1,1569239106,1571651936,214,214,'10.107.105.203'),

('MSW','MSW','Master of Social Work','DEGREE','AHS','MASTER','MSW','Master of Social Work',2.00,NULL,'Bachelor\'s','',0,1,1569227471,1571663966,214,214,'::1'),

('MTA','MTA','Master of Tourism &Travel Management(MTTM) or as MBA(Torism & Travel Management)','DEGREE','HM','MASTER',NULL,NULL,2.00,24.00,'Bachelor\'s','',0,1,1571728740,1571728900,214,214,'10.107.105.203'),

('MTECH','M.Tech','Master of Technology','DEGREE','EG','MASTER','M. Tech','Master of Technology',2.00,NULL,'Bachelor\'s','',0,1,1569240258,1571652035,214,214,'10.107.105.203'),

('MTTM','MTTM','Master of Tourism & Travel Management','DEGREE','HM','MASTER','BTTM','Master of Tourism & Travel Management',2.00,NULL,'Bachelor\'s','',0,1,1569244237,1571656029,214,214,'10.107.105.203'),

('MUMS','MUMS','Doctor of Medicine(Unani)','DEGREE','MS','MASTER',NULL,NULL,3.00,36.00,'Bachelor\'s','',0,1,1571723454,1571723454,214,214,'10.107.105.203'),

('MVA','MVA','Master of Visual Arts','DEGREE','FA','MASTER','MVA','Master of Visual Arts',2.00,NULL,'Bachelor\'s','',0,1,1569243156,1571655248,214,214,'10.107.105.203'),

('MVSC','M.V.Sc.','Master of Veterinary science','DEGREE','AG','MASTER','M.V.Sc.','Master of Veterinary science',2.00,NULL,'Bachelor\'s','',0,1,1569224859,1571653363,214,214,'10.107.105.203'),

('PDVCH','P.Doc.V.','Vishistacharya','DEGREE','SSD','PREDOCTORAL','P. Doc. V.','Vishistacharya',1.00,NULL,'Acharya/Master','',0,1,1569242021,1571723794,214,214,'10.107.105.203'),

('PDVP','P.Doc.Vp.','Vachaspati','DEGREE','SSD','POSTDOCTORAL','P. Doc. Vh.','Vachaspati',2.00,NULL,'Ph. D/ Vidya Varidhi','',0,1,1569242196,1571653522,214,214,'10.107.105.203'),

('PGD','PGD','Post Graduate Diploma','PGDIPLOMA','PGD','POST GRADUATE DIPLOMA',NULL,NULL,1.00,12.00,'Bachelor','',0,1,1572518051,1572807877,215,215,'127.0.0.1'),

('PHARMD','Pharm.D.','Doctor of Pharmacy','DEGREE','MS','BACHELOR','Pharm. D','Doctor of Pharmacy',6.00,NULL,'10+2','',0,1,1569233391,1571657399,214,214,'10.107.105.203'),

('PHDAHSS','Ph.D.','Doctor of Philosophy(Arts)','DEGREE','AHS','DOCTORAL','Ph.D /D.Phil','Doctor of Philosophy',2.00,NULL,'Master\'s','',0,1,1569224187,1571823350,214,214,'10.107.105.203'),

('PHDCOM','Ph.D.','Doctor of Philosophy(Business Administration)','DEGREE','BA','DOCTORAL','Ph.D /D.Phil','Doctor of Philosophy',2.00,NULL,'Master\'s','',0,1,1569224187,1571823377,214,214,'10.107.105.203'),

('PHDED','Ph.D.','Doctor of Philosophy(Education)','DEGREE','ED','DOCTORAL','Ph.D /D.Phil','Doctor of Philosophy',2.00,NULL,'Master\'s','',0,1,1569224187,1571823392,214,214,'10.107.105.203'),

('PHDETADN','Ph.D./D.Phil','Doctor of Philosophy(Engg)','DEGREE','EG','DOCTORAL',NULL,NULL,2.00,24.00,'Master\'s','',0,1,1571727574,1571823403,214,214,'10.107.105.203'),

('PHDHM','Ph.D.','Doctor of Philosophy(HM)','DEGREE','HM','DOCTORAL','Ph.D /D.Phil','Doctor of Philosophy',2.00,NULL,'Master\'s','',0,1,1569224187,1571823423,214,214,'10.107.105.203'),

('PHDLAW','Ph.D.','Doctor of Philosophy(Law)','DEGREE','LAW','DOCTORAL','Ph.D /D.Phil','Doctor of Philosophy',2.00,NULL,'Master\'s','',0,1,1569224187,1571823435,214,214,'10.107.105.203'),

('PHDLIS','Ph.D.','Doctor of Philosophy(Library)','DEGREE','LIS','DOCTORAL','Ph.D /D.Phil','Doctor of Philosophy',2.00,NULL,'Master\'s','',0,1,1569224187,1571823448,214,214,'10.107.105.203'),

('PHDMC','Ph.D.','Doctor of Philosophy(Journalism)','DEGREE','JC','DOCTORAL','Ph.D /D.Phil','Doctor of Philosophy',2.00,NULL,'Master\'s','',0,1,1569224187,1571823460,214,214,'10.107.105.203'),

('PHDMED','Ph.D.','Doctor of Philosophy(Medicine)','DEGREE','MS','DOCTORAL','Ph.D /D.Phil','Doctor of Philosophy',2.00,NULL,'Master\'s','',0,1,1569224187,1571823471,214,214,'10.107.105.203'),

('PHDPHIL','Ph.D./D.Phil','Doctor of Philosophy(Agriculture)','DEGREE','AG','DOCTORAL','Ph.D /D.Phil','Doctor of Philosophy',2.00,NULL,'Master\'s','',0,1,1569224187,1571823484,214,214,'10.107.105.203'),

('PHDRS','Ph.D.','Doctor of Philosophy(Rehabilitation Science)','DEGREE','RS','DOCTORAL','Ph.D /D.Phil','Doctor of Philosophy',2.00,NULL,'Master\'s','',0,1,1569224187,1571823509,214,214,'10.107.105.203'),

('PHDSAN','Ph.D','Doctor of Philosophy(Sanskrit)','DEGREE','SSD','DOCTORAL','Ph.D /D.Phil','Doctor of Philosophy',2.00,NULL,'Master\'s','',0,1,1569224187,1571823525,214,214,'10.107.105.203'),

('PHDSC','PHD','Doctor of Philosophy(Sciences)','DEGREE','SC','DOCTORAL','Ph.D /D.Phil','Doctor of Philosophy',2.00,NULL,'Master\'s','',0,1,1569224187,1571823536,214,214,'10.107.105.203'),

('PHDSS','Ph.D.','Doctor of Philosophy(Social Sciences)','DEGREE','AHSL','DOCTORAL','Ph.D /D.Phil','Doctor of Philosophy',2.00,NULL,'Master\'s','',0,1,1569224187,1571823594,214,214,'10.107.105.203'),

('PHDUPA','PHD','Doctor of Philosophy(Specification Degrees)','DEGREE','SDU','DOCTORAL','Ph.D /D.Phil','Doctor of Philosophy',2.00,NULL,'Master\'s','',0,1,1569224187,1571823583,214,214,'10.107.105.203'),

('PHDVE','Ph.D.','Doctor of Philosophy(Voc)','DEGREE','VE','DOCTORAL','Ph.D /D.Phil','Doctor of Philosophy',2.00,NULL,'Master\'s','',0,1,1569224187,1571823594,214,214,'10.107.105.203');

/*Table structure for table `core_program_discipline` */

DROP TABLE IF EXISTS `core_program_discipline`;

CREATE TABLE `core_program_discipline` (
  `id` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `options_for_diploma` tinyint(4) DEFAULT NULL,
  `options_for_certificate` tinyint(4) DEFAULT NULL,
  `update_disabled` tinyint(3) unsigned DEFAULT '0',
  `status` tinyint(3) unsigned DEFAULT '1',
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `created_at` int(10) unsigned DEFAULT NULL,
  `updated_at` int(10) unsigned DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `ip` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `core_program_discipline` */

insert  into `core_program_discipline`(`id`,`title`,`options_for_diploma`,`options_for_certificate`,`update_disabled`,`status`,`description`,`created_at`,`updated_at`,`created_by`,`updated_by`,`ip`) values 

('AG','Agriculture and Allied Disciplines',0,0,0,1,'Agriculture and Allied Disciplines',1569215983,1569228451,214,214,NULL),

('AHSL','Arts/Humanities/Social Sciences/Languages',0,0,0,1,'Arts/Humanities/Social Sciences/Languages',1569221164,1579508271,214,2,'172.31.6.162'),

('BA','Business Administration/Commerce/management/Finance',0,0,0,1,'Business Administration/Commerce/management/Finance',1569221340,1569221340,214,214,NULL),

('CERT','Certificate',NULL,NULL,0,1,'Certificate Courses',1571740983,1571740983,214,214,'::1'),

('ED','Education/Teachers Training',0,0,0,1,'Education/Teachers Training',1569221231,1569221231,214,214,NULL),

('EG','Engineering/Technology/Architecture/Design',0,0,0,1,'Engineering/Technology/Architecture/Design',1569221615,1569221615,214,214,NULL),

('FA','Fine Arts/Performing Arts/Visual Arts/Applied Arts',0,0,0,1,'Fine Arts/Performing Arts/Visual Arts/Applied Arts',1569221459,1569221459,214,214,NULL),

('HM','Hotel Management/Hospitality/Tourism/Travel',0,0,0,1,'Hotel Management/Hospitality/Tourism/Travel',1569221524,1569221524,214,214,NULL),

('JC','Journalism/Mass Communication/Media',0,0,0,1,'Journalism/Mass Communication/Media',1569216103,1569216103,214,214,NULL),

('LAW','Law',0,0,0,1,'Law',1569221256,1569221256,214,214,NULL),

('LIS','Library & Information Sciences',0,0,0,1,'Library & Information Sciences',1569221408,1569221408,214,214,NULL),

('MS','Medicine & Surgery/ Ayurveda/ Unani / Homeopathy / Health & Allied Sciences / Paramedical / Nursing',0,0,0,1,'Medicine & Surgery/ Ayurveda/ Unani / Homeopathy / Health & Allied Sciences / Paramedical / Nursing',1569221729,1569233668,214,214,'10.107.0.108'),

('RS','Rehabilitation Sciences',0,0,0,1,'Rehabilitation Sciences',1569221790,1569221790,214,214,NULL),

('SC','Sciences',0,0,0,1,'Sciences',1569221557,1569221557,214,214,NULL),

('SDU','Specification of Degrees with Urdu/Persian/Arabic nomenclature',0,0,0,1,'Specification of Degrees with Urdu/Persian/Arabic nomenclature',1569221898,1569221898,214,214,NULL),

('SSD','Sanskrit Sounding Degrees',0,0,0,1,'Sanskrit Sounding Degrees',1569221834,1569221834,214,214,NULL),

('VE','Vocational Education',0,0,0,1,'Vocational Education',1569221641,1569221641,214,214,NULL);

/*Table structure for table `core_program_level` */

DROP TABLE IF EXISTS `core_program_level`;

CREATE TABLE `core_program_level` (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `options_for_diploma` tinyint(4) DEFAULT NULL,
  `options_for_certificate` tinyint(4) DEFAULT NULL,
  `status` tinyint(3) unsigned DEFAULT '1',
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `created_at` int(10) unsigned DEFAULT NULL,
  `updated_at` int(10) unsigned DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `ip` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `core_program_level` */

insert  into `core_program_level`(`id`,`title`,`options_for_diploma`,`options_for_certificate`,`status`,`description`,`created_at`,`updated_at`,`created_by`,`updated_by`,`ip`) values 

('BACHELOR','Bachelor\'s',0,0,1,'Bachelor\'s',1569216691,1570095443,214,214,'::1'),

('CERTIFICATE','Certificate',NULL,NULL,1,'Certificate courses',1571741349,1572803495,214,215,'127.0.0.1'),

('DIPLOMA','Diploma',NULL,NULL,1,'For diploma',1571744974,1572803506,214,215,'127.0.0.1'),

('DOCTORAL','Doctoral',0,0,1,'Doctoral',1569222091,1569222207,214,214,NULL),

('MASTER','Master\'s',0,0,1,'Master\'s',1569216707,1569216707,214,214,NULL),

('MPHIL','M.PHIL',0,0,1,'Specific to one degree only',1569222170,1570095501,214,214,'::1'),

('POST GRADUATE DIPLOMA','POST GRADUATE DIPLOMA',NULL,NULL,1,'POST GRADUATE DIPLOMA',1572807432,1572807432,215,215,'127.0.0.1'),

('POSTDOCTORAL','Post Doctoral',0,0,1,'Post Doctoral',1569223128,1570095475,214,214,'::1'),

('POSTMASTER','Post Master\'s',0,0,1,'Specific to few Degrees',1569222046,1569222187,214,214,NULL),

('POSTPHD','Post PhD ',0,0,1,'Specific to one degree only',1569222136,1570095519,214,214,'::1'),

('PREDOCTORAL','Pre Doctoral',0,0,1,'Pre Doctoral',1569222072,1569222197,214,214,NULL);

/*Table structure for table `core_program_scheme` */

DROP TABLE IF EXISTS `core_program_scheme`;

CREATE TABLE `core_program_scheme` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) unsigned DEFAULT '0',
  `visible` tinyint(4) unsigned DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` int(10) unsigned DEFAULT NULL,
  `updated_at` int(10) unsigned DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `core_program_scheme` */

insert  into `core_program_scheme`(`id`,`title`,`status`,`visible`,`description`,`created_at`,`updated_at`,`created_by`,`updated_by`) values 

(1,'Annual',1,1,'Yearly',1568364321,1573210971,2,2),

(2,'Semester',1,1,'per six months',1568798130,1569563175,2,2),

(3,'Three Months',1,1,'Semester',1569563155,1569563155,2,2),

(4,'Diploma',1,1,'Annual',1569563182,1569563182,2,2);

/*Table structure for table `core_program_stream` */

DROP TABLE IF EXISTS `core_program_stream`;

CREATE TABLE `core_program_stream` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(3) unsigned DEFAULT '1',
  `visible` tinyint(3) unsigned DEFAULT '1',
  `description` text COLLATE utf8_unicode_ci,
  `created_at` int(10) unsigned DEFAULT NULL,
  `updated_at` int(10) unsigned DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `core_program_stream` */

insert  into `core_program_stream`(`id`,`title`,`status`,`visible`,`description`,`created_at`,`updated_at`,`created_by`,`updated_by`) values 

(1,'B.Tech ',1,1,'B.Tech ',1568363512,1568364972,2,2),

(2,'MBA',1,1,'Master in Business Administration',1568791336,1568791336,2,2),

(3,'MCA',1,1,'demo testing',1568798075,1568798075,2,2),

(4,'Mtech',1,1,'Master in technical',1569563010,1569563010,2,2),

(5,'Science',1,1,'This contains all the courses related to Science',1569563031,1569563031,2,2),

(6,'MA English',1,1,'',1571827947,1571827947,2,2),

(7,'BA',1,1,'Bachelor of Arts',1573210841,1573210896,2,2);

/*Table structure for table `core_program_type` */

DROP TABLE IF EXISTS `core_program_type`;

CREATE TABLE `core_program_type` (
  `id` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `status` tinyint(4) unsigned DEFAULT '1',
  `update_disabled` tinyint(3) unsigned DEFAULT '0',
  `visible` tinyint(4) unsigned DEFAULT '1',
  `created_at` int(10) unsigned DEFAULT NULL,
  `updated_at` int(10) unsigned DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `ip` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `core_program_type` */

insert  into `core_program_type`(`id`,`title`,`description`,`status`,`update_disabled`,`visible`,`created_at`,`updated_at`,`created_by`,`updated_by`,`ip`) values 

('BACHELOR','BACHELOR','BACHELOR',1,0,1,1573210806,1573210806,215,215,'172.31.26.219'),

('CERTIFICATE','CERTIFICATE','CERTIFICATE',1,0,1,1569214845,1569214845,214,214,NULL),

('DEGREE','DEGREE','DEGREE COURSE',0,0,1,NULL,1573210852,NULL,215,'172.31.26.219'),

('DIPLOMA','DIPLOMA','DIPLOMA',1,0,1,1569214778,1569214778,214,214,NULL),

('DUAL_DEGREE','DUAL DEGREE','DUAL DEGREE',0,0,1,1569214897,1572802900,214,215,'127.0.0.1'),

('INTEGRATED','INTEGRATED DEGREE','INTEGRATED DEGREE',1,0,1,1569214879,1580727550,214,2,'172.31.6.162'),

('MASTER','MASTER','MASTER',1,0,1,1573210635,1573210635,215,215,'172.31.6.162'),

('PGDIPLOMA','PGDIPLOMA','POST GRADUATE DIPLOMA',1,0,1,1572517820,1572517936,215,215,'10.107.107.113');

/*Table structure for table `core_session` */

DROP TABLE IF EXISTS `core_session`;

CREATE TABLE `core_session` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(5) NOT NULL DEFAULT '0',
  `created_at` int(10) unsigned DEFAULT NULL,
  `updated_at` int(10) unsigned DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `ip` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`),
  UNIQUE KEY `title_2` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `core_session` */

insert  into `core_session`(`id`,`title`,`status`,`created_at`,`updated_at`,`created_by`,`updated_by`,`ip`) values 

('AUGUST','August',1,1578462131,1581760418,214,214,'172.31.6.162'),

('DECEMBER','December',1,1578055319,1578055502,214,214,'::1'),

('JANUARY','January',0,1578055408,1578055511,214,214,'::1'),

('JULY','July',1,1578055193,1578055193,214,214,'::1');

/*Table structure for table `core_type_of_enrolment_of_student` */

DROP TABLE IF EXISTS `core_type_of_enrolment_of_student`;

CREATE TABLE `core_type_of_enrolment_of_student` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `update_disabled` tinyint(3) unsigned DEFAULT '0',
  `created_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `ip` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `core_type_of_enrolment_of_student` */

insert  into `core_type_of_enrolment_of_student`(`id`,`name`,`status`,`update_disabled`,`created_at`,`created_by`,`updated_at`,`updated_by`,`ip`) values 

(1,'Regular',1,0,1570437345,214,1570437345,214,'::1'),

(2,'Correspondence',1,0,1570437362,214,1570437362,214,'::1'),

(3,'Temporary',1,0,1570437379,214,1570437379,214,'::1');

/*Table structure for table `evaluation_detention_rules` */

DROP TABLE IF EXISTS `evaluation_detention_rules`;

CREATE TABLE `evaluation_detention_rules` (
  `id` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  `sort_order` int(11) DEFAULT NULL,
  `university_alias` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `evaluation_detention_rules` */

insert  into `evaluation_detention_rules`(`id`,`title`,`sort_order`,`university_alias`,`created_at`,`updated_at`,`created_by`,`updated_by`) values 

('ABSENT_IN_COURSE','Absent in minimum number of courses',11,NULL,1612348831,1612348831,214,214),

('MAX_BACKLOG_IN_TERM','Maximum Backlog that can be carry forwarded in a term',18,NULL,1612348831,1612348831,214,214),

('MAX_BACKLOG_UPTO_THIS_TERM','Maximum Backlog that can be carry forwarded upto this term',36,NULL,1612348831,1612348831,214,214),

('MAX_BACKLOG_UPTO_THIS_TERM_LATERAL_ENTRY','For Lateral Entry Applicants, Maximum Backlog that can be carry forwarded in a term',1000,NULL,NULL,NULL,NULL,NULL),

('MIN_FAIL_COURSE_FIXED_VALUE','Minimum Number of Failed Course for a particular Term',13,NULL,1612348831,1612348831,214,214),

('MIN_PASS_CGPA_IN_PROGRAMME','Minimum Passing CGPA for a particular Programme',21,NULL,1612348831,1612348831,214,214),

('MIN_PASS_COURSE_FIXED_VALUE','Minimum Number of Passing Course for a particular Term',13,NULL,1612348831,1612348831,214,214),

('MIN_PASS_COURSE_FIXED_VALUE_UPTO_THIS_TERM','Minimum Number of Passing Course upto this term',31,NULL,1612348831,1612348831,214,214),

('MIN_PASS_COURSE_FIXED_VALUE_UPTO_THIS_TERM_LATERAL_ENTRY','For Lateral Entry Applicants, Minimum Number of Passing Course upto this term',1000,NULL,NULL,NULL,NULL,NULL),

('MIN_PASS_CREDIT_IN_PROGRAMME','Minimum Passing Credit for a particular Programme',19,NULL,1612348831,1612348831,214,214),

('MIN_PASS_CREDIT_IN_TERM','Minimum Passing Credit for a particular Term',16,NULL,1612348831,1612348831,214,214),

('MIN_PASS_CREDIT_UPTO_THIS_TERM','Minimum Passing Credit upto this term',34,NULL,1612348831,1612348831,214,214),

('MIN_PASS_CREDIT_UPTO_THIS_TERM_LATERAL_ENTRY','For Lateral Entry Applicants, Minimum Passing Credit upto this term',1000,NULL,NULL,NULL,NULL,NULL),

('MIN_PASS_EVEN_NUMBER_OF_COURSE_FORMULA_VALUE','Minimum Number of Passing Course for a particular term  based on formula if the number of courses is even',15,NULL,1612348831,1612348831,214,214),

('MIN_PASS_EVEN_NUMBER_OF_COURSE_FORMULA_VALUE_UPTO_THIS_TERM','Minimum Number of Passing Course upto this term  based on formula if number of courses is even.',33,NULL,1612348831,1612348831,214,214),

('MIN_PASS_EVEN_NUMBER_OF_COURSE_FORMULA_VALUE_UPTO_THIS_TERM_LATERAL_ENTRY','For Lateral Entry Applicants, Minimum Number of Passing Course upto this term  based on formula if number of courses is even.',1000,NULL,NULL,NULL,NULL,NULL),

('MIN_PASS_ODD_NUMBER_OF_COURSE_FORMULA_VALUE','Minimum Number of Passing Course for a particular term  based on formula if the number of courses is odd.',14,NULL,1612348831,1612348831,214,214),

('MIN_PASS_ODD_NUMBER_OF_COURSE_FORMULA_VALUE_UPTO_THIS_TERM','Minimum Number of Passing Course upto this term  based on formula if the number of courses is odd',32,NULL,1612348831,1612348831,214,214),

('MIN_PASS_ODD_NUMBER_OF_COURSE_FORMULA_VALUE_UPTO_THIS_TERM_LATERAL_ENTRY','For Lateral Entry Applicants, Minimum Number of Passing Course upto this term  based on formula if the number of courses is odd',1000,NULL,NULL,NULL,NULL,NULL),

('MIN_PASS_PERCENTAGE_IN_PROGRAMME','Minimum Passing Percentage for a particular Programme',20,NULL,1612348831,1612348831,214,214),

('MIN_PASS_PERCENTAGE_IN_TERM','Minimum Passing Percentage for a particular Term',17,NULL,1612348831,1612348831,214,214),

('MIN_PASS_PERCENTAGE_UPTO_THIS_TERM','Minimum Passing Percentage upto this term',35,NULL,1612348831,1612348831,214,214),

('MIN_PASS_PERCENTAGE_UPTO_THIS_TERM_LATERAL_ENTRY','For Lateral Entry Applicants, Minimum Passing Percentage upto this term',1000,NULL,NULL,NULL,NULL,NULL),

('MIN_PASS_SGPA','Minimum Number of Passing SGPA for a particular Term',12,NULL,1612348831,1612348831,214,214),

('WITHHELD_IN_COURSE','Withheld in minimum number of courses',10,NULL,1612348831,1612348831,214,214),

('WITHHELD_IN_COURSE_UPTO_THIS_TERM','If Withheld in N number of courses, upto this term.',10,NULL,1612348831,1612348831,214,214),

('WITHHELD_IN_COURSE_UPTO_THIS_TERM_LATERAL_ENTRY','For Lateral Entry Applicants, If Withheld in N number of courses, upto this term.',1000,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `evaluation_process` */

DROP TABLE IF EXISTS `evaluation_process`;

CREATE TABLE `evaluation_process` (
  `id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(195) COLLATE utf8mb4_unicode_ci NOT NULL,
  `update_disabled` tinyint(4) DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT 'DRAFT',
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `evaluation_process` */

insert  into `evaluation_process`(`id`,`name`,`update_disabled`,`description`,`status`,`created_at`,`updated_at`,`created_by`,`updated_by`,`updated`) values 

('EE','EXTERNAL EXAMINATION',1,NULL,'DRAFT',NULL,NULL,NULL,NULL,'2020-04-28 09:55:53'),

('IE','INTERNAL EXAMINATION',1,NULL,'DRAFT',NULL,NULL,NULL,NULL,'2020-04-28 09:56:40');

/*Table structure for table `prg_course_category` */

DROP TABLE IF EXISTS `prg_course_category`;

CREATE TABLE `prg_course_category` (
  `id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(198) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `prg_course_category` */

insert  into `prg_course_category`(`id`,`name`,`status`,`created_by`,`updated_by`,`created_at`,`updated_at`,`updated`,`ip`) values 

('COMPULSORY','COMPULSORY',1,214,214,1570706831,1570706831,'2019-10-10 11:27:11','::1'),

('ELECTIVE','ELECTIVE',1,214,214,1570706850,1570706850,'2019-10-10 11:27:30','::1');

/*Table structure for table `prg_course_cbcs_category_type` */

DROP TABLE IF EXISTS `prg_course_cbcs_category_type`;

CREATE TABLE `prg_course_cbcs_category_type` (
  `id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(198) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `update_disabled` tinyint(4) DEFAULT '0',
  `sort_order` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `prg_course_cbcs_category_type` */

insert  into `prg_course_cbcs_category_type`(`id`,`name`,`status`,`update_disabled`,`sort_order`,`created_by`,`updated_by`,`created_at`,`updated_at`,`updated`,`ip`) values 

('CORE','CORE',1,1,1,NULL,NULL,NULL,NULL,'2020-02-13 10:25:12',NULL),

('DSE','DSE',1,1,2,NULL,NULL,NULL,NULL,'2020-03-06 12:58:29',NULL),

('AECC','AECC',1,1,3,214,214,1570706878,1570706878,'2019-10-10 11:27:58','::1'),

('GE','GE',1,1,4,NULL,NULL,NULL,NULL,'2020-02-13 10:24:32',NULL),

('SEC','SEC',1,1,5,214,214,1570706786,1570706791,'2019-10-10 11:26:26','::1'),

('PE','PE',1,1,6,NULL,NULL,NULL,NULL,'2020-09-08 17:00:05',NULL),

('OE','OE',1,1,7,NULL,NULL,NULL,NULL,'2020-09-08 17:00:25',NULL);

/*Table structure for table `prg_course_type` */

DROP TABLE IF EXISTS `prg_course_type`;

CREATE TABLE `prg_course_type` (
  `id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(198) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `update_disabled` tinyint(4) DEFAULT '0',
  `sort_order` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `prg_course_type` */

insert  into `prg_course_type`(`id`,`name`,`status`,`update_disabled`,`sort_order`,`created_by`,`updated_by`,`created_at`,`updated_at`,`updated`,`ip`) values 

('DISSERTATION','DISSERTATION',1,1,6,NULL,NULL,NULL,NULL,'2020-02-13 10:25:12',NULL),

('LABORATORY','LABORATORY',1,1,5,NULL,NULL,NULL,NULL,'2020-03-06 12:58:29',NULL),

('PRACTICAL','PRACTICAL',1,1,4,214,214,1570706878,1570706878,'2019-10-10 11:27:58','::1'),

('PROJECT','PROJECT',1,1,3,NULL,NULL,NULL,NULL,'2020-02-13 10:24:32',NULL),

('THEORY','THEORY',1,1,1,214,214,1570706786,1570706791,'2019-10-10 11:26:26','::1'),

('TUTORIAL','TUTORIAL',1,1,2,214,214,1570706898,1570706898,'2019-10-10 11:28:18','::1');

/*Table structure for table `prg_delivery_mode` */

DROP TABLE IF EXISTS `prg_delivery_mode`;

CREATE TABLE `prg_delivery_mode` (
  `id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `prg_delivery_mode` */

insert  into `prg_delivery_mode`(`id`,`name`,`created_at`,`updated_at`,`created_by`,`updated_by`,`updated`) values 

('F2F','Face to face',NULL,NULL,NULL,NULL,'2019-10-29 11:08:18'),

('ODL','Open Distance Learning',NULL,NULL,NULL,NULL,'2019-10-29 11:09:00'),

('ONLINE','Online Mode',NULL,NULL,NULL,NULL,'2019-10-29 11:09:26');

/*Table structure for table `prg_exam_scheme` */

DROP TABLE IF EXISTS `prg_exam_scheme`;

CREATE TABLE `prg_exam_scheme` (
  `id` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `factor` int(11) NOT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `update_disabled` tinyint(4) DEFAULT '0',
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `ip` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `prg_exam_scheme` */

insert  into `prg_exam_scheme`(`id`,`name`,`factor`,`status`,`update_disabled`,`created_at`,`updated_at`,`created_by`,`updated_by`,`ip`) values 

('A','Annual',1,1,0,1572073790,1573449953,215,215,'172.31.6.162'),

('M','Months',1,1,0,1572267115,1573034066,215,214,'::1'),

('S','Semester',2,1,0,1572073832,1576215974,215,214,'::1'),

('T','Trimester',3,1,0,1572073899,1573034060,215,214,'::1');

/*Table structure for table `prg_language_options` */

DROP TABLE IF EXISTS `prg_language_options`;

CREATE TABLE `prg_language_options` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `prg_language_options` */

insert  into `prg_language_options`(`id`,`name`,`status`,`created_at`,`updated_at`,`created_by`,`updated_by`,`updated`) values 

('ARABIC','ARABIC',1,NULL,NULL,NULL,NULL,'2019-10-29 12:21:49'),

('ASSAMESE','ASSAMESE',1,NULL,NULL,NULL,NULL,'2019-10-29 12:14:33'),

('BENGALI','BENGALI',1,NULL,NULL,NULL,NULL,'2019-10-29 12:14:49'),

('BHUTIA','BHUTIA',1,NULL,NULL,NULL,NULL,'2020-03-09 08:20:25'),

('BODO','BODO',1,NULL,NULL,NULL,NULL,'2019-10-29 12:15:14'),

('CHINESE','CHINESE',1,NULL,NULL,NULL,NULL,'2019-10-29 12:21:49'),

('DOGRI','DOGRI',1,NULL,NULL,NULL,NULL,'2019-10-29 12:17:23'),

('ENGLISH','ENGLISH',1,NULL,NULL,NULL,NULL,'2019-10-29 12:07:44'),

('FRENCH','FRENCH',1,NULL,NULL,NULL,NULL,'2020-02-18 11:42:49'),

('GERMAN','GERMAN',1,NULL,NULL,NULL,NULL,'2019-10-29 12:21:49'),

('GUJARATI','GUJARATI',1,NULL,NULL,NULL,NULL,'2019-10-29 12:17:42'),

('HINDI','HINDI',1,NULL,NULL,NULL,NULL,'2019-10-29 12:07:50'),

('JAPANESE','JAPANESE',1,NULL,NULL,NULL,NULL,'2019-10-29 12:21:49'),

('KANNADA','KANNADA',1,NULL,NULL,NULL,NULL,'2019-10-29 12:17:53'),

('KASHMIRI','KASHMIRI',1,NULL,NULL,NULL,NULL,'2019-10-29 12:18:05'),

('KONKANI','KONKANI',1,NULL,NULL,NULL,NULL,'2019-10-29 12:18:18'),

('KOREAN','KOREAN',1,NULL,NULL,NULL,NULL,'2019-10-29 12:21:49'),

('LEPCHA','LEPCHA',1,NULL,NULL,NULL,NULL,'2020-03-09 08:20:40'),

('LIMBU','LIMBU',1,NULL,NULL,NULL,NULL,'2020-03-09 08:20:33'),

('MAITHILI','MAITHILI',1,NULL,NULL,NULL,NULL,'2019-10-29 12:18:33'),

('MALAYALAM','MALAYALAM',1,NULL,NULL,NULL,NULL,'2019-10-29 12:18:47'),

('MARATHI','MARATHI',1,NULL,NULL,NULL,NULL,'2019-10-29 12:19:40'),

('MEITEI','MEITEI',1,NULL,NULL,NULL,NULL,'2019-10-29 12:19:28'),

('MIZO','MIZO',1,NULL,NULL,NULL,NULL,'2019-11-13 12:39:15'),

('NEPALI','NEPALI',1,NULL,NULL,NULL,NULL,'2019-10-29 12:20:00'),

('ODIA','ODIA',1,NULL,NULL,NULL,NULL,'2019-10-29 12:20:07'),

('PERSIAN','PERSIAN',1,NULL,NULL,NULL,NULL,'2019-10-29 12:21:49'),

('PUNJABI','PUNJABI',1,NULL,NULL,NULL,NULL,'2019-10-29 12:20:21'),

('RUSSIAN','RUSSIAN',1,NULL,NULL,NULL,NULL,'2019-10-29 12:21:49'),

('SANSKRIT','SANSKRIT',1,NULL,NULL,NULL,NULL,'2019-10-29 12:08:04'),

('SANTALI','SANTALI',1,NULL,NULL,NULL,NULL,'2019-10-29 12:20:54'),

('SINDHI','SINDHI',1,NULL,NULL,NULL,NULL,'2019-10-29 12:21:06'),

('SPANISH','SPANISH',1,NULL,NULL,NULL,NULL,'2019-10-29 12:21:49'),

('TAMIL','TAMIL',1,NULL,NULL,NULL,NULL,'2019-10-29 12:21:18'),

('TELUGU','TELUGU',1,NULL,NULL,NULL,NULL,'2019-10-29 12:21:36'),

('URDU','URDU',1,NULL,NULL,NULL,NULL,'2019-10-29 12:21:49');

/*Table structure for table `prg_term_type` */

DROP TABLE IF EXISTS `prg_term_type`;

CREATE TABLE `prg_term_type` (
  `id` varchar(198) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `prg_term_type` */

insert  into `prg_term_type`(`id`,`name`,`status`,`created_at`,`updated_at`,`created_by`,`updated_by`,`updated`,`ip`) values 

('ANNUAL','ANNUAL',1,1582721803,1582721803,214,214,'2020-02-26 12:56:44',NULL),

('SEMESTER','SEMESTER',1,1582723766,1582723766,214,214,'2020-02-26 13:29:26',NULL),

('TRIMESTER','TRIMESTER',0,1582723776,1582723781,214,214,'2020-02-26 13:29:36',NULL);

INSERT INTO `application_control` (`id`, `app_id`, `key`, `value`) VALUES ('102', '1', 'can_teacher_calculate_grade', '0');
INSERT INTO `application_control` (`id`, `app_id`, `key`, `value`) VALUES ('103', '1', 'auto_fetch_supplementary_student', '0');
INSERT INTO `evaluation_assessment_type` (`id`, `code`, `name`, `aggregate`, `status`, `sort_order`, `sub_components`, `description`, `created_at`, `updated_at`, `created_by`, `updated_by`, `updated`,`update_disabled`) VALUES ('TOTALF', 'TOT MARK', 'TOTAL MARKS', 'YES', 'PUBLISHED', '3', 'NO', '', '1598252256', '1598252256', '10461', '10461', '2021-06-05 08:27:15',1);
SET FOREIGN_KEY_CHECKS=1;


/*Table structure for table `auth_item` */

DROP TABLE IF EXISTS `auth_item`;

CREATE TABLE `auth_item` (
  `name` varchar(192) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` mediumtext COLLATE utf8_unicode_ci,
  `app_id` int(10) unsigned DEFAULT NULL,
  `module_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(10) unsigned DEFAULT NULL,
  `updated_at` int(10) unsigned DEFAULT NULL,
  `privacy` varchar(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `spam` varchar(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `security` varchar(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `configuration` varchar(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `data_loss_risk` varchar(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `update_disable` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`),
  KEY `type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `auth_item` */

insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`app_id`,`module_name`,`created_at`,`updated_at`,`privacy`,`spam`,`security`,`configuration`,`data_loss_risk`,`update_disable`) values 

('/examination/generate-admit-card/publish-admit-card',2,'/examination/generate-admit-card/publish-admit-card',NULL,NULL,NULL,NULL,1613567855,1613567855,'N','N','N','N','N',NULL),

('/hostel/hostel-application/create',2,'/hostel/hostel-application/create','','',NULL,NULL,1589203726,1589204018,'N','N','N','N','N',NULL),

('academic_admin',1,'academic_admin',NULL,NULL,NULL,NULL,1587499257,1587499257,'N','N','N','N','N',NULL),

('academic/academic-calendar-entries/create',2,'academic/academic-calendar-entries/create',NULL,NULL,NULL,NULL,1587760101,1587760101,'N','N','N','N','N',NULL),

('academic/academic-calendar-entries/update',2,'academic/academic-calendar-entries/update',NULL,NULL,NULL,NULL,1587760113,1587760113,'N','N','N','N','N',NULL),

('academic/academic-calendar-entries/view',2,'academic/academic-calendar-entries/view',NULL,NULL,NULL,NULL,1587760090,1587760090,'N','N','N','N','N',NULL),

('academic/academic-calendar/calendar',2,'academic/academic-calendar/calendar',NULL,NULL,NULL,NULL,1587822410,1587822410,'N','N','N','N','N',NULL),

('academic/academic-calendar/create',2,'academic/academic-calendar/create',NULL,NULL,NULL,NULL,1587759941,1587759941,'N','N','N','N','N',NULL),

('academic/academic-calendar/get-calendar-by-ac-year',2,'academic/academic-calendar/get-calendar-by-ac-year',NULL,NULL,NULL,NULL,1588065498,1588065498,'N','N','N','N','N',NULL),

('academic/academic-calendar/index',2,'academic/academic-calendar/index',NULL,NULL,NULL,NULL,1587752883,1587752883,'N','N','N','N','N',NULL),

('academic/academic-calendar/update',2,'academic/academic-calendar/update',NULL,NULL,NULL,NULL,1587759961,1587759961,'N','N','N','N','N',NULL),

('academic/academic-calendar/view',2,'academic/academic-calendar/view',NULL,NULL,NULL,NULL,1587759994,1587759994,'N','N','N','N','N',NULL),

('academic/academic-cycle/index',2,'academic/academic-cycle/index',NULL,NULL,NULL,NULL,1587642351,1587642351,'N','N','N','N','N',NULL),

('academic/academic-section/create',2,'academic/academic-section/create',NULL,NULL,NULL,NULL,1588278444,1588278444,'N','N','N','N','N',NULL),

('academic/academic-section/get-ou-by-program',2,'academic/academic-section/get-ou-by-program',NULL,NULL,NULL,NULL,1588279466,1588279466,'N','N','N','N','N',NULL),

('academic/academic-section/get-term-by-program',2,'academic/academic-section/get-term-by-program',NULL,NULL,NULL,NULL,1588278500,1588278500,'N','N','N','N','N',NULL),

('academic/academic-section/index',2,'academic/academic-section/index',NULL,NULL,NULL,NULL,1588278396,1588278396,'N','N','N','N','N',NULL),

('academic/academic-section/index-programme',2,'academic/academic-section/index-programme',NULL,NULL,NULL,NULL,1588278413,1588278413,'N','N','N','N','N',NULL),

('academic/academic-section/update',2,'academic/academic-section/update',NULL,NULL,NULL,NULL,1588278457,1588278457,'N','N','N','N','N',NULL),

('academic/academic-section/view',2,'academic/academic-section/view',NULL,NULL,NULL,NULL,1588278435,1588278435,'N','N','N','N','N',NULL),

('academic/academic-session-entries/create',2,'academic/academic-session-entries/create',NULL,NULL,NULL,NULL,1589127986,1589127986,'N','N','N','N','N',NULL),

('academic/academic-session/create',2,'academic/academic-session/create',NULL,NULL,NULL,NULL,1589128555,1589128555,'N','N','N','N','N',NULL),

('academic/academic-session/get-calendar-by-ac-year',2,'academic/academic-session/get-calendar-by-ac-year',NULL,NULL,NULL,NULL,1589130646,1589130646,'N','N','N','N','N',NULL),

('academic/academic-session/index',2,'academic/academic-session/index',NULL,NULL,NULL,NULL,1589127608,1589127608,'N','N','N','N','N',NULL),

('academic/academic-session/update',2,'academic/academic-session/update',NULL,NULL,NULL,NULL,1610009076,1610009076,'N','N','N','N','N',NULL),

('academic/academic-session/view',2,'academic/academic-session/view',NULL,NULL,NULL,NULL,1589127846,1589127846,'N','N','N','N','N',NULL),

('academic/academic-year/approve',2,'academic/academic-year/approve',NULL,NULL,NULL,NULL,1587643701,1587643701,'N','N','N','N','N',NULL),

('academic/academic-year/create',2,'academic/academic-year/create',NULL,NULL,NULL,NULL,1587643533,1587643533,'N','N','N','N','N',NULL),

('academic/academic-year/index',2,'academic/academic-year/index',NULL,NULL,NULL,NULL,1587642341,1587642341,'N','N','N','N','N',NULL),

('academic/academic/add-student-to-section',2,'academic/academic/add-student-to-section',NULL,NULL,NULL,NULL,1588278293,1588278293,'N','N','N','N','N',NULL),

('academic/academic/programme-term',2,'academic/academic/programme-term',NULL,NULL,NULL,NULL,1588278237,1588278237,'N','N','N','N','N',NULL),

('academic/academic/programme-terms',2,'academic/academic/programme-terms',NULL,NULL,NULL,NULL,1609995833,1609995833,'N','N','N','N','N',NULL),

('academic/academic/section',2,'academic/academic/section',NULL,NULL,NULL,NULL,1588278263,1588278263,'N','N','N','N','N',NULL),

('academic/admission-cycle/index',2,'academic/admission-cycle/index',NULL,NULL,NULL,NULL,1589126462,1589126462,'N','N','N','N','N',NULL),

('academic/batch/view',2,'academic/batch/view',NULL,NULL,NULL,NULL,1587656713,1587656713,'N','N','N','N','N',NULL),

('academic/dashboard/index',2,'academic/dashboard/index',NULL,NULL,NULL,NULL,1587497752,1587497752,'N','N','N','N','N',NULL),

('academic/evaluation-role/index',2,'Academic :Evaluation Role for Employees',NULL,NULL,NULL,NULL,1589023381,1589023381,'N','N','N','N','N',NULL),

('academic/evaluation-role/index-programme',2,'academic/evaluation-role/index-programme',NULL,NULL,NULL,NULL,1612774855,1612774855,'N','N','N','N','N',NULL),

('academic/evaluation-session/course-management',2,'Academic Course Management',NULL,NULL,NULL,NULL,1589040273,1589040273,'N','N','N','N','N',NULL),

('academic/evaluation-session/create',2,'Evaluation Session Create',NULL,NULL,NULL,NULL,1589040664,1589040664,'N','N','N','N','N',NULL),

('academic/evaluation-session/get-courses',2,'Get Courses in Session',NULL,NULL,NULL,NULL,1589040836,1589040836,'N','N','N','N','N',NULL),

('academic/programme-batch/creat',2,'academic/programme-batch/create\r\n',NULL,NULL,NULL,NULL,1588590477,1588590477,'N','N','N','N','N',NULL),

('academic/programme-batch/create',2,'academic/programme-batch/create',NULL,NULL,NULL,NULL,1587642372,1587642372,'N','N','N','N','N',NULL),

('academic/programme-batch/index',2,'academic/programme-batch/index',NULL,NULL,NULL,NULL,1587499210,1587499210,'N','N','N','N','N',NULL),

('academic/settings/index',2,'academic/settings/index',NULL,NULL,NULL,NULL,1587642195,1587642195,'N','N','N','N','N',NULL),

('admadmin/adm-portal-content/index',2,'admadmin/adm-portal-content/index',NULL,NULL,NULL,NULL,1599841798,1599841798,'N','N','N','N','N',NULL),

('admadmin/adm-portal-content/update',2,'admadmin/adm-portal-content/update',NULL,NULL,NULL,NULL,1599841783,1599841783,'N','N','N','N','N',NULL),

('admadmin/adm-portal-content/view',2,'admadmin/adm-portal-content/view',NULL,NULL,NULL,NULL,1599841790,1599841790,'N','N','N','N','N',NULL),

('admadmin/adm-user/edit-rc-details',2,'admadmin/adm-user/edit-rc-details',NULL,NULL,NULL,NULL,1599885274,1599885274,'N','N','N','N','N',NULL),

('admadmin/dashboard/index',2,'admadmin/dashboard/index',NULL,NULL,NULL,NULL,1574770576,1574770576,'N','N','N','N','N',NULL),

('admadmin/discrepancies/index',2,'admadmin/discrepancies/index',NULL,NULL,NULL,NULL,1584092131,1584092131,'N','N','N','N','N',NULL),

('admadmin/multiple-record/index',2,'admadmin/multiple-record/index',NULL,NULL,NULL,NULL,1580809970,1580809970,'N','N','N','N','N',NULL),

('admadmin/pay-trans-sent/check-status-query',2,'admadmin/pay-trans-sent/check-status-query',NULL,NULL,NULL,NULL,1574771562,1574771562,'N','N','N','N','N',NULL),

('admadmin/pay-trans-sent/index',2,'admadmin/pay-trans-sent/index',NULL,NULL,NULL,NULL,1574770786,1574770786,'N','N','N','N','N',NULL),

('admadmin/personal/form/edit',2,'admadmin/personal/form/edit',NULL,NULL,NULL,NULL,1575959143,1575959143,'N','N','N','N','N',NULL),

('admadmin/preview/discrepancy',2,'admadmin/preview/discrepancy',NULL,NULL,NULL,NULL,1575322182,1575322182,'N','N','N','N','N',NULL),

('admadmin/preview/process',2,'admadmin/preview/process',NULL,NULL,NULL,NULL,1575322192,1575322192,'N','N','N','N','N',NULL),

('admadmin/preview/rdts-export',2,'admadmin/preview/rdts-export',NULL,NULL,NULL,NULL,1600791973,1600791973,'N','N','N','N','N',NULL),

('admadmin/preview/reset-password',2,'admadmin/preview/reset-password',NULL,NULL,NULL,NULL,1592381021,1592381021,'N','N','N','N','N',NULL),

('admadmin/preview/view',2,'admadmin/preview/view',NULL,NULL,NULL,NULL,1574770925,1574770925,'N','N','N','N','N',NULL),

('admadmin/programme-admission/index-ou',2,'admadmin/programme-admission/index-ou',NULL,NULL,NULL,NULL,1575111939,1575111939,'N','N','N','N','N',NULL),

('admadmin/programme-admission/index-programme',2,'admadmin/programme-admission/index-programme',NULL,NULL,NULL,NULL,1575111966,1575111966,'N','N','N','N','N',NULL),

('admadmin/programme-admission/list-programme',2,'admadmin/programme-admission/list-programme','','',NULL,NULL,1599811947,1599812247,'N','N','N','N','N',NULL),

('admadmin/programme-admission/list-sc',2,'admadmin/programme-admission/list-sc',NULL,NULL,NULL,NULL,1599812446,1599812446,'N','N','N','N','N',NULL),

('admadmin/programme-admission/programme-wise-sc',2,'admadmin/programme-admission/programme-wise-sc','','',NULL,NULL,1599808430,1599812254,'N','N','N','N','N',NULL),

('admadmin/programme-admission/sc-wise-programme',2,'admadmin/programme-admission/sc-wise-programme','','',NULL,NULL,1599811823,1599812258,'N','N','N','N','N',NULL),

('admadmin/programme/index',2,'admadmin/programme/index',NULL,NULL,NULL,NULL,1574838755,1574838755,'N','N','N','N','N',NULL),

('admadmin/student/address-correction',2,'admadmin/student/address-correction',NULL,NULL,NULL,NULL,1579589468,1579589468,'N','N','N','N','N',NULL),

('admadmin/student/confirm-refund',2,'admadmin/student/confirm-refund',NULL,NULL,NULL,NULL,1578378117,1578378117,'N','N','N','N','N',NULL),

('admadmin/student/index',2,'admadmin/student/index',NULL,NULL,NULL,NULL,1574770748,1574770748,'N','N','N','N','N',NULL),

('admadmin/student/index-rc',2,'ignou2020july/student/index-rc',NULL,NULL,NULL,NULL,1599728136,1599728136,'N','N','N','N','N',NULL),

('admadmin/student/ou-index',2,'admadmin/student/ou-index',NULL,NULL,NULL,NULL,1575112013,1575112013,'N','N','N','N','N',NULL),

('admadmin/student/programme-index',2,'admadmin/student/programme-index',NULL,NULL,NULL,NULL,1575111988,1575111988,'N','N','N','N','N',NULL),

('admadmin/student/refund-process',2,'admadmin/student/refund-process',NULL,NULL,NULL,NULL,1578378136,1578378136,'N','N','N','N','N',NULL),

('admadmin/student/search',2,'admadmin/student/search',NULL,NULL,NULL,NULL,1579775772,1579775772,'N','N','N','N','N',NULL),

('admadmin/student/submit-confirm-refund-otp',2,'admadmin/student/submit-confirm-refund-otp',NULL,NULL,NULL,NULL,1594795930,1594795930,'N','N','N','N','N',NULL),

('admadmin/visualization/adm-confirm-report',2,'admadmin/visualization/adm-confirm-report',NULL,NULL,NULL,NULL,1599889629,1599889629,'N','N','N','N','N',NULL),

('admadmin/visualization/all-counts',2,'admadmin/visualization/all-counts',NULL,NULL,NULL,NULL,1599889604,1599889604,'N','N','N','N','N',NULL),

('admadmin/visualization/all-records',2,'admadmin/visualization/all-records',NULL,NULL,NULL,NULL,1574770872,1574770872,'N','N','N','N','N',NULL),

('admadmin/visualization/daily-graph',2,'admadmin/visualization/daily-graph',NULL,NULL,NULL,NULL,1574770843,1574770843,'N','N','N','N','N',NULL),

('admadmin/visualization/export',2,'admadmin/visualization/export',NULL,NULL,NULL,NULL,1576575687,1576575687,'N','N','N','N','N',NULL),

('admadmin/visualization/export-index',2,'admadmin/visualization/export-index',NULL,NULL,NULL,NULL,1580988987,1580988987,'N','N','N','N','N',NULL),

('admadmin/visualization/index',2,'admadmin/visualization/index',NULL,NULL,NULL,NULL,1574770733,1574770733,'N','N','N','N','N',NULL),

('admadmin/visualization/index-rc',2,'admadmin/visualization/index-rc',NULL,NULL,NULL,NULL,1599812789,1599812789,'N','N','N','N','N',NULL),

('admadmin/visualization/pay-amount',2,'admadmin/visualization/pay-amount',NULL,NULL,NULL,NULL,1599889616,1599889616,'N','N','N','N','N',NULL),

('admadmin/visualization/prg-wise-applications',2,'admadmin/visualization/prg-wise-applications','','',NULL,NULL,1575328935,1575328979,'N','N','N','N','N',NULL),

('admadmin/visualization/prg-wise-type',2,'admadmin/visualization/prg-wise-type',NULL,NULL,NULL,NULL,1599889593,1599889593,'N','N','N','N','N',NULL),

('admadmin/visualization/rc-wise-programme',2,'admadmin/visualization/rc-wise-programme',NULL,NULL,NULL,NULL,1574770858,1574770858,'N','N','N','N','N',NULL),

('admadmin/visualization/refund-data',2,'admadmin/visualization/refund-data',NULL,NULL,NULL,NULL,1580989071,1580989071,'N','N','N','N','N',NULL),

('admadmin/visualization/regional-centre-preference',2,'admadmin/visualization/regional-centre-preference',NULL,NULL,NULL,NULL,1574770890,1574770890,'N','N','N','N','N',NULL),

('admin',1,'This is the Administrator of the application. This role have all the permission that is applicable in the system.','','',NULL,NULL,NULL,1572262977,'N','N','N','N','N',NULL),

('admin1',1,'admin1',NULL,NULL,NULL,NULL,1601020353,1601020353,'N','N','N','N','N',NULL),

('admission_admin',1,'admission_admin',NULL,NULL,NULL,NULL,1611385013,1611385013,'N','N','N','N','N',NULL),

('admission_programme_administrator',1,'The role to performa admission related task programme wise  ','','',NULL,NULL,1600252786,1600252896,'N','N','N','N','N',NULL),

('admission/admission-board/create',2,'admission/admission-board/create',NULL,NULL,NULL,NULL,1574771908,1574771908,'N','N','N','N','N',NULL),

('admission/admission-board/index',2,'admission/admission-board/index',NULL,NULL,NULL,NULL,1574771065,1574771065,'N','N','N','N','N',NULL),

('admission/admission-board/update',2,'admission/admission-board/update',NULL,NULL,NULL,NULL,1574771935,1574771935,'N','N','N','N','N',NULL),

('admission/admission-board/view',2,'admission/admission-board/view',NULL,NULL,NULL,NULL,1574771923,1574771923,'N','N','N','N','N',NULL),

('admission/admission-qualification/create',2,'admission/admission-qualification/create',NULL,NULL,NULL,NULL,1574772281,1574772281,'N','N','N','N','N',NULL),

('admission/admission-qualification/index',2,'admission/admission-qualification/index',NULL,NULL,NULL,NULL,1574771119,1574771119,'N','N','N','N','N',NULL),

('admission/admission-qualification/update',2,'admission/admission-qualification/update',NULL,NULL,NULL,NULL,1574772339,1574772339,'N','N','N','N','N',NULL),

('admission/admission-qualification/view',2,'admission/admission-qualification/view',NULL,NULL,NULL,NULL,1574772295,1574772295,'N','N','N','N','N',NULL),

('admission/admission-upload/create',2,'admission/admission-upload/create',NULL,NULL,NULL,NULL,1574772388,1574772388,'N','N','N','N','N',NULL),

('admission/admission-upload/index',2,'admission/admission-upload/index',NULL,NULL,NULL,NULL,1574771621,1574771621,'N','N','N','N','N',NULL),

('admission/admission-upload/update',2,'admission/admission-upload/update',NULL,NULL,NULL,NULL,1574772418,1574772418,'N','N','N','N','N',NULL),

('admission/admission-upload/view',2,'admission/admission-upload/view',NULL,NULL,NULL,NULL,1574772402,1574772402,'N','N','N','N','N',NULL),

('admission/archive/index',2,'admission/archive/index for distance learning',NULL,NULL,NULL,NULL,1608274728,1608274728,'N','N','N','N','N',NULL),

('admission/country-master/create',2,'admission/country-master/create',NULL,NULL,NULL,NULL,1574772762,1574772762,'N','N','N','N','N',NULL),

('admission/country-master/index',2,'admission/country-master/index',NULL,NULL,NULL,NULL,1574771662,1574771662,'N','N','N','N','N',NULL),

('admission/country-master/update',2,'admission/country-master/update',NULL,NULL,NULL,NULL,1574772784,1574772784,'N','N','N','N','N',NULL),

('admission/country-master/view',2,'admission/country-master/view',NULL,NULL,NULL,NULL,1574772775,1574772775,'N','N','N','N','N',NULL),

('admission/dashboard/index',2,'admission/dashboard/index',NULL,NULL,NULL,NULL,1591624720,1591624720,'N','N','N','N','N',NULL),

('admission/district-master/create',2,'admission/district-master/create',NULL,NULL,NULL,NULL,1574772703,1574772703,'N','N','N','N','N',NULL),

('admission/district-master/index',2,'admission/district-master/index',NULL,NULL,NULL,NULL,1574771648,1574771648,'N','N','N','N','N',NULL),

('admission/district-master/update',2,'admission/district-master/update',NULL,NULL,NULL,NULL,1574772725,1574772725,'N','N','N','N','N',NULL),

('admission/district-master/view',2,'admission/district-master/view',NULL,NULL,NULL,NULL,1574772715,1574772715,'N','N','N','N','N',NULL),

('admission/programme-map',2,'admission/programme-map',NULL,NULL,NULL,NULL,1574772939,1574772939,'N','N','N','N','N',NULL),

('admission/programme-map/ajax-create',2,'admission/programme-map/ajax-create',NULL,NULL,NULL,NULL,1574772876,1574772876,'N','N','N','N','N',NULL),

('admission/programme-map/ajax-update',2,'admission/programme-map/ajax-update',NULL,NULL,NULL,NULL,1574773019,1574773019,'N','N','N','N','N',NULL),

('admission/programme-map/map-bulk',2,'admission/programme-map/map-bulk',NULL,NULL,NULL,NULL,1575402644,1575402644,'N','N','N','N','N',NULL),

('admission/programme-map/map-index',2,'admission/programme-map/map-index','','',NULL,NULL,1575402200,1575402270,'N','N','N','N','N',NULL),

('admission/session/ajax-update',2,'admission/session/ajax-update',NULL,NULL,NULL,NULL,1575403079,1575403079,'N','N','N','N','N',NULL),

('admission/session/app',2,'admission/session/app',NULL,NULL,NULL,NULL,1575402001,1575402001,'N','N','N','N','N',NULL),

('admission/session/create',2,'admission/session/create',NULL,NULL,NULL,NULL,1574771765,1574771765,'N','N','N','N','N',NULL),

('admission/session/index',2,'admission/session/index',NULL,NULL,NULL,NULL,1574771045,1574771045,'N','N','N','N','N',NULL),

('admission/session/update',2,'admission/session/update',NULL,NULL,NULL,NULL,1574771815,1574771815,'N','N','N','N','N',NULL),

('admission/session/view',2,'admission/session/view',NULL,NULL,NULL,NULL,1574771783,1574771783,'N','N','N','N','N',NULL),

('admission/settings/index',2,'admission/settings/index',NULL,NULL,NULL,NULL,1571988853,1571988853,'N','N','N','N','N',NULL),

('admission/state-master/create',2,'admission/state-master/create',NULL,NULL,NULL,NULL,1574772677,1574772677,'N','N','N','N','N',NULL),

('admission/state-master/index',2,'admission/state-master/index',NULL,NULL,NULL,NULL,1574771633,1574771633,'N','N','N','N','N',NULL),

('admission/state-master/update',2,'admission/state-master/update',NULL,NULL,NULL,NULL,1574772643,1574772643,'N','N','N','N','N',NULL),

('admission/state-master/view',2,'admission/state-master/view',NULL,NULL,NULL,NULL,1574772632,1574772632,'N','N','N','N','N',NULL),

('admission/visualization-admission/index',2,'admission/visualization-admission/index',NULL,NULL,NULL,NULL,1608296048,1608296048,'N','N','N','N','N',NULL),

('admission/visualization/index',2,'admission/visualization/index',NULL,NULL,NULL,NULL,1608296018,1608296018,'N','N','N','N','N',NULL),

('affiliation_admin',1,'affiliation_admin',NULL,NULL,NULL,NULL,1584480997,1584480997,'N','N','N','N','N',NULL),

('affiliation_user',1,'affiliation_user',NULL,NULL,NULL,NULL,1584481015,1584481015,'N','N','N','N','N',NULL),

('affiliation/affiliation-user/index',2,'affiliation/affiliation-user/index',NULL,NULL,NULL,NULL,1611748854,1611748854,'N','N','N','N','N',NULL),

('affiliation/app/create',2,'Affiliation',NULL,'s:0:\"\";',NULL,'affiliation',1623749834,1623749834,'Y','N','Y','N','N',NULL),

('affiliation/app/delete',2,'delete the details',NULL,'s:0:\"\";',NULL,'affiliation',1623750916,1623750916,'Y','Y','Y','Y','Y',NULL),

('affiliation/app/update',2,'update details',NULL,'s:0:\"\";',NULL,'affiliation',1623750880,1623750880,'Y','N','Y','Y','N',NULL),

('ajay',2,'professor',NULL,NULL,NULL,NULL,1611987525,1611987525,'N','N','N','N','N',NULL),

('alumini data collection',2,'details of alumini need to be collected',NULL,NULL,NULL,NULL,1596986584,1596986584,'N','N','N','N','N',NULL),

('alumni_admin',1,'alumni_admin',NULL,NULL,NULL,NULL,1590761559,1590761559,'N','N','N','N','N',NULL),

('alumni_administration/admin/approve-alumini',2,'alumni_administration/admin/approve-alumini',NULL,'',NULL,'alumni_administration',1590761747,1626155403,'N','N','N','N','N',NULL),

('alumni_administration/admin/create',2,'alumni_administration/admin/create',NULL,'',NULL,'alumni_administration',1590761764,1626155446,'Y','N','N','N','N',NULL),

('alumni_administration/admin/index',2,'alumni_administration/admin/index',NULL,'',NULL,'alumni_administration',1590761608,1626155671,'Y','N','N','N','N',NULL),

('alumni_administration/admin/mail',2,'alumni_administration/admin/mail',NULL,'s:0:\"\";',NULL,'alumni_administration',1625723130,1625723130,'N','Y','N','N','N',NULL),

('alumni_administration/admin/settings',2,'alumni_administration/admin/settings',NULL,'s:0:\"\";',NULL,'alumni_administration',1625722604,1625722604,'N','N','N','Y','N',NULL),

('alumni_administration/admin/update',2,'alumni_administration/admin/update',NULL,'',NULL,'alumni_administration',1590761795,1626155820,'N','N','N','N','Y',NULL),

('alumni_administration/admin/verified-index',2,'alumni_administration/admin/verified-index',NULL,'',NULL,'alumni_administration',1590761667,1626155868,'Y','Y','N','N','N',NULL),

('alumni_administration/admin/view',2,'alumni_administration/admin/view',NULL,'',NULL,'alumni_administration',1590761809,1626156881,'N','N','N','N','N',NULL),

('alumni_administration/import/import-alumni',2,'alumni_administration/import/import-alumni',NULL,'',NULL,'alumni_administration',1612505595,1626156930,'N','N','N','N','N',NULL),

('alumni_administration/import/process-and-import-data',2,'alumni_administration/import/process-and-import-data',NULL,'',NULL,'alumni_administration',1615010197,1626157001,'N','N','N','N','N',NULL),

('alumni_administration/mail-template/create',2,'alumni_administration/mail-template/create',NULL,'s:0:\"\";',NULL,'alumni_administration',1625793191,1625793191,'N','N','N','Y','N',NULL),

('alumni_administration/mail-template/index',2,'alumni_administration/mail-template/index',NULL,'s:0:\"\";',NULL,'alumni_administration',1625722669,1626157146,'N','Y','N','Y','N',NULL),

('alumni_administration/mail-template/update',2,'alumni_administration/mail-template/update',NULL,'s:0:\"\";',NULL,'alumni_administration',1625793225,1626157157,'N','N','N','N','Y',NULL),

('alumni_administration/mail-template/view',2,'alumni_administration/mail-template/view',NULL,'s:0:\"\";',NULL,'alumni_administration',1625793266,1625793266,'N','N','N','N','N',NULL),

('alumni_administration/ou-admin-mapping/create',2,'alumni_administration/ou-admin-mapping/create',NULL,'s:0:\"\";',NULL,'alumni_administration',1625723017,1625723017,'N','N','N','Y','N',NULL),

('alumni_administration/ou-admin-mapping/index',2,'alumni_administration/ou-admin-mapping/index',NULL,'s:0:\"\";',NULL,'alumni_administration',1625722956,1625722956,'N','N','N','Y','N',NULL),

('alumni_administration/ou-admin-mapping/view',2,'alumni_administration/ou-admin-mapping/view',NULL,'s:0:\"\";',NULL,'alumni_administration',1625792431,1625792431,'N','N','N','N','N',NULL),

('alumni_ou_admin',1,'alumni_ou_admin',NULL,NULL,NULL,NULL,1585054097,1585054097,'N','N','N','N','N',NULL),

('api_admin',1,'API Admin',NULL,NULL,NULL,NULL,1584449290,1584449290,'N','N','N','N','N',NULL),

('application-control/index',2,'application-control/index','','',NULL,NULL,1609582441,1609582640,'N','N','N','N','N',NULL),

('authitem/permission-role-mapping',2,'authitem/permission-role-mapping',NULL,'s:0:\"\";',NULL,'leave',1622112215,1622112215,'N','N','N','N','N',NULL),

('cas_admin',1,'CAS Admin',NULL,NULL,NULL,NULL,1587045722,1587045722,'N','N','N','N','N',NULL),

('cas_employee',1,'CAS Employee',NULL,NULL,NULL,NULL,1589018671,1589018671,'N','N','N','N','N',NULL),

('cas_iqac',1,'Commitee Member of the IQAC',NULL,NULL,NULL,NULL,1597752089,1597752089,'N','N','N','N','N',NULL),

('cas_reporting_officer',1,'CAS Reporting Officer',NULL,NULL,NULL,NULL,1598271087,1598271087,'N','N','N','N','N',NULL),

('cas_reviewing_officer',1,'TO Review CAS-APAR application','','',NULL,NULL,1598523774,1603106734,'N','N','N','N','N',NULL),

('cas-apar-applications/apar-employee-index',2,'View Application APAR - ADmin',NULL,NULL,NULL,NULL,1599121765,1599121765,'N','N','N','N','N',NULL),

('cas-apar-applications/continue-application-review',2,'Forward Reviewd App - CAS -APAR  - Reviewer ROle',NULL,NULL,NULL,NULL,1598879032,1598879032,'N','N','N','N','N',NULL),

('cas/cas-apar-applications/admin-index',2,'Admin , Index',NULL,'',NULL,'cas',1598875522,1627017407,'N','N','N','N','N',NULL),

('cas/cas-apar-applications/apar-employee-index',2,'Employee index for CAS - APAR',NULL,'',NULL,'cas',1598872877,1627017718,'N','N','N','N','N',NULL),

('cas/cas-apar-applications/application-report-create',2,'CREATE - CAS - APAR - Reporting Role',NULL,'',NULL,'cas',1598876956,1627017739,'N','N','N','N','N',NULL),

('cas/cas-apar-applications/application-report-update',2,'Application Update.',NULL,'',NULL,'cas',1598877912,1627017763,'N','N','N','N','N',NULL),

('cas/cas-apar-applications/application-report-view',2,'Reporter Role  -View  (CAS - APAR)',NULL,'',NULL,'cas',1598877528,1627017789,'N','N','N','N','N',NULL),

('cas/cas-apar-applications/application-review-create',2,'Create Application Reviewer Role',NULL,'',NULL,'cas',1598878554,1627017802,'N','N','N','N','N',NULL),

('cas/cas-apar-applications/application-review-update',2,'Update Reviewd APP - CAS APAR',NULL,'',NULL,'cas',1598878876,1627032208,'N','N','N','N','Y',NULL),

('cas/cas-apar-applications/application-review-view',2,'View Reviewed APP. - CAS -APAR',NULL,'',NULL,'cas',1598878802,1627017814,'N','N','N','N','N',NULL),

('cas/cas-apar-applications/application-view',2,'Employee to View Created Application',NULL,'',NULL,'cas',1598876364,1627017837,'N','N','N','N','N',NULL),

('cas/cas-apar-applications/continue-admin-application',2,'Admin to Forward App. to Employee.',NULL,'',NULL,'cas',1598875155,1627017858,'N','N','N','N','N',NULL),

('cas/cas-apar-applications/continue-application',2,'To Continue Application - EMP (CAS - APAR)',NULL,'',NULL,'cas',1598876557,1627017869,'N','N','N','N','N',NULL),

('cas/cas-apar-applications/continue-application-report',2,'Forward APP (CAS _ APAR) - Reporter Role',NULL,'',NULL,'cas',1598878201,1627017880,'N','N','N','N','N',NULL),

('cas/cas-apar-applications/continue-application-review',2,'Forward Review AApplication - CAS -APAR - Reviewer',NULL,'',NULL,'cas',1598879210,1627032337,'N','N','N','N','N',NULL),

('cas/cas-apar-applications/create',2,'Create Application for ADmin',NULL,'',NULL,'cas',1598873238,1627017894,'N','N','N','N','N',NULL),

('cas/cas-apar-applications/download-pdf',2,'Download PDF of APP. - CAS APAR',NULL,'',NULL,'cas',1598879337,1627017915,'N','N','N','N','N',NULL),

('cas/cas-apar-applications/employee-application-create',2,'EMPLOYEE TO FILL APAR FORM',NULL,'',NULL,'cas',1598876016,1627017932,'N','N','N','N','N',NULL),

('cas/cas-apar-applications/employee-application-update',2,'EMP. UPDATE APP. - CAS -APAR',NULL,'',NULL,'cas',1598876452,1627017948,'N','N','N','N','Y',NULL),

('cas/cas-apar-applications/employee-index',2,'Employee Index CAS - APAR',NULL,'',NULL,'cas',1598875787,1627017964,'N','N','N','N','N',NULL),

('cas/cas-apar-applications/employee-view',2,'EMployee to View FWD. Application',NULL,'',NULL,'cas',1598875942,1627017996,'N','N','N','N','N',NULL),

('cas/cas-apar-applications/index',2,'CAS - APAR - Index',NULL,'',NULL,'cas',1598876737,1627018034,'N','N','N','N','N',NULL),

('cas/cas-apar-applications/send-back',2,'Send Back the App - APAR',NULL,'',NULL,'cas',1601275310,1627018145,'N','N','N','N','N',NULL),

('cas/cas-apar-applications/update',2,'Update App. Admin',NULL,'',NULL,'cas',1598873423,1627018156,'N','N','N','N','Y',NULL),

('cas/cas-apar-applications/view',2,'View Application Admin',NULL,'',NULL,'cas',1598873352,1627018168,'N','N','N','N','N',NULL),

('cas/cas-application/create',2,'to Create a new CAS Application',NULL,'',NULL,'cas',1585734390,1627018194,'N','N','N','N','N',NULL),

('cas/cas-head/create',2,'Action to create CAS Head','','',NULL,'cas',1563865556,1627018204,'N','N','N','N','N',NULL),

('cas/cas-head/delete',2,'cas/cas-head/delete',NULL,'',NULL,'cas',1563865574,1627018214,'N','N','N','N','Y',NULL),

('cas/cas-head/index',2,'cas/cas-head/index',NULL,'',NULL,'cas',1563865527,1627018225,'N','N','N','N','N',NULL),

('cas/cas-head/update',2,'cas/cas-head/update',NULL,'',NULL,'cas',1563865567,1627032698,'N','N','N','N','Y',NULL),

('cas/cas-head/view',2,'cas/cas-head/view',NULL,'',NULL,'cas',1563865539,1627018266,'N','N','N','N','N',NULL),

('cas/cas-pbas-applications/academic-details-preview',2,'To View Academic Details Preivew',NULL,'',NULL,'cas',1610969573,1627018290,'N','N','N','N','N',NULL),

('cas/cas-pbas-applications/create',2,'Create PBAS Application in CAS - Emlouee',NULL,'',NULL,'cas',1599130072,1627018309,'N','N','N','N','N',NULL),

('cas/cas-pbas-applications/create-research',2,'cas/cas-pbas-applications/create-research',NULL,'',NULL,'cas',1605546442,1627018320,'N','N','N','N','N',NULL),

('cas/cas-pbas-applications/download-pdf',2,'To Download PDF of the application . CAS - PBAS',NULL,'',NULL,'cas',1599801467,1627018335,'N','N','N','N','N',NULL),

('cas/cas-pbas-applications/extra-details',2,'Extra Details Section Update - PBAS =CAS',NULL,'',NULL,'cas',1599053454,1627018354,'N','N','N','N','N',NULL),

('cas/cas-pbas-applications/extra-details-preview',2,'Preview Extra Details - PBAS -CAS',NULL,'',NULL,'cas',1599053261,1627018346,'N','N','N','N','N',NULL),

('cas/cas-pbas-applications/forward-to-iqac',2,'To Forward applocation to IQAC Dept','','',NULL,'cas',1599481486,1627018367,'N','N','N','N','N',NULL),

('cas/cas-pbas-applications/forward-to-vc',2,'To forward application to vc','','',NULL,'cas',1599481114,1627018376,'N','N','N','N','N',NULL),

('cas/cas-pbas-applications/index',2,'CAS Application Index',NULL,'',NULL,'cas',1599052466,1627018386,'N','N','N','N','N',NULL),

('cas/cas-pbas-applications/preview-and-submit',2,'Preview PBAS - CAS Application .',NULL,'',NULL,'cas',1599053628,1627018405,'N','N','N','N','N',NULL),

('cas/cas-pbas-applications/process-application',2,'Process Application - Employee',NULL,'',NULL,'cas',1599053857,1627032832,'N','N','N','N','N',NULL),

('cas/cas-pbas-applications/quick-track',2,'TO Track the status of Application - CAS - PBAS','','',NULL,'cas',1599803298,1627018441,'N','N','N','N','N',NULL),

('cas/cas-pbas-applications/research-details',2,'Teaching Details Section CAS - PBAS',NULL,'',NULL,'cas',1599053147,1627018452,'N','N','N','N','N',NULL),

('cas/cas-pbas-applications/research-details-preview',2,'Teaching Details Update',NULL,'',NULL,'cas',1599053055,1627018463,'N','N','N','N','N',NULL),

('cas/cas-pbas-applications/review-applications',2,'Review CAS - PBAS Applications',NULL,'',NULL,'cas',1599482345,1627018474,'N','N','N','N','N',NULL),

('cas/cas-pbas-applications/screening-details-preview',2,'Preview Screening Score Before Submission - CAS PBAS App.',NULL,'',NULL,'cas',1599744671,1627019219,'N','N','N','N','N',NULL),

('cas/cas-pbas-applications/start-screening',2,'To Start the screening',NULL,'',NULL,'cas',1599481827,1627018505,'N','N','N','N','N',NULL),

('cas/cas-pbas-applications/submit-screening',2,'To Submit the Screening of the application',NULL,'',NULL,'cas',1599481855,1627018516,'N','N','N','N','N',NULL),

('cas/cas-pbas-applications/teaching-details-preview',2,'Preview Teaching Section PBAS -CAS','','',NULL,'cas',1599052691,1627019206,'N','N','N','N','N',NULL),

('cas/cas-pbas-applications/teaching-details-update',2,'Update Teaching Section CAS - PBAS',NULL,'',NULL,'cas',1599052933,1627019268,'N','N','N','N','Y',NULL),

('cas/cas-pbas-applications/update',2,'Update PBAS App.',NULL,'',NULL,'cas',1599052593,1627019282,'N','N','N','N','Y',NULL),

('cas/cas-pbas-applications/view',2,'View PBAS Application',NULL,'',NULL,'cas',1599052522,1627019292,'N','N','N','N','N',NULL),

('cas/cas-pbas-applications/view-forwarded-application',2,'To view application forwarded After the draft',NULL,'',NULL,'cas',1599802448,1627019502,'N','N','N','N','N',NULL),

('cas/cas-pbas-applications/view-reviewed-application',2,'To View Reviewed application - PBAS CAS',NULL,'',NULL,'cas',1599803958,1627033422,'N','N','N','N','N',NULL),

('cas/cas/check-registration-status',2,'cas/cas/check-registration-status',NULL,'',NULL,'cas',1563865443,1627033447,'N','N','N','N','N',NULL),

('cas/cas/create',2,'cas/cas/create',NULL,'',NULL,'cas',1563865184,1627033463,'N','N','N','N','N',NULL),

('cas/cas/delete',2,'cas/cas/delete',NULL,'',NULL,'cas',1563865221,1627033674,'N','N','N','N','Y',NULL),

('cas/cas/fupload',2,'cas/cas/fupload',NULL,'',NULL,'cas',1563865468,1627033685,'N','N','N','N','N',NULL),

('cas/cas/index',2,'cas/cas/index',NULL,'',NULL,'cas',1563864785,1627033698,'N','N','N','N','N',NULL),

('cas/cas/print-pdf',2,'cas/cas/print-pdf',NULL,'',NULL,'cas',1563865414,1627033712,'N','N','N','N','N',NULL),

('cas/cas/process-form',2,'cas/cas/process-form',NULL,'',NULL,'cas',1563865481,1627033723,'N','N','N','N','N',NULL),

('cas/cas/researcharticle',2,'cas/cas/researcharticle',NULL,'',NULL,'cas',1563865361,1627033752,'N','N','N','N','N',NULL),

('cas/cas/submit',2,'cas/cas/submit',NULL,'',NULL,'cas',1563865396,1627033763,'N','N','N','N','N',NULL),

('cas/cas/update',2,'cas/cas/update',NULL,'',NULL,'cas',1563865209,1627035041,'N','N','N','N','N',NULL),

('cas/cas/view',2,'cas/cas/view',NULL,'',NULL,'cas',1563865144,1627035051,'N','N','N','N','N',NULL),

('cas/designation-head/create',2,'cas/designation-head/create',NULL,'',NULL,'cas',1563865672,1627035064,'N','N','N','N','N',NULL),

('cas/designation-head/delete',2,'cas/designation-head/delete',NULL,'',NULL,'cas',1563865690,1627035147,'N','N','N','N','Y',NULL),

('cas/designation-head/index',2,'cas/designation-head/index',NULL,'',NULL,'cas',1563865599,1627035140,'N','N','N','N','N',NULL),

('cas/designation-head/update',2,'cas/designation-head/update',NULL,'',NULL,'cas',1563865680,1627035160,'N','N','N','N','Y',NULL),

('cas/designation-head/view',2,'cas/designation-head/view',NULL,'',NULL,'cas',1563865611,1627035171,'N','N','N','N','N',NULL),

('cas/promotion-head/create',2,'cas/promotion-head/create',NULL,'',NULL,'cas',1563865729,1627035187,'N','N','N','N','N',NULL),

('cas/promotion-head/delete',2,'cas/promotion-head/delete',NULL,'',NULL,'cas',1563865750,1627036064,'N','N','N','N','N',NULL),

('cas/promotion-head/index',2,'cas/promotion-head/index',NULL,'',NULL,'cas',1563865710,1627035209,'N','N','N','N','N',NULL),

('cas/promotion-head/update',2,'cas/promotion-head/update',NULL,'',NULL,'cas',1563865741,1627035229,'N','N','N','N','Y',NULL),

('cas/promotion-head/view',2,'cas/promotion-head/view',NULL,'',NULL,'cas',1563865719,1627035239,'N','N','N','N','N',NULL),

('cas/publication-head/create',2,'cas/publication-head/create',NULL,'',NULL,'cas',1563865848,1627035268,'N','N','N','N','N',NULL),

('cas/publication-head/delete',2,'cas/publication-head/delete',NULL,'',NULL,'cas',1563865799,1627036104,'N','N','N','N','N',NULL),

('cas/publication-head/index',2,'cas/publication-head/index',NULL,NULL,NULL,NULL,1563865820,1563865820,'N','N','N','N','N',NULL),

('cas/publication-head/update',2,'cas/publication-head/update',NULL,'',NULL,'cas',1563865860,1627036115,'N','N','N','N','N',NULL),

('cas/publication-head/view',2,'cas/publication-head/view',NULL,'',NULL,'cas',1563865833,1627037383,'N','N','N','N','N',NULL),

('cas/tracking-status/create',2,'cas/tracking-status/create',NULL,'',NULL,'cas',1563865898,1627036125,'N','N','N','N','N',NULL),

('cas/tracking-status/delete',2,'cas/tracking-status/delete',NULL,'',NULL,'cas',1563865920,1627037466,'N','N','N','N','Y',NULL),

('cas/tracking-status/index',2,'cas/tracking-status/index',NULL,'',NULL,'cas',1563865881,1627037474,'N','N','N','N','N',NULL),

('cas/tracking-status/update',2,'cas/tracking-status/update',NULL,'',NULL,'cas',1563865909,1627037483,'N','N','N','N','N',NULL),

('cas/tracking-status/view',2,'cas/tracking-status/view',NULL,'',NULL,'cas',1563865889,1627037492,'N','N','N','N','N',NULL),

('ccs_admin',1,'ccs_admin',NULL,NULL,NULL,NULL,1584824392,1584824392,'N','N','N','N','N',NULL),

('ccs/admin/dashboard',2,'ccs/admin/dashboard',NULL,'',NULL,'ccs',1584971144,1625747146,'N','N','N','N','N',NULL),

('ccs/admin/employee',2,'ccs/admin/employee',NULL,'',NULL,'ccs',1584971114,1625747197,'Y','N','N','N','N',NULL),

('ccs/admin/student',2,'ccs/admin/student',NULL,'',NULL,'ccs',1584971127,1625747260,'Y','N','N','N','N',NULL),

('ccs/admin/view',2,'ccs/admin/view',NULL,'',NULL,'ccs',1591686796,1625747310,'N','N','N','N','N',NULL),

('ccs/commuinication/index',2,'ccs/commuinication/index',NULL,'',NULL,'ccs',1584971179,1625748513,'Y','Y','N','N','N',NULL),

('ccs/groups/create',2,'ccs/groups/create',NULL,'',NULL,'ccs',1611506457,1625748576,'Y','N','N','N','N',NULL),

('ccs/groups/delete',2,'ccs/groups/delete',NULL,'',NULL,'ccs',1611507169,1625750383,'N','N','N','N','N',NULL),

('ccs/groups/index',2,'ccs/groups/index',NULL,'',NULL,'ccs',1611369950,1625750423,'Y','N','N','N','N',NULL),

('ccs/groups/update',2,'ccs/groups/update',NULL,'',NULL,'ccs',1611506503,1625750462,'N','N','N','N','Y',NULL),

('ccs/groups/view',2,'ccs/groups/view',NULL,'',NULL,'ccs',1611506482,1625750488,'N','N','N','N','N',NULL),

('ccs/groups/view-members',2,'ccs/groups/view-members',NULL,'',NULL,'ccs',1611506550,1625750569,'N','N','N','N','N',NULL),

('ccs/groups/view-student-members',2,'Permission to manage the Group Members',NULL,'',NULL,'ccs',1611300329,1625750619,'N','N','N','N','N',NULL),

('ccs/mail/view',2,'ccs/mail/view',NULL,'',NULL,'ccs',1584971212,1625750674,'N','N','N','N','N',NULL),

('ccs/settings/index',2,'Permission to manage the Settings Tab',NULL,'',NULL,'ccs',1611300329,1625750970,'N','N','N','Y','N',NULL),

('cfs_admin',1,'This Role is for admin of  Content Federation System.\r\nIt is an authoritative role with the power of rejection or approval  of the content',NULL,NULL,NULL,NULL,1581751579,1581751579,'N','N','N','N','N',NULL),

('cfs_ou_admin',1,'This role is for the person who requested content publish.',NULL,NULL,NULL,NULL,1581751641,1581751641,'N','N','N','N','N',NULL),

('cfs/default/analysis',2,'cfs/default/analysis',NULL,NULL,NULL,NULL,1581751841,1581751841,'N','N','N','N','N',NULL),

('cfs/default/index',2,'cfs/default/index',NULL,NULL,NULL,NULL,1581751214,1581751214,'N','N','N','N','N',NULL),

('cfs/item/create',2,'cfs/item/create',NULL,NULL,NULL,NULL,1581752322,1581752322,'N','N','N','N','N',NULL),

('cfs/item/delete',2,'cfs/item/delete',NULL,NULL,NULL,NULL,1581934952,1581934952,'N','N','N','N','N',NULL),

('cfs/item/index',2,'cfs/item/index',NULL,NULL,NULL,NULL,1581752287,1581752287,'N','N','N','N','N',NULL),

('cfs/item/index-for-dept',2,'cfs/item/index-for-dept',NULL,NULL,NULL,NULL,1581752410,1581752410,'N','N','N','N','N',NULL),

('cfs/order-table/all-index',2,'cfs/order-table/all-index',NULL,NULL,NULL,NULL,1581751241,1581751241,'N','N','N','N','N',NULL),

('cfs/order-table/create',2,'cfs/order-table/create',NULL,NULL,NULL,NULL,1581751911,1581751911,'N','N','N','N','N',NULL),

('cfs/order-table/update',2,'cfs/order-table/update',NULL,NULL,NULL,NULL,1581751925,1581751925,'N','N','N','N','N',NULL),

('cfs/order-table/update-status',2,'cfs/order-table/update-status',NULL,NULL,NULL,NULL,1581751951,1581751951,'N','N','N','N','N',NULL),

('cfs/order-table/view',2,'cfs/order-table/view',NULL,NULL,NULL,NULL,1581752366,1581752366,'N','N','N','N','N',NULL),

('cfs/publishing-head/create',2,'cfs/publishing-head/create',NULL,NULL,NULL,NULL,1581752511,1581752511,'N','N','N','N','N',NULL),

('cfs/publishing-head/index',2,'cfs/publishing-head/index',NULL,NULL,NULL,NULL,1581752486,1581752486,'N','N','N','N','N',NULL),

('cfs/publishing-head/update',2,'cfs/publishing-head/update',NULL,NULL,NULL,NULL,1581752522,1581752522,'N','N','N','N','N',NULL),

('cfs/publishing-head/view',2,'cfs/publishing-head/view',NULL,NULL,NULL,NULL,1581752498,1581752498,'N','N','N','N','N',NULL),

('cfs/settings/index',2,'cfs/settings/index',NULL,NULL,NULL,NULL,1581751880,1581751880,'N','N','N','N','N',NULL),

('cfs/tracking-status/index',2,'cfs/tracking-status/index',NULL,NULL,NULL,NULL,1581751864,1581751864,'N','N','N','N','N',NULL),

('cfs/tracking-status/index-order',2,'cfs/tracking-status/index-order',NULL,NULL,NULL,NULL,1581758956,1581758956,'N','N','N','N','N',NULL),

('conference_hall_admin',1,'admin to allot hall',NULL,NULL,NULL,NULL,1584428772,1584428772,'N','N','N','N','N',NULL),

('dashboard/settings',2,'dashboard/settings',NULL,NULL,NULL,NULL,1610628567,1610628567,'N','N','N','N','N',NULL),

('dean',1,'To verify and Forward/Backward application','','',NULL,NULL,1601191907,1603106690,'N','N','N','N','N',NULL),

('document/document-type/create',2,'document/document-type/create',NULL,'',NULL,'document',1603949570,1625482969,'N','N','N','N','N',NULL),

('document/document-type/index',2,'document/document-type/index',NULL,'',NULL,'document',1603877644,1625728753,'N','N','N','N','N',NULL),

('document/document-type/update',2,'document/document-type/update',NULL,'',NULL,'document',1612779821,1625728982,'N','N','N','N','Y',NULL),

('document/document-type/view',2,'document/document-type/view',NULL,'',NULL,'document',1603949854,1625728930,'N','N','N','N','N',NULL),

('document/document/describe',2,'document/document/describe',NULL,'',NULL,'document',1603947872,1625728961,'N','N','N','N','N',NULL),

('document/document/describe-update',2,'document/document/describe-update',NULL,'',NULL,'document',1603950032,1625729052,'N','N','N','N','Y',NULL),

('document/document/index',2,'document/document/index',NULL,'',NULL,'document',1602920216,1625729111,'N','N','N','N','N',NULL),

('document/document/view',2,'document/document/view',NULL,'',NULL,'document',1603949743,1625734115,'N','N','N','N','N',NULL),

('document/upload/delete-admin',2,'document/upload/delete-admin',NULL,'',NULL,'document',1611904938,1625734211,'N','N','N','N','N',NULL),

('document/upload/form',2,'document/upload/form',NULL,'',NULL,'document',1603950167,1625734294,'N','N','N','N','N',NULL),

('document/upload/save-admin',2,'document/upload/save-admin',NULL,'',NULL,'document',1608282859,1625734982,'N','N','N','N','N',NULL),

('ehousing_admin',1,'Admin role for Ehousing module',NULL,NULL,NULL,NULL,1587452110,1587452110,'N','N','N','N','N',NULL),

('ehousing_employee',1,'Employee role for Ehousing module',NULL,NULL,NULL,NULL,1587452145,1587452145,'N','N','N','N','N',NULL),

('ehousing/admin/ehousing-employee-record/create',2,'Permission to create houses in Ehousing/Estate',NULL,NULL,NULL,NULL,1583322265,1583322265,'N','N','N','N','N',NULL),

('ehousing/admin/ehousing-employee-record/delete',2,'Permission to delete the employee-house record',NULL,NULL,NULL,NULL,1583322493,1583322493,'N','N','N','N','N',NULL),

('ehousing/admin/ehousing-employee-record/index',2,'Permission to list employee-house record',NULL,NULL,NULL,NULL,1583322296,1583322296,'N','N','N','N','N',NULL),

('ehousing/admin/ehousing-employee-record/update',2,'Permission to update the employee-house record',NULL,NULL,NULL,NULL,1583322434,1583322434,'N','N','N','N','N',NULL),

('ehousing/admin/ehousing-employee-record/view',2,'Permission to view the employee-house record',NULL,NULL,NULL,NULL,1583322331,1583322331,'N','N','N','N','N',NULL),

('ehousing/admin/ehousing-registration-form/allotment-details',2,'Permission to fetch allotment details',NULL,NULL,NULL,NULL,1587456678,1587456678,'N','N','N','N','N',NULL),

('ehousing/admin/ehousing-registration-form/applications-fresh',2,'Permission to fetch application on the basis of fresh application type',NULL,NULL,NULL,NULL,1587456582,1587456582,'N','N','N','N','N',NULL),

('ehousing/admin/ehousing-registration-form/applications-relocate',2,'Permission to fetch application on the basis of relocation application type','','',NULL,NULL,1587456547,1587456603,'N','N','N','N','N',NULL),

('ehousing/admin/ehousing-registration-form/applications-upgrade',2,'Permission to fetch application on the basis of upgrade application type','','',NULL,NULL,1587456498,1587456593,'N','N','N','N','N',NULL),

('ehousing/admin/ehousing-registration-form/confirm-allotment',2,'Permission for house confirmation',NULL,NULL,NULL,NULL,1587456643,1587456643,'N','N','N','N','N',NULL),

('ehousing/admin/ehousing-registration-form/create',2,'Permission to register for houses',NULL,NULL,NULL,NULL,1583322580,1583322580,'N','N','N','N','N',NULL),

('ehousing/admin/ehousing-registration-form/house-preference',2,'Permission to fetch house preference of employee',NULL,NULL,NULL,NULL,1587456397,1587456397,'N','N','N','N','N',NULL),

('ehousing/admin/ehousing-registration-form/index',2,'Permission to list registrations',NULL,NULL,NULL,NULL,1583322625,1583322625,'N','N','N','N','N',NULL),

('ehousing/admin/ehousing-registration-form/print-form',2,'Permission to print registration form',NULL,NULL,NULL,NULL,1587456845,1587456845,'N','N','N','N','N',NULL),

('ehousing/admin/ehousing-registration-form/submit',2,'Permission to submit the application',NULL,NULL,NULL,NULL,1587456719,1587456719,'N','N','N','N','N',NULL),

('ehousing/admin/ehousing-registration-form/update',2,'Permission to update the registration record',NULL,NULL,NULL,NULL,1583322676,1583322676,'N','N','N','N','N',NULL),

('ehousing/admin/ehousing-registration-form/view',2,'Permission to view the registration',NULL,NULL,NULL,NULL,1583322651,1583322651,'N','N','N','N','N',NULL),

('ehousing/admin/ehousing-scheme/create',2,'Permission to create Ehousing Scheme',NULL,NULL,NULL,NULL,1583322727,1583322727,'N','N','N','N','N',NULL),

('ehousing/admin/ehousing-scheme/house',2,'Permission to fetch houses',NULL,NULL,NULL,NULL,1587456254,1587456254,'N','N','N','N','N',NULL),

('ehousing/admin/ehousing-scheme/index',2,'Permission to list all the schemes',NULL,NULL,NULL,NULL,1583322758,1583322758,'N','N','N','N','N',NULL),

('ehousing/admin/ehousing-scheme/publish',2,'Permission to publish the scheme',NULL,NULL,NULL,NULL,1587456294,1587456294,'N','N','N','N','N',NULL),

('ehousing/admin/ehousing-scheme/update',2,'Permission to update the scheme',NULL,NULL,NULL,NULL,1583322818,1583322818,'N','N','N','N','N',NULL),

('ehousing/admin/ehousing-scheme/view',2,'Permission to view the scheme',NULL,NULL,NULL,NULL,1583322785,1583322785,'N','N','N','N','N',NULL),

('ehousing/admin/house-type/create',2,'Permission to create type of houses',NULL,NULL,NULL,NULL,1583323044,1583323044,'N','N','N','N','N',NULL),

('ehousing/admin/house-type/index',2,'Permission to list all the type of houses',NULL,NULL,NULL,NULL,1583323012,1583323012,'N','N','N','N','N',NULL),

('ehousing/admin/house-type/update',2,'Permission to update the house type',NULL,NULL,NULL,NULL,1583323088,1583323088,'N','N','N','N','N',NULL),

('ehousing/admin/house-type/view',2,'Permission to view the house type',NULL,NULL,NULL,NULL,1583323066,1583323066,'N','N','N','N','N',NULL),

('ehousing/dashboard/dashboard',2,'Ehousing Dashboard',NULL,NULL,NULL,NULL,1583321650,1583321650,'N','N','N','N','N',NULL),

('ehousing/dashboard/employee-dashboard',2,'Ehousing Employee Dashboard',NULL,NULL,NULL,NULL,1583321691,1583321691,'N','N','N','N','N',NULL),

('ehousing/dashboard/employee-index',2,'Employee Index',NULL,NULL,NULL,NULL,1583321978,1583321978,'N','N','N','N','N',NULL),

('ehousing/dashboard/houses',2,'Permission to find the houses from Estate',NULL,NULL,NULL,NULL,1583322040,1583322040,'N','N','N','N','N',NULL),

('employee',1,'This role is automatically assigned to the employee when its respective login is created.','','',NULL,NULL,1564143123,1572262985,'N','N','N','N','N',NULL),

('employee_admin',1,'HR Admin',NULL,NULL,NULL,NULL,1585299953,1585299953,'N','N','N','N','N',NULL),

('employee_admin_view',1,'View only permission for Employee module',NULL,NULL,NULL,NULL,1571379046,1571379046,'N','N','N','N','N',NULL),

('employee_statistics_view',1,'Role to view only statistics of employee',NULL,NULL,NULL,NULL,1579591400,1579591400,'N','N','N','N','N',NULL),

('employee-leave-mapping/index',2,'employee-leave-mapping/index',NULL,NULL,NULL,NULL,1580199028,1580199028,'N','N','N','N','N',NULL),

('employee-record/confirm-employees-leave',2,'employee-record/confirm-employees-leave',NULL,NULL,NULL,NULL,1580207552,1580207552,'N','N','N','N','N',NULL),

('employee/dashboard/index',2,'assigning this permission makes user admin of Employee management system','','',NULL,'employee',1564716821,1627039151,'N','N','N','N','N',NULL),

('employee/extradetails/family-details/create',2,'employee/extradetails/family-details/create',NULL,'s:0:\"\";',NULL,'employee',1622519363,1627039165,'N','N','Y','N','N',NULL),

('employee/grouping-groups/overview',2,'Overview Payroll Management Group',NULL,'',NULL,'employee',1586153615,1627039180,'N','N','N','N','N',NULL),

('employee/record/activity',2,'employee/record/activity',NULL,'s:0:\"\";',NULL,'employee',1622458062,1622458062,'Y','N','Y','Y','Y',NULL),

('employee/record/complete',2,'Complete profile of the employee',NULL,'',NULL,'employee',1572953836,1627039198,'N','N','N','N','N',NULL),

('employee/record/create',2,'Employee Record Create',NULL,'',NULL,'employee',1580203700,1627039219,'N','N','N','N','N',NULL),

('employee/record/d-v',2,'To See the most Recent Changed Value of the Employee',NULL,'',NULL,'employee',1579524095,1627039230,'N','N','N','N','N',NULL),

('employee/record/family',2,'employee/record/family',NULL,'s:0:\"\";',NULL,'employee',1622458189,1622458189,'Y','N','Y','Y','Y',NULL),

('employee/record/get-designations',2,'employee/record/get-designations',NULL,'',NULL,'employee',1581934741,1627039293,'N','N','N','N','N',NULL),

('employee/record/get-states',2,'To get States from Country',NULL,'',NULL,'employee',1579691505,1627039239,'N','N','N','N','N',NULL),

('employee/record/history',2,'employee/record/history',NULL,'',NULL,'employee',1583315449,1627039311,'N','N','N','N','N',NULL),

('employee/record/income-tax-index',2,'To Declare Income Tax and do Related Processes',NULL,'',NULL,'employee',1579240761,1627039330,'N','N','N','N','N',NULL),

('employee/record/income-tax-index_admin',2,'Admin To Declare Income Tax and do Related Processes',NULL,'',NULL,'employee',1579240794,1627039344,'N','N','N','N','N',NULL),

('employee/record/income-tax-index_pda',2,'Payroll Dealing Assistant to Declare Tax',NULL,'',NULL,'employee',1579240960,1627039355,'N','N','N','N','N',NULL),

('employee/record/index',2,'Index page of the Employee module',NULL,'',NULL,'employee',1571399884,1627039373,'N','N','N','N','N',NULL),

('employee/record/payroll-categories',2,'View Employees\' Payroll Bucket List',NULL,'',NULL,'employee',1579175300,1627039386,'N','N','N','N','N',NULL),

('employee/record/payroll-categories_admin',2,'Administrator',NULL,'',NULL,'employee',1579167288,1627039397,'N','N','N','N','N',NULL),

('employee/record/payroll-categories_pcm',2,'Payroll Change Manager to See Payroll Employee Categories',NULL,'',NULL,'employee',1579167354,1627039407,'N','N','N','N','N',NULL),

('employee/record/payroll-index',2,'View Payroll Index',NULL,'',NULL,'employee',1577170907,1627039419,'N','N','N','N','N',NULL),

('employee/record/payroll-index_admin',2,'Admin to View Payroll Index',NULL,'',NULL,'employee',1579239233,1627039427,'N','N','N','N','N',NULL),

('employee/record/payroll-index_pcm',2,'Payroll Change Manager to see Payroll Index',NULL,'',NULL,'employee',1579239413,1627037553,'N','N','N','N','N',NULL),

('employee/record/profile',2,'Employee Profile View',NULL,'',NULL,'employee',1580203589,1627037569,'N','N','N','N','N',NULL),

('employee/record/update',2,'To Updte HR Proflie',NULL,'',NULL,'employee',1579691030,1627037581,'N','N','N','N','Y',NULL),

('employee/record/view',2,'to view HR Profile',NULL,'',NULL,'employee',1579691699,1627037592,'N','N','N','N','N',NULL),

('employee/settings/index',2,'employee/settings/index',NULL,'',NULL,'employee',1599722306,1627039100,'N','N','N','N','N',NULL),

('endowment_admin',1,'This role manages the endowment fund',NULL,NULL,NULL,NULL,1584773038,1584773038,'N','N','N','N','N',NULL),

('endowment/admin/dashboard',2,'endowment/admin/dashboard','','',NULL,NULL,1584772641,1584772670,'N','N','N','N','N',NULL),

('endowment/admin/manage',2,'endowment/admin/manage','','',NULL,NULL,1584772630,1584772686,'N','N','N','N','N',NULL),

('endowment/app/create',2,'create',NULL,'s:0:\"\";',NULL,'endowment',1623751056,1623751056,'Y','Y','Y','Y','N',NULL),

('endowment/application-control/create',2,'endowment/application-control/create',NULL,NULL,NULL,NULL,1584772736,1584772736,'N','N','N','N','N',NULL),

('endowment/application-control/delete',2,'endowment/application-control/delete',NULL,NULL,NULL,NULL,1584772767,1584772767,'N','N','N','N','N',NULL),

('endowment/application-control/index',2,'endowment/application-control/index',NULL,NULL,NULL,NULL,1584772717,1584772717,'N','N','N','N','N',NULL),

('endowment/application-control/update',2,'endowment/application-control/update',NULL,NULL,NULL,NULL,1584772747,1584772747,'N','N','N','N','N',NULL),

('endowment/application-control/view',2,'endowment/application-control/view',NULL,NULL,NULL,NULL,1584772728,1584772728,'N','N','N','N','N',NULL),

('endowment/endowment-contribution-area/create',2,'endowment/endowment-contribution-area/create',NULL,NULL,NULL,NULL,1584772809,1584772809,'N','N','N','N','N',NULL),

('endowment/endowment-contribution-area/delete',2,'endowment/endowment-contribution-area/delete',NULL,NULL,NULL,NULL,1584772827,1584772827,'N','N','N','N','N',NULL),

('endowment/endowment-contribution-area/index',2,'endowment/endowment-contribution-area/index',NULL,NULL,NULL,NULL,1584772791,1584772791,'N','N','N','N','N',NULL),

('endowment/endowment-contribution-area/update',2,'endowment/endowment-contribution-area/update',NULL,NULL,NULL,NULL,1584772817,1584772817,'N','N','N','N','N',NULL),

('endowment/endowment-contribution-area/view',2,'endowment/endowment-contribution-area/view',NULL,NULL,NULL,NULL,1584772799,1584772799,'N','N','N','N','N',NULL),

('endowment/payment-purpose/create',2,'endowment/payment-purpose/create',NULL,NULL,NULL,NULL,1584772873,1584772873,'N','N','N','N','N',NULL),

('endowment/payment-purpose/delete',2,'endowment/payment-purpose/delete',NULL,NULL,NULL,NULL,1584772889,1584772889,'N','N','N','N','N',NULL),

('endowment/payment-purpose/index',2,'endowment/payment-purpose/index',NULL,NULL,NULL,NULL,1584772852,1584772852,'N','N','N','N','N',NULL),

('endowment/payment-purpose/update',2,'endowment/payment-purpose/update',NULL,NULL,NULL,NULL,1584772881,1584772881,'N','N','N','N','N',NULL),

('endowment/payment-purpose/view',2,'endowment/payment-purpose/view',NULL,NULL,NULL,NULL,1584772862,1584772862,'N','N','N','N','N',NULL),

('endowment/salutation/create',2,'endowment/salutation/create',NULL,NULL,NULL,NULL,1584772929,1584772929,'N','N','N','N','N',NULL),

('endowment/salutation/delete',2,'endowment/salutation/delete',NULL,NULL,NULL,NULL,1584772945,1584772945,'N','N','N','N','N',NULL),

('endowment/salutation/index',2,'endowment/salutation/index',NULL,NULL,NULL,NULL,1584772910,1584772910,'N','N','N','N','N',NULL),

('endowment/salutation/update',2,'endowment/salutation/update',NULL,NULL,NULL,NULL,1584772938,1584772938,'N','N','N','N','N',NULL),

('endowment/salutation/view',2,'endowment/salutation/view',NULL,NULL,NULL,NULL,1584772920,1584772920,'N','N','N','N','N',NULL),

('endowment/settings/index',2,'endowment/settings/index',NULL,NULL,NULL,NULL,1584772960,1584772960,'N','N','N','N','N',NULL),

('endowment/user-type/create',2,'endowment/user-type/create',NULL,NULL,NULL,NULL,1584772991,1584772991,'N','N','N','N','N',NULL),

('endowment/user-type/delete',2,'endowment/user-type/delete',NULL,NULL,NULL,NULL,1584773007,1584773007,'N','N','N','N','N',NULL),

('endowment/user-type/index',2,'endowment/user-type/index',NULL,NULL,NULL,NULL,1584772974,1584772974,'N','N','N','N','N',NULL),

('endowment/user-type/update',2,'endowment/user-type/update',NULL,NULL,NULL,NULL,1584772998,1584772998,'N','N','N','N','N',NULL),

('endowment/user-type/view',2,'endowment/user-type/view',NULL,NULL,NULL,NULL,1584772983,1584772983,'N','N','N','N','N',NULL),

('essential/conference-hall/approve',2,'essential/conference-hall/approve',NULL,'',NULL,'essential',1584428711,1627129786,'N','N','N','N','N',NULL),

('essential/conference-hall/create',2,'essential/conference-hall/create',NULL,'',NULL,'essential',1584428615,1627129891,'N','N','N','N','N',NULL),

('essential/conference-hall/delete',2,'essential/conference-hall/delete',NULL,'',NULL,'essential',1584428696,1627129954,'N','N','N','N','Y',NULL),

('essential/conference-hall/index',2,'essential/conference-hall/index',NULL,'',NULL,'essential',1584428598,1627129911,'N','N','N','N','N',NULL),

('essential/conference-hall/print',2,'essential/conference-hall/print',NULL,'',NULL,'essential',1584428736,1627129977,'N','N','N','N','N',NULL),

('essential/conference-hall/save',2,'essential/conference-hall/save',NULL,'',NULL,'essential',1584428668,1627129988,'N','N','N','N','N',NULL),

('essential/conference-hall/update',2,'essential/conference-hall/update',NULL,'',NULL,'essential',1584428654,1627130198,'N','N','N','N','Y',NULL),

('essential/conference-hall/view',2,'essential/conference-hall/view',NULL,'',NULL,'essential',1584428641,1627130089,'N','N','N','N','N',NULL),

('essential/default/index',2,'essential/default/index',NULL,'s:0:\"\";',NULL,'essential',1625833840,1625833840,'N','N','N','N','N',NULL),

('essential/guest-house/approve',2,'essential/guest-house/approve',NULL,'',NULL,'essential',1584449021,1627130074,'N','N','N','N','N',NULL),

('essential/guest-house/check-in',2,'essential/guest-house/check-in',NULL,'',NULL,'essential',1613217308,1627130068,'N','N','N','N','N',NULL),

('essential/guest-house/check-out',2,'essential/guest-house/check-in',NULL,'',NULL,'essential',1613217308,1627130060,'N','N','N','N','N',NULL),

('essential/guest-house/create',2,'essential/guest-house/create',NULL,'',NULL,'essential',1584448966,1627130054,'N','N','N','N','N',NULL),

('essential/guest-house/delete',2,'essential/guest-house/delete',NULL,'',NULL,'essential',1584448994,1627130222,'N','N','N','N','Y',NULL),

('essential/guest-house/index',2,'essential/guest-house/index',NULL,'',NULL,'essential',1584448936,1627130037,'N','N','N','N','N',NULL),

('essential/guest-house/print',2,'essential/guest-house/print',NULL,'',NULL,'essential',1584509280,1627130025,'N','N','N','N','N',NULL),

('essential/guest-house/save',2,'essential/guest-house/save',NULL,'',NULL,'essential',1584449009,1627130017,'N','N','N','N','N',NULL),

('essential/guest-house/update',2,'essential/guest-house/update',NULL,'',NULL,'essential',1584448980,1627130237,'N','N','N','N','Y',NULL),

('essential/guest-house/view',2,'essential/guest-house/view',NULL,'',NULL,'essential',1584448949,1627130002,'N','N','N','N','N',NULL),

('essential/parking/approve',2,'essential/parking/approve',NULL,'',NULL,'essential',1584352340,1627129996,'N','N','N','N','N',NULL),

('essential/parking/create',2,'essential/parking/create',NULL,'',NULL,'essential',1584352048,1627130287,'N','N','N','N','N',NULL),

('essential/parking/delete',2,'essential/parking/delete',NULL,'',NULL,'essential',1584352100,1627130310,'N','N','N','N','Y',NULL),

('essential/parking/get-ou',2,'essential/parking/get-ou',NULL,'',NULL,'essential',1584352311,1627130305,'N','N','N','N','N',NULL),

('essential/parking/index',2,'essential/parking/index',NULL,'',NULL,'essential',1584352031,1627130791,'N','N','N','N','N',NULL),

('essential/parking/print',2,'essential/parking/print',NULL,'',NULL,'essential',1584353676,1627130985,'N','N','N','N','N',NULL),

('essential/parking/save',2,'essential/parking/save',NULL,'',NULL,'essential',1584352123,1627131064,'N','N','N','N','N',NULL),

('essential/parking/update',2,'essential/parking/update',NULL,'',NULL,'essential',1584352064,1627131070,'N','N','N','N','N',NULL),

('essential/parking/view',2,'essential/parking/view',NULL,'',NULL,'essential',1584352080,1627130917,'N','N','N','N','N',NULL),

('essential/reports/conference-hall-request-report',2,'essential/reports/conference-hall-request-report',NULL,'',NULL,'essential',1580377192,1627131098,'N','N','N','N','N',NULL),

('essential/reports/guest-house-request-report',2,'essential/reports/guest-house-request-report',NULL,'',NULL,'essential',1580377192,1627130907,'N','N','N','N','N',NULL),

('essential/reports/index',2,'essential/reports/index',NULL,'',NULL,'essential',1580377192,1627130898,'N','N','N','N','N',NULL),

('essential/reports/parking-request-report',2,'essential/reports/parking-request-report',NULL,'',NULL,'essential',1580377192,1627130891,'N','N','N','N','N',NULL),

('essential/reports/search-conference-hall-request',2,'essential/reports/search-conference-hall-request',NULL,'',NULL,'essential',1580377192,1627130884,'N','N','N','N','N',NULL),

('essential/reports/search-guest-house-request',2,'essential/reports/search-guest-house-request',NULL,'',NULL,'essential',1580377192,1627130875,'N','N','N','N','N',NULL),

('essential/reports/search-parking-request',2,'essential/reports/search-parking-request',NULL,'',NULL,'essential',1580377192,1627130866,'N','N','N','N','N',NULL),

('essential/reports/search-transport-request',2,'essential/reports/search-transport-request',NULL,'',NULL,'essential',1580377192,1627130851,'N','N','N','N','N',NULL),

('essential/reports/transport-request-report',2,'essential/reports/transport-request-report',NULL,'',NULL,'essential',1580377192,1627130838,'N','N','N','N','N',NULL),

('essential/transport-request/approve',2,'essential/transport-request/approve',NULL,'',NULL,'essential',1584694845,1627130830,'N','N','N','N','N',NULL),

('essential/transport-request/assign',2,'essential/transport-request/assign',NULL,'',NULL,'essential',1601116663,1627131000,'N','N','N','N','N',NULL),

('essential/transport-request/create',2,'essential/transport-request/create',NULL,'',NULL,'essential',1584694869,1627130816,'N','N','N','N','N',NULL),

('essential/transport-request/delete',2,'essential/transport-request/delete',NULL,NULL,NULL,NULL,1584694820,1584694820,'N','N','N','N','N',NULL),

('essential/transport-request/index',2,'essential/transport-request/index',NULL,NULL,NULL,NULL,1584694906,1584694906,'N','N','N','N','N',NULL),

('essential/transport-request/index-approve',2,'essential/transport-request/index-approve',NULL,NULL,NULL,NULL,1599546861,1599546861,'N','N','N','N','N',NULL),

('essential/transport-request/print',2,'essential/transport-request/print',NULL,NULL,NULL,NULL,1597901307,1597901307,'N','N','N','N','N',NULL),

('essential/transport-request/save',2,'essential/transport-request/save',NULL,NULL,NULL,NULL,1584694947,1584694947,'N','N','N','N','N',NULL),

('essential/transport-request/update',2,'essential/transport-request/update\r\n',NULL,NULL,NULL,NULL,1584694933,1584694933,'N','N','N','N','N',NULL),

('essential/transport-request/verify',2,'essential/transport-request/verify',NULL,NULL,NULL,NULL,1602149519,1602149519,'N','N','N','N','N',NULL),

('essential/transport-request/view',2,'essential/transport-request/view',NULL,NULL,NULL,NULL,1584694800,1584694800,'N','N','N','N','N',NULL),

('estate_admin',1,'This role is to be provided to the Estate Administrator, who handles all the estate related details in the university.','','',NULL,NULL,1565696595,1572262998,'N','N','N','N','N',NULL),

('estate_admin_view',1,'View only permission for Estate module',NULL,NULL,NULL,NULL,1571381117,1571381117,'N','N','N','N','N',NULL),

('estate/building/building-information',2,'Permission to Add the building information.',NULL,'',NULL,'estate',1565696931,1627131884,'N','N','N','N','N',NULL),

('estate/building/confirm-deletion',2,'Confirmation for Deletion',NULL,'',NULL,'estate',1571149742,1627131895,'N','N','N','N','N',NULL),

('estate/building/create',2,'Permission to add the building detail',NULL,'',NULL,'estate',1565696838,1627131904,'N','N','N','N','N',NULL),

('estate/building/delete',2,'Permission to delete the building detail\r\n',NULL,'',NULL,'estate',1565696883,1627131925,'N','N','N','N','Y',NULL),

('estate/building/fetch-floor',2,'Permission to fetch the floor detail',NULL,'',NULL,'estate',1565696819,1627131954,'N','N','N','N','N',NULL),

('estate/building/fetch-summary',2,'Permission to fetch Summary',NULL,NULL,NULL,NULL,1565696907,1565696907,'N','N','N','N','N',NULL),

('estate/building/index',2,'Permission to view the building list',NULL,NULL,NULL,NULL,1565696692,1565696692,'N','N','N','N','N',NULL),

('estate/building/index-ajax',2,'Permission to view the building using modal widget',NULL,NULL,NULL,NULL,1565696721,1565696721,'N','N','N','N','N',NULL),

('estate/building/update',2,'Permission to update the building detail',NULL,NULL,NULL,NULL,1565696858,1565696858,'N','N','N','N','N',NULL),

('estate/building/view',2,'Permission to View the Building Detail',NULL,NULL,NULL,NULL,1565696740,1565696740,'N','N','N','N','N',NULL),

('estate/building/view-ajax',2,'Permission to view the Estate Detail using Modal',NULL,'',NULL,'estate',1565696766,1627132455,'N','N','N','N','N',NULL),

('estate/corridor-flooring-type/create',2,'Permission to add the flooring type',NULL,'',NULL,'estate',1565697046,1627132447,'N','N','N','N','N',NULL),

('estate/corridor-flooring-type/delete',2,'Permission to add delete the flooring type',NULL,NULL,NULL,NULL,1565697091,1565697091,'N','N','N','N','N',NULL),

('estate/corridor-flooring-type/index',2,'Permission to  View the Flooring Type',NULL,'',NULL,'estate',1565696987,1627132431,'N','N','N','N','N',NULL),

('estate/corridor-flooring-type/update',2,'Permission to update the flooring type',NULL,'',NULL,'estate',1565697062,1627132398,'N','N','N','N','N',NULL),

('estate/corridor-flooring-type/view',2,'Permission to view the flooring type',NULL,'',NULL,'estate',1565697001,1627132357,'N','N','N','N','N',NULL),

('estate/door-type/create',2,'Permission to add the door type',NULL,'',NULL,'estate',1565697701,1627132325,'N','N','N','N','N',NULL),

('estate/door-type/delete',2,'Permission to delete the door type\r\n',NULL,'',NULL,'estate',1565697736,1627132315,'N','N','N','N','Y',NULL),

('estate/door-type/index',2,'Permission to list the type of doors\r\n',NULL,'',NULL,'estate',1565697664,1627132298,'N','N','N','N','N',NULL),

('estate/door-type/update',2,'Permission to add the door type',NULL,'',NULL,'estate',1565697714,1627132273,'N','N','N','N','Y',NULL),

('estate/door-type/view',2,'Permission to view the type of door',NULL,'',NULL,'estate',1565697684,1627273249,'N','N','N','N','N',NULL),

('estate/estate-uploads/create',2,'Permission to upload the estate images',NULL,'',NULL,'estate',1565698197,1627273258,'N','N','N','N','N',NULL),

('estate/estate-uploads/delete',2,'Permission to delete the estate images',NULL,'',NULL,'estate',1565698215,1627273267,'N','N','N','N','N',NULL),

('estate/external-wall-type/create',2,'Permission to create the type of external wall type',NULL,'',NULL,'estate',1565698252,1627273279,'N','N','N','N','N',NULL),

('estate/external-wall-type/delete',2,'Permission To delete the type of external wall',NULL,'',NULL,'estate',1565698379,1627273334,'N','N','N','N','N',NULL),

('estate/external-wall-type/index',2,'Permission to list the type of  external wall',NULL,'',NULL,'estate',1565698274,1627273351,'N','N','N','N','N',NULL),

('estate/external-wall-type/update',2,'Permission to update the type of external wall',NULL,'',NULL,'estate',1565698315,1627273367,'N','N','N','N','N',NULL),

('estate/external-wall-type/view',2,'Permission to view type of external wall',NULL,'',NULL,'estate',1565698290,1627273379,'N','N','N','N','N',NULL),

('estate/floor-category/create',2,'Permission to add the floor category',NULL,'',NULL,'estate',1565698473,1627273511,'N','N','N','N','N',NULL),

('estate/floor-category/delete',2,'Permission to delete the floor category',NULL,'',NULL,'estate',1565698542,1627273521,'N','N','N','N','N',NULL),

('estate/floor-category/index',2,'Permission to list the floor category',NULL,'',NULL,'estate',1565698490,1627273530,'N','N','N','N','N',NULL),

('estate/floor-category/update',2,'Permission to update the floor category',NULL,'',NULL,'estate',1565698524,1627273599,'N','N','N','N','N',NULL),

('estate/floor-category/view',2,'Permission to view the floor category',NULL,'',NULL,'estate',1565698505,1627273676,'N','N','N','N','N',NULL),

('estate/floor-level/create',2,'Permission to add the floor level',NULL,'',NULL,'estate',1565698736,1627273611,'N','N','N','N','N',NULL),

('estate/floor-level/delete',2,'Permission to delete the floor level',NULL,'',NULL,'estate',1565698766,1627273573,'N','N','N','N','N',NULL),

('estate/floor-level/index',2,'Permission to list the floor levels',NULL,'',NULL,'estate',1565698704,1627273455,'N','N','N','N','N',NULL),

('estate/floor-level/update',2,'Permission to update the Floor Level',NULL,'',NULL,'estate',1565698752,1627273432,'N','N','N','N','N',NULL),

('estate/floor-level/view',2,'Permission to view the floor level',NULL,'',NULL,'estate',1565698719,1627273409,'N','N','N','N','N',NULL),

('estate/floor/create',2,'Permission to add the floor detail',NULL,'',NULL,'estate',1565698625,1627273400,'N','N','N','N','N',NULL),

('estate/floor/delete',2,'Permission to delete the floor detail.',NULL,'',NULL,'estate',1565698663,1627273390,'N','N','N','N','N',NULL),

('estate/floor/fetch-floor',2,'Permission to fetch the floor details',NULL,'',NULL,'estate',1565698682,1627273740,'N','N','N','N','N',NULL),

('estate/floor/index',2,'Permission to list the floors\r\n',NULL,'',NULL,'estate',1565698568,1627273751,'N','N','N','N','N',NULL),

('estate/floor/index-ajax',2,'Permission to list the floor categories using modal widget',NULL,'',NULL,'estate',1565698593,1627273763,'N','N','N','N','N',NULL),

('estate/floor/update',2,'Permission to update the floor detail.',NULL,'',NULL,'estate',1565698642,1627273777,'N','N','N','N','N',NULL),

('estate/floor/view',2,'Permission to View the Floor details',NULL,'',NULL,'estate',1565698609,1627273802,'N','N','N','N','N',NULL),

('estate/footpath-type/create',2,'Permission to add the footpath type',NULL,'',NULL,'estate',1565698835,1627273814,'N','N','N','N','N',NULL),

('estate/footpath-type/delete',2,'Permission to delete the footpath type',NULL,'',NULL,'estate',1565698872,1627276834,'N','N','N','N','N',NULL),

('estate/footpath-type/index',2,'Permission to list the type of floors.',NULL,'',NULL,'estate',1565698795,1627276842,'N','N','N','N','N',NULL),

('estate/footpath-type/update',2,'Permission to update the Footpath Type',NULL,'',NULL,'estate',1565698854,1627276949,'N','N','N','N','N',NULL),

('estate/footpath-type/view',2,'Permission to view the footpath type.',NULL,'',NULL,'estate',1565698816,1627276962,'N','N','N','N','N',NULL),

('estate/foundation-type/create',2,'Permission to add the foundation type',NULL,NULL,NULL,NULL,1565698921,1565698921,'N','N','N','N','N',NULL),

('estate/foundation-type/delete',2,'Permission to delete the foundation type',NULL,'',NULL,'estate',1565698977,1627276974,'N','N','N','N','N',NULL),

('estate/foundation-type/index',2,'Permission to list the foundation types',NULL,'',NULL,'estate',1565698893,1627276984,'N','N','N','N','N',NULL),

('estate/foundation-type/update',2,'Permission to update the foundation type',NULL,'',NULL,'estate',1565698961,1627276903,'N','N','N','N','N',NULL),

('estate/foundation-type/view',2,'Permission to view the Foundation Type',NULL,NULL,NULL,NULL,1565698908,1565698908,'N','N','N','N','N',NULL),

('estate/housing-unit/create',2,'Permission to add the housing unit type',NULL,'',NULL,'estate',1565699044,1627276896,'N','N','N','N','N',NULL),

('estate/housing-unit/delete',2,'Permission to delete the housing unit type.',NULL,'',NULL,'estate',1565699086,1627273857,'N','N','N','N','N',NULL),

('estate/housing-unit/index',2,'Permission to list the Housing nit list\r\n',NULL,'',NULL,'estate',1565699015,1627273845,'N','N','N','N','N',NULL),

('estate/housing-unit/upadte',2,'Permission to update the housing type.',NULL,'',NULL,'estate',1565699063,1627273836,'N','N','N','N','N',NULL),

('estate/housing-unit/view',2,'Permission to view the Housing Unit Type',NULL,'',NULL,'estate',1565699031,1627273828,'N','N','N','N','N',NULL),

('estate/railing-type/create',2,'Permission to add the railing type',NULL,'',NULL,'estate',1565699158,1627277050,'N','N','N','N','N',NULL),

('estate/railing-type/delete',2,'Permission to delete the railing type.',NULL,'',NULL,'estate',1565699190,1627277060,'N','N','N','N','Y',NULL),

('estate/railing-type/index',2,'Permission to list the type of railing.',NULL,'',NULL,'estate',1565699113,1627277072,'N','N','N','N','N',NULL),

('estate/railing-type/update',2,'Permission to update the railing type',NULL,'',NULL,'estate',1565699174,1627278934,'N','N','N','N','Y',NULL),

('estate/railing-type/view',2,'Permission to view the railing type.',NULL,'',NULL,'estate',1565699132,1627277262,'N','N','N','N','N',NULL),

('estate/road-type/create',2,'Permission to add the type of road.',NULL,'',NULL,'estate',1565699463,1627277270,'N','N','N','N','N',NULL),

('estate/road-type/delete',2,'Permission to delete the type of road',NULL,'',NULL,'estate',1565699614,1627277353,'N','N','N','N','Y',NULL),

('estate/road-type/index',2,'Permission to list the type of road',NULL,'',NULL,'estate',1565699433,1627277362,'N','N','N','N','N',NULL),

('estate/road-type/update',2,'Permission to update the Road type',NULL,'',NULL,'estate',1565699531,1627277443,'N','N','N','N','Y',NULL),

('estate/road-type/view',2,'Permission to vwe the type of Road',NULL,'',NULL,'estate',1565699451,1627277456,'N','N','N','N','N',NULL),

('estate/road/create',2,'Permission to add the road detail',NULL,NULL,NULL,NULL,1565699354,1565699354,'N','N','N','N','N',NULL),

('estate/road/delete',2,'Permission to delete the road detail.',NULL,'',NULL,'estate',1565699389,1627279129,'N','N','N','N','Y',NULL),

('estate/road/fetch-road',2,'Permission to fetch the road details',NULL,'',NULL,'estate',1565699411,1627279144,'N','N','N','N','N',NULL),

('estate/road/index',2,'Permission to list the roads.',NULL,'',NULL,'estate',1565699214,1627277505,'N','N','N','N','N',NULL),

('estate/road/index-ajax',2,'Permission to view the list the index using modal widget',NULL,'',NULL,'estate',1565699327,1627277222,'N','N','N','N','N',NULL),

('estate/road/update',2,'Permission to update the road detail.',NULL,'',NULL,'estate',1565699373,1627277211,'N','N','N','N','N',NULL),

('estate/road/view',2,'Permission to view the Road detail.',NULL,'',NULL,'estate',1565699277,1627277198,'N','N','N','N','N',NULL),

('estate/roof-type/create',2,'Permission to add the type of roof',NULL,'',NULL,'estate',1565699684,1627277189,'N','N','N','N','N',NULL),

('estate/roof-type/delete',2,'Permission to delete the type of roof',NULL,'',NULL,'estate',1565699726,1627277180,'N','N','N','N','Y',NULL),

('estate/roof-type/index',2,'Permission to list the type of roofs',NULL,'',NULL,'estate',1565699656,1627277158,'N','N','N','N','N',NULL),

('estate/roof-type/update',2,'Permission to update the type of roof',NULL,'',NULL,'estate',1565699710,1627279251,'N','N','N','N','Y',NULL),

('estate/roof-type/view',2,'Permission to view the type of roof',NULL,'',NULL,'estate',1565699670,1627279258,'N','N','N','N','N',NULL),

('estate/room/create',2,'Permission to add the room',NULL,'',NULL,'estate',1565699860,1627279277,'N','N','N','N','N',NULL),

('estate/room/delete',2,'Permission to delete the room detail.',NULL,'',NULL,'estate',1565699933,1627279305,'N','N','N','N','N',NULL),

('estate/room/fetch-room',2,'Permission to fetch the room list.',NULL,'',NULL,'estate',1565699985,1627281145,'N','N','N','N','N',NULL),

('estate/room/get-floor-level',2,'Permission to get the floor the levels.',NULL,'',NULL,'estate',1565699963,1627281159,'N','N','N','N','N',NULL),

('estate/room/index',2,'Permission to list the rooms.',NULL,'',NULL,'estate',1565699763,1627281700,'N','N','N','N','N',NULL),

('estate/room/index-ajax',2,'Permission to list the rooms in modal widget',NULL,'',NULL,'estate',1565699839,1627281958,'N','N','N','N','N',NULL),

('estate/room/update',2,'Permission to update the room detail',NULL,'',NULL,'estate',1565699903,1627281721,'N','N','N','N','N',NULL),

('estate/room/view',2,'Permission to view the room detail.',NULL,'',NULL,'estate',1565699790,1627281911,'N','N','N','N','N',NULL),

('estate/settings/index',2,'Permission to edit the estate settings',NULL,'',NULL,'estate',1565421549,1627281977,'N','N','N','N','N',NULL),

('estate/site/admin',2,'estate/site/admin',NULL,NULL,NULL,NULL,1564720729,1564720729,'N','N','N','N','N',NULL),

('estate/site/building-floor-matrix',2,'Permission to view building floor matrix.',NULL,'',NULL,'estate',1565700071,1627281902,'N','N','N','N','N',NULL),

('estate/site/settings',2,'Permission to list the estate settings.',NULL,NULL,NULL,NULL,1565700045,1565700045,'N','N','N','N','N',NULL),

('estate/structure-type/create',2,'Permission to add the structure type.',NULL,'',NULL,'estate',1565700257,1627282010,'N','N','N','N','N',NULL),

('estate/structure-type/delete',2,'Permission to delete the structure type.',NULL,'',NULL,'estate',1565700293,1627281646,'N','N','N','N','N',NULL),

('estate/structure-type/index',2,'Permission to list the type of structure of buildings.',NULL,'',NULL,'estate',1565700228,1627279399,'N','N','N','N','N',NULL),

('estate/structure-type/update',2,'Permission to update the structure type.',NULL,'',NULL,'estate',1565700274,1627279389,'N','N','N','N','N',NULL),

('estate/structure-type/view',2,'Permission to view the structure type',NULL,'',NULL,'estate',1565700244,1627279381,'N','N','N','N','N',NULL),

('estate/substation-type/create',2,'Permission to add the substation  type',NULL,'',NULL,'estate',1565700385,1627279370,'N','N','N','N','N',NULL),

('estate/substation-type/delete',2,'Permission to delete the substation type.',NULL,'',NULL,'estate',1565700426,1627282130,'N','N','N','N','Y',NULL),

('estate/substation-type/index',2,'Permission to list the substation type.',NULL,'',NULL,'estate',1565700320,1627282140,'N','N','N','N','N',NULL),

('estate/substation-type/update',2,'Permission to update the Substation Type',NULL,'',NULL,'estate',1565700339,1627282156,'N','N','N','N','Y',NULL),

('estate/substation-type/view',2,'Permission to view the substation type',NULL,'',NULL,'estate',1565700368,1627282169,'N','N','N','N','N',NULL),

('estate/washroom/create',2,'Permission to add the washroom detail.',NULL,'',NULL,'estate',1565700518,1627282251,'N','N','N','N','N',NULL),

('estate/washroom/delete',2,'Permission to delete the washroom detail.',NULL,'',NULL,'estate',1565700548,1627282264,'N','N','N','N','Y',NULL),

('estate/washroom/fetch-room',2,'Permission to fetch the washroom list.',NULL,'',NULL,'estate',1565700572,1627282273,'N','N','N','N','N',NULL),

('estate/washroom/fetch-washroom',2,'Permission to fetch the wash room details.',NULL,'',NULL,'estate',1565701589,1627282285,'N','N','N','N','N',NULL),

('estate/washroom/index',2,'Permission to list the washrooms',NULL,'',NULL,'estate',1565700454,1627282295,'N','N','N','N','N',NULL),

('estate/washroom/index-ajax',2,'Permission to list the washrooms using modal widget.',NULL,'',NULL,'estate',1565700482,1627282563,'N','N','N','N','N',NULL),

('estate/washroom/update',2,'Permission to update the washroom detail.',NULL,'',NULL,'estate',1565700533,1627282309,'N','N','N','N','Y',NULL),

('estate/washroom/view',2,'Permission to view the washroom detail.',NULL,'',NULL,'estate',1565700502,1627282320,'N','N','N','N','N',NULL),

('estate/window-type/create',2,'Permission to add the Type of Window.',NULL,'',NULL,'estate',1565700624,1627282498,'N','N','N','N','N',NULL),

('estate/window-type/delete',2,'Permission to delete the Type of window.',NULL,'',NULL,'estate',1565700658,1627282332,'N','N','N','N','Y',NULL),

('estate/window-type/index',2,'Permission to list the type of windows.',NULL,'',NULL,'estate',1565700596,1627282392,'N','N','N','N','N',NULL),

('estate/window-type/update',2,'Permission to update the Type of Window.',NULL,'',NULL,'estate',1565700641,1627282476,'N','N','N','N','Y',NULL),

('estate/window-type/view',2,'Permission to view the Type of Window',NULL,'',NULL,'estate',1565700609,1627282367,'N','N','N','N','N',NULL),

('evaluation/course-student-evaluator-mapping/select-programme',2,'evaluation/course-student-evaluator-mapping/select-programme',NULL,NULL,NULL,NULL,1621498213,1621498213,'N','N','N','N','N',NULL),

('evaluation/detention-rules/index',2,'evaluation/detention-rules/index',NULL,NULL,NULL,NULL,1613743812,1613743812,'N','N','N','N','N',NULL),

('evaluation/evaluation-report/export-report',2,'evaluation/evaluation-report/export-report',NULL,NULL,NULL,NULL,1615990197,1615990197,'N','N','N','N','N',NULL),

('evaluation/evaluation-report/generate-reports',2,'evaluation/evaluation-report/generate-reports',NULL,NULL,NULL,NULL,1615990190,1615990190,'N','N','N','N','N',NULL),

('evaluation/evaluation-report/index',2,'evaluation/evaluation-report/index',NULL,NULL,NULL,NULL,1615990170,1615990170,'N','N','N','N','N',NULL),

('evaluation/evaluation/bulk-calculate-grades',2,'evaluation/evaluation/bulk-calculate-grades',NULL,NULL,NULL,NULL,1620278205,1620278205,'N','N','N','N','N',NULL),

('evaluation/import-marks/import',2,'evaluation/import-marks/import',NULL,NULL,NULL,NULL,1613743802,1613743802,'N','N','N','N','N',NULL),

('evaluation/import-marks/validate-sheet',2,'evaluation/import-marks/validate-sheet',NULL,NULL,NULL,NULL,1613749153,1613749153,'N','N','N','N','N',NULL),

('evaluation/marks-entry/index',2,'evaluation/marks-entry/index',NULL,NULL,NULL,NULL,1615990183,1615990183,'N','N','N','N','N',NULL),

('evaluation/marks-entry/preview',2,'evaluation/marks-entry/preview',NULL,NULL,NULL,NULL,1615990204,1615990204,'N','N','N','N','N',NULL),

('evaluation/marks-entry/submit',2,'evaluation/marks-entry/submit',NULL,NULL,NULL,NULL,1615990213,1615990213,'N','N','N','N','N',NULL),

('evaluation/marks-manipulation/app',2,'evaluation/marks-manipulation/app',NULL,NULL,NULL,NULL,1567223706,1567223706,'N','N','N','N','N',NULL),

('evaluation/marks-manipulation/remove-course',2,'evaluation/marks-manipulation/remove-course',NULL,NULL,NULL,NULL,1567223706,1567223706,'N','N','N','N','N',NULL),

('evaluation/marks-manipulation/remove-marks',2,'evaluation/marks-manipulation/remove-marks',NULL,NULL,NULL,NULL,1567223706,1567223706,'N','N','N','N','N',NULL),

('evaluation/marks-manipulation/update-exam',2,'evaluation/marks-manipulation/update-exam',NULL,NULL,NULL,NULL,1567223706,1567223706,'N','N','N','N','N',NULL),

('evaluation/marks-manipulation/update-type',2,'evaluation/marks-manipulation/update-type',NULL,NULL,NULL,NULL,1567223706,1567223706,'N','N','N','N','N',NULL),

('evaluation/programme-detention-rules/index',2,'evaluation/programme-detention-rules/index',NULL,NULL,NULL,NULL,1613743821,1613743821,'N','N','N','N','N',NULL),

('evaluation/term-configuration/index',2,'evaluation/term-configuration/index',NULL,NULL,NULL,NULL,1613743793,1613743793,'N','N','N','N','N',NULL),

('evaluator',1,'role for evaluator\r\n',NULL,NULL,NULL,NULL,1612789560,1612789560,'N','N','N','N','N',NULL),

('exam_administrator',1,'exam_administrator',NULL,NULL,NULL,NULL,1610177875,1610177875,'N','N','N','N','N',NULL),

('exam_registration/examination-student-application/index',2,'exam_registration/examination-student-application/index',NULL,NULL,NULL,NULL,1610311146,1610311146,'N','N','N','N','N',NULL),

('examination-centre-detail/index',2,'examination-centre-detail/index',NULL,NULL,NULL,NULL,1613120678,1613120678,'N','N','N','N','N',NULL),

('examination-teacher/index',2,'examination-teacher/index',NULL,NULL,NULL,NULL,1613120991,1613120991,'N','N','N','N','N',NULL),

('examination/allocate-center/add-student',2,'examination/allocate-center/add-student',NULL,NULL,NULL,NULL,1587760090,1587760090,'N','N','N','N','N',NULL),

('examination/allocate-center/addstudent',2,'examination/allocate-center/addstudent',NULL,NULL,NULL,NULL,1619701022,1619701022,'N','N','N','N','N',NULL),

('examination/allocate-center/course',2,'examination/allocate-center/course',NULL,NULL,NULL,NULL,1619432130,1619432130,'N','N','N','N','N',NULL),

('examination/allocate-center/get-halls',2,'examination/allocate-center/get-halls',NULL,NULL,NULL,NULL,1588278500,1588278500,'N','N','N','N','N',NULL),

('examination/allocate-center/gethalls',2,'examination/allocate-center/gethalls',NULL,NULL,NULL,NULL,1619701022,1619701022,'N','N','N','N','N',NULL),

('examination/allocate-center/programme',2,'examination/allocate-center/programme',NULL,NULL,NULL,NULL,1619701022,1619701022,'N','N','N','N','N',NULL),

('examination/attendance-sheet-template/create',2,'examination/attendance-sheet-template/create',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/attendance-sheet-template/delete',2,'examination/attendance-sheet-template/delete',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/attendance-sheet-template/index',2,'examination/attendance-sheet-template/index',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/attendance-sheet-template/update',2,'examination/attendance-sheet-template/update',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/attendance-sheet-template/view',2,'examination/attendance-sheet-template/view',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/attendance-sheet/centrewise',2,'examination/attendance-sheet/centrewise',NULL,NULL,NULL,NULL,1619701022,1619701022,'N','N','N','N','N',NULL),

('examination/attendance-sheet/centrewiseexcel',2,'examination/attendance-sheet/centrewiseexcel',NULL,NULL,NULL,NULL,1619701022,1619701022,'N','N','N','N','N',NULL),

('examination/attendance-sheet/get-courses',2,'examination/attendance-sheet/get-courses',NULL,NULL,NULL,NULL,1611208323,1611208323,'N','N','N','N','N',NULL),

('examination/attendance-sheet/getcourses',2,'examination/attendance-sheet/getcourses',NULL,NULL,NULL,NULL,1619701022,1619701022,'N','N','N','N','N',NULL),

('examination/attendance-sheet/index',2,'examination/attendance-sheet/index',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/attendance-sheet/pdf',2,'examination/attendance-sheet/pdf',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/attendance-sheet/preview',2,'examination/attendance-sheet/preview',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/attendance-sheet/programmewise',2,'examination/attendance-sheet/programmewise',NULL,NULL,NULL,NULL,1619701022,1619701022,'N','N','N','N','N',NULL),

('examination/attendance-sheet/programmewiseexcel',2,'examination/attendance-sheet/programmewiseexcel',NULL,NULL,NULL,NULL,1619701022,1619701022,'N','N','N','N','N',NULL),

('examination/attendance-sheet/programmewisepdf',2,'examination/attendance-sheet/programmewisepdf',NULL,NULL,NULL,NULL,1619701022,1619701022,'N','N','N','N','N',NULL),

('examination/attendance-sheet/view',2,'examination/attendance-sheet/view',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/attendance/index',2,'examination/attendance/index',NULL,NULL,NULL,NULL,1610966064,1610966064,'N','N','N','N','N',NULL),

('examination/attendance/pdf',2,'examination/attendance/pdf',NULL,NULL,NULL,NULL,1610966064,1610966064,'N','N','N','N','N',NULL),

('examination/attendance/preview',2,'examination/attendance/preview',NULL,NULL,NULL,NULL,1610966064,1610966064,'N','N','N','N','N',NULL),

('examination/attendance/view',2,'examination/attendance/view',NULL,NULL,NULL,NULL,1610966064,1610966064,'N','N','N','N','N',NULL),

('examination/dashboard/',2,'examination/dashboard/',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/dashboard/create-permission',2,'examination/dashboard/create-permission',NULL,NULL,NULL,NULL,1610978959,1610978959,'N','N','N','N','N',NULL),

('examination/dashboard/evaluator',2,'examination/dashboard/evaluator',NULL,NULL,NULL,NULL,1612789626,1612789626,'N','N','N','N','N',NULL),

('examination/dashboard/evaluator-dashboard',2,'examination/dashboard/evaluator-dashboard',NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N','N',NULL),

('examination/dashboard/evaluatordashboard',2,'examination/dashboard/evaluatordashboard',NULL,NULL,NULL,NULL,1619701022,1619701022,'N','N','N','N','N',NULL),

('examination/dashboard/index',2,'examination/dashboard/index',NULL,NULL,NULL,NULL,1610177825,1610177825,'N','N','N','N','N',NULL),

('examination/dashboard/programme-settings',2,'examination/dashboard/programme-settings',NULL,NULL,NULL,NULL,1613120746,1613120746,'N','N','N','N','N',NULL),

('examination/dashboard/programmesettings',2,'examination/dashboard/programmesettings',NULL,NULL,NULL,NULL,1619701022,1619701022,'N','N','N','N','N',NULL),

('examination/dashboard/session',2,'examination/dashboard/session',NULL,NULL,NULL,NULL,1611808306,1611808306,'N','N','N','N','N',NULL),

('examination/dashboard/session-index',2,'examination/dashboard/session-index',NULL,NULL,NULL,NULL,1610966064,1610966064,'N','N','N','N','N',NULL),

('examination/dashboard/sessionindex',2,'examination/dashboard/sessionindex',NULL,NULL,NULL,NULL,1619701022,1619701022,'N','N','N','N','N',NULL),

('examination/dashboard/settings',2,'examination/dashboard/settings',NULL,NULL,NULL,NULL,1610628557,1610628557,'N','N','N','N','N',NULL),

('examination/evaluation-template/create',2,'examination/evaluation-template/create',NULL,NULL,NULL,NULL,1619701022,1619701022,'N','N','N','N','N',NULL),

('examination/evaluation-template/delete',2,'examination/evaluation-template/delete',NULL,NULL,NULL,NULL,1619701022,1619701022,'N','N','N','N','N',NULL),

('examination/evaluation-template/index',2,'examination/evaluation-template/index',NULL,NULL,NULL,NULL,1619701022,1619701022,'N','N','N','N','N',NULL),

('examination/evaluation-template/update',2,'examination/evaluation-template/update',NULL,NULL,NULL,NULL,1619701022,1619701022,'N','N','N','N','N',NULL),

('examination/evaluation-template/view',2,'examination/evaluation-template/view',NULL,NULL,NULL,NULL,1619701022,1619701022,'N','N','N','N','N',NULL),

('examination/evaluation/bulk-update',2,'examination/evaluation/bulk-update',NULL,NULL,NULL,NULL,1610966064,1610966064,'N','N','N','N','N',NULL),

('examination/evaluation/bulk-update-marks',2,'examination/evaluation/bulk-update-marks',NULL,NULL,NULL,NULL,1610966064,1610966064,'N','N','N','N','N',NULL),

('examination/evaluation/bulkupdate',2,'examination/evaluation/bulkupdate',NULL,NULL,NULL,NULL,1619701022,1619701022,'N','N','N','N','N',NULL),

('examination/evaluation/bulkupdatemarks',2,'examination/evaluation/bulkupdatemarks',NULL,NULL,NULL,NULL,1619701022,1619701022,'N','N','N','N','N',NULL),

('examination/evaluation/calculate-component-marks-bulk-override',2,'examination/evaluation/calculate-component-marks-bulk-override',NULL,NULL,NULL,NULL,1610966064,1610966064,'N','N','N','N','N',NULL),

('examination/evaluation/calculate-final-marks',2,'examination/evaluation/calculate-final-marks',NULL,NULL,NULL,NULL,1610966064,1610966064,'N','N','N','N','N',NULL),

('examination/evaluation/calculate-grades',2,'examination/evaluation/calculate-grades',NULL,NULL,NULL,NULL,1610966064,1610966064,'N','N','N','N','N',NULL),

('examination/evaluation/calculate-marks-bulk-override',2,'examination/evaluation/calculate-marks-bulk-override',NULL,NULL,NULL,NULL,1610966064,1610966064,'N','N','N','N','N',NULL),

('examination/evaluation/calculate-marks-individual',2,'examination/evaluation/calculate-marks-individual',NULL,NULL,NULL,NULL,1610966064,1610966064,'N','N','N','N','N',NULL),

('examination/evaluation/calculate-marks-individual-form',2,'examination/evaluation/calculate-marks-individual-form',NULL,NULL,NULL,NULL,1610966064,1610966064,'N','N','N','N','N',NULL),

('examination/evaluation/calculate-marks-individual-override',2,'examination/evaluation/calculate-marks-individual-override',NULL,NULL,NULL,NULL,1610966064,1610966064,'N','N','N','N','N',NULL),

('examination/evaluation/calculatecomponentmarksbulkoverride',2,'examination/evaluation/calculatecomponentmarksbulkoverride',NULL,NULL,NULL,NULL,1619701022,1619701022,'N','N','N','N','N',NULL),

('examination/evaluation/calculatefinalmarks',2,'examination/evaluation/calculatefinalmarks',NULL,NULL,NULL,NULL,1619701022,1619701022,'N','N','N','N','N',NULL),

('examination/evaluation/calculategrades',2,'examination/evaluation/calculategrades',NULL,NULL,NULL,NULL,1619701022,1619701022,'N','N','N','N','N',NULL),

('examination/evaluation/calculatemarksbulkoverride',2,'examination/evaluation/calculatemarksbulkoverride',NULL,NULL,NULL,NULL,1619701022,1619701022,'N','N','N','N','N',NULL),

('examination/evaluation/calculatemarksindividual',2,'examination/evaluation/calculatemarksindividual',NULL,NULL,NULL,NULL,1619701022,1619701022,'N','N','N','N','N',NULL),

('examination/evaluation/calculatemarksindividualform',2,'examination/evaluation/calculatemarksindividualform',NULL,NULL,NULL,NULL,1619701022,1619701022,'N','N','N','N','N',NULL),

('examination/evaluation/calculatemarksindividualoverride',2,'examination/evaluation/calculatemarksindividualoverride',NULL,NULL,NULL,NULL,1619701022,1619701022,'N','N','N','N','N',NULL),

('examination/evaluation/download-excel',2,'examination/evaluation/download-excel',NULL,NULL,NULL,NULL,1610966064,1610966064,'N','N','N','N','N',NULL),

('examination/evaluation/downloadexcel',2,'examination/evaluation/downloadexcel',NULL,NULL,NULL,NULL,1619701022,1619701022,'N','N','N','N','N',NULL),

('examination/evaluation/export',2,'examination/evaluation/export',NULL,NULL,NULL,NULL,1610966064,1610966064,'N','N','N','N','N',NULL),

('examination/evaluation/export-form',2,'examination/evaluation/export-form',NULL,NULL,NULL,NULL,1610966064,1610966064,'N','N','N','N','N',NULL),

('examination/evaluation/export-pdf',2,'examination/evaluation/export-pdf',NULL,NULL,NULL,NULL,1610966064,1610966064,'N','N','N','N','N',NULL),

('examination/evaluation/export-student-list',2,'examination/evaluation/export-student-list',NULL,NULL,NULL,NULL,1610966064,1610966064,'N','N','N','N','N',NULL),

('examination/evaluation/exportform',2,'examination/evaluation/exportform',NULL,NULL,NULL,NULL,1619701022,1619701022,'N','N','N','N','N',NULL),

('examination/evaluation/exportpdf',2,'examination/evaluation/exportpdf',NULL,NULL,NULL,NULL,1619701022,1619701022,'N','N','N','N','N',NULL),

('examination/evaluation/exportstudentlist',2,'examination/evaluation/exportstudentlist',NULL,NULL,NULL,NULL,1619701022,1619701022,'N','N','N','N','N',NULL),

('examination/evaluation/horizontal-layout',2,'examination/evaluation/horizontal-layout',NULL,NULL,NULL,NULL,1610966064,1610966064,'N','N','N','N','N',NULL),

('examination/evaluation/horizontallayout',2,'examination/evaluation/horizontallayout',NULL,NULL,NULL,NULL,1619701022,1619701022,'N','N','N','N','N',NULL),

('examination/evaluation/manage',2,'examination/evaluation/manage',NULL,NULL,NULL,NULL,1610966064,1610966064,'N','N','N','N','N',NULL),

('examination/evaluation/manage-marks',2,'examination/evaluation/manage-marks',NULL,NULL,NULL,NULL,1610966064,1610966064,'N','N','N','N','N',NULL),

('examination/evaluation/managemarks',2,'examination/evaluation/managemarks',NULL,NULL,NULL,NULL,1619701022,1619701022,'N','N','N','N','N',NULL),

('examination/evaluation/mark-sheet',2,'examination/evaluation/mark-sheet',NULL,NULL,NULL,NULL,1610966064,1610966064,'N','N','N','N','N',NULL),

('examination/evaluation/marksheet',2,'examination/evaluation/marksheet',NULL,NULL,NULL,NULL,1619701022,1619701022,'N','N','N','N','N',NULL),

('examination/evaluation/move',2,'examination/evaluation/move',NULL,NULL,NULL,NULL,1610966064,1610966064,'N','N','N','N','N',NULL),

('examination/evaluation/save-sgpa',2,'examination/evaluation/save-sgpa',NULL,NULL,NULL,NULL,1610966064,1610966064,'N','N','N','N','N',NULL),

('examination/evaluation/savesgpa',2,'examination/evaluation/savesgpa',NULL,NULL,NULL,NULL,1619701022,1619701022,'N','N','N','N','N',NULL),

('examination/evaluation/semester-grade-card',2,'examination/evaluation/semester-grade-card',NULL,NULL,NULL,NULL,1610966064,1610966064,'N','N','N','N','N',NULL),

('examination/evaluation/semester-grade-card-supplementary',2,'examination/evaluation/semester-grade-card-supplementary',NULL,NULL,NULL,NULL,1610966064,1610966064,'N','N','N','N','N',NULL),

('examination/evaluation/semestergradecard',2,'examination/evaluation/semestergradecard',NULL,NULL,NULL,NULL,1619701022,1619701022,'N','N','N','N','N',NULL),

('examination/evaluation/semestergradecardsupplementary',2,'examination/evaluation/semestergradecardsupplementary',NULL,NULL,NULL,NULL,1619701022,1619701022,'N','N','N','N','N',NULL),

('examination/evaluation/sgpa',2,'examination/evaluation/sgpa',NULL,NULL,NULL,NULL,1610966064,1610966064,'N','N','N','N','N',NULL),

('examination/evaluation/student-marks-component',2,'examination/evaluation/student-marks-component',NULL,NULL,NULL,NULL,1610966064,1610966064,'N','N','N','N','N',NULL),

('examination/evaluation/studentmarkscomponent',2,'examination/evaluation/studentmarkscomponent',NULL,NULL,NULL,NULL,1619701022,1619701022,'N','N','N','N','N',NULL),

('examination/evaluation/supplementary-mark-sheet',2,'examination/evaluation/supplementary-mark-sheet',NULL,NULL,NULL,NULL,1610966064,1610966064,'N','N','N','N','N',NULL),

('examination/evaluation/supplementary-term-report',2,'examination/evaluation/supplementary-term-report',NULL,NULL,NULL,NULL,1610966064,1610966064,'N','N','N','N','N',NULL),

('examination/evaluation/supplementarymarksheet',2,'examination/evaluation/supplementarymarksheet',NULL,NULL,NULL,NULL,1619701022,1619701022,'N','N','N','N','N',NULL),

('examination/evaluation/supplementarytermreport',2,'examination/evaluation/supplementarytermreport',NULL,NULL,NULL,NULL,1619701022,1619701022,'N','N','N','N','N',NULL),

('examination/evaluation/term-report',2,'examination/evaluation/term-report',NULL,NULL,NULL,NULL,1610966064,1610966064,'N','N','N','N','N',NULL),

('examination/evaluation/termreport',2,'examination/evaluation/termreport',NULL,NULL,NULL,NULL,1619701022,1619701022,'N','N','N','N','N',NULL),

('examination/evaluation/verify-marks',2,'examination/evaluation/verify-marks',NULL,NULL,NULL,NULL,1610966064,1610966064,'N','N','N','N','N',NULL),

('examination/evaluation/verifymarks',2,'examination/evaluation/verifymarks',NULL,NULL,NULL,NULL,1619701022,1619701022,'N','N','N','N','N',NULL),

('examination/evaluation/withheld',2,'examination/evaluation/withheld',NULL,NULL,NULL,NULL,1610966064,1610966064,'N','N','N','N','N',NULL),

('examination/evaluation/withheld-form',2,'examination/evaluation/withheld-form',NULL,NULL,NULL,NULL,1610966064,1610966064,'N','N','N','N','N',NULL),

('examination/evaluation/withheldform',2,'examination/evaluation/withheldform',NULL,NULL,NULL,NULL,1619701022,1619701022,'N','N','N','N','N',NULL),

('examination/evaluator/assign-evaluators',2,'examination/evaluator/assign-evaluators',NULL,NULL,NULL,NULL,1620463421,1620463421,'N','N','N','N','N',NULL),

('examination/evaluator/assignevaluators',2,'examination/evaluator/assignevaluators',NULL,NULL,NULL,NULL,1619701022,1619701022,'N','N','N','N','N',NULL),

('examination/evaluator/dashboard',2,'examination/evaluator/dashboard',NULL,NULL,NULL,NULL,1615197472,1615197472,'N','N','N','N','N',NULL),

('examination/evaluator/delete-evaluator',2,'examination/evaluator/delete-evaluator',NULL,NULL,NULL,NULL,1587760101,1587760101,'N','N','N','N','N',NULL),

('examination/evaluator/deleteevaluator',2,'examination/evaluator/deleteevaluator',NULL,NULL,NULL,NULL,1619701022,1619701022,'N','N','N','N','N',NULL),

('examination/evaluator/export-data',2,'examination/evaluator/export-data',NULL,NULL,NULL,NULL,1587760113,1587760113,'N','N','N','N','N',NULL),

('examination/evaluator/exportdata',2,'examination/evaluator/exportdata',NULL,NULL,NULL,NULL,1619701022,1619701022,'N','N','N','N','N',NULL),

('examination/evaluator/exportform',2,'examination/evaluator/exportform',NULL,NULL,NULL,NULL,1619701022,1619701022,'N','N','N','N','N',NULL),

('examination/evaluator/generate',2,'examination/evaluator/generate',NULL,NULL,NULL,NULL,1619701022,1619701022,'N','N','N','N','N',NULL),

('examination/evaluator/get-section',2,'examination/evaluator/get-section',NULL,NULL,NULL,NULL,1619701022,1619701022,'N','N','N','N','N',NULL),

('examination/evaluator/getou',2,'examination/evaluator/getou',NULL,NULL,NULL,NULL,1619701022,1619701022,'N','N','N','N','N',NULL),

('examination/evaluator/getsection',2,'examination/evaluator/getsection',NULL,NULL,NULL,NULL,1619701022,1619701022,'N','N','N','N','N',NULL),

('examination/evaluator/importdata',2,'examination/evaluator/importdata',NULL,NULL,NULL,NULL,1619701022,1619701022,'N','N','N','N','N',NULL),

('examination/evaluator/index-session',2,'examination/evaluator/index-session',NULL,NULL,NULL,NULL,1591614028,1591614028,'N','N','N','N','N',NULL),

('examination/evaluator/indexsession',2,'examination/evaluator/indexsession',NULL,NULL,NULL,NULL,1619701022,1619701022,'N','N','N','N','N',NULL),

('examination/evaluator/processandimportdata',2,'examination/evaluator/processandimportdata',NULL,NULL,NULL,NULL,1619701022,1619701022,'N','N','N','N','N',NULL),

('examination/evaluator/save-evaluator',2,'examination/evaluator/save-evaluator',NULL,NULL,NULL,NULL,1587760101,1587760101,'N','N','N','N','N',NULL),

('examination/evaluator/saveevaluator',2,'examination/evaluator/saveevaluator',NULL,NULL,NULL,NULL,1619701022,1619701022,'N','N','N','N','N',NULL),

('examination/evaluator/select-programme',2,'examination/evaluator/select-programme',NULL,NULL,NULL,NULL,1620280300,1620280300,'N','N','N','N','N',NULL),

('examination/evaluator/selectprogramme',2,'examination/evaluator/selectprogramme',NULL,NULL,NULL,NULL,1619701022,1619701022,'N','N','N','N','N',NULL),

('examination/exam-cycle/create',2,'examination/exam-cycle/create',NULL,NULL,NULL,NULL,1610966064,1610966064,'N','N','N','N','N',NULL),

('examination/exam-cycle/delete',2,'examination/exam-cycle/delete',NULL,NULL,NULL,NULL,1610966064,1610966064,'N','N','N','N','N',NULL),

('examination/exam-cycle/index',2,'examination/exam-cycle/index',NULL,NULL,NULL,NULL,1610966064,1610966064,'N','N','N','N','N',NULL),

('examination/exam-cycle/update',2,'examination/exam-cycle/update',NULL,NULL,NULL,NULL,1610966064,1610966064,'N','N','N','N','N',NULL),

('examination/exam-cycle/view',2,'examination/exam-cycle/view',NULL,NULL,NULL,NULL,1610966064,1610966064,'N','N','N','N','N',NULL),

('examination/exam-date-sheet/create',2,'examination/exam-date-sheet/create',NULL,NULL,NULL,NULL,1610966064,1610966064,'N','N','N','N','N',NULL),

('examination/exam-date-sheet/delete',2,'examination/exam-date-sheet/delete',NULL,NULL,NULL,NULL,1610966064,1610966064,'N','N','N','N','N',NULL),

('examination/exam-date-sheet/index',2,'examination/exam-date-sheet/index',NULL,NULL,NULL,NULL,1610966064,1610966064,'N','N','N','N','N',NULL),

('examination/exam-date-sheet/update',2,'examination/exam-date-sheet/update',NULL,NULL,NULL,NULL,1610966064,1610966064,'N','N','N','N','N',NULL),

('examination/exam-date-sheet/view',2,'examination/exam-date-sheet/view',NULL,NULL,NULL,NULL,1610966064,1610966064,'N','N','N','N','N',NULL),

('examination/exam-roll-pattern/create',2,'examination/exam-roll-pattern/create',NULL,NULL,NULL,NULL,1610311199,1610311199,'N','N','N','N','N',NULL),

('examination/exam-roll-pattern/delete',2,'examination/exam-roll-pattern/delete',NULL,NULL,NULL,NULL,1610966064,1610966064,'N','N','N','N','N',NULL),

('examination/exam-roll-pattern/generate-roll-number',2,'examination/exam-roll-pattern/generate-roll-number',NULL,NULL,NULL,NULL,1610966064,1610966064,'N','N','N','N','N',NULL),

('examination/exam-roll-pattern/generaterollnumber',2,'examination/exam-roll-pattern/generaterollnumber',NULL,NULL,NULL,NULL,1619701022,1619701022,'N','N','N','N','N',NULL),

('examination/exam-roll-pattern/publish',2,'examination/exam-roll-pattern/publish',NULL,NULL,NULL,NULL,1610966064,1610966064,'N','N','N','N','N',NULL),

('examination/exam-roll-pattern/update',2,'examination/exam-roll-pattern/update',NULL,NULL,NULL,NULL,1610966064,1610966064,'N','N','N','N','N',NULL),

('examination/exam-roll-pattern/view',2,'examination/exam-roll-pattern/view',NULL,NULL,NULL,NULL,1610966064,1610966064,'N','N','N','N','N',NULL),

('examination/exam-time-slots/create',2,'examination/exam-time-slots/create',NULL,NULL,NULL,NULL,1610966064,1610966064,'N','N','N','N','N',NULL),

('examination/exam-time-slots/delete',2,'examination/exam-time-slots/delete',NULL,NULL,NULL,NULL,1610966064,1610966064,'N','N','N','N','N',NULL),

('examination/exam-time-slots/get-programmes-by-term',2,'examination/exam-time-slots/get-programmes-by-term',NULL,NULL,NULL,NULL,1610966064,1610966064,'N','N','N','N','N',NULL),

('examination/exam-time-slots/getprogrammesbyterm',2,'examination/exam-time-slots/getprogrammesbyterm',NULL,NULL,NULL,NULL,1619701022,1619701022,'N','N','N','N','N',NULL),

('examination/exam-time-slots/index',2,'examination/exam-time-slots/index',NULL,NULL,NULL,NULL,1610966064,1610966064,'N','N','N','N','N',NULL),

('examination/exam-time-slots/update',2,'examination/exam-time-slots/update',NULL,NULL,NULL,NULL,1610966064,1610966064,'N','N','N','N','N',NULL),

('examination/exam-time-slots/view',2,'examination/exam-time-slots/view',NULL,NULL,NULL,NULL,1610966064,1610966064,'N','N','N','N','N',NULL),

('examination/examination-admit-card-template/create',2,'examination/examination-admit-card-template/create',NULL,NULL,NULL,NULL,1610966065,1610966065,'N','N','N','N','N',NULL),

('examination/examination-admit-card-template/delete',2,'examination/examination-admit-card-template/delete',NULL,NULL,NULL,NULL,1610966065,1610966065,'N','N','N','N','N',NULL),

('examination/examination-admit-card-template/index',2,'examination/examination-admit-card-template/index',NULL,NULL,NULL,NULL,1610966065,1610966065,'N','N','N','N','N',NULL),

('examination/examination-admit-card-template/update',2,'examination/examination-admit-card-template/update',NULL,NULL,NULL,NULL,1610966065,1610966065,'N','N','N','N','N',NULL),

('examination/examination-admit-card-template/view',2,'examination/examination-admit-card-template/view',NULL,NULL,NULL,NULL,1610966065,1610966065,'N','N','N','N','N',NULL),

('examination/examination-admit-card/create',2,'examination/examination-admit-card/create',NULL,NULL,NULL,NULL,1610966065,1610966065,'N','N','N','N','N',NULL),

('examination/examination-admit-card/delete',2,'examination/examination-admit-card/delete',NULL,NULL,NULL,NULL,1610966065,1610966065,'N','N','N','N','N',NULL),

('examination/examination-admit-card/get-center',2,'examination/examination-admit-card/get-center',NULL,NULL,NULL,NULL,1610966065,1610966065,'N','N','N','N','N',NULL),

('examination/examination-admit-card/getcenter',2,'examination/examination-admit-card/getcenter',NULL,NULL,NULL,NULL,1619701022,1619701022,'N','N','N','N','N',NULL),

('examination/examination-admit-card/index',2,'examination/examination-admit-card/index',NULL,NULL,NULL,NULL,1610966064,1610966064,'N','N','N','N','N',NULL),

('examination/examination-admit-card/lock',2,'examination/examination-admit-card/lock',NULL,NULL,NULL,NULL,1610966065,1610966065,'N','N','N','N','N',NULL),

('examination/examination-admit-card/mark-downloaded',2,'examination/examination-admit-card/mark-downloaded',NULL,NULL,NULL,NULL,1610966065,1610966065,'N','N','N','N','N',NULL),

('examination/examination-admit-card/markdownloaded',2,'examination/examination-admit-card/markdownloaded',NULL,NULL,NULL,NULL,1619701022,1619701022,'N','N','N','N','N',NULL),

('examination/examination-admit-card/pdf',2,'examination/examination-admit-card/pdf',NULL,NULL,NULL,NULL,1610966065,1610966065,'N','N','N','N','N',NULL),

('examination/examination-admit-card/programme',2,'examination/examination-admit-card/programme',NULL,NULL,NULL,NULL,1610966065,1610966065,'N','N','N','N','N',NULL),

('examination/examination-admit-card/release-bulk',2,'examination/examination-admit-card/release-bulk',NULL,NULL,NULL,NULL,1610966065,1610966065,'N','N','N','N','N',NULL),

('examination/examination-admit-card/releasebulk',2,'examination/examination-admit-card/releasebulk',NULL,NULL,NULL,NULL,1619701022,1619701022,'N','N','N','N','N',NULL),

('examination/examination-admit-card/update',2,'examination/examination-admit-card/update',NULL,NULL,NULL,NULL,1610966065,1610966065,'N','N','N','N','N',NULL),

('examination/examination-admit-card/view',2,'examination/examination-admit-card/view',NULL,NULL,NULL,NULL,1610966065,1610966065,'N','N','N','N','N',NULL),

('examination/examination-application-control/create',2,'examination/examination-application-control/create',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/examination-application-control/delete',2,'examination/examination-application-control/delete',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/examination-application-control/index',2,'examination/examination-application-control/index',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/examination-application-control/update',2,'examination/examination-application-control/update',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/examination-application-control/view',2,'examination/examination-application-control/view',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/examination-centre-detail-session/availibility',2,'examination/examination-centre-detail-session/availibility',NULL,NULL,NULL,NULL,1611395189,1611395189,'N','N','N','N','N',NULL),

('examination/examination-centre-detail-session/city-index',2,'examination/examination-centre-detail-session/city-index',NULL,NULL,NULL,NULL,1610966065,1610966065,'N','N','N','N','N',NULL),

('examination/examination-centre-detail-session/cityindex',2,'examination/examination-centre-detail-session/cityindex',NULL,NULL,NULL,NULL,1619701022,1619701022,'N','N','N','N','N',NULL),

('examination/examination-centre-detail-session/create',2,'examination/examination-centre-detail-session/create',NULL,NULL,NULL,NULL,1610966065,1610966065,'N','N','N','N','N',NULL),

('examination/examination-centre-detail-session/delete',2,'examination/examination-centre-detail-session/delete',NULL,NULL,NULL,NULL,1610966065,1610966065,'N','N','N','N','N',NULL),

('examination/examination-centre-detail-session/import',2,'examination/examination-centre-detail-session/import',NULL,NULL,NULL,NULL,1610966065,1610966065,'N','N','N','N','N',NULL),

('examination/examination-centre-detail-session/index',2,'examination/examination-centre-detail-session/index',NULL,NULL,NULL,NULL,1610966065,1610966065,'N','N','N','N','N',NULL),

('examination/examination-centre-detail-session/update',2,'examination/examination-centre-detail-session/update',NULL,NULL,NULL,NULL,1610966065,1610966065,'N','N','N','N','N',NULL),

('examination/examination-centre-detail-session/view',2,'examination/examination-centre-detail-session/view',NULL,NULL,NULL,NULL,1610966065,1610966065,'N','N','N','N','N',NULL),

('examination/examination-centre-detail/city-index',2,'examination/examination-centre-detail/city-index',NULL,NULL,NULL,NULL,1610966065,1610966065,'N','N','N','N','N',NULL),

('examination/examination-centre-detail/cityindex',2,'examination/examination-centre-detail/cityindex',NULL,NULL,NULL,NULL,1619701022,1619701022,'N','N','N','N','N',NULL),

('examination/examination-centre-detail/create',2,'examination/examination-centre-detail/create',NULL,NULL,NULL,NULL,1610966065,1610966065,'N','N','N','N','N',NULL),

('examination/examination-centre-detail/delete',2,'examination/examination-centre-detail/delete',NULL,NULL,NULL,NULL,1610966065,1610966065,'N','N','N','N','N',NULL),

('examination/examination-centre-detail/index',2,'examination/examination-centre-detail/index',NULL,NULL,NULL,NULL,1610311212,1610311212,'N','N','N','N','N',NULL),

('examination/examination-centre-detail/update',2,'examination/examination-centre-detail/update',NULL,NULL,NULL,NULL,1610966065,1610966065,'N','N','N','N','N',NULL),

('examination/examination-centre-detail/view',2,'examination/examination-centre-detail/view',NULL,NULL,NULL,NULL,1610966065,1610966065,'N','N','N','N','N',NULL),

('examination/examination-content/create',2,'examination/examination-content/create',NULL,NULL,NULL,NULL,1619701022,1619701022,'N','N','N','N','N',NULL),

('examination/examination-content/delete',2,'examination/examination-content/delete',NULL,NULL,NULL,NULL,1619701022,1619701022,'N','N','N','N','N',NULL),

('examination/examination-content/index',2,'examination/examination-content/index',NULL,NULL,NULL,NULL,1613120726,1613120726,'N','N','N','N','N',NULL),

('examination/examination-content/update',2,'examination/examination-content/update',NULL,NULL,NULL,NULL,1619701022,1619701022,'N','N','N','N','N',NULL),

('examination/examination-content/view',2,'examination/examination-content/view',NULL,NULL,NULL,NULL,1619701022,1619701022,'N','N','N','N','N',NULL),

('examination/examination-course-center-mapping/create',2,'examination/examination-course-center-mapping/create',NULL,NULL,NULL,NULL,1610966065,1610966065,'N','N','N','N','N',NULL),

('examination/examination-course-center-mapping/delete',2,'examination/examination-course-center-mapping/delete',NULL,NULL,NULL,NULL,1610966065,1610966065,'N','N','N','N','N',NULL),

('examination/examination-course-center-mapping/index',2,'examination/examination-course-center-mapping/index',NULL,NULL,NULL,NULL,1610966065,1610966065,'N','N','N','N','N',NULL),

('examination/examination-course-center-mapping/index-center',2,'examination/examination-course-center-mapping/index-center',NULL,NULL,NULL,NULL,1610966065,1610966065,'N','N','N','N','N',NULL),

('examination/examination-course-center-mapping/update',2,'examination/examination-course-center-mapping/update',NULL,NULL,NULL,NULL,1610966065,1610966065,'N','N','N','N','N',NULL),

('examination/examination-course-center-mapping/view',2,'examination/examination-course-center-mapping/view',NULL,NULL,NULL,NULL,1610966065,1610966065,'N','N','N','N','N',NULL),

('examination/examination-fee/bulk-assign-examination-fee',2,'examination/examination-fee/bulk-assign-examination-fee',NULL,NULL,NULL,NULL,1610966065,1610966065,'N','N','N','N','N',NULL),

('examination/examination-fee/bulkassignexaminationfee',2,'examination/examination-fee/bulkassignexaminationfee',NULL,NULL,NULL,NULL,1619701023,1619701023,'N','N','N','N','N',NULL),

('examination/examination-fee/bulkupdate',2,'examination/examination-fee/bulkupdate',NULL,NULL,NULL,NULL,1619701023,1619701023,'N','N','N','N','N',NULL),

('examination/examination-fee/changeconfig',2,'examination/examination-fee/changeconfig',NULL,NULL,NULL,NULL,1619701023,1619701023,'N','N','N','N','N',NULL),

('examination/examination-fee/changetype',2,'examination/examination-fee/changetype',NULL,NULL,NULL,NULL,1619701023,1619701023,'N','N','N','N','N',NULL),

('examination/examination-fee/configure-fee',2,'examination/examination-fee/configure-fee',NULL,'s:0:\"\";',NULL,'examination',1624966447,1624966447,'N','N','N','N','N',NULL),

('examination/examination-fee/configurefee',2,'examination/examination-fee/configurefee',NULL,NULL,NULL,NULL,1619701023,1619701023,'N','N','N','N','N',NULL),

('examination/examination-fee/configurefee1',2,'examination/examination-fee/configurefee1',NULL,NULL,NULL,NULL,1619701023,1619701023,'N','N','N','N','N',NULL),

('examination/examination-fee/examination-fee-index',2,'examination/examination-fee/examination-fee-index',NULL,NULL,NULL,NULL,1610311160,1610311160,'N','N','N','N','N',NULL),

('examination/examination-fee/examinationfeeindex',2,'examination/examination-fee/examinationfeeindex',NULL,NULL,NULL,NULL,1619701022,1619701022,'N','N','N','N','N',NULL),

('examination/examination-fee/fixed-view',2,'examination/examination-fee/fixed-view',NULL,'s:0:\"\";',NULL,'examination',1624966958,1624966958,'N','N','N','N','N',NULL),

('examination/examination-fee/fixedview',2,'examination/examination-fee/fixedview',NULL,NULL,NULL,NULL,1619701023,1619701023,'N','N','N','N','N',NULL),

('examination/examination-fee/index',2,'examination/examination-fee/index',NULL,NULL,NULL,NULL,1619701022,1619701022,'N','N','N','N','N',NULL),

('examination/examination-fee/programme-index',2,'examination/examination-fee/programme-index',NULL,NULL,NULL,NULL,1613120652,1613120652,'N','N','N','N','N',NULL),

('examination/examination-fee/programmeindex',2,'examination/examination-fee/programmeindex',NULL,NULL,NULL,NULL,1619701023,1619701023,'N','N','N','N','N',NULL),

('examination/examination-fee/savecoursefee',2,'examination/examination-fee/savecoursefee',NULL,NULL,NULL,NULL,1619701023,1619701023,'N','N','N','N','N',NULL),

('examination/examination-fee/savefixed',2,'examination/examination-fee/savefixed',NULL,NULL,NULL,NULL,1619701023,1619701023,'N','N','N','N','N',NULL),

('examination/examination-fee/savetemplate',2,'examination/examination-fee/savetemplate',NULL,NULL,NULL,NULL,1619701023,1619701023,'N','N','N','N','N',NULL),

('examination/examination-fee/select-type',2,'examination/examination-fee/select-type',NULL,NULL,NULL,NULL,1613120639,1613120639,'N','N','N','N','N',NULL),

('examination/examination-fee/selecttype',2,'examination/examination-fee/selecttype',NULL,NULL,NULL,NULL,1619701023,1619701023,'N','N','N','N','N',NULL),

('examination/examination-mail-format-template/create',2,'examination/examination-mail-format-template/create',NULL,NULL,NULL,NULL,1619701023,1619701023,'N','N','N','N','N',NULL),

('examination/examination-mail-format-template/delete',2,'examination/examination-mail-format-template/delete',NULL,NULL,NULL,NULL,1619701023,1619701023,'N','N','N','N','N',NULL),

('examination/examination-mail-format-template/index',2,'examination/examination-mail-format-template/index',NULL,NULL,NULL,NULL,1613120703,1613120703,'N','N','N','N','N',NULL),

('examination/examination-mail-format-template/update',2,'examination/examination-mail-format-template/update',NULL,NULL,NULL,NULL,1619701023,1619701023,'N','N','N','N','N',NULL),

('examination/examination-mail-format-template/view',2,'examination/examination-mail-format-template/view',NULL,NULL,NULL,NULL,1619701023,1619701023,'N','N','N','N','N',NULL),

('examination/examination-mail-log-examiner/create',2,'examination/examination-mail-log-examiner/create',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/examination-mail-log-examiner/delete',2,'examination/examination-mail-log-examiner/delete',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/examination-mail-log-examiner/index',2,'examination/examination-mail-log-examiner/index',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/examination-mail-log-examiner/indexteacher',2,'examination/examination-mail-log-examiner/indexteacher',NULL,NULL,NULL,NULL,1619701023,1619701023,'N','N','N','N','N',NULL),

('examination/examination-mail-log-examiner/mail',2,'examination/examination-mail-log-examiner/mail',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/examination-mail-log-examiner/update',2,'examination/examination-mail-log-examiner/update',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/examination-mail-log-examiner/view',2,'examination/examination-mail-log-examiner/view',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/examination-mail-log/create',2,'examination/examination-mail-log/create',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/examination-mail-log/createall',2,'examination/examination-mail-log/createall',NULL,NULL,NULL,NULL,1619701023,1619701023,'N','N','N','N','N',NULL),

('examination/examination-mail-log/delete',2,'examination/examination-mail-log/delete',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/examination-mail-log/index',2,'examination/examination-mail-log/index',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/examination-mail-log/indexteacher',2,'examination/examination-mail-log/indexteacher',NULL,NULL,NULL,NULL,1619701023,1619701023,'N','N','N','N','N',NULL),

('examination/examination-mail-log/mail',2,'examination/examination-mail-log/mail',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/examination-mail-log/mailall',2,'examination/examination-mail-log/mailall',NULL,NULL,NULL,NULL,1619701023,1619701023,'N','N','N','N','N',NULL),

('examination/examination-mail-log/pdf',2,'examination/examination-mail-log/pdf',NULL,NULL,NULL,NULL,1619701023,1619701023,'N','N','N','N','N',NULL),

('examination/examination-mail-log/pdfall',2,'examination/examination-mail-log/pdfall',NULL,NULL,NULL,NULL,1619701023,1619701023,'N','N','N','N','N',NULL),

('examination/examination-mail-log/preview',2,'examination/examination-mail-log/preview',NULL,NULL,NULL,NULL,1619701023,1619701023,'N','N','N','N','N',NULL),

('examination/examination-mail-log/print',2,'examination/examination-mail-log/print',NULL,NULL,NULL,NULL,1619701023,1619701023,'N','N','N','N','N',NULL),

('examination/examination-mail-log/savecontent',2,'examination/examination-mail-log/savecontent',NULL,NULL,NULL,NULL,1619701023,1619701023,'N','N','N','N','N',NULL),

('examination/examination-mail-log/templateoption',2,'examination/examination-mail-log/templateoption',NULL,NULL,NULL,NULL,1619701023,1619701023,'N','N','N','N','N',NULL),

('examination/examination-mail-log/templateoptionall',2,'examination/examination-mail-log/templateoptionall',NULL,NULL,NULL,NULL,1619701023,1619701023,'N','N','N','N','N',NULL),

('examination/examination-mail-log/update',2,'examination/examination-mail-log/update',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/examination-mail-log/view',2,'examination/examination-mail-log/view',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/examination-marks/index-programme',2,'examination/examination-marks/index-programme',NULL,NULL,NULL,NULL,1610311262,1610311262,'N','N','N','N','N',NULL),

('examination/examination-marks/indexprogramme',2,'examination/examination-marks/indexprogramme',NULL,NULL,NULL,NULL,1619701023,1619701023,'N','N','N','N','N',NULL),

('examination/examination-marks/section-index',2,'examination/examination-marks/section-index',NULL,NULL,NULL,NULL,1610966065,1610966065,'N','N','N','N','N',NULL),

('examination/examination-marks/sectionindex',2,'examination/examination-marks/sectionindex',NULL,NULL,NULL,NULL,1619701023,1619701023,'N','N','N','N','N',NULL),

('examination/examination-paper-examiner-master/create',2,'examination/examination-paper-examiner-master/create',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/examination-paper-examiner-master/detail-view',2,'examination/examination-paper-examiner-master/detail-view',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/examination-paper-examiner-master/detailview',2,'examination/examination-paper-examiner-master/detailview',NULL,NULL,NULL,NULL,1619701023,1619701023,'N','N','N','N','N',NULL),

('examination/examination-paper-examiner-master/get-course',2,'examination/examination-paper-examiner-master/get-course',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/examination-paper-examiner-master/get-teacher',2,'examination/examination-paper-examiner-master/get-teacher',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/examination-paper-examiner-master/get-unit',2,'examination/examination-paper-examiner-master/get-unit',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/examination-paper-examiner-master/getcourse',2,'examination/examination-paper-examiner-master/getcourse',NULL,NULL,NULL,NULL,1619701023,1619701023,'N','N','N','N','N',NULL),

('examination/examination-paper-examiner-master/getteacher',2,'examination/examination-paper-examiner-master/getteacher',NULL,NULL,NULL,NULL,1619701023,1619701023,'N','N','N','N','N',NULL),

('examination/examination-paper-examiner-master/getunit',2,'examination/examination-paper-examiner-master/getunit',NULL,NULL,NULL,NULL,1619701023,1619701023,'N','N','N','N','N',NULL),

('examination/examination-paper-examiner-master/index',2,'examination/examination-paper-examiner-master/index',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/examination-paper-examiner-master/mail',2,'examination/examination-paper-examiner-master/mail',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/examination-paper-examiner-master/program-index',2,'examination/examination-paper-examiner-master/program-index',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/examination-paper-examiner-master/programindex',2,'examination/examination-paper-examiner-master/programindex',NULL,NULL,NULL,NULL,1619701023,1619701023,'N','N','N','N','N',NULL),

('examination/examination-paper-examiner-master/remove',2,'examination/examination-paper-examiner-master/remove',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/examination-paper-examiner-master/save',2,'examination/examination-paper-examiner-master/save',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/examination-paper-examiner-master/update',2,'examination/examination-paper-examiner-master/update',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/examination-paper-examiner-master/view',2,'examination/examination-paper-examiner-master/view',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/examination-paper-examiner/award-sheet-upload',2,'examination/examination-paper-examiner/award-sheet-upload',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/examination-paper-examiner/awardsheetupload',2,'examination/examination-paper-examiner/awardsheetupload',NULL,NULL,NULL,NULL,1619701023,1619701023,'N','N','N','N','N',NULL),

('examination/examination-paper-examiner/create',2,'examination/examination-paper-examiner/create',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/examination-paper-examiner/dashboard',2,'examination/examination-paper-examiner/dashboard',NULL,NULL,NULL,NULL,1619701023,1619701023,'N','N','N','N','N',NULL),

('examination/examination-paper-examiner/deleteexaminer',2,'examination/examination-paper-examiner/deleteexaminer',NULL,NULL,NULL,NULL,1619701023,1619701023,'N','N','N','N','N',NULL),

('examination/examination-paper-examiner/detail-view',2,'examination/examination-paper-examiner/detail-view',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/examination-paper-examiner/detailview',2,'examination/examination-paper-examiner/detailview',NULL,NULL,NULL,NULL,1619701023,1619701023,'N','N','N','N','N',NULL),

('examination/examination-paper-examiner/get-course',2,'examination/examination-paper-examiner/get-course',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/examination-paper-examiner/get-teacher',2,'examination/examination-paper-examiner/get-teacher',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/examination-paper-examiner/get-unit',2,'examination/examination-paper-examiner/get-unit',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/examination-paper-examiner/getcourse',2,'examination/examination-paper-examiner/getcourse',NULL,NULL,NULL,NULL,1619701023,1619701023,'N','N','N','N','N',NULL),

('examination/examination-paper-examiner/getteacher',2,'examination/examination-paper-examiner/getteacher',NULL,NULL,NULL,NULL,1619701023,1619701023,'N','N','N','N','N',NULL),

('examination/examination-paper-examiner/getunit',2,'examination/examination-paper-examiner/getunit',NULL,NULL,NULL,NULL,1619701023,1619701023,'N','N','N','N','N',NULL),

('examination/examination-paper-examiner/index',2,'examination/examination-paper-examiner/index',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/examination-paper-examiner/mail',2,'examination/examination-paper-examiner/mail',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/examination-paper-examiner/program-index',2,'examination/examination-paper-examiner/program-index',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/examination-paper-examiner/programindex',2,'examination/examination-paper-examiner/programindex',NULL,NULL,NULL,NULL,1619701023,1619701023,'N','N','N','N','N',NULL),

('examination/examination-paper-examiner/record',2,'examination/examination-paper-examiner/record',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/examination-paper-examiner/reminder',2,'examination/examination-paper-examiner/reminder',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/examination-paper-examiner/remove',2,'examination/examination-paper-examiner/remove',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/examination-paper-examiner/save',2,'examination/examination-paper-examiner/save',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/examination-paper-examiner/saveexaminer',2,'examination/examination-paper-examiner/saveexaminer',NULL,NULL,NULL,NULL,1619701023,1619701023,'N','N','N','N','N',NULL),

('examination/examination-paper-examiner/saveexaminercourse',2,'examination/examination-paper-examiner/saveexaminercourse',NULL,NULL,NULL,NULL,1619701023,1619701023,'N','N','N','N','N',NULL),

('examination/examination-paper-examiner/selectcourse',2,'examination/examination-paper-examiner/selectcourse',NULL,NULL,NULL,NULL,1619701023,1619701023,'N','N','N','N','N',NULL),

('examination/examination-paper-examiner/selectprogramme',2,'examination/examination-paper-examiner/selectprogramme',NULL,NULL,NULL,NULL,1619701023,1619701023,'N','N','N','N','N',NULL),

('examination/examination-paper-examiner/set-reminder-date',2,'examination/examination-paper-examiner/set-reminder-date',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/examination-paper-examiner/setreminderdate',2,'examination/examination-paper-examiner/setreminderdate',NULL,NULL,NULL,NULL,1619701023,1619701023,'N','N','N','N','N',NULL),

('examination/examination-paper-examiner/update',2,'examination/examination-paper-examiner/update',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/examination-paper-examiner/view',2,'examination/examination-paper-examiner/view',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/examination-paper-setter-master/create',2,'examination/examination-paper-setter-master/create',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/examination-paper-setter-master/detail-view',2,'examination/examination-paper-setter-master/detail-view',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/examination-paper-setter-master/detailview',2,'examination/examination-paper-setter-master/detailview',NULL,NULL,NULL,NULL,1619701023,1619701023,'N','N','N','N','N',NULL),

('examination/examination-paper-setter-master/get-course',2,'examination/examination-paper-setter-master/get-course',NULL,NULL,NULL,NULL,1610979056,1610979056,'N','N','N','N','N',NULL),

('examination/examination-paper-setter-master/get-teacher',2,'examination/examination-paper-setter-master/get-teacher',NULL,NULL,NULL,NULL,1610979056,1610979056,'N','N','N','N','N',NULL),

('examination/examination-paper-setter-master/get-term',2,'examination/examination-paper-setter-master/get-term',NULL,NULL,NULL,NULL,1610979056,1610979056,'N','N','N','N','N',NULL),

('examination/examination-paper-setter-master/get-unit',2,'examination/examination-paper-setter-master/get-unit',NULL,NULL,NULL,NULL,1610979056,1610979056,'N','N','N','N','N',NULL),

('examination/examination-paper-setter-master/getcourse',2,'examination/examination-paper-setter-master/getcourse',NULL,NULL,NULL,NULL,1619701023,1619701023,'N','N','N','N','N',NULL),

('examination/examination-paper-setter-master/getteacher',2,'examination/examination-paper-setter-master/getteacher',NULL,NULL,NULL,NULL,1619701023,1619701023,'N','N','N','N','N',NULL),

('examination/examination-paper-setter-master/getterm',2,'examination/examination-paper-setter-master/getterm',NULL,NULL,NULL,NULL,1619701023,1619701023,'N','N','N','N','N',NULL),

('examination/examination-paper-setter-master/getunit',2,'examination/examination-paper-setter-master/getunit',NULL,NULL,NULL,NULL,1619701023,1619701023,'N','N','N','N','N',NULL),

('examination/examination-paper-setter-master/index',2,'examination/examination-paper-setter-master/index',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/examination-paper-setter-master/mail',2,'examination/examination-paper-setter-master/mail',NULL,NULL,NULL,NULL,1610979056,1610979056,'N','N','N','N','N',NULL),

('examination/examination-paper-setter-master/program-index',2,'examination/examination-paper-setter-master/program-index',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/examination-paper-setter-master/programindex',2,'examination/examination-paper-setter-master/programindex',NULL,NULL,NULL,NULL,1619701023,1619701023,'N','N','N','N','N',NULL),

('examination/examination-paper-setter-master/remove',2,'examination/examination-paper-setter-master/remove',NULL,NULL,NULL,NULL,1610979056,1610979056,'N','N','N','N','N',NULL),

('examination/examination-paper-setter-master/save',2,'examination/examination-paper-setter-master/save',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/examination-paper-setter-master/update',2,'examination/examination-paper-setter-master/update',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/examination-paper-setter-master/view',2,'examination/examination-paper-setter-master/view',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/examination-paper-setter/accept',2,'examination/examination-paper-setter/accept',NULL,NULL,NULL,NULL,1619701023,1619701023,'N','N','N','N','N',NULL),

('examination/examination-paper-setter/create',2,'examination/examination-paper-setter/create',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/examination-paper-setter/dashboard',2,'examination/examination-paper-setter/dashboard',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/examination-paper-setter/decline',2,'examination/examination-paper-setter/decline',NULL,NULL,NULL,NULL,1619701023,1619701023,'N','N','N','N','N',NULL),

('examination/examination-paper-setter/deletesetter',2,'examination/examination-paper-setter/deletesetter',NULL,NULL,NULL,NULL,1619701023,1619701023,'N','N','N','N','N',NULL),

('examination/examination-paper-setter/detail-view',2,'examination/examination-paper-setter/detail-view',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/examination-paper-setter/detailview',2,'examination/examination-paper-setter/detailview',NULL,NULL,NULL,NULL,1619701023,1619701023,'N','N','N','N','N',NULL),

('examination/examination-paper-setter/disable',2,'examination/examination-paper-setter/disable',NULL,NULL,NULL,NULL,1619701023,1619701023,'N','N','N','N','N',NULL),

('examination/examination-paper-setter/document-view',2,'examination/examination-paper-setter/document-view',NULL,'',NULL,'document',1611728463,1625743645,'N','N','N','N','N',NULL),

('examination/examination-paper-setter/enable',2,'examination/examination-paper-setter/enable',NULL,NULL,NULL,NULL,1619701023,1619701023,'N','N','N','N','N',NULL),

('examination/examination-paper-setter/get-course',2,'examination/examination-paper-setter/get-course',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/examination-paper-setter/get-paper',2,'examination/examination-paper-setter/get-paper',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/examination-paper-setter/get-teacher',2,'examination/examination-paper-setter/get-teacher',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/examination-paper-setter/get-term',2,'examination/examination-paper-setter/get-term',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/examination-paper-setter/get-unit',2,'examination/examination-paper-setter/get-unit',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/examination-paper-setter/getcourse',2,'examination/examination-paper-setter/getcourse',NULL,NULL,NULL,NULL,1619701023,1619701023,'N','N','N','N','N',NULL),

('examination/examination-paper-setter/getteacher',2,'examination/examination-paper-setter/getteacher',NULL,NULL,NULL,NULL,1619701023,1619701023,'N','N','N','N','N',NULL),

('examination/examination-paper-setter/getterm',2,'examination/examination-paper-setter/getterm',NULL,NULL,NULL,NULL,1619701023,1619701023,'N','N','N','N','N',NULL),

('examination/examination-paper-setter/getunit',2,'examination/examination-paper-setter/getunit',NULL,NULL,NULL,NULL,1619701023,1619701023,'N','N','N','N','N',NULL),

('examination/examination-paper-setter/index',2,'examination/examination-paper-setter/index',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/examination-paper-setter/mail',2,'examination/examination-paper-setter/mail',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/examination-paper-setter/paper-upload',2,'examination/examination-paper-setter/paper-upload',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/examination-paper-setter/papersetter',2,'examination/examination-paper-setter/papersetter',NULL,NULL,NULL,NULL,1619701023,1619701023,'N','N','N','N','N',NULL),

('examination/examination-paper-setter/paperupload',2,'examination/examination-paper-setter/paperupload',NULL,NULL,NULL,NULL,1619701023,1619701023,'N','N','N','N','N',NULL),

('examination/examination-paper-setter/program-index',2,'examination/examination-paper-setter/program-index',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/examination-paper-setter/programindex',2,'examination/examination-paper-setter/programindex',NULL,NULL,NULL,NULL,1619701023,1619701023,'N','N','N','N','N',NULL),

('examination/examination-paper-setter/record',2,'examination/examination-paper-setter/record',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/examination-paper-setter/recordall',2,'examination/examination-paper-setter/recordall',NULL,NULL,NULL,NULL,1619701023,1619701023,'N','N','N','N','N',NULL),

('examination/examination-paper-setter/reminder',2,'examination/examination-paper-setter/reminder',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/examination-paper-setter/remove',2,'examination/examination-paper-setter/remove',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/examination-paper-setter/save',2,'examination/examination-paper-setter/save',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/examination-paper-setter/save-setter',2,'examination/examination-paper-setter/save-setter',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/examination-paper-setter/savesetter',2,'examination/examination-paper-setter/savesetter',NULL,NULL,NULL,NULL,1619701023,1619701023,'N','N','N','N','N',NULL),

('examination/examination-paper-setter/savesettercourse',2,'examination/examination-paper-setter/savesettercourse',NULL,NULL,NULL,NULL,1619701023,1619701023,'N','N','N','N','N',NULL),

('examination/examination-paper-setter/select-programme',2,'examination/examination-paper-setter/select-programme',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/examination-paper-setter/selectcourse',2,'examination/examination-paper-setter/selectcourse',NULL,NULL,NULL,NULL,1619701023,1619701023,'N','N','N','N','N',NULL),

('examination/examination-paper-setter/selectprogramme',2,'examination/examination-paper-setter/selectprogramme',NULL,NULL,NULL,NULL,1619701023,1619701023,'N','N','N','N','N',NULL),

('examination/examination-paper-setter/set-reminder-date',2,'examination/examination-paper-setter/set-reminder-date',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/examination-paper-setter/setreminderdate',2,'examination/examination-paper-setter/setreminderdate',NULL,NULL,NULL,NULL,1619701023,1619701023,'N','N','N','N','N',NULL),

('examination/examination-paper-setter/setterview',2,'examination/examination-paper-setter/setterview',NULL,NULL,NULL,NULL,1619701023,1619701023,'N','N','N','N','N',NULL),

('examination/examination-paper-setter/termcondition',2,'examination/examination-paper-setter/termcondition',NULL,NULL,NULL,NULL,1619701023,1619701023,'N','N','N','N','N',NULL),

('examination/examination-paper-setter/thankyou',2,'examination/examination-paper-setter/thankyou',NULL,NULL,NULL,NULL,1619701023,1619701023,'N','N','N','N','N',NULL),

('examination/examination-paper-setter/update',2,'examination/examination-paper-setter/update',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/examination-paper-setter/verify-code',2,'examination/examination-paper-setter/verify-code',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/examination-paper-setter/view',2,'examination/examination-paper-setter/view',NULL,NULL,NULL,NULL,1610979055,1610979055,'N','N','N','N','N',NULL),

('examination/examination-programme-evaluation-template-mapping/create',2,'examination/examination-programme-evaluation-template-mapping/create',NULL,NULL,NULL,NULL,1587760101,1587760101,'N','N','N','N','N',NULL),

('examination/examination-programme-evaluation-template-mapping/delete',2,'examination/examination-programme-evaluation-template-mapping/delete',NULL,NULL,NULL,NULL,1587760113,1587760113,'N','N','N','N','N',NULL),

('examination/examination-schedule-hall-mapping/confirm-occupancy',2,'examination/examination-schedule-hall-mapping/confirm-occupancy',NULL,NULL,NULL,NULL,1613194885,1613194885,'N','N','N','N','N',NULL),

('examination/examination-schedule-hall-mapping/course',2,'examination/examination-schedule-hall-mapping/course',NULL,NULL,NULL,NULL,1612873894,1612873894,'N','N','N','N','N',NULL),

('examination/examination-schedule-hall-mapping/course-wise',2,'examination/examination-schedule-hall-mapping/course-wise',NULL,NULL,NULL,NULL,1612875548,1612875548,'N','N','N','N','N',NULL),

('examination/examination-schedule-hall-mapping/create',2,'examination/examination-schedule-hall-mapping/create',NULL,NULL,NULL,NULL,1612772540,1612772540,'N','N','N','N','N',NULL),

('examination/examination-schedule-hall-mapping/create-bulk',2,'examination/examination-schedule-hall-mapping/create-bulk',NULL,NULL,NULL,NULL,1612870629,1612870629,'N','N','N','N','N',NULL),

('examination/examination-schedule-hall-mapping/create-modal',2,'examination/examination-schedule-hall-mapping/create-modal',NULL,NULL,NULL,NULL,1613194223,1613194223,'N','N','N','N','N',NULL),

('examination/examination-schedule-hall-mapping/delete-mapping',2,'examination/examination-schedule-hall-mapping/delete-mapping',NULL,NULL,NULL,NULL,1613194237,1613194237,'N','N','N','N','N',NULL),

('examination/examination-schedule-hall-mapping/get-course',2,'examination/examination-schedule-hall-mapping/get-course',NULL,NULL,NULL,NULL,1612790762,1612790762,'N','N','N','N','N',NULL),

('examination/examination-schedule-hall-mapping/get-halls',2,'examination/examination-schedule-hall-mapping/get-halls',NULL,NULL,NULL,NULL,1612791322,1612791322,'N','N','N','N','N',NULL),

('examination/examination-schedule-hall-mapping/get-schedule',2,'examination/examination-schedule-hall-mapping/get-schedule',NULL,NULL,NULL,NULL,1612851476,1612851476,'N','N','N','N','N',NULL),

('examination/examination-schedule-hall-mapping/index',2,'examination/examination-schedule-hall-mapping/index',NULL,NULL,NULL,NULL,1612770554,1612770554,'N','N','N','N','N',NULL),

('examination/examination-schedule-hall-mapping/map-halls',2,'examination/examination-schedule-hall-mapping/map-halls',NULL,NULL,NULL,NULL,1613194205,1613194205,'N','N','N','N','N',NULL),

('examination/examination-schedule-hall-mapping/programme',2,'examination/examination-schedule-hall-mapping/programme',NULL,NULL,NULL,NULL,1612873645,1612873645,'N','N','N','N','N',NULL),

('examination/examination-schedule-hall-mapping/programme-wise',2,'examination/examination-schedule-hall-mapping/programme-wise',NULL,NULL,NULL,NULL,1612875523,1612875523,'N','N','N','N','N',NULL),

('examination/examination-schedule-hall-mapping/select-programme',2,'examination/examination-schedule-hall-mapping/select-programme',NULL,NULL,NULL,NULL,1613194190,1613194190,'N','N','N','N','N',NULL),

('examination/examination-schedule/copy-schedule',2,'examination/examination-schedule/copy-schedule',NULL,NULL,NULL,NULL,1610966065,1610966065,'N','N','N','N','N',NULL),

('examination/examination-schedule/create',2,'examination/examination-schedule/create',NULL,NULL,NULL,NULL,1610966065,1610966065,'N','N','N','N','N',NULL),

('examination/examination-schedule/dashboar',2,'examination/examination-schedule/dashboar',NULL,NULL,NULL,NULL,1610628451,1610628451,'N','N','N','N','N',NULL),

('examination/examination-schedule/dashboard',2,'examination/examination-schedule/dashboard',NULL,NULL,NULL,NULL,1610966065,1610966065,'N','N','N','N','N',NULL),

('examination/examination-schedule/delete',2,'examination/examination-schedule/delete',NULL,NULL,NULL,NULL,1610966065,1610966065,'N','N','N','N','N',NULL),

('examination/examination-schedule/delete-schedule',2,'examination/examination-schedule/delete-schedule',NULL,NULL,NULL,NULL,1610966065,1610966065,'N','N','N','N','N',NULL),

('examination/examination-schedule/export-data',2,'examination/examination-schedule/export-data',NULL,NULL,NULL,NULL,1610628436,1610628436,'N','N','N','N','N',NULL),

('examination/examination-schedule/export-schedule',2,'examination/examination-schedule/export-schedule',NULL,NULL,NULL,NULL,1610966065,1610966065,'N','N','N','N','N',NULL),

('examination/examination-schedule/export-schedule-all',2,'examination/examination-schedule/export-schedule-all',NULL,NULL,NULL,NULL,1610966065,1610966065,'N','N','N','N','N',NULL),

('examination/examination-schedule/get-courses',2,'examination/examination-schedule/get-courses',NULL,NULL,NULL,NULL,1610966065,1610966065,'N','N','N','N','N',NULL),

('examination/examination-schedule/index',2,'examination/examination-schedule/index',NULL,NULL,NULL,NULL,1610311226,1610311226,'N','N','N','N','N',NULL),

('examination/examination-schedule/save-schedule',2,'examination/examination-schedule/save-schedule',NULL,NULL,NULL,NULL,1610966065,1610966065,'N','N','N','N','N',NULL),

('examination/examination-schedule/save-schedule-course',2,'examination/examination-schedule/save-schedule-course',NULL,NULL,NULL,NULL,1611228194,1611228194,'N','N','N','N','N',NULL),

('examination/examination-schedule/select-course',2,'examination/examination-schedule/select-course',NULL,NULL,NULL,NULL,1610979056,1610979056,'N','N','N','N','N',NULL),

('examination/examination-schedule/select-programme',2,'examination/examination-schedule/select-programme',NULL,NULL,NULL,NULL,1610629147,1610629147,'N','N','N','N','N',NULL),

('examination/examination-schedule/update',2,'examination/examination-schedule/update',NULL,NULL,NULL,NULL,1610966065,1610966065,'N','N','N','N','N',NULL),

('examination/examination-schedule/update-status',2,'examination/examination-schedule/update-status',NULL,NULL,NULL,NULL,1610966065,1610966065,'N','N','N','N','N',NULL),

('examination/examination-schedule/view',2,'examination/examination-schedule/view',NULL,NULL,NULL,NULL,1610966065,1610966065,'N','N','N','N','N',NULL),

('examination/examination-slots/create',2,'examination/examination-slots/create',NULL,NULL,NULL,NULL,1610966065,1610966065,'N','N','N','N','N',NULL),

('examination/examination-slots/delete',2,'examination/examination-slots/delete',NULL,NULL,NULL,NULL,1610966065,1610966065,'N','N','N','N','N',NULL),

('examination/examination-slots/get-duration',2,'examination/examination-slots/get-duration',NULL,NULL,NULL,NULL,1610966065,1610966065,'N','N','N','N','N',NULL),

('examination/examination-slots/index',2,'examination/examination-slots/index',NULL,NULL,NULL,NULL,1610311242,1610311242,'N','N','N','N','N',NULL),

('examination/examination-slots/update',2,'examination/examination-slots/update',NULL,NULL,NULL,NULL,1610966065,1610966065,'N','N','N','N','N',NULL),

('examination/examination-slots/view',2,'examination/examination-slots/view',NULL,NULL,NULL,NULL,1610966065,1610966065,'N','N','N','N','N',NULL),

('examination/examination-teacher/create',2,'examination/examination-teacher/create',NULL,NULL,NULL,NULL,1610979056,1610979056,'N','N','N','N','N',NULL),

('examination/examination-teacher/get-course',2,'examination/examination-teacher/get-course',NULL,NULL,NULL,NULL,1610979056,1610979056,'N','N','N','N','N',NULL),

('examination/examination-teacher/index',2,'examination/examination-teacher/index',NULL,NULL,NULL,NULL,1610979056,1610979056,'N','N','N','N','N',NULL),

('examination/examination-teacher/login',2,'examination/examination-teacher/login',NULL,NULL,NULL,NULL,1610979056,1610979056,'N','N','N','N','N',NULL),

('examination/examination-teacher/remove',2,'examination/examination-teacher/remove',NULL,NULL,NULL,NULL,1610979056,1610979056,'N','N','N','N','N',NULL),

('examination/examination-teacher/save',2,'examination/examination-teacher/save',NULL,NULL,NULL,NULL,1610979056,1610979056,'N','N','N','N','N',NULL),

('examination/examination-teacher/update',2,'examination/examination-teacher/update',NULL,NULL,NULL,NULL,1610979056,1610979056,'N','N','N','N','N',NULL),

('examination/examination-teacher/view',2,'examination/examination-teacher/view',NULL,NULL,NULL,NULL,1610979056,1610979056,'N','N','N','N','N',NULL),

('examination/file/export-form',2,'examination/file/export-form',NULL,NULL,NULL,NULL,1610966065,1610966065,'N','N','N','N','N',NULL),

('examination/file/generate',2,'examination/file/generate',NULL,NULL,NULL,NULL,1610966065,1610966065,'N','N','N','N','N',NULL),

('examination/file/import-data',2,'examination/file/import-data',NULL,NULL,NULL,NULL,1610966065,1610966065,'N','N','N','N','N',NULL),

('examination/file/process-and-import-data',2,'examination/file/process-and-import-data',NULL,NULL,NULL,NULL,1610966065,1610966065,'N','N','N','N','N',NULL),

('examination/generate-admit-card/generate',2,'examination/generate-admit-card/generate',NULL,NULL,NULL,NULL,1610966065,1610966065,'N','N','N','N','N',NULL),

('examination/generate-admit-card/get-course',2,'examination/generate-admit-card/get-course',NULL,NULL,NULL,NULL,1613117005,1613117005,'N','N','N','N','N',NULL),

('examination/generate-admit-card/index',2,'examination/generate-admit-card/index',NULL,NULL,NULL,NULL,1610966065,1610966065,'N','N','N','N','N',NULL),

('examination/generate-admit-card/index-student',2,'examination/generate-admit-card/index-student',NULL,NULL,NULL,NULL,1613216299,1613216299,'N','N','N','N','N',NULL),

('examination/generate-admit-card/pdf',2,'examination/generate-admit-card/pdf',NULL,NULL,NULL,NULL,1613631830,1613631830,'N','N','N','N','N',NULL),

('examination/generate-admit-card/publish-admit-card',2,'examination/generate-admit-card/publish-admit-card',NULL,NULL,NULL,NULL,1613569222,1613569222,'N','N','N','N','N',NULL),

('examination/generate-admit-card/update-admit-card-status',2,'examination/generate-admit-card/update-admit-card-status',NULL,NULL,NULL,NULL,1588278457,1588278457,'N','N','N','N','N',NULL),

('examination/import-student-marks/import',2,'examination/import-student-marks/import',NULL,NULL,NULL,NULL,1610966065,1610966065,'N','N','N','N','N',NULL),

('examination/import-student-marks/import-all-sem',2,'examination/import-student-marks/import-all-sem',NULL,NULL,NULL,NULL,1610966066,1610966066,'N','N','N','N','N',NULL),

('examination/import-student-marks/import-first-sem',2,'examination/import-student-marks/import-first-sem',NULL,NULL,NULL,NULL,1610966066,1610966066,'N','N','N','N','N',NULL),

('examination/import-student-marks/import-first-sem-btech',2,'examination/import-student-marks/import-first-sem-btech',NULL,NULL,NULL,NULL,1610966066,1610966066,'N','N','N','N','N',NULL),

('examination/import-student-marks/process-and-import-data',2,'examination/import-student-marks/process-and-import-data',NULL,NULL,NULL,NULL,1610966065,1610966065,'N','N','N','N','N',NULL),

('examination/import-student-marks/process-and-import-eval-data',2,'examination/import-student-marks/process-and-import-eval-data',NULL,NULL,NULL,NULL,1610966065,1610966065,'N','N','N','N','N',NULL),

('examination/import-student-marks/process-and-import-first-sem-cb',2,'examination/import-student-marks/process-and-import-first-sem-cbcs',NULL,NULL,NULL,NULL,1610966501,1610966501,'N','N','N','N','N',NULL),

('examination/papersetter/examination-teacher/index',2,'examination/papersetter/examination-teacher/index',NULL,NULL,NULL,NULL,1610628533,1610628533,'N','N','N','N','N',NULL),

('examination/programme-map/ajax-create',2,'examination/programme-map/ajax-create',NULL,NULL,NULL,NULL,1610966646,1610966646,'N','N','N','N','N',NULL),

('examination/programme-map/ajax-update',2,'examination/programme-map/ajax-update',NULL,NULL,NULL,NULL,1610966646,1610966646,'N','N','N','N','N',NULL),

('examination/programme-map/bulk-update',2,'examination/programme-map/bulk-update',NULL,NULL,NULL,NULL,1610966646,1610966646,'N','N','N','N','N',NULL),

('examination/programme-map/get-programmes-by-term',2,'examination/programme-map/get-programmes-by-term',NULL,NULL,NULL,NULL,1610966646,1610966646,'N','N','N','N','N',NULL),

('examination/programme-map/grade-card-release-dates',2,'examination/programme-map/grade-card-release-dates',NULL,NULL,NULL,NULL,1617885967,1617885967,'N','N','N','N','N',NULL),

('examination/programme-map/grade-card-release-dates-bulk',2,'examination/programme-map/grade-card-release-dates-bulk',NULL,NULL,NULL,NULL,1617885981,1617885981,'N','N','N','N','N',NULL),

('examination/programme-map/map-index',2,'examination/programme-map/map-index',NULL,NULL,NULL,NULL,1610966646,1610966646,'N','N','N','N','N',NULL),

('examination/programme-map/map-programmes',2,'examination/programme-map/map-programmes',NULL,NULL,NULL,NULL,1610966646,1610966646,'N','N','N','N','N',NULL),

('examination/programme-map/select-term',2,'examination/programme-map/select-term',NULL,NULL,NULL,NULL,1610966646,1610966646,'N','N','N','N','N',NULL),

('examination/programme-map/synchronize',2,'examination/programme-map/synchronize',NULL,NULL,NULL,NULL,1610966646,1610966646,'N','N','N','N','N',NULL),

('examination/session/ajax-create',2,'examination/session/ajax-create',NULL,NULL,NULL,NULL,1610966646,1610966646,'N','N','N','N','N',NULL),

('examination/session/ajax-update',2,'examination/session/ajax-update',NULL,NULL,NULL,NULL,1610966646,1610966646,'N','N','N','N','N',NULL),

('examination/session/create',2,'examination/session/create',NULL,NULL,NULL,NULL,1610966646,1610966646,'N','N','N','N','N',NULL),

('examination/session/delete',2,'examination/session/delete',NULL,NULL,NULL,NULL,1610966646,1610966646,'N','N','N','N','N',NULL),

('examination/session/exam-view',2,'examination/session/exam-view',NULL,NULL,NULL,NULL,1615197460,1615197460,'N','N','N','N','N',NULL),

('examination/session/get-years',2,'examination/session/get-years',NULL,NULL,NULL,NULL,1610966646,1610966646,'N','N','N','N','N',NULL),

('examination/session/index',2,'examination/session/index',NULL,NULL,NULL,NULL,1610966646,1610966646,'N','N','N','N','N',NULL),

('examination/session/map-index',2,'examination/session/map-index',NULL,NULL,NULL,NULL,1610966646,1610966646,'N','N','N','N','N',NULL),

('examination/session/update',2,'examination/session/update',NULL,NULL,NULL,NULL,1610966646,1610966646,'N','N','N','N','N',NULL),

('examination/session/update-result-type',2,'examination/session/update-result-type',NULL,NULL,NULL,NULL,1610966646,1610966646,'N','N','N','N','N',NULL),

('examination/session/view',2,'examination/session/view',NULL,NULL,NULL,NULL,1610311126,1610311126,'N','N','N','N','N',NULL),

('examination/session/view-session',2,'examination/session/view-session',NULL,NULL,NULL,NULL,1610966646,1610966646,'N','N','N','N','N',NULL),

('examination/student/course',2,'examination/student/course',NULL,NULL,NULL,NULL,1611568333,1611568333,'N','N','N','N','N',NULL),

('examination/student/dashboard',2,'examination/student/dashboard',NULL,NULL,NULL,NULL,1610966646,1610966646,'N','N','N','N','N',NULL),

('examination/student/index',2,'examination/student/index',NULL,NULL,NULL,NULL,1610966646,1610966646,'N','N','N','N','N',NULL),

('examination/student/index-course',2,'examination/student/index-course',NULL,NULL,NULL,NULL,1611575823,1611575823,'N','N','N','N','N',NULL),

('examination/student/programme',2,'examination/student/programme',NULL,NULL,NULL,NULL,1610966646,1610966646,'N','N','N','N','N',NULL),

('examination/student/report',2,'examination/student/report',NULL,NULL,NULL,NULL,1614322035,1614322035,'N','N','N','N','N',NULL),

('examination/student/view',2,'examination/student/view',NULL,NULL,NULL,NULL,1610966646,1610966646,'N','N','N','N','N',NULL),

('examstudent/course-selection/addcourses',2,'examstudent/course-selection/addcourses',NULL,NULL,NULL,NULL,1619701229,1619701229,'N','N','N','N','N',NULL),

('examstudent/course-selection/deletecourse',2,'examstudent/course-selection/deletecourse',NULL,NULL,NULL,NULL,1619701229,1619701229,'N','N','N','N','N',NULL),

('examstudent/course-selection/form',2,'examstudent/course-selection/form',NULL,NULL,NULL,NULL,1619701229,1619701229,'N','N','N','N','N',NULL),

('examstudent/course-selection/index',2,'examstudent/course-selection/index',NULL,NULL,NULL,NULL,1619701229,1619701229,'N','N','N','N','N',NULL),

('examstudent/course-selection/payment',2,'examstudent/course-selection/payment',NULL,NULL,NULL,NULL,1619701229,1619701229,'N','N','N','N','N',NULL),

('examstudent/course-selection/preview',2,'examstudent/course-selection/preview',NULL,NULL,NULL,NULL,1619701229,1619701229,'N','N','N','N','N',NULL),

('examstudent/course-selection/submit',2,'examstudent/course-selection/submit',NULL,NULL,NULL,NULL,1619701229,1619701229,'N','N','N','N','N',NULL),

('examstudent/course-selection/verify',2,'examstudent/course-selection/verify',NULL,NULL,NULL,NULL,1619701229,1619701229,'N','N','N','N','N',NULL),

('examstudent/course-selection/view',2,'examstudent/course-selection/view',NULL,NULL,NULL,NULL,1619701229,1619701229,'N','N','N','N','N',NULL),

('examstudent/examination-student-application/create',2,'examstudent/examination-student-application/create',NULL,NULL,NULL,NULL,1619701229,1619701229,'N','N','N','N','N',NULL),

('examstudent/examination-student-application/delete',2,'examstudent/examination-student-application/delete',NULL,NULL,NULL,NULL,1619701229,1619701229,'N','N','N','N','N',NULL),

('examstudent/examination-student-application/index',2,'examstudent/examination-student-application/index',NULL,NULL,NULL,NULL,1619701229,1619701229,'N','N','N','N','N',NULL),

('examstudent/examination-student-application/markdownloaded',2,'examstudent/examination-student-application/markdownloaded',NULL,NULL,NULL,NULL,1619701229,1619701229,'N','N','N','N','N',NULL),

('examstudent/examination-student-application/update',2,'examstudent/examination-student-application/update',NULL,NULL,NULL,NULL,1619701229,1619701229,'N','N','N','N','N',NULL),

('examstudent/examination-student-application/updatestatus',2,'examstudent/examination-student-application/updatestatus',NULL,NULL,NULL,NULL,1619701229,1619701229,'N','N','N','N','N',NULL),

('examstudent/examination-student-application/view',2,'examstudent/examination-student-application/view',NULL,NULL,NULL,NULL,1619701229,1619701229,'N','N','N','N','N',NULL),

('examstudent/examination-student-course-selection/applicationsubm',2,'examstudent/examination-student-course-selection/applicationsubmit',NULL,NULL,NULL,NULL,1619701295,1619701295,'N','N','N','N','N',NULL),

('examstudent/examination-student-course-selection/attendance',2,'examstudent/examination-student-course-selection/attendance',NULL,NULL,NULL,NULL,1619701295,1619701295,'N','N','N','N','N',NULL),

('examstudent/examination-student-course-selection/attendancesubmi',2,'examstudent/examination-student-course-selection/attendancesubmit',NULL,NULL,NULL,NULL,1619701295,1619701295,'N','N','N','N','N',NULL),

('examstudent/examination-student-course-selection/bulk',2,'examstudent/examination-student-course-selection/bulk',NULL,NULL,NULL,NULL,1619701295,1619701295,'N','N','N','N','N',NULL),

('examstudent/examination-student-course-selection/bulk-verify',2,'examstudent/examination-student-course-selection/bulk-verify',NULL,NULL,NULL,NULL,1620632517,1620632517,'N','N','N','N','N',NULL),

('examstudent/examination-student-course-selection/bulk-verify-sub',2,'examstudent/examination-student-course-selection/bulk-verify-submit',NULL,NULL,NULL,NULL,1620633023,1620633023,'N','N','N','N','N',NULL),

('examstudent/examination-student-course-selection/bulksubmit',2,'examstudent/examination-student-course-selection/bulksubmit',NULL,NULL,NULL,NULL,1619701295,1619701295,'N','N','N','N','N',NULL),

('examstudent/examination-student-course-selection/bulkverify',2,'examstudent/examination-student-course-selection/bulkverify',NULL,NULL,NULL,NULL,1619701295,1619701295,'N','N','N','N','N',NULL),

('examstudent/examination-student-course-selection/bulkverifysubmi',2,'examstudent/examination-student-course-selection/bulkverifysubmit',NULL,NULL,NULL,NULL,1619701295,1619701295,'N','N','N','N','N',NULL),

('examstudent/examination-student-course-selection/create',2,'examstudent/examination-student-course-selection/create',NULL,NULL,NULL,NULL,1619701229,1619701229,'N','N','N','N','N',NULL),

('examstudent/examination-student-course-selection/createstudentco',2,'examstudent/examination-student-course-selection/createstudentcourse',NULL,NULL,NULL,NULL,1619701295,1619701295,'N','N','N','N','N',NULL),

('examstudent/examination-student-course-selection/delete',2,'examstudent/examination-student-course-selection/delete',NULL,NULL,NULL,NULL,1619701295,1619701295,'N','N','N','N','N',NULL),

('examstudent/examination-student-course-selection/index',2,'examstudent/examination-student-course-selection/index',NULL,NULL,NULL,NULL,1619701229,1619701229,'N','N','N','N','N',NULL),

('examstudent/examination-student-course-selection/selectcourses',2,'examstudent/examination-student-course-selection/selectcourses',NULL,NULL,NULL,NULL,1619701229,1619701229,'N','N','N','N','N',NULL),

('examstudent/examination-student-course-selection/selectcoursesde',2,'examstudent/examination-student-course-selection/selectcoursesdeclaration',NULL,NULL,NULL,NULL,1619701295,1619701295,'N','N','N','N','N',NULL),

('examstudent/examination-student-course-selection/selectstudentco',2,'examstudent/examination-student-course-selection/selectstudentcourses',NULL,NULL,NULL,NULL,1619701295,1619701295,'N','N','N','N','N',NULL),

('examstudent/examination-student-course-selection/student',2,'examstudent/examination-student-course-selection/student',NULL,NULL,NULL,NULL,1619701295,1619701295,'N','N','N','N','N',NULL),

('examstudent/examination-student-course-selection/update',2,'examstudent/examination-student-course-selection/update',NULL,NULL,NULL,NULL,1619701295,1619701295,'N','N','N','N','N',NULL),

('examstudent/examination-student-course-selection/updatestatus',2,'examstudent/examination-student-course-selection/updatestatus',NULL,NULL,NULL,NULL,1619701295,1619701295,'N','N','N','N','N',NULL),

('examstudent/examination-student-course-selection/verifycourse',2,'examstudent/examination-student-course-selection/verifycourse',NULL,NULL,NULL,NULL,1619701295,1619701295,'N','N','N','N','N',NULL),

('examstudent/examination-student-course-selection/view',2,'examstudent/examination-student-course-selection/view',NULL,NULL,NULL,NULL,1619701229,1619701229,'N','N','N','N','N',NULL),

('examstudent/grade-card/gradeindex',2,'examstudent/grade-card/gradeindex',NULL,NULL,NULL,NULL,1619701295,1619701295,'N','N','N','N','N',NULL),

('examstudent/grade-card/gradeindexsession',2,'examstudent/grade-card/gradeindexsession',NULL,NULL,NULL,NULL,1619701295,1619701295,'N','N','N','N','N',NULL),

('examstudent/grade-card/index',2,'examstudent/grade-card/index',NULL,NULL,NULL,NULL,1619701295,1619701295,'N','N','N','N','N',NULL),

('examstudent/grade-card/mark',2,'examstudent/grade-card/mark',NULL,NULL,NULL,NULL,1619701295,1619701295,'N','N','N','N','N',NULL),

('examstudent/grade-card/view',2,'examstudent/grade-card/view',NULL,NULL,NULL,NULL,1619701295,1619701295,'N','N','N','N','N',NULL),

('examstudent/grade-card/view2',2,'examstudent/grade-card/view2',NULL,NULL,NULL,NULL,1619701295,1619701295,'N','N','N','N','N',NULL),

('examstudent/hall-admit-card/html',2,'examstudent/hall-admit-card/html',NULL,NULL,NULL,NULL,1619701295,1619701295,'N','N','N','N','N',NULL),

('examstudent/hall-admit-card/index',2,'examstudent/hall-admit-card/index',NULL,NULL,NULL,NULL,1619701295,1619701295,'N','N','N','N','N',NULL),

('examstudent/information/faq',2,'examstudent/information/faq',NULL,NULL,NULL,NULL,1619701295,1619701295,'N','N','N','N','N',NULL),

('examstudent/information/history',2,'examstudent/information/history',NULL,NULL,NULL,NULL,1619701295,1619701295,'N','N','N','N','N',NULL),

('examstudent/information/index',2,'examstudent/information/index',NULL,NULL,NULL,NULL,1619701295,1619701295,'N','N','N','N','N',NULL),

('examstudent/information/instructions',2,'examstudent/information/instructions',NULL,NULL,NULL,NULL,1619701295,1619701295,'N','N','N','N','N',NULL),

('examstudent/information/manual',2,'examstudent/information/manual',NULL,NULL,NULL,NULL,1619701295,1619701295,'N','N','N','N','N',NULL),

('examstudent/information/status',2,'examstudent/information/status',NULL,NULL,NULL,NULL,1619701295,1619701295,'N','N','N','N','N',NULL),

('fee_admin',1,'This is the File Management Admin. Basically, this role is to be provided to the Admin Role because it can view all the files that is navigating across the system.','','',NULL,NULL,1567224147,1572263011,'N','N','N','N','N',NULL),

('fee/dashboard/index',2,'Permission to view the fee dashboard',NULL,'',NULL,'fee',1567223233,1626163833,'N','N','N','N','N',NULL),

('fee/dashboard/session',2,'fee/dashboard/session',NULL,'',NULL,'fee',1617194875,1626164021,'N','N','N','N','N',NULL),

('fee/dashboard/student',2,'fee/dashboard/student',NULL,'',NULL,'fee',1617194864,1626164125,'N','N','N','N','N',NULL),

('fee/fee/fee-bifurcation/create',2,'fee/fee/fee-bifurcation/create',NULL,'',NULL,'fee',1573540456,1626164216,'N','N','N','N','N',NULL),

('fee/fee/fee-bifurcation/delete',2,'fee/fee/fee-bifurcation/delete',NULL,'',NULL,'fee',1573719009,1626164318,'N','N','N','N','Y',NULL),

('fee/fee/fee-components/create',2,'fee/fee/fee-components/create',NULL,'',NULL,'fee',1573540532,1626164387,'Y','N','N','N','N',NULL),

('fee/fee/fee-components/delete',2,'fee/fee/fee-components/delete',NULL,'',NULL,'fee',1584599384,1626164522,'N','N','N','N','Y',NULL),

('fee/fee/fee-components/index',2,'fee/fee/fee-components/index',NULL,'',NULL,'fee',1573540496,1626164900,'N','N','N','N','N',NULL),

('fee/fee/fee-components/update',2,'fee/fee/fee-components/update',NULL,'',NULL,'fee',1620287554,1626165052,'N','N','N','N','Y',NULL),

('fee/fee/fee-components/view',2,'fee/fee/fee-components/view',NULL,'',NULL,'fee',1584594515,1626165314,'N','N','N','N','N',NULL),

('fee/fee/fee-config/create',2,'Permission to add the fee configuration',NULL,'',NULL,'fee',1567223436,1626165349,'N','N','N','N','N',NULL),

('fee/fee/fee-config/delete',2,'Permission to delete the fee configuration',NULL,'',NULL,'fee',1567223478,1626175292,'N','N','N','N','N',NULL),

('fee/fee/fee-config/index',2,'Permission to view the fee configuration details',NULL,'',NULL,'fee',1567223394,1626165484,'N','N','N','N','N',NULL),

('fee/fee/fee-config/update',2,'Permission to update the fee configuration',NULL,'',NULL,'fee',1567223454,1626165514,'N','N','N','N','Y',NULL),

('fee/fee/fee-config/view',2,'Permission to view the fee configuration',NULL,'',NULL,'fee',1567223415,1626165613,'N','N','N','N','N',NULL),

('fee/fee/fee-list/confirm-salary-approval',2,'Confirmation of the Action',NULL,'',NULL,'fee',1570273407,1626165667,'N','N','N','N','N',NULL),

('fee/fee/fee-list/create',2,'Permission to add the new service',NULL,NULL,NULL,NULL,1567223548,1567223548,'N','N','N','N','N',NULL),

('fee/fee/fee-list/delete',2,'Permission to delete the service',NULL,'',NULL,'fee',1567223606,1626175492,'N','N','N','N','N',NULL),

('fee/fee/fee-list/index',2,'Permission to view the list of Services',NULL,'',NULL,'fee',1567223508,1626175552,'N','N','N','N','N',NULL),

('fee/fee/fee-list/pre-create',2,'fee/fee/fee-list/pre-create',NULL,'',NULL,'fee',1573540309,1626175606,'N','N','N','N','N',NULL),

('fee/fee/fee-list/toggle-verify',2,'Permission to Verify/Un-verify the service.',NULL,'',NULL,'fee',1567223637,1626176444,'N','N','N','N','N',NULL),

('fee/fee/fee-list/update',2,'Permission to update the fee list',NULL,'',NULL,'fee',1567223587,1626238505,'N','N','N','N','Y',NULL),

('fee/fee/fee-list/view',2,'Permission to view the services',NULL,'',NULL,'fee',1567223533,1626238597,'N','N','N','N','N',NULL),

('fee/fee/fee-payment/confirm-fee-toggle',2,'modal widget for confirmation of fee status change','','',NULL,'fee',1570444363,1626238660,'N','N','N','N','N',NULL),

('fee/fee/fee-payment/index',2,'Permission to view the Payments',NULL,'',NULL,'fee',1567223680,1626238775,'Y','N','N','N','N',NULL),

('fee/fee/fee-payment/toggle-status',2,'Permission to change the payment status',NULL,'',NULL,'fee',1567223749,1626239969,'N','N','N','N','N',NULL),

('fee/fee/fee-payment/view',2,'Permission to view the Payments',NULL,'',NULL,'fee',1567223706,1626240023,'N','N','N','N','N',NULL),

('fee/report/download',2,'Permission to download the report',NULL,'',NULL,'fee',1567223284,1626240058,'N','N','N','N','N',NULL),

('fee/report/index',2,'Permission to extract the report detail',NULL,'',NULL,'fee',1567223304,1626240109,'N','N','N','N','N',NULL),

('fee/settings/index',2,'Permission to view the settings',NULL,'',NULL,'fee',1567223342,1626240212,'N','N','N','Y','N',NULL),

('feedback_admin',1,'This role administers the Feedback management System.',NULL,NULL,NULL,NULL,1584454856,1584454856,'N','N','N','N','N',NULL),

('feedback/admin/index',2,'feedback/admin/index',NULL,NULL,NULL,NULL,1584454579,1584454579,'N','N','N','N','N',NULL),

('feedback/admin/manage',2,'feedback/admin/manage',NULL,NULL,NULL,NULL,1584454587,1584454587,'N','N','N','N','N',NULL),

('feedback/question/all-question-preview',2,'feedback/question/all-question-preview',NULL,NULL,NULL,NULL,1584454662,1584454662,'N','N','N','N','N',NULL),

('feedback/question/create',2,'feedback/question/create',NULL,NULL,NULL,NULL,1584454630,1584454630,'N','N','N','N','N',NULL),

('feedback/question/delete',2,'feedback/question/delete',NULL,NULL,NULL,NULL,1584454649,1584454649,'N','N','N','N','N',NULL),

('feedback/question/index',2,'feedback/question/index',NULL,NULL,NULL,NULL,1584454609,1584454609,'N','N','N','N','N',NULL),

('feedback/question/update',2,'feedback/question/update',NULL,NULL,NULL,NULL,1584454639,1584454639,'N','N','N','N','N',NULL),

('feedback/question/view',2,'feedback/question/view',NULL,NULL,NULL,NULL,1584454619,1584454619,'N','N','N','N','N',NULL),

('feedback/response/create',2,'feedback/response/create',NULL,NULL,NULL,NULL,1584454679,1584454679,'N','N','N','N','N',NULL),

('feedback/response/dashboard',2,'feedback/response/dashboard',NULL,NULL,NULL,NULL,1584454724,1584454724,'N','N','N','N','N',NULL),

('feedback/response/delete',2,'feedback/response/delete',NULL,NULL,NULL,NULL,1584454698,1584454698,'N','N','N','N','N',NULL),

('feedback/response/download-responses-excel',2,'feedback/response/download-responses-excel',NULL,NULL,NULL,NULL,1611811098,1611811098,'N','N','N','N','N',NULL),

('feedback/response/question-bank',2,'feedback/response/question-bank',NULL,NULL,NULL,NULL,1584454713,1584454713,'N','N','N','N','N',NULL),

('feedback/response/update',2,'feedback/response/update',NULL,NULL,NULL,NULL,1584454688,1584454688,'N','N','N','N','N',NULL),

('feedback/settings/index',2,'feedback/settings/index',NULL,NULL,NULL,NULL,1584454744,1584454744,'N','N','N','N','N',NULL),

('feedback/template/create',2,'feedback/template/create',NULL,NULL,NULL,NULL,1584454778,1584454778,'N','N','N','N','N',NULL),

('feedback/template/discard-template',2,'feedback/template/discard-template',NULL,NULL,NULL,NULL,1584454807,1584454807,'N','N','N','N','N',NULL),

('feedback/template/duplicate-template',2,'feedback/template/duplicate-template',NULL,NULL,NULL,NULL,1584454816,1584454816,'N','N','N','N','N',NULL),

('feedback/template/index',2,'feedback/template/index',NULL,NULL,NULL,NULL,1584454759,1584454759,'N','N','N','N','N',NULL),

('feedback/template/publish-template',2,'feedback/template/publish-template',NULL,NULL,NULL,NULL,1584454799,1584454799,'N','N','N','N','N',NULL),

('feedback/template/update',2,'feedback/template/update',NULL,NULL,NULL,NULL,1584454786,1584454786,'N','N','N','N','N',NULL),

('feedback/template/view',2,'feedback/template/view',NULL,NULL,NULL,NULL,1584454769,1584454769,'N','N','N','N','N',NULL),

('file_import/file/generate',2,'Permission to import file',NULL,NULL,NULL,NULL,1570689718,1570689718,'N','N','N','N','N',NULL),

('file_management_admin',1,'This is the admin user for file management','','',NULL,NULL,1567689633,1591200452,'N','N','N','N','N',NULL),

('file_management_admin_view',1,'View-only permissions for File Tracking system',NULL,NULL,NULL,NULL,1571488831,1571488831,'N','N','N','N','N',NULL),

('file_management_department',1,'This role is to be provided to the user or the employee who can use the File Management System.  Once the role is applied, the file is visible to the particular person to whom the file is shared.','','',NULL,NULL,1567689660,1572263032,'N','N','N','N','N',NULL),

('fmts/dashboard/filestatus-data',2,'fmts/dashboard/filestatus-data',NULL,'',NULL,'fmts',1568271084,1624694484,'N','N','N','N','N',NULL),

('fmts/dashboard/filetype-data',2,'fmts/dashboard/filetype-data','','',NULL,'fmts',1568271053,1624694497,'N','N','N','N','N',NULL),

('fmts/dashboard/filetype-data-user',2,'fmts/dashboard/filetype-data-user',NULL,'',NULL,'fmts',1568271102,1624694592,'N','N','N','N','N',NULL),

('fmts/dashboard/index',2,'fmts/dashboard/index',NULL,'',NULL,'fmts',1567671054,1624694614,'N','N','N','N','N',NULL),

('fmts/dashboard/settings',2,'fmts/dashboard/settings','','',NULL,'fmts',1567597042,1624693112,'N','N','N','Y','N',NULL),

('fmts/dashboard/user-index',2,'fmts/dashboard/user-index',NULL,'',NULL,'fmts',1568271035,1624694787,'N','N','N','N','N',NULL),

('fmts/file-details/add-part-file-image',2,'fmts/file-details/add-part-file-image',NULL,'',NULL,'fmts',1568271321,1624694918,'N','N','N','N','N',NULL),

('fmts/file-details/ajax-submit',2,'fmts/file-details/ajax-submit',NULL,'',NULL,'fmts',1568271367,1624696546,'N','N','N','N','N',NULL),

('fmts/file-details/ajax-update',2,'fmts/file-details/ajax-update',NULL,'',NULL,'fmts',1568271377,1624696559,'N','N','N','N','N',NULL),

('fmts/file-details/cloose-file',2,'fmts/file-details/cloose-file',NULL,'',NULL,'fmts',1570429126,1624696871,'N','N','N','N','N',NULL),

('fmts/file-details/close-file',2,'fmts/file-details/close-file',NULL,NULL,NULL,NULL,1568271291,1568271291,'N','N','N','N','N',NULL),

('fmts/file-details/create',2,'fmts/file-details/create',NULL,'',NULL,'fmts',1568271243,1624697476,'N','N','N','N','N',NULL),

('fmts/file-details/create-part-file',2,'fmts/file-details/create-part-file',NULL,NULL,NULL,NULL,1568271306,1568271306,'N','N','N','N','N',NULL),

('fmts/file-details/delete',2,'fmts/file-details/delete',NULL,'',NULL,'fmts',1568271266,1624697586,'N','N','N','N','Y',NULL),

('fmts/file-details/file-status',2,'Toggle the status of file.',NULL,'',NULL,'fmts',1573118931,1624697845,'N','N','N','N','N',NULL),

('fmts/file-details/index-status',2,'fmts/file-details/index-status','','',NULL,'fmts',1568271178,1624697960,'N','N','N','N','N',NULL),

('fmts/file-details/lock-file',2,'fmts/file-details/lock-file',NULL,'',NULL,'fmts',1570431806,1624698357,'N','N','N','N','N',NULL),

('fmts/file-details/my-files',2,'fmts/file-details/my-files',NULL,'',NULL,'fmts',1568271221,1624698505,'N','N','N','N','N',NULL),

('fmts/file-details/part-file-index',2,'fmts/file-details/part-file-index',NULL,'',NULL,'fmts',1568271398,1624698660,'N','N','N','N','Y',NULL),

('fmts/file-details/print-full-report',2,'fmts/file-details/print-full-report',NULL,'',NULL,'fmts',1568271414,1624700436,'N','N','N','N','N',NULL),

('fmts/file-details/print-report-by-menu',2,'fmts/file-details/print-report-by-menu',NULL,'',NULL,'fmts',1568271429,1624700539,'N','N','N','N','N',NULL),

('fmts/file-details/remove-file-image',2,'fmts/file-details/remove-file-image',NULL,'',NULL,'fmts',1568271338,1624702495,'N','N','N','N','Y',NULL),

('fmts/file-details/reopen-file',2,'fmts/file-details/reopen-file',NULL,'',NULL,'fmts',1570430511,1624703954,'N','N','N','N','N',NULL),

('fmts/file-details/toggle-status',2,'fmts/file-details/toggle-status',NULL,'',NULL,'fmts',1568271279,1624704058,'N','N','N','N','N',NULL),

('fmts/file-details/unlock-file',2,'fmts/file-details/unlock-file',NULL,'',NULL,'fmts',1570273638,1624704821,'N','N','N','N','N',NULL),

('fmts/file-details/update',2,'fmts/file-details/update',NULL,'',NULL,'fmts',1568271256,1624719236,'N','N','N','N','Y',NULL),

('fmts/file-details/update-part-file',2,'fmts/file-details/update-part-file',NULL,'',NULL,'fmts',1568271353,1624706921,'N','N','N','N','N',NULL),

('fmts/file-details/view',2,'fmts/file-details/view',NULL,'',NULL,'fmts',1568271233,1624707469,'N','N','N','N','N',NULL),

('fmts/file-forward/accept-physical-copy',2,'fmts/file-forward/accept-physical-copy',NULL,'',NULL,'fmts',1568271575,1624707639,'N','N','N','N','N',NULL),

('fmts/file-forward/close-file',2,'fmts/file-forward/close-file',NULL,'',NULL,'fmts',1568271555,1624707765,'N','N','N','N','N',NULL),

('fmts/file-forward/create',2,'fmts/file-forward/create',NULL,'',NULL,'fmts',1568271490,1624707932,'N','N','N','N','N',NULL),

('fmts/file-forward/create-from-part-file',2,'fmts/file-forward/create-from-part-file',NULL,'',NULL,'fmts',1568271503,1624708090,'N','N','N','N','N',NULL),

('fmts/file-forward/create-from-part-file-ajax',2,'fmts/file-forward/create-from-part-file-ajax',NULL,'',NULL,'fmts',1568271514,1624708516,'N','N','N','N','N',NULL),

('fmts/file-forward/delete',2,'fmts/file-forward/delete',NULL,'',NULL,'fmts',1568271527,1624708820,'N','N','N','N','N',NULL),

('fmts/file-forward/delete-from-file-detail',2,'fmts/file-forward/delete-from-file-detail',NULL,'',NULL,'fmts',1568271541,1624709056,'N','N','N','N','N',NULL),

('fmts/file-forward/forward-file',2,'fmts/file-forward/forward-file',NULL,'',NULL,'fmts',1568271590,1624709339,'N','N','N','N','N',NULL),

('fmts/file-forward/index',2,'fmts/file-forward/index',NULL,'',NULL,'fmts',1568271456,1624711686,'N','N','N','N','N',NULL),

('fmts/file-forward/my-files',2,'fmts/file-forward/my-files',NULL,'',NULL,'fmts',1568271469,1624711938,'N','Y','N','N','N',NULL),

('fmts/file-forward/view',2,'fmts/file-forward/view',NULL,'',NULL,'fmts',1568271480,1624712731,'N','N','N','N','N',NULL),

('fmts/file-type/create',2,'fmts/file-type/create',NULL,'',NULL,'fmts',1568271636,1624713016,'N','N','N','N','N',NULL),

('fmts/file-type/delete',2,'fmts/file-type/delete',NULL,'',NULL,'fmts',1568271655,1624713122,'N','N','N','N','Y',NULL),

('fmts/file-type/index',2,'fmts/file-type/index',NULL,'',NULL,'fmts',1568271614,1624713178,'N','N','N','N','N',NULL),

('fmts/file-type/update',2,'fmts/file-type/update',NULL,'',NULL,'fmts',1568271646,1624719192,'N','N','N','N','Y',NULL),

('fmts/file-type/view',2,'fmts/file-type/view',NULL,NULL,NULL,NULL,1568271627,1568271627,'N','N','N','N','N',NULL),

('fmts/logs/index',2,'fmts/logs/index',NULL,'',NULL,'fmts',1568271676,1624719183,'Y','N','N','N','N',NULL),

('grievance_admin',1,'admin to handle grievance',NULL,NULL,NULL,NULL,1583998343,1583998343,'N','N','N','N','N',NULL),

('grievance_admin_staff',1,'admin to handel grievance from employees, can conduct meetings and record resolution.','','',NULL,NULL,1589797223,1603106927,'N','N','N','N','N',NULL),

('grievance_admin_student',1,'admin to handel grievance from students, can conduct meetings and record resolution.','','',NULL,NULL,1583998343,1603106945,'N','N','N','N','N',NULL),

('grievance/dashboard/index',2,'grievance/dashboard/index',NULL,NULL,NULL,NULL,1584085114,1584085114,'N','N','N','N','N',NULL),

('grievance/grievance-category/create',2,'grievance/grievance-category/create',NULL,NULL,NULL,NULL,1584013492,1584013492,'N','N','N','N','N',NULL),

('grievance/grievance-category/delete',2,'grievance/grievance-category/delete',NULL,NULL,NULL,NULL,1584013469,1584013469,'N','N','N','N','N',NULL),

('grievance/grievance-category/index',2,'grievance/grievance-category/index',NULL,NULL,NULL,NULL,1583998637,1583998637,'N','N','N','N','N',NULL),

('grievance/grievance-category/update',2,'grievance/grievance-category/update',NULL,NULL,NULL,NULL,1583998674,1583998674,'N','N','N','N','N',NULL),

('grievance/grievance-category/view',2,'grievance/grievance-category/view',NULL,NULL,NULL,NULL,1583998659,1583998659,'N','N','N','N','N',NULL),

('grievance/grievance-committee-members/create',2,'grievance/grievance-committee-members/create',NULL,NULL,NULL,NULL,1589798861,1589798861,'N','N','N','N','N',NULL),

('grievance/grievance-committee-members/get-members',2,'grievance/grievance-committee-members/get-members',NULL,NULL,NULL,NULL,1589802550,1589802550,'N','N','N','N','N',NULL),

('grievance/grievance-committee-members/index',2,'grievance/grievance-committee-members/index',NULL,NULL,NULL,NULL,1589801407,1589801407,'N','N','N','N','N',NULL),

('grievance/grievance-committee-members/index-member',2,'grievance/grievance-committee-members/index-member',NULL,NULL,NULL,NULL,1589798725,1589798725,'N','N','N','N','N',NULL),

('grievance/grievance-committee-members/update',2,'grievance/grievance-committee-members/update',NULL,NULL,NULL,NULL,1589798876,1589798876,'N','N','N','N','N',NULL),

('grievance/grievance-committee-members/view',2,'grievance/grievance-committee-members/view',NULL,NULL,NULL,NULL,1589889486,1589889486,'N','N','N','N','N',NULL),

('grievance/grievance-committee/create',2,'grievance/grievance-committee/create',NULL,NULL,NULL,NULL,1589801556,1589801556,'N','N','N','N','N',NULL),

('grievance/grievance-committee/dissolve',2,'grievance/grievance-committee/dissolve',NULL,NULL,NULL,NULL,1589889627,1589889627,'N','N','N','N','N',NULL),

('grievance/grievance-committee/index',2,'grievance/grievance-committee/index',NULL,NULL,NULL,NULL,1583998708,1583998708,'N','N','N','N','N',NULL),

('grievance/grievance-committee/update',2,'grievance/grievance-committee/update',NULL,NULL,NULL,NULL,1583998737,1583998737,'N','N','N','N','N',NULL),

('grievance/grievance-committee/view',2,'grievance/grievance-committee/view',NULL,NULL,NULL,NULL,1583998723,1583998723,'N','N','N','N','N',NULL),

('grievance/grievance-form/committee-index',2,'grievance/grievance-form/committee-index',NULL,NULL,NULL,NULL,1589970050,1589970050,'N','N','N','N','N',NULL),

('grievance/grievance-form/create',2,'grievance/grievance-form/create',NULL,NULL,NULL,NULL,1583998458,1583998458,'N','N','N','N','N',NULL),

('grievance/grievance-form/get-category',2,'grievance/grievance-form/get-category',NULL,NULL,NULL,NULL,1589520236,1589520236,'N','N','N','N','N',NULL),

('grievance/grievance-form/get-member',2,'grievance/grievance-form/get-member',NULL,NULL,NULL,NULL,1584002215,1584002215,'N','N','N','N','N',NULL),

('grievance/grievance-form/index',2,'grievance/grievance-form/index',NULL,NULL,NULL,NULL,1583998293,1583998293,'N','N','N','N','N',NULL),

('grievance/grievance-form/record',2,'grievance/grievance-form/record',NULL,NULL,NULL,NULL,1589954207,1589954207,'N','N','N','N','N',NULL),

('grievance/grievance-form/resolution',2,'grievance/grievance-form/resolution',NULL,NULL,NULL,NULL,1583998514,1583998514,'N','N','N','N','N',NULL),

('grievance/grievance-form/save',2,'grievance/grievance-form/save',NULL,NULL,NULL,NULL,1589882882,1589882882,'N','N','N','N','N',NULL),

('grievance/grievance-form/update',2,'grievance/grievance-form/update',NULL,NULL,NULL,NULL,1583998497,1583998497,'N','N','N','N','N',NULL),

('grievance/grievance-form/view',2,'grievance/grievance-form/view',NULL,NULL,NULL,NULL,1583998473,1583998473,'N','N','N','N','N',NULL),

('grievance/grievance-meeting/cancel',2,'grievance/grievance-meeting/cancel',NULL,NULL,NULL,NULL,1589799194,1589799194,'N','N','N','N','N',NULL),

('grievance/grievance-meeting/create',2,'grievance/grievance-meeting/create',NULL,NULL,NULL,NULL,1589801318,1589801318,'N','N','N','N','N',NULL),

('grievance/grievance-meeting/index',2,'grievance/grievance-meeting/index',NULL,NULL,NULL,NULL,1589798949,1589798949,'N','N','N','N','N',NULL),

('grievance/grievance-meeting/meeting-minutes',2,'grievance/grievance-meeting/meeting-minutes',NULL,NULL,NULL,NULL,1589799149,1589799149,'N','N','N','N','N',NULL),

('grievance/grievance-meeting/update',2,'grievance/grievance-meeting/update',NULL,NULL,NULL,NULL,1589799123,1589799123,'N','N','N','N','N',NULL),

('grievance/grievance-meeting/view',2,'grievance/grievance-meeting/view',NULL,NULL,NULL,NULL,1589799096,1589799096,'N','N','N','N','N',NULL),

('grievance/grievance-notes/create',2,'grievance/grievance-notes/create',NULL,NULL,0,NULL,1595837602,1595837602,'N','N','N','N','N',NULL),

('grievance/grievance-notes/index',2,'grievance/grievance-notes/index',NULL,NULL,0,NULL,1595837579,1595837579,'N','N','N','N','N',NULL),

('grievance/grievance-notes/resolution',2,'grievance/grievance-notes/resolution','0',NULL,0,NULL,1595837641,1595837641,'N','N','N','N','N',NULL),

('grievance/grievance-notes/view',2,'grievance/grievance-notes/view',NULL,NULL,0,NULL,1595837614,1595837614,'N','N','N','N','N',NULL),

('grievance/reports/grievance-report',2,'grievance/reports/grievance-report',NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N','N',NULL),

('grievance/reports/index',2,'grievance/reports/index',NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N','N',NULL),

('grievance/reports/public-grievance-report',2,'grievance/reports/public-grievance-report',NULL,'s:0:\"\";',NULL,'grievance',1625756362,1625756362,'N','N','N','N','N',NULL),

('grievance/reports/search-grievance',2,'grievance/reports/search-grievance',NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N','N',NULL),

('grievance/reports/search-public-grievance',2,'grievance/reports/search-public-grievance',NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N','N',NULL),

('grievance/settings/index',2,'grievance/settings/index',NULL,NULL,NULL,NULL,1583998532,1583998532,'N','N','N','N','N',NULL),

('guest',1,'This is the only anonymous user. This includes the user who do not have login into the system. Example: Vendors from Bill Management System, who uses the system but doesn\'t have any other permission. This role is automatically assigned as per the modules->function, if any guest communication is required.','','',NULL,NULL,1533113895,1572263043,'N','N','N','N','N',NULL),

('guest_house_admin',1,'Admin to allot guest house ','','',NULL,NULL,1584449043,1603106830,'N','N','N','N','N',NULL),

('health_admin',1,'admin to handle memberships and facility. he also handles settings.','','',NULL,NULL,1580377291,1603106960,'N','N','N','N','N',NULL),

('health-doctor-details/index',2,'health-doctor-details/index',NULL,NULL,NULL,NULL,1588149227,1588149227,'N','N','N','N','N',NULL),

('health-doctor-details/report',2,'Health',NULL,NULL,NULL,NULL,1588067050,1588067050,'N','N','N','N','N',NULL),

('health/dashboard/get-member',2,'health/dashboard/get-member',NULL,'',NULL,'health',1580810392,1627282669,'N','N','N','N','N',NULL),

('health/dashboard/index',2,'health/dashboard/index',NULL,'',NULL,'health',1580375670,1627282679,'N','N','N','N','N',NULL),

('health/facility/create',2,'health/facility/create',NULL,'',NULL,'health',1580375951,1627282688,'N','N','N','N','N',NULL),

('health/facility/index',2,'health/facility/index',NULL,'',NULL,'health',1580375935,1627282729,'N','N','N','N','N',NULL),

('health/facility/save',2,'health/facility/save',NULL,'',NULL,'health',1580376018,1627282793,'N','N','N','N','N',NULL),

('health/facility/update',2,'health/facility/update',NULL,'',NULL,'health',1580376003,1627282706,'N','N','N','N','Y',NULL),

('health/facility/view',2,'health/facility/view',NULL,'',NULL,'health',1580375981,1627282718,'N','N','N','N','N',NULL),

('health/health-doctor-details/create',2,'health/health-doctor-details/create',NULL,'',NULL,'health',1588140743,1627282847,'N','N','N','N','N',NULL),

('health/health-doctor-details/index',2,'health/health-doctor-details/index',NULL,'',NULL,'health',1588140683,1627284400,'N','N','N','N','N',NULL),

('health/health-doctor-details/report',2,'health/health-doctor-details/report',NULL,'',NULL,'health',1588155020,1627283013,'N','N','N','N','N',NULL),

('health/health-doctor-details/save',2,'health/health-doctor-details/save',NULL,'',NULL,'estate',1588140770,1627284693,'N','N','N','N','N',NULL),

('health/health-doctor-details/update',2,'health/health-doctor-details/update',NULL,NULL,NULL,NULL,1588140759,1588140759,'N','N','N','N','N',NULL),

('health/health-doctor-details/view',2,'health/health-doctor-details/view',NULL,NULL,NULL,NULL,1588140730,1588140730,'N','N','N','N','N',NULL),

('health/health-record/create',2,'health/health-record/create',NULL,'',NULL,'health',1580376189,1627284849,'N','N','N','N','N',NULL),

('health/health-record/get-member',2,'health/health-record/get-member',NULL,'',NULL,'health',1580376345,1627284751,'N','N','N','N','N',NULL),

('health/health-record/index',2,'health/health-record/index',NULL,'',NULL,'health',1580376173,1627282961,'N','N','N','N','N',NULL),

('health/health-record/print-opd-slip',2,'health/health-record/print-opd-slip',NULL,'',NULL,'health',1580377192,1627282947,'N','N','N','N','N',NULL),

('health/health-record/record',2,'health/health-record/record',NULL,'',NULL,'health',1580376364,1627282934,'N','N','N','N','N',NULL),

('health/health-record/save',2,'health/health-record/save',NULL,'',NULL,'health',1580376318,1627282927,'N','N','N','N','N',NULL),

('health/health-record/update',2,'health/health-record/update',NULL,'',NULL,'health',1580376252,1627284325,'N','N','N','N','Y',NULL),

('health/health-record/view',2,'health/health-record/view',NULL,'',NULL,'health',1580376210,1627284936,'N','N','N','N','N',NULL),

('health/health/index',2,'health/health/index',NULL,'',NULL,'health',1580376101,1627284944,'N','N','N','N','N',NULL),

('health/health/view',2,'health/health/view',NULL,'',NULL,'health',1580376114,1627284952,'N','N','N','N','N',NULL),

('health/hospitals/create',2,'health/hospitals/create',NULL,'',NULL,'health',1580376474,1627284962,'N','N','N','N','N',NULL),

('health/hospitals/index',2,'health/hospitals/index',NULL,'',NULL,'health',1580376456,1627285182,'N','N','N','N','N',NULL),

('health/hospitals/save',2,'health/hospitals/save',NULL,'',NULL,'health',1580376529,1627285189,'N','N','N','N','N',NULL),

('health/hospitals/update',2,'health/hospitals/update',NULL,'',NULL,'health',1580376504,1627292050,'N','N','N','N','Y',NULL),

('health/hospitals/view',2,'health/hospitals/view',NULL,NULL,NULL,NULL,1580376491,1580376491,'N','N','N','N','N',NULL),

('health/membership-subscription/index',2,'health/membership-subscription/index',NULL,'',NULL,'health',1580376841,1627292061,'N','N','N','N','N',NULL),

('health/membership-subscription/subscribe',2,'health/membership-subscription/subscribe',NULL,NULL,NULL,NULL,1580376893,1580376893,'N','N','N','N','N',NULL),

('health/membership-subscription/update',2,'health/membership-subscription/update',NULL,NULL,NULL,NULL,1580376868,1580376868,'N','N','N','N','N',NULL),

('health/membership-subscription/view',2,'health/membership-subscription/view',NULL,NULL,NULL,NULL,1580376855,1580376855,'N','N','N','N','N',NULL),

('health/membership-type/create',2,'health/membership-type/create',NULL,NULL,NULL,NULL,1580377051,1580377051,'N','N','N','N','N',NULL),

('health/membership-type/get-membership',2,'health/membership-type/get-membership',NULL,NULL,NULL,NULL,1580542990,1580542990,'N','N','N','N','N',NULL),

('health/membership-type/index',2,'health/membership-type/index',NULL,NULL,NULL,NULL,1580376975,1580376975,'N','N','N','N','N',NULL),

('health/membership-type/save',2,'health/membership-type/save',NULL,'',NULL,'health',1580377033,1627285247,'N','N','N','N','N',NULL),

('health/membership-type/update',2,'health/membership-type/update',NULL,'',NULL,'health',1580377012,1627285240,'N','N','N','N','Y',NULL),

('health/membership-type/view',2,'health/membership-type/view',NULL,'',NULL,'health',1580376993,1627285151,'N','N','N','N','N',NULL),

('health/membership/ajax-fetch-data',2,'health/membership/ajax-fetch-data',NULL,'',NULL,'health',1580377192,1627285141,'N','N','N','N','N',NULL),

('health/membership/create',2,'health/membership/create',NULL,'',NULL,'health',1580376661,1627285134,'N','N','N','N','N',NULL),

('health/membership/get-member',2,'health/membership/get-member',NULL,NULL,NULL,NULL,1580539281,1580539281,'N','N','N','N','N',NULL),

('health/membership/inactive',2,'health/membership/inactive',NULL,NULL,NULL,NULL,1580462379,1580462379,'N','N','N','N','N',NULL),

('health/membership/index',2,'health/membership/index',NULL,NULL,NULL,NULL,1580376645,1580376645,'N','N','N','N','N',NULL),

('health/membership/Subscribe',2,'health/membership/Subscribe',NULL,NULL,NULL,NULL,1580376782,1580376782,'N','N','N','N','N',NULL),

('health/membership/update',2,'health/membership/update',NULL,NULL,NULL,NULL,1580376702,1580376702,'N','N','N','N','N',NULL),

('health/membership/view',2,'health/membership/view',NULL,NULL,NULL,NULL,1580376685,1580376685,'N','N','N','N','N',NULL),

('health/settings/index',2,'health/settings/index',NULL,NULL,NULL,NULL,1580377096,1580377096,'N','N','N','N','N',NULL),

('health/speciality-type/create',2,'health/speciality-type/create',NULL,NULL,NULL,NULL,1588140819,1588140819,'N','N','N','N','N',NULL),

('health/speciality-type/index',2,'health/speciality-type/index',NULL,NULL,NULL,NULL,1588140788,1588140788,'N','N','N','N','N',NULL),

('health/speciality-type/save',2,'health/speciality-type/save',NULL,NULL,NULL,NULL,1588140842,1588140842,'N','N','N','N','N',NULL),

('health/speciality-type/update',2,'health/speciality-type/update',NULL,NULL,NULL,NULL,1588140830,1588140830,'N','N','N','N','N',NULL),

('health/speciality-type/view',2,'health/speciality-type/view',NULL,NULL,NULL,NULL,1588140807,1588140807,'N','N','N','N','N',NULL),

('health/unit-type/create',2,'health/unit-type/create',NULL,NULL,NULL,NULL,1580377175,1580377175,'N','N','N','N','N',NULL),

('health/unit-type/index',2,'health/unit-type/index',NULL,NULL,NULL,NULL,1580377160,1580377160,'N','N','N','N','N',NULL),

('health/unit-type/save',2,'health/unit-type/save',NULL,NULL,NULL,NULL,1580377216,1580377216,'N','N','N','N','N',NULL),

('health/unit-type/update',2,'health/unit-type/update',NULL,NULL,NULL,NULL,1580377204,1580377204,'N','N','N','N','N',NULL),

('health/unit-type/view',2,'health/unit-type/view',NULL,NULL,NULL,NULL,1580377192,1580377192,'N','N','N','N','N',NULL),

('hod',1,'To verify and Forward/Backward application','','',NULL,NULL,1562695609,1603106713,'N','N','N','N','N',NULL),

('hostel_admin',1,'this role is provided to the administrator of the hostel','','',NULL,NULL,1579002747,1579002747,'N','N','N','N','N',NULL),

('hostel/dashboard/admin',2,'hostel/dashboard/admin',NULL,'',NULL,'hostel_admin',1585117926,1626676901,'N','N','N','N','N',NULL),

('hostel/fee/fee-component/create',2,'hostel/fee/fee-component/create',NULL,'',NULL,'hostel_admin',1579004941,1627010523,'N','N','N','N','N',NULL),

('hostel/fee/fee-component/index',2,'hostel/fee/fee-component/index',NULL,'',NULL,'hostel_admin',1579004126,1627010562,'N','N','N','N','N',NULL),

('hostel/fee/fee-component/update',2,'hostel/fee/fee-component/update',NULL,'',NULL,'hostel_admin',1579004928,1627010571,'N','N','N','N','Y',NULL),

('hostel/fee/fee-component/view',2,'hostel/fee/fee-component/view',NULL,'',NULL,'hostel_admin',1579004906,1627010599,'N','N','N','N','N',NULL),

('hostel/fee/student-fee-component/view',2,'hostel/fee/student-fee-component/view','','',NULL,NULL,1586892586,1586892666,'N','N','N','N','N',NULL),

('hostel/hostel-additional-attributes/create',2,'hostel/hostel-additional-attributes/create',NULL,'',NULL,'hostel_admin',1579065761,1627010677,'N','N','N','N','N',NULL),

('hostel/hostel-additional-attributes/index',2,'hostel/hostel-additional-attributes/index',NULL,'',NULL,'hostel_admin',1579004455,1627010702,'N','N','N','N','N',NULL),

('hostel/hostel-additional-attributes/update',2,'hostel/hostel-additional-attributes/update',NULL,'',NULL,'hostel_admin',1583147114,1627010720,'N','N','N','N','Y',NULL),

('hostel/hostel-additional-attributes/view',2,'hostel/hostel-additional-attributes/view',NULL,'',NULL,'hostel_admin',1579004469,1627010751,'N','N','N','N','N',NULL),

('hostel/hostel-allocation/assign-facility',2,'hostel/hostel-allocation/assign-facility','','',NULL,'hostel_admin',1579002632,1627010794,'N','N','N','N','N',NULL),

('hostel/hostel-allocation/create',2,'/hostel/hostel-allocation/create','','',NULL,'hostel_admin',1579002500,1627010837,'N','N','N','N','N',NULL),

('hostel/hostel-allocation/get-building',2,'hostel/hostel-allocation/get-building',NULL,'',NULL,'hostel_admin',1579173606,1627010869,'N','N','N','N','N',NULL),

('hostel/hostel-allocation/get-room',2,'hostel/hostel-allocation/get-room',NULL,'',NULL,'hostel_admin',1579174180,1627010880,'N','N','N','N','N',NULL),

('hostel/hostel-allocation/index',2,'Hostel Allocation Index','','',NULL,'hostel_admin',1579002139,1627010892,'N','N','N','N','N',NULL),

('hostel/hostel-allocation/submit',2,'hostel/hostel-allocation/submit','','',NULL,'hostel_admin',1579003036,1627010923,'N','N','N','N','N',NULL),

('hostel/hostel-allocation/update',2,'hostel/hostel-allocation/update','','',NULL,'hostel_admin',1579002560,1627010962,'N','N','N','N','N',NULL),

('hostel/hostel-allocation/update-ajax',2,'hostel/hostel-allocation/update-ajax','','',NULL,'hostel_admin',1579002601,1627010983,'N','N','N','N','N',NULL),

('hostel/hostel-allocation/view',2,'hostel/hostel-allocation/view','','',NULL,'hostel_admin',1579002539,1627010992,'N','N','N','N','N',NULL),

('hostel/hostel-application/create',2,'hostel/hostel-application/create',NULL,'',NULL,'hostel_admin',1586892877,1626330338,'Y','N','N','N','N',NULL),

('hostel/hostel-application/index',2,'hostel/hostel-application/index','','',NULL,'hostel_admin',1586892806,1626330370,'N','N','N','N','N',NULL),

('hostel/hostel-application/view-user',2,'hostel/hostel-application/view-user',NULL,'',NULL,'hostel_admin',1585561941,1627011048,'N','N','N','N','N',NULL),

('hostel/hostel-facility-list/create',2,'hostel/hostel-facility-list/create',NULL,'',NULL,'hostel_admin',1581073299,1627011059,'N','N','N','N','N',NULL),

('hostel/hostel-facility-list/index',2,'hostel/hostel-facility-list/index',NULL,'',NULL,'hostel_admin',1581073452,1627011075,'N','N','N','N','N',NULL),

('hostel/hostel-facility-list/update',2,'hostel/hostel-facility-list/update',NULL,'',NULL,'hostel_admin',1581073527,1627011091,'N','N','N','N','Y',NULL),

('hostel/hostel-facility-list/view',2,'hostel/hostel-facility-list/view',NULL,'',NULL,'hostel_admin',1581073536,1627011118,'N','N','N','N','N',NULL),

('hostel/hostel-facility/create',2,'hostel/hostel-facility/create',NULL,'',NULL,'hostel_admin',1579004692,1627011138,'N','N','N','N','N',NULL),

('hostel/hostel-facility/index',2,'hostel/hostel-facility','','',NULL,'hostel_admin',1579003639,1627011153,'N','N','N','N','N',NULL),

('hostel/hostel-facility/update',2,'hostel/hostel-facility/update',NULL,'',NULL,'hostel_admin',1579004679,1627011184,'N','N','N','N','Y',NULL),

('hostel/hostel-facility/view',2,'hostel/hostel-facility/view',NULL,'',NULL,'hostel_admin',1579004667,1627011192,'N','N','N','N','N',NULL),

('hostel/hostel-fees/create-category',2,'hostel/hostel-fees/create-category',NULL,'',NULL,'hostel_admin',1579004567,1627011206,'N','N','N','N','N',NULL),

('hostel/hostel-fees/submit-recursive',2,'fee table',NULL,'',NULL,'hostel_admin',1579069130,1627011217,'N','N','N','N','N',NULL),

('hostel/hostel-incident/create',2,'hostel/hostel-incident/create',NULL,'',NULL,'hostel_admin',1579004313,1627011228,'N','N','N','N','N',NULL),

('hostel/hostel-incident/index',2,'hostel/hostel-incident/index','','',NULL,'hostel_admin',1579003531,1627011267,'N','N','N','N','N',NULL),

('hostel/hostel-incident/update',2,'hostel/hostel-incident/update',NULL,'',NULL,'hostel_admin',1579004299,1627011287,'N','N','N','N','Y',NULL),

('hostel/hostel-incident/view',2,'hostel/hostel-incident/view',NULL,'',NULL,'hostel_admin',1579004286,1627011297,'N','N','N','N','N',NULL),

('hostel/hostel-mess-menu/create',2,'hostel/hostel-mess-menu/create',NULL,'',NULL,'hostel_admin',1579004726,1627011308,'N','N','N','N','N',NULL),

('hostel/hostel-mess-menu/index',2,'hostel/hostel-mess-menu/index','','',NULL,'hostel_admin',1579003662,1627011327,'N','N','N','N','N',NULL),

('hostel/hostel-mess-menu/view',2,'hostel/hostel-mess-menu/view',NULL,'',NULL,'hostel_admin',1581075848,1627011336,'N','N','N','N','N',NULL),

('hostel/hostel-request-type/create',2,'hostel/hostel-request-type/create',NULL,'',NULL,'hostel_admin',1579004782,1626245606,'Y','N','N','N','N',NULL),

('hostel/hostel-request-type/get-type',2,'hostel/hostel-request-type/get-type',NULL,'',NULL,'hostel_admin',1579174816,1626245686,'N','N','N','N','N',NULL),

('hostel/hostel-request-type/index',2,'hostel/hostel-request-type/index','','',NULL,'hostel_admin',1579003681,1626245719,'N','N','N','N','N',NULL),

('hostel/hostel-request-type/update',2,'hostel/hostel-request-type/update',NULL,'',NULL,'hostel_admin',1579004764,1626245840,'N','N','N','N','Y',NULL),

('hostel/hostel-request-type/view',2,'hostel/hostel-request-type/view',NULL,'',NULL,'hostel_admin',1579004751,1627011438,'N','N','N','N','N',NULL),

('hostel/hostel-requests/create',2,'hostel/hostel-requests/create',NULL,'',NULL,'hostel_admin',1579004243,1627011448,'N','N','N','N','N',NULL),

('hostel/hostel-requests/index',2,'hostel/hostel-requests/index','','',NULL,'hostel_admin',1579003309,1627011460,'N','N','N','N','N',NULL),

('hostel/hostel-requests/update',2,'hostel/hostel-requests/update',NULL,'',NULL,'hostel_admin',1579004218,1627011471,'N','N','N','N','N',NULL),

('hostel/hostel-requests/view',2,'hostel/hostel-requests/view',NULL,'',NULL,'hostel_admin',1579004204,1627011481,'N','N','N','N','N',NULL),

('hostel/hostel-rooms/create',2,'hostel/hostel-rooms/create',NULL,'',NULL,'hostel_admin',1579004598,1627011491,'N','N','N','N','N',NULL),

('hostel/hostel-rooms/index',2,'hostel/hostel-rooms/index','','',NULL,NULL,1579003615,1579003615,'N','N','N','N','N',NULL),

('hostel/hostel-rooms/update',2,'hostel/hostel-rooms/update',NULL,'',NULL,'hostel_admin',1579004532,1627011501,'N','N','N','N','N',NULL),

('hostel/hostel-rooms/view',2,'hostel/hostel-rooms/view',NULL,NULL,NULL,NULL,1579004514,1579004514,'N','N','N','N','N',NULL),

('hostel/hostel-student-facility-mapping/create',2,'hostel/hostel-student-facility-mapping/create',NULL,'',NULL,'hostel_admin',1579004381,1627011509,'N','N','N','N','N',NULL),

('hostel/hostel-student-facility-mapping/index',2,'hostel/hostel-student-facility-mapping/index','','',NULL,'hostel_admin',1579003457,1627011520,'N','N','N','N','N',NULL),

('hostel/hostel-student-facility-mapping/update',2,'hostel/hostel-student-facility-mapping/update',NULL,NULL,NULL,NULL,1579004362,1579004362,'N','N','N','N','N',NULL),

('hostel/hostel-student-facility-mapping/view',2,'hostel/hostel-student-facility-mapping/view',NULL,'',NULL,'hostel_admin',1579004347,1627011530,'N','N','N','N','N',NULL),

('hostel/hostel/index',2,'hostel/hostel/index','','',NULL,'hostel_admin',1579003584,1627011539,'N','N','N','N','N',NULL),

('hostel/hostel/update',2,'hostel/hostel/update',NULL,'',NULL,'hostel_admin',1579004434,1627011556,'N','N','N','N','N',NULL),

('hostel/hostel/view',2,'hostel/hostel/view',NULL,'',NULL,'hostel_admin',1579004414,1627011564,'N','N','N','N','N',NULL),

('hostel/settings/index',2,'hostel/settings/index',NULL,'',NULL,'program',1578726028,1627011637,'N','N','N','N','N',NULL),

('hrms_master_designation_create',2,'Permission of Creating Designation in HRMS.\r\n','','',NULL,NULL,1555395161,1555395785,'N','N','N','N','N',NULL),

('hrms_master_designation_update',2,'Permission of Updating Designation in HRMS.\r\n','','',NULL,NULL,1555395818,1555395829,'N','N','N','N','N',NULL),

('hrprofile-admin',1,'This user can add, update HR profile records',NULL,NULL,NULL,NULL,1583316327,1583316327,'N','N','N','N','N',NULL),

('ims_admin',1,'This is the Inventory Management Admin. Basically, this role is to be provided to the Admin / Inventory Head who can view all the inventories details available in the system.','','',NULL,NULL,1569665587,1572263061,'N','N','N','N','N',NULL),

('ims_admin_view',1,'View-only rights for Inventory Management System',NULL,NULL,NULL,NULL,1572080471,1572080471,'N','N','N','N','N',NULL),

('ims_department',1,'This role is to be provided to the person from the Organization Unit, who handles all stock from the particular Organization.','','',NULL,NULL,1569665641,1572263072,'N','N','N','N','N',NULL),

('ims_user',1,'This is the Inventory User Role, which needs to be provided to the user who borrows the Stocks from the ims_department Role. This role enhance the ability to view the borrowing/issued details of the items that has been issued by the respective person. Since the inventory can be issued to the three categories of Stake Holders Employee/Administrative Post/Guest User, the ims_user role is non-mandatory but if provided to the employee/administrative post, the can view their issuing details.','','',NULL,NULL,1569665620,1572263079,'N','N','N','N','N',NULL),

('ims/budget-head/create',2,'ims/budget-head/create',NULL,'',NULL,'ims',1574056149,1624713609,'N','N','N','N','N',NULL),

('ims/budget-head/delete',2,'ims/budget-head/delete',NULL,'',NULL,'ims',1574056186,1624864323,'N','N','N','N','Y',NULL),

('ims/budget-head/index',2,'ims/budget-head/index\r\n',NULL,'',NULL,'ims',1574056159,1624864500,'N','N','N','N','N',NULL),

('ims/budget-head/update',2,'ims/budget-head/update',NULL,'',NULL,'ims',1574056176,1624865715,'N','N','N','N','Y',NULL),

('ims/budget-head/view',2,'ims/budget-head/view',NULL,'',NULL,'ims',1574056168,1624865786,'N','N','N','N','N',NULL),

('ims/communication/create',2,'ims/communication/create',NULL,'',NULL,'ims',1569671235,1624875089,'N','N','N','N','N',NULL),

('ims/communication/delete',2,'ims/communication/delete',NULL,'',NULL,'ims',1569671254,1624875326,'N','N','N','N','Y',NULL),

('ims/communication/index',2,'ims/communication/index',NULL,'',NULL,'ims',1569671213,1624875315,'N','N','N','N','N',NULL),

('ims/communication/update',2,'ims/communication/update',NULL,'',NULL,'ims',1569671246,1624879412,'N','N','N','N','Y',NULL),

('ims/communication/view',2,'ims/communication/view',NULL,'',NULL,'ims',1569671225,1624879453,'N','N','N','N','N',NULL),

('ims/dashboard/admin-dashboard',2,'ims/dashboard/admin-dashboard',NULL,'',NULL,'ims',1569671166,1624880370,'N','N','N','N','N',NULL),

('ims/dashboard/department-dashboard',2,'ims/dashboard/department-dashboard',NULL,'',NULL,'ims',1569671176,1624881365,'N','N','N','N','N',NULL),

('ims/dashboard/index',2,'ims/dashboard/index',NULL,'',NULL,'ims',1570019917,1624881448,'N','N','N','N','N',NULL),

('ims/disposal-detail/create',2,'ims/disposal-detail/create',NULL,'',NULL,'ims',1574066304,1624881740,'N','N','N','N','N',NULL),

('ims/disposal-detail/delete',2,'ims/disposal-detail/delete',NULL,'',NULL,'ims',1574066325,1624884446,'N','N','N','N','N',NULL),

('ims/disposal-detail/get-description',2,'ims/disposal-detail/get-description',NULL,'',NULL,'ims',1574069163,1624886023,'N','N','N','N','N',NULL),

('ims/disposal-detail/index',2,'ims/disposal-detail/index',NULL,NULL,NULL,NULL,1574066311,1574066311,'N','N','N','N','N',NULL),

('ims/disposal-detail/update',2,'ims/disposal-detail/update',NULL,'',NULL,'ims',1574066337,1624886245,'N','N','N','N','N',NULL),

('ims/disposal-detail/view',2,'ims/disposal-detail/view',NULL,'',NULL,'ims',1574066319,1624886331,'N','N','N','N','N',NULL),

('ims/inventory-type/create',2,'ims/inventory-type/create',NULL,'',NULL,'ims',1569671290,1624886374,'N','N','N','N','N',NULL),

('ims/inventory-type/index',2,'ims/inventory-type/index',NULL,'',NULL,'ims',1569671274,1624886441,'N','N','N','N','N',NULL),

('ims/inventory-type/update',2,'ims/inventory-type/update',NULL,'',NULL,'ims',1569671298,1624886594,'N','N','N','N','N',NULL),

('ims/inventory-type/view',2,'ims/inventory-type/view',NULL,'',NULL,'ims',1569671283,1624886582,'N','N','N','N','N',NULL),

('ims/issue/accept-return',2,'ims/issue/accept-return',NULL,'',NULL,'ims',1569671394,1624886639,'N','N','N','N','N',NULL),

('ims/issue/create',2,'ims/issue/create',NULL,'',NULL,'ims',1569671355,1624886806,'N','N','N','N','N',NULL),

('ims/issue/discard-issue',2,'ims/issue/discard-issue',NULL,'',NULL,'ims',1574774923,1624940479,'N','N','N','N','N',NULL),

('ims/issue/generate-voucher',2,'PDF Generation of Stock Issue Vouhcer',NULL,'',NULL,'ims',1581172061,1624941099,'N','N','N','N','N',NULL),

('ims/issue/index',2,'ims/issue/index',NULL,'',NULL,'ims',1569671322,1624941765,'N','N','N','N','N',NULL),

('ims/issue/search-inventory',2,'ims/issue/search-inventory',NULL,'',NULL,'ims',1574224387,1624941884,'Y','N','N','N','N',NULL),

('ims/issue/send-remainder',2,'ims/issue/send-remainder',NULL,'',NULL,'ims',1569671406,1624941922,'N','N','N','N','N',NULL),

('ims/issue/send-reminder',2,'ims/issue/send-reminder',NULL,'',NULL,'ims',1573730815,1624943128,'N','N','N','N','N',NULL),

('ims/issue/stock-voucher',2,'ims/issue/stock-voucher',NULL,'',NULL,'ims',1580993616,1624943344,'N','N','N','N','N',NULL),

('ims/issue/user-index',2,'ims/issue/user-index',NULL,'',NULL,'ims',1569671334,1624944362,'N','N','N','N','N',NULL),

('ims/issue/view',2,'ims/issue/view',NULL,'',NULL,'ims',1569671347,1624944546,'N','N','N','N','N',NULL),

('ims/log/create',2,'ims/log/create',NULL,'',NULL,'ims',1569671451,1624944579,'N','N','N','N','N',NULL),

('ims/log/delete',2,'ims/log/delete',NULL,'',NULL,'ims',1569671470,1625028800,'N','N','N','N','Y',NULL),

('ims/log/index',2,'ims/log/index',NULL,'',NULL,'ims',1569671434,1625028998,'N','N','N','N','N',NULL),

('ims/log/update',2,'ims/log/update',NULL,'',NULL,'ims',1569671459,1625030275,'N','N','N','N','Y',NULL),

('ims/log/view',2,'ims/log/view',NULL,'',NULL,'ims',1569671442,1625030413,'N','N','N','N','N',NULL),

('ims/report-generation/download-excel',2,'Permission to download the stock report.',NULL,'',NULL,'ims',1581403702,1625030775,'N','N','N','N','N',NULL),

('ims/report-generation/download-excel-department',2,'ims/report-generation/download-excel-department',NULL,'',NULL,'ims',1581431362,1625030856,'N','N','N','N','N',NULL),

('ims/report-generation/get-report',2,'Permission to view the stock report via charts and bar graphs.','','',NULL,'ims',1581403596,1625030922,'N','N','N','N','N',NULL),

('ims/report-generation/get-report-department',2,'ims/report-generation/get-report-department','','',NULL,'ims',1581430011,1625031080,'N','N','N','N','N',NULL),

('ims/report-generation/index',2,'Permission to generate stock report.',NULL,'',NULL,'ims',1581403545,1625031153,'N','N','N','N','N',NULL),

('ims/report-generation/index-department',2,'ims/report-generation/index-department',NULL,'',NULL,'ims',1581431306,1625031218,'N','N','N','N','N',NULL),

('ims/report-generation/view-report',2,'Permission to view the stock report.',NULL,'',NULL,'ims',1581403658,1625031344,'N','N','N','N','N',NULL),

('ims/report-generation/view-report-department',2,'ims/report-generation/view-report-department',NULL,'',NULL,'ims',1581431338,1625031382,'N','N','N','N','N',NULL),

('ims/settings/index',2,'ims/settings/index',NULL,'',NULL,'ims',1569671494,1625031453,'N','N','N','Y','N',NULL),

('ims/stock-details/create',2,'ims/stock-details/create',NULL,'',NULL,'ims',1569671538,1625031498,'N','N','N','N','N',NULL),

('ims/stock-details/delete',2,'ims/stock-details/delete',NULL,'',NULL,'ims',1569671556,1625037015,'N','N','N','N','N',NULL),

('ims/stock-details/disposal',2,'ims/stock-details/disposal',NULL,'',NULL,'ims',1574065419,1625051759,'N','N','N','N','N',NULL),

('ims/stock-details/index',2,'ims/stock-details/index',NULL,'',NULL,'ims',1569671522,1625051809,'N','N','N','N','N',NULL),

('ims/stock-details/move-faulty-to-available',2,'ims/stock-details/move-faulty-to-available',NULL,'',NULL,'ims',1574133076,1625051884,'N','N','N','N','N',NULL),

('ims/stock-details/remove-image',2,'ims/stock-details/remove-image',NULL,'',NULL,'ims',1580828906,1625059219,'N','N','N','N','Y',NULL),

('ims/stock-details/update',2,'ims/stock-details/update',NULL,'',NULL,'ims',1569671547,1625059364,'N','N','N','N','Y',NULL),

('ims/stock-details/view',2,'ims/stock-details/view',NULL,'',NULL,'ims',1569671531,1625112991,'N','N','N','N','Y',NULL),

('ims/tax-detail/create',2,'ims/tax-detail/create',NULL,'',NULL,'ims',1569671606,1625113027,'N','N','N','N','N',NULL),

('ims/tax-detail/delete',2,'ims/tax-detail/delete',NULL,'',NULL,'ims',1569671626,1625116979,'N','N','N','N','N',NULL),

('ims/tax-detail/index',2,'ims/tax-detail/index',NULL,'',NULL,'ims',1569671582,1625117021,'N','N','N','N','N',NULL),

('ims/tax-detail/update',2,'ims/tax-detail/update',NULL,'',NULL,'ims',1569671616,1625117100,'N','N','N','N','N',NULL),

('ims/tax-detail/view',2,'ims/tax-detail/view',NULL,'',NULL,'ims',1569671594,1625117298,'N','N','N','N','N',NULL),

('ims/vendor-detail/create',2,'ims/vendor-detail/create',NULL,'',NULL,'ims',1569671659,1625117361,'Y','Y','N','N','Y',NULL),

('ims/vendor-detail/create-from-modal',2,'ims/vendor-detail/create-from-modal','','',NULL,'ims',1569671667,1625122635,'Y','Y','N','N','Y',NULL),

('ims/vendor-detail/get-vendor-detail',2,'ims/vendor-detail/get-vendor-detail',NULL,'',NULL,'ims',1569671705,1625136358,'N','N','N','N','N',NULL),

('ims/vendor-detail/get-vendor-detail-for-vendor-management-system',2,'ims/vendor-detail/get-vendor-detail-for-vendor-management-system',NULL,'',NULL,'ims',1569919154,1625136461,'N','N','N','N','N',NULL),

('ims/vendor-detail/index',2,'ims/vendor-detail/index',NULL,'',NULL,'ims',1569671644,1625136529,'Y','N','N','N','N',NULL),

('ims/vendor-detail/save-vendor-using-ajax',2,'ims/vendor-detail/save-vendor-using-ajax',NULL,'',NULL,'ims',1569671682,1625136568,'N','N','N','N','N',NULL),

('ims/vendor-detail/update',2,'ims/vendor-detail/update',NULL,'',NULL,'ims',1569671691,1625136875,'N','N','N','N','Y',NULL),

('ims/vendor-detail/view',2,'ims/vendor-detail/view',NULL,'',NULL,'ims',1569671652,1625136993,'N','N','N','N','N',NULL),

('ims/warehouse-detail/create',2,'ims/warehouse-detail/create','','',NULL,'ims',1569671746,1625137035,'N','N','N','N','N',NULL),

('ims/warehouse-detail/delete',2,'ims/warehouse-detail/delete','','',NULL,'ims',1569671761,1625137108,'N','N','N','N','Y',NULL),

('ims/warehouse-detail/index',2,'ims/warehouse-detail/index','','',NULL,'ims',1569671728,1625137278,'N','N','N','N','N',NULL),

('ims/warehouse-detail/update',2,'ims/warehouse-detail/update','','',NULL,'ims',1569671754,1625137853,'N','N','N','N','Y',NULL),

('ims/warehouse-detail/view',2,'ims/warehouse-detail/view','','',NULL,NULL,1569671735,1569829482,'N','N','N','N','N',NULL),

('itsd_admin',1,'IT Service Desk Admin,handles all type of tickets and settings','','',NULL,NULL,1585912412,1603106989,'N','N','N','N','N',NULL),

('itsd_agent',1,'Agent for IT SERVICE DESK,handles only specific types of tickets','','',NULL,NULL,1585979588,1603107014,'N','N','N','N','N',NULL),

('itsd/assignto-agent/accept',2,'itsd/assignto-agent/accept',NULL,NULL,NULL,NULL,1585916899,1585981823,'N','N','N','N','N',NULL),

('itsd/assignto-agent/assign',2,'itsd/assignto-agent/assign',NULL,NULL,NULL,NULL,1586183102,1586183102,'N','N','N','N','N',NULL),

('itsd/assignto-agent/assign-agent',2,'itsd/assignto-agent/assign-agent',NULL,NULL,NULL,NULL,1585912529,1585912529,'N','N','N','N','N',NULL),

('itsd/assignto-agent/index',2,'itsd/assignto-agent/index',NULL,NULL,NULL,NULL,1586184660,1586184660,'N','N','N','N','N',NULL),

('itsd/dashboard/get-member',2,'itsd/dashboard/get-member',NULL,NULL,NULL,NULL,1586426561,1586426561,'N','N','N','N','N',NULL),

('itsd/dashboard/get-states',2,'itsd/dashboard/get-states',NULL,NULL,NULL,NULL,1586431618,1586431618,'N','N','N','N','N',NULL),

('itsd/dashboard/get-status',2,'itsd/dashboard/get-status',NULL,NULL,NULL,NULL,1586427165,1586427165,'N','N','N','N','N',NULL),

('itsd/dashboard/index',2,'itsd/dashboard/index',NULL,NULL,NULL,NULL,1585912274,1585912274,'N','N','N','N','N',NULL),

('itsd/itsd-agent-type/create',2,'itsd/itsd-agent-type/create',NULL,NULL,NULL,NULL,1586239149,1586239149,'N','N','N','N','N',NULL),

('itsd/itsd-agent-type/index',2,'itsd/itsd-agent-type/index',NULL,NULL,NULL,NULL,1586239130,1586239130,'N','N','N','N','N',NULL),

('itsd/itsd-agent-type/update',2,'itsd/itsd-agent-type/update',NULL,NULL,NULL,NULL,1586239187,1586239187,'N','N','N','N','N',NULL),

('itsd/itsd-agent-type/view',2,'itsd/itsd-agent-type/view',NULL,NULL,NULL,NULL,1586239256,1586239256,'N','N','N','N','N',NULL),

('itsd/itsd-form/accept',2,'itsd/itsd-form/accept',NULL,NULL,NULL,NULL,1585984677,1585984677,'N','N','N','N','N',NULL),

('itsd/itsd-form/agent-index',2,'itsd/itsd-form/agent-index',NULL,NULL,NULL,NULL,1585979731,1585979731,'N','N','N','N','N',NULL),

('itsd/itsd-form/create',2,'itsd/itsd-form/create',NULL,NULL,NULL,NULL,1585912136,1585912136,'N','N','N','N','N',NULL),

('itsd/itsd-form/get-member',2,'itsd/itsd-form/get-member',NULL,NULL,NULL,NULL,1585986576,1585986576,'N','N','N','N','N',NULL),

('itsd/itsd-form/index',2,'itsd/itsd-form/index',NULL,NULL,NULL,NULL,1585912111,1585912111,'N','N','N','N','N',NULL),

('itsd/itsd-form/index-spam',2,'itsd/itsd-form/index-spam',NULL,NULL,NULL,NULL,1586421394,1586421394,'N','N','N','N','N',NULL),

('itsd/itsd-form/reopen',2,'itsd/itsd-form/reopen',NULL,NULL,NULL,NULL,1585989332,1585989332,'N','N','N','N','N',NULL),

('itsd/itsd-form/save',2,'itsd/itsd-form/save',NULL,NULL,NULL,NULL,1585912237,1585912237,'N','N','N','N','N',NULL),

('itsd/itsd-form/send-response',2,'itsd/itsd-form/send-response',NULL,NULL,NULL,NULL,1586342766,1586344704,'N','N','N','N','N',NULL),

('itsd/itsd-form/update',2,'itsd/itsd-form/update',NULL,NULL,NULL,NULL,1585912149,1585912149,'N','N','N','N','N',NULL),

('itsd/itsd-form/view',2,'itsd/itsd-form/view',NULL,NULL,NULL,NULL,1585912222,1585912222,'N','N','N','N','N',NULL),

('itsd/itsd-status-log/create',2,'itsd/itsd-status-log/create',NULL,NULL,NULL,NULL,1585912312,1585912312,'N','N','N','N','N',NULL),

('itsd/itsd-status-log/index',2,'itsd/itsd-status-log/index',NULL,NULL,NULL,NULL,1585912300,1585912300,'N','N','N','N','N',NULL),

('itsd/itsd-status-log/index-agent',2,'itsd/itsd-status-log/index-agent',NULL,NULL,NULL,NULL,1585998264,1585998264,'N','N','N','N','N',NULL),

('itsd/itsd-status-log/index-ticket',2,'itsd/itsd-status-log/index-ticket',NULL,NULL,NULL,NULL,1585998415,1585998415,'N','N','N','N','N',NULL),

('itsd/itsd-status-log/update',2,'itsd/itsd-status-log/update',NULL,NULL,NULL,NULL,1585912325,1585912325,'N','N','N','N','N',NULL),

('itsd/itsd-status-log/view',2,'itsd/itsd-status-log/view',NULL,NULL,NULL,NULL,1585912337,1585912337,'N','N','N','N','N',NULL),

('itsd/itsd-type/active',2,'itsd/itsd-type/active',NULL,NULL,NULL,NULL,1610097440,1610097440,'N','N','N','N','N',NULL),

('itsd/itsd-type/create',2,'itsd/itsd-type/create',NULL,NULL,NULL,NULL,1585912562,1585912562,'N','N','N','N','N',NULL),

('itsd/itsd-type/inactive',2,'itsd/itsd-type/inactive',NULL,NULL,NULL,NULL,1610097422,1610097422,'N','N','N','N','N',NULL),

('itsd/itsd-type/index',2,'itsd/itsd-type/index',NULL,NULL,NULL,NULL,1585912549,1585912549,'N','N','N','N','N',NULL),

('itsd/itsd-type/save',2,'itsd/itsd-type/save',NULL,NULL,NULL,NULL,1585912605,1585912605,'N','N','N','N','N',NULL),

('itsd/itsd-type/update',2,'itsd/itsd-type/update',NULL,NULL,NULL,NULL,1585912575,1585912575,'N','N','N','N','N',NULL),

('itsd/itsd-type/view',2,'itsd/itsd-type/view',NULL,NULL,NULL,NULL,1585912594,1585912594,'N','N','N','N','N',NULL),

('itsd/settings/index',2,'itsd/settings/index',NULL,NULL,NULL,NULL,1585912376,1585912376,'N','N','N','N','N',NULL),

('jiuser/administration/add-user',2,'jiuser/administration/add-user',NULL,NULL,NULL,NULL,1600859809,1600859809,'N','N','N','N','N',NULL),

('jiuser/administration/admin-index',2,'jiuser/administration/admin-index',NULL,'s:0:\"\";',NULL,'user',1623914520,1623914520,'Y','N','Y','Y','Y',NULL),

('jiuser/administration/index',2,'jiuser/administration/index',NULL,NULL,NULL,NULL,1564720070,1564720070,'N','N','N','N','N',NULL),

('jiuser/auth/login',2,'jiuser/auth/login',NULL,NULL,NULL,NULL,1600859809,1600859809,'N','N','N','N','N',NULL),

('jiuser/authitem/create',2,'jiuser/authitem/create',NULL,NULL,NULL,NULL,1600859809,1600859809,'N','N','N','N','N',NULL),

('jiuser/authitem/create-permission-using-ajax',2,'jiuser/authitem/create-permission-using-ajax',NULL,NULL,NULL,NULL,1600859810,1600859810,'N','N','N','N','N',NULL),

('jiuser/authitem/create-role',2,'jiuser/authitem/create-role',NULL,NULL,NULL,NULL,1600859809,1600859809,'N','N','N','N','N',NULL),

('jiuser/authitem/delete',2,'jiuser/authitem/delete',NULL,NULL,NULL,NULL,1600859810,1600859810,'N','N','N','N','N',NULL),

('jiuser/authitem/index-permission',2,'jiuser/authitem/index-permission',NULL,NULL,NULL,NULL,1600859810,1600859810,'N','N','N','N','N',NULL),

('jiuser/authitem/index-role',2,'jiuser/authitem/index-role',NULL,NULL,NULL,NULL,1600859809,1600859809,'N','N','N','N','N',NULL),

('jiuser/authitem/index-role-permission',2,'jiuser/authitem/index-role-permission',NULL,NULL,NULL,NULL,1600859810,1600859810,'N','N','N','N','N',NULL),

('jiuser/authitem/index-user-roles',2,'jiuser/authitem/index-user-roles',NULL,NULL,NULL,NULL,1600859810,1600859810,'N','N','N','N','N',NULL),

('jiuser/authitem/permission-role-mapping',2,'jiuser/authitem/permission-role-mapping',NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N','N',NULL),

('jiuser/authitem/render-role-permission-form',2,'jiuser/authitem/render-role-permission-form',NULL,NULL,NULL,NULL,1600859810,1600859810,'N','N','N','N','N',NULL),

('jiuser/authitem/render-update-user-permission-form',2,'jiuser/authitem/render-update-user-permission-form',NULL,NULL,NULL,NULL,1600859810,1600859810,'N','N','N','N','N',NULL),

('jiuser/authitem/render-user-permission-form',2,'jiuser/authitem/render-user-permission-form',NULL,NULL,NULL,NULL,1600859810,1600859810,'N','N','N','N','N',NULL),

('jiuser/authitem/render-user-roles-form',2,'jiuser/authitem/render-user-roles-form',NULL,NULL,NULL,NULL,1600859810,1600859810,'N','N','N','N','N',NULL),

('jiuser/authitem/update',2,'jiuser/authitem/update',NULL,NULL,NULL,NULL,1600859809,1600859809,'N','N','N','N','N',NULL),

('jiuser/authitem/update-bulk-user-roles',2,'jiuser/authitem/update-bulk-user-roles',NULL,NULL,NULL,NULL,1600859810,1600859810,'N','N','N','N','N',NULL),

('jiuser/authitem/update-permission-using-ajax',2,'jiuser/authitem/update-permission-using-ajax',NULL,NULL,NULL,NULL,1600859810,1600859810,'N','N','N','N','N',NULL),

('jiuser/authitem/update-role',2,'jiuser/authitem/update-role',NULL,NULL,NULL,NULL,1600859809,1600859809,'N','N','N','N','N',NULL),

('jiuser/authitem/update-role-permission-using-ajax',2,'jiuser/authitem/update-role-permission-using-ajax',NULL,NULL,NULL,NULL,1600859810,1600859810,'N','N','N','N','N',NULL),

('jiuser/authitem/update-user-roles-using-ajax',2,'jiuser/authitem/update-user-roles-using-ajax',NULL,NULL,NULL,NULL,1600859810,1600859810,'N','N','N','N','N',NULL),

('jiuser/authitem/view-role-permission',2,'jiuser/authitem/view-role-permission',NULL,NULL,NULL,NULL,1600859810,1600859810,'N','N','N','N','N',NULL),

('jiuser/default/index',2,'jiuser/default/index',NULL,NULL,NULL,NULL,1600859810,1600859810,'N','N','N','N','N',NULL),

('jiuser/staff/create',2,'jiuser/staff/create',NULL,NULL,NULL,NULL,1600859810,1600859810,'N','N','N','N','N',NULL),

('jiuser/staff/delete',2,'jiuser/staff/delete',NULL,NULL,NULL,NULL,1600859810,1600859810,'N','N','N','N','N',NULL),

('jiuser/staff/fetch-personal-detail',2,'jiuser/staff/fetch-personal-detail',NULL,'s:0:\"\";',NULL,'user',1619644634,1619644634,'Y','N','N','N','N',NULL),

('jiuser/staff/index',2,'jiuser/staff/index',NULL,NULL,NULL,NULL,1600859810,1600859810,'N','N','N','N','N',NULL),

('jiuser/staff/update',2,'jiuser/staff/update',NULL,NULL,NULL,NULL,1600859810,1600859810,'N','N','N','N','N',NULL),

('jiuser/staff/view',2,'jiuser/staff/view',NULL,NULL,NULL,NULL,1600859810,1600859810,'N','N','N','N','N',NULL),

('jiuser/user/associate-account-from-core-user-assignment',2,'jiuser/user/associate-account-from-core-user-assignment',NULL,NULL,NULL,NULL,1600859810,1600859810,'N','N','N','N','N',NULL),

('jiuser/user/bulk-forced-reset-password',2,'jiuser/user/bulk-forced-reset-password',NULL,'s:0:\"\";',NULL,'user',1618489430,1618489430,'N','N','N','N','N',NULL),

('jiuser/user/create',2,'jiuser/user/create',NULL,NULL,NULL,NULL,1600859810,1600859810,'N','N','N','N','N',NULL),

('jiuser/user/delete',2,'jiuser/user/delete',NULL,NULL,NULL,NULL,1600859810,1600859810,'N','N','N','N','N',NULL),

('jiuser/user/get-assigned-users-administrative',2,'jiuser/user/get-assigned-users-administrative',NULL,NULL,NULL,NULL,1600859810,1600859810,'N','N','N','N','N',NULL),

('jiuser/user/get-assigned-users-employee',2,'jiuser/user/get-assigned-users-employee',NULL,NULL,NULL,NULL,1600859810,1600859810,'N','N','N','N','N',NULL),

('jiuser/user/get-users-by-account-type',2,'jiuser/user/get-users-by-account-type',NULL,NULL,NULL,NULL,1600859810,1600859810,'N','N','N','N','N',NULL),

('jiuser/user/index',2,'jiuser/user/index',NULL,NULL,NULL,NULL,1600859810,1600859810,'N','N','N','N','N',NULL),

('jiuser/user/reset-admin-password',2,'jiuser/user/reset-admin-password',NULL,NULL,NULL,NULL,1600859810,1600859810,'N','N','N','N','N',NULL),

('jiuser/user/reset-password',2,'permission to reset password',NULL,NULL,NULL,NULL,1571467393,1571467393,'N','N','N','N','N',NULL),

('jiuser/user/send-compose-mail',2,'jiuser/user/send-compose-mail',NULL,'s:0:\"\";',NULL,'user',1618475156,1618475156,'N','Y','N','N','N',NULL),

('jiuser/user/send-invite-mail',2,'jiuser/user/send-invite-mail',NULL,'s:0:\"\";',NULL,'user',1617967624,1617967624,'N','Y','N','N','N',NULL),

('jiuser/user/send-reset-mail',2,'jiuser/user/send-reset-mail',NULL,'s:0:\"\";',NULL,'user',1617963086,1617963199,'N','Y','N','N','N',NULL),

('jiuser/user/switch-employee',2,'jiuser/user/switch-employee',NULL,NULL,NULL,NULL,1600859810,1600859810,'N','N','N','N','N',NULL),

('jiuser/user/switch-status',2,'jiuser/user/switch-status',NULL,NULL,NULL,NULL,1600859810,1600859810,'N','N','N','N','N',NULL),

('jiuser/user/update',2,'jiuser/user/update',NULL,NULL,NULL,NULL,1600859810,1600859810,'N','N','N','N','N',NULL),

('jiuser/user/view',2,'jiuser/user/view',NULL,NULL,NULL,NULL,1600859810,1600859810,'N','N','N','N','N',NULL),

('knowledge_admin',1,'Admin role for Knowledge module',NULL,NULL,NULL,NULL,1580369133,1580369133,'N','N','N','N','N',NULL),

('knowledge_employee',1,'Employee role for Knowledge module',NULL,NULL,NULL,NULL,1580369187,1580369187,'N','N','N','N','N',NULL),

('knowledge/dashboard/admin',2,'Dashboard for knowledge_admin',NULL,'',NULL,'knowledge',1581071594,1627039520,'N','N','N','N','N',NULL),

('knowledge/dashboard/index',2,'Knowledge Dashboard',NULL,'',NULL,'knowledge',1581067893,1627039548,'N','N','N','N','N',NULL),

('knowledge/knowledge-book/create',2,'knowledge/knowledge-book/create',NULL,'',NULL,'knowledge',1580368763,1627039573,'N','N','N','N','N',NULL),

('knowledge/knowledge-book/get',2,'knowledge/knowledge-book/get',NULL,'s:0:\"\";',NULL,'knowledge',1626416391,1626416391,'N','N','N','N','N',NULL),

('knowledge/knowledge-book/index',2,'knowledge/knowledge-book/index',NULL,'',NULL,'knowledge',1580368742,1627039629,'N','N','N','N','N',NULL),

('knowledge/knowledge-book/index-employee',2,'knowledge/knowledge-book/index-employee',NULL,'',NULL,'knowledge',1614248265,1627039654,'N','N','N','N','N',NULL),

('knowledge/knowledge-book/update',2,'knowledge/knowledge-book/update',NULL,'',NULL,'knowledge',1580368802,1627039666,'N','N','N','N','Y',NULL),

('knowledge/knowledge-book/view',2,'knowledge/knowledge-book/view',NULL,'',NULL,'knowledge',1580368779,1627039686,'N','N','N','N','N',NULL),

('knowledge/knowledge-paper/create',2,'knowledge/knowledge-paper/create',NULL,'',NULL,'knowledge',1580368963,1627039695,'N','N','N','N','N',NULL),

('knowledge/knowledge-paper/index',2,'knowledge/knowledge-paper/index',NULL,'',NULL,'knowledge',1580368920,1627039708,'N','N','N','N','N',NULL),

('knowledge/knowledge-paper/index-employee',2,'knowledge/knowledge-paper/index-employee',NULL,'',NULL,'knowledge',1614248133,1627039725,'N','N','N','N','N',NULL),

('knowledge/knowledge-paper/update',2,'knowledge/knowledge-paper/update',NULL,'',NULL,'knowledge',1580368865,1627039739,'N','N','N','N','Y',NULL),

('knowledge/knowledge-paper/view',2,'knowledge/knowledge-paper/view',NULL,'',NULL,'knowledge',1580368940,1627039769,'N','N','N','N','N',NULL),

('knowledge/knowledge-patent/create',2,'knowledge/knowledge-patent/create',NULL,'',NULL,'knowledge',1580369037,1627039782,'N','N','N','N','N',NULL),

('knowledge/knowledge-patent/index',2,'knowledge/knowledge-patent/index',NULL,'',NULL,'knowledge',1580368991,1627039826,'N','N','N','N','N',NULL),

('knowledge/knowledge-patent/index-employee',2,'knowledge/knowledge-patent/index-employee',NULL,'',NULL,'knowledge',1614248422,1627039845,'N','N','N','N','N',NULL),

('knowledge/knowledge-patent/update',2,'knowledge/knowledge-patent/update',NULL,'',NULL,'knowledge',1580369022,1627039860,'N','N','N','N','Y',NULL),

('knowledge/knowledge-patent/view',2,'knowledge/knowledge-patent/view',NULL,'',NULL,'knowledge',1580369004,1627039899,'N','N','N','N','N',NULL),

('knowledge/knowledge-profile/create',2,'knowledge/knowledge-profile/create',NULL,NULL,NULL,'knowledge',1626420546,1626420546,'N','N','N','N','N',0),

('knowledge/knowledge-profile/employee-index',2,'knowledge/knowledge-profile/employee-index',NULL,NULL,NULL,'knowledge',1626420546,1626420546,'N','N','N','N','N',0),

('knowledge/knowledge-profile/index',2,'knowledge/knowledge-profile/index',NULL,'s:0:\"\";',NULL,'knowledge',1626420546,1626420546,'N','N','N','N','N',NULL),

('knowledge/knowledge-profile/sync-data',2,'knowledge/knowledge-profile/sync-data',NULL,NULL,NULL,'knowledge',1626420546,1626420546,'N','N','N','N','N',0),

('knowledge/knowledge-profile/update',2,'knowledge/knowledge-profile/update',NULL,NULL,NULL,'knowledge',1626420546,1626420546,'N','N','N','N','N',0),

('knowledge/knowledge-profile/view',2,'knowledge/knowledge-profile/view',NULL,NULL,NULL,'knowledge',1626420546,1626420546,'N','N','N','N','N',0),

('leave_admin',1,'Leave Admin',NULL,NULL,NULL,NULL,1566193679,1566193679,'N','N','N','N','N',NULL),

('leave_admin_view',1,'can only view the leaves',NULL,NULL,NULL,NULL,1571402150,1571402150,'N','N','N','N','N',NULL),

('leave_approval',1,'Leave Approval','','',NULL,NULL,1567577297,1576298143,'N','N','N','N','N',NULL),

('leave_recommending_authority',1,'This role is automatically assigned to recommending authorities',NULL,NULL,NULL,NULL,1580210094,1580210094,'N','N','N','N','N',NULL),

('leave_reviewing_authority',1,'This role is automatically assigned to reviewing authority.',NULL,NULL,NULL,NULL,1580210151,1580210151,'N','N','N','N','N',NULL),

('leave_sanction_authority',1,'this role is assigned to sanction authorities',NULL,NULL,NULL,NULL,1580210044,1580210044,'N','N','N','N','N',NULL),

('leave-account/get-remaining-leaves',2,'leave-account/get-remaining-leaves',NULL,NULL,NULL,NULL,1580204666,1580204666,'N','N','N','N','N',NULL),

('leave/admin/configuration',2,'display leave configuration',NULL,NULL,NULL,NULL,1619670509,1619670509,'N','N','N','N','N',NULL),

('leave/admin/index',2,'Leave Admin ','','',NULL,NULL,1563865173,1566794260,'N','N','N','N','N',NULL),

('leave/admin/manage',2,'Leave Management',NULL,NULL,NULL,NULL,1563875875,1563875875,'N','N','N','N','N',NULL),

('leave/admin/update-settings',2,'leave/admin/update-settings',NULL,'s:0:\"\";',NULL,'leave',1626668370,1626668370,'N','N','N','Y','N',NULL),

('leave/application-logs/application-logs',2,'leave/application-logs/application-logs',NULL,NULL,NULL,NULL,1580299709,1580299709,'N','N','N','N','N',NULL),

('leave/application/index',2,'list of leave application',NULL,NULL,NULL,NULL,1571402434,1571402434,'N','N','N','N','N',NULL),

('leave/applications/approval-index',2,'Leave Approval','','',NULL,NULL,1566196156,1566196517,'N','N','N','N','N',NULL),

('leave/applications/approve-rejoin',2,'leave/applications/approve-rejoin',NULL,NULL,NULL,NULL,1620892115,1620892115,'N','N','N','N','N',NULL),

('leave/applications/assign-duties',2,'leave/applications/assign-duties',NULL,NULL,NULL,NULL,1595500230,1595500230,'N','N','N','N','N',NULL),

('leave/applications/cancel',2,'leave/applications/cancel',NULL,NULL,NULL,NULL,1580297959,1580297959,'N','N','N','N','N',NULL),

('leave/applications/cancel-application',2,'leave/applications/cancel-application',NULL,NULL,NULL,NULL,1580203612,1580203612,'N','N','N','N','N',NULL),

('leave/applications/cancellation-index',2,'leave/applications/cancellation-index',NULL,NULL,NULL,NULL,1580199435,1580199435,'N','N','N','N','N',NULL),

('leave/applications/create',2,'leave/applications/create',NULL,NULL,NULL,NULL,1580203864,1580203864,'N','N','N','N','N',NULL),

('leave/applications/create-post-facto',2,'leave/applications/create-post-facto','','N',0,NULL,1595687937,1595687937,'N','N','N','N','N',NULL),

('leave/applications/get-calculated-days',2,'leave/applications/get-calculated-days',NULL,'',NULL,'leave',1580204694,1626680756,'N','N','N','Y','N',NULL),

('leave/applications/get-combined-leaves',2,'leave/applications/get-combined-leaves',NULL,NULL,NULL,NULL,1580204719,1580204719,'N','N','N','N','N',NULL),

('leave/applications/get-leaves',2,'leave/applications/get-leaves',NULL,NULL,NULL,NULL,1580204576,1580204576,'N','N','N','N','N',NULL),

('leave/applications/index',2,'leave/applications/index',NULL,NULL,NULL,NULL,1580199468,1580199468,'N','N','N','N','N',NULL),

('leave/applications/print',2,'leave/applications/print','','N',0,NULL,1596111760,1596111760,'N','N','N','N','N',NULL),

('leave/applications/recommend-application',2,'leave/applications/recommend-application',NULL,NULL,NULL,NULL,1580203574,1580203574,'N','N','N','N','N',NULL),

('leave/applications/recommending-index',2,'leave/applications/recommending-index',NULL,'',NULL,'leave',1580199532,1627040530,'N','N','N','N','N',NULL),

('leave/applications/rejoin',2,'leave/applications/rejoin','','N',0,'leave',1596102678,1627040540,'N','N','N','N','N',NULL),

('leave/applications/rejoin-index',2,'leave/applications/rejoin-index',NULL,'',NULL,'leave',1620891915,1627040556,'N','N','N','N','N',NULL),

('leave/applications/review-application',2,'leave/applications/review-application',NULL,'',NULL,'leave',1580203594,1627040569,'N','N','N','N','N',NULL),

('leave/applications/reviewing-index',2,'leave/applications/reviewing-index',NULL,'',NULL,'leave',1580199547,1627040586,'N','N','N','N','N',NULL),

('leave/applications/sanction-application',2,'leave/applications/sanction-application',NULL,'',NULL,'leave',1580203546,1627040601,'N','N','N','N','N',NULL),

('leave/applications/sanction-index',2,'leave/applications/sanction-index',NULL,'',NULL,'leave',1580199559,1627040631,'N','N','N','N','N',NULL),

('leave/applications/send-reminder-email',2,'leave/applications/send-reminder-email',NULL,'s:0:\"\";',NULL,'leave',1626678797,1626678797,'N','N','N','Y','N',NULL),

('leave/applications/submit',2,'leave/applications/submit',NULL,'',NULL,'leave',1580283492,1627040759,'N','N','N','N','N',NULL),

('leave/applications/submit-post-facto',2,'leave/applications/submit-post-facto','','N',0,'leave',1595823595,1627040770,'N','N','N','N','N',NULL),

('leave/applications/update',2,'leave/applications/update',NULL,'',NULL,'leave',1580283348,1627040782,'N','N','N','N','Y',NULL),

('leave/applications/update-duties-assignee',2,'leave/applications/update-duties-assignee',NULL,'s:0:\"\";',NULL,'leave',1626684545,1626684545,'N','N','N','Y','N',NULL),

('leave/applications/view',2,'leave/applications/view',NULL,'',NULL,'leave',1580203192,1627040803,'N','N','N','N','N',NULL),

('leave/authority-map/create',2,'leave/authority-map/create',NULL,NULL,NULL,NULL,1580199147,1580199147,'N','N','N','N','N',NULL),

('leave/authority-map/index',2,'leave/authority-map/index',NULL,'',NULL,'leave',1580203891,1627040814,'N','N','N','N','N',NULL),

('leave/authority-map/update',2,'leave/authority-map/update',NULL,'',NULL,'leave',1580303301,1627040828,'N','N','N','N','Y',NULL),

('leave/authority-map/view',2,'leave/authority-map/view',NULL,'',NULL,'leave',1580303235,1627040845,'N','N','N','N','N',NULL),

('leave/commute-request/create',2,'leave/commute-request/create',NULL,'',NULL,'leave',NULL,1627040854,'N','N','N','N','N',NULL),

('leave/commute-request/get-calculated-days',2,'leave/commute-request/get-calculated-days',NULL,'',NULL,'leave',NULL,1627040869,'N','N','N','N','N',NULL),

('leave/commute-request/index',2,'leave/commute-request/index',NULL,'s:0:\"\";',NULL,'leave',1622107829,1622107829,'Y','N','Y','N','N',NULL),

('leave/compensatory-leaves/assign-leaves',2,'leave/compensatory-leaves/assign-leaves',NULL,'',NULL,'leave',1580204014,1627040894,'N','N','N','N','N',NULL),

('leave/compensatory-leaves/bulk-assign',2,'leave/compensatory-leaves/bulk-assign',NULL,'',NULL,'leave',1580278299,1627040922,'N','N','N','N','N',NULL),

('leave/compensatory-leaves/confirm-leave',2,'leave/compensatory-leaves/confirm-leave',NULL,'',NULL,'leave',1580207671,1627040933,'N','N','N','N','N',NULL),

('leave/compensatory-leaves/index',2,'leave/compensatory-leaves/index',NULL,'',NULL,'leave',1580199187,1627040944,'N','N','N','N','N',NULL),

('leave/compensatory-leaves/update',2,'leave/compensatory-leaves/update',NULL,'',NULL,'leave',1580709375,1627040955,'N','N','N','N','Y',NULL),

('leave/compensatory-leaves/update-count',2,'leave/compensatory-leaves/update-count','','N',0,'leave',1595500283,1627040968,'N','N','N','N','Y',NULL),

('leave/employee-leave-mapping/bulk-assign-authorities',2,'leave/employee-leave-mapping/bulk-assign-authorities',NULL,'',NULL,'leave',1580203955,1627040981,'N','N','N','N','N',NULL),

('leave/employee-leave-mapping/index',2,'leave/employee-leave-mapping/index',NULL,'',NULL,'leave',1580203665,1627040992,'N','N','N','N','N',NULL),

('leave/employee-leave-mapping/update-ajax',2,'leave/employee-leave-mapping/update-ajax',NULL,NULL,NULL,NULL,1580470968,1580470968,'N','N','N','N','N',NULL),

('leave/employee-record/approval-index',2,'leave/employee-record/approval-index',NULL,'',NULL,'leave',1580199169,1627041005,'N','N','N','N','N',NULL),

('leave/employee-record/bulk-assign',2,'leave/employee-record/bulk-assign',NULL,'',NULL,'leave',1580203772,1627041018,'N','N','N','N','N',NULL),

('leave/employee-record/bulk-assign-leaves',2,'leave/employee-record/bulk-assign-leaves',NULL,'',NULL,'leave',1580207537,1627041030,'N','N','N','N','N',NULL),

('leave/employee-record/complete',2,'leave/employee-record/complete',NULL,'',NULL,'leave',1580203688,1627041039,'N','N','N','N','N',NULL),

('leave/employee-record/confirm-employees-leave',2,'leave/employee-record/confirm-employees-leave',NULL,'',NULL,'leave',1580276073,1627041049,'N','N','N','N','N',NULL),

('leave/employee-record/employee-index',2,'leave/employee-record/employee-index',NULL,'',NULL,'employee',1580199066,1627041077,'N','N','N','N','N',NULL),

('leave/employee-record/get-employee-name',2,'leave/employee-record/get-employee-name',NULL,'',NULL,'leave',1580203748,1627041195,'N','N','N','N','N',NULL),

('leave/employee-record/get-leave-days',2,'leave/employee-record/get-leave-days',NULL,'',NULL,'leave',1580204105,1627041229,'N','N','N','N','N',NULL),

('leave/employee-record/get-leaves',2,'leave/employee-record/get-leaves',NULL,'',NULL,'leave',1580204084,1627041245,'N','N','N','N','N',NULL),

('leave/employee-record/index',2,'leave/employee-record/index',NULL,'',NULL,'leave',1580203521,1627041256,'N','N','N','N','N',NULL),

('leave/employee-record/update',2,'leave/employee-record/update',NULL,'',NULL,'leave',1580203709,1627041268,'N','N','N','N','Y',NULL),

('leave/employee-record/view',2,'leave/employee-record/view',NULL,'',NULL,'leave',1583399983,1627041605,'N','N','N','N','N',NULL),

('leave/holidays/add-holiday',2,'leave/holidays/add-holiday',NULL,'',NULL,'leave',1580199357,1627041614,'N','N','N','N','N',NULL),

('leave/holidays/add-vacation',2,'leave/holidays/add-vacation',NULL,'',NULL,'leave',1580199371,1627041622,'N','N','N','N','N',NULL),

('leave/holidays/add-week-off',2,'leave/holidays/add-week-off',NULL,'',NULL,'leave',1580199340,1627041649,'N','N','N','N','N',NULL),

('leave/holidays/index',2,'leave/holidays/index',NULL,NULL,NULL,NULL,1580199204,1580199204,'N','N','N','N','N',NULL),

('leave/holidays/update-ajax',2,'leave/holidays/update-ajax',NULL,'',NULL,'leave',1580908427,1627092639,'N','N','N','N','Y',NULL),

('leave/import/import-leaves',2,'leave/import/import-leaves','','N',0,'leave',1595660058,1627092652,'N','N','N','N','N',NULL),

('leave/import/process-and-import-data',2,'leave/import/process-and-import-data','','N',0,'leave',1595660273,1627092665,'N','N','N','N','N',NULL),

('leave/leave-account/assign-count',2,'leave/leave-account/assign-count',NULL,NULL,NULL,NULL,1580216576,1580216576,'N','N','N','N','N',NULL),

('leave/leave-account/assign-count-multiple',2,'leave/leave-account/assign-count-multiple',NULL,'',NULL,'leave',1580278148,1627092687,'N','N','N','N','N',NULL),

('leave/leave-account/get-models',2,'leave/leave-account/get-models',NULL,NULL,NULL,NULL,1580204536,1580204536,'N','N','N','N','N',NULL),

('leave/leave-account/get-remaining-leaves',2,'leave/leave-account/get-remaining-leaves',NULL,'',NULL,'leave',1580207484,1627092710,'N','N','N','N','N',NULL),

('leave/leave-account/index',2,'leave/leave-account/index',NULL,'',NULL,'leave',1580199103,1627092724,'N','N','N','N','N',NULL),

('leave/leave-account/select-employee',2,'leave/leave-account/select-employee',NULL,'',NULL,'leave',1580203796,1627092737,'N','N','N','N','N',NULL),

('leave/leave-account/view',2,'leave/leave-account/view',NULL,NULL,NULL,NULL,1580216664,1580216664,'N','N','N','N','N',NULL),

('leave/leave-account/view-multi-employees',2,'leave/leave-account/view-multi-employees',NULL,'',NULL,'leave',1580284850,1627092808,'N','N','N','N','N',NULL),

('leave/leave-ledger/index',2,'leave/leave-ledger/index',NULL,'',NULL,'leave',1580199130,1627092819,'N','N','N','N','N',NULL),

('leave/leave-ltc-travel/index',2,'Leave LTC Travel Access',NULL,'s:0:\"\";',NULL,'leave',1622539548,1622539548,'Y','N','Y','Y','N',NULL),

('leave/leave-ltc/index',2,'leave/leave-ltc/index',NULL,'s:0:\"\";',NULL,'leave',1622112382,1622112382,'N','N','N','N','N',NULL),

('leave/leave-rule-special/create',2,'leave/leave-rule-special/create','','N',0,'leave',1596622692,1627092846,'N','N','N','N','N',NULL),

('leave/leave-rule-special/index',2,'leave/leave-rule-special/index','','N',0,'leave',1596622684,1627092878,'N','N','N','N','N',NULL),

('leave/leave-rule-special/update',2,'leave/leave-rule-special/update','','N',0,'leave',1596622712,1627092893,'N','N','N','N','Y',NULL),

('leave/leave-rule-special/view',2,'leave/leave-rule-special/view','','N',0,'leave',1596622700,1627092906,'N','N','N','N','N',NULL),

('leave/leave-type/activity',2,'leave/leave-type/activity',NULL,'',NULL,'leave',1620643770,1627092922,'N','N','N','N','N',NULL),

('leave/leave-type/add-leaves',2,'leave/leave-type/add-leaves','','N',0,'leave',1595500230,1627092953,'N','N','N','N','N',NULL),

('leave/leave-type/add-leaves-doj',2,'leave/leave-type/add-leaves-doj',NULL,'',NULL,'leave',NULL,1627092965,'N','N','N','N','N',NULL),

('leave/leave-type/create',2,'leave/leave-type/create',NULL,'',NULL,'leave',1580198395,1627092992,'N','N','N','N','N',NULL),

('leave/leave-type/index',2,'leave/leave-type/index',NULL,'',NULL,'leave',1580198663,1627093006,'N','N','N','N','N',NULL),

('leave/leave-type/update',2,'leave/leave-type/update',NULL,'',NULL,'leave',1580198677,1627093026,'N','N','N','N','Y',NULL),

('leave/leave-type/view',2,'leave/leave-type/view',NULL,'',NULL,'leave',1580203643,1627093038,'N','N','N','N','N',NULL),

('leave/ltc-requests/approve',2,'leave/ltc-requests/approve','','N',0,'leave',1596382067,1627093053,'N','N','N','N','N',NULL),

('leave/ltc-requests/create',2,'leave/ltc-requests/create',NULL,'N',0,'leave',1596382060,1627093067,'N','N','N','N','N',NULL),

('leave/ltc-requests/index',2,'leave/ltc-requests/index','','N',0,'leave',1596382044,1627093083,'N','N','N','N','N',NULL),

('leave/ltc-requests/view',2,'leave/ltc-requests/view','','N',0,'leave',1596382050,1627093110,'N','N','N','N','N',NULL),

('leave/mail-template/create',2,'leave/mail-template/create',NULL,'',NULL,'leave',1597668303,1627093126,'N','N','N','N','N',NULL),

('leave/mail-template/get-variables',2,'leave/mail-template/get-variables',NULL,'',NULL,'leave',1597668311,1627093212,'N','N','N','N','N',NULL),

('leave/mail-template/index',2,'leave/mail-template/index',NULL,'',NULL,'leave',1597668296,1627093277,'N','N','N','N','N',NULL),

('leave/mail-template/update',2,'leave/mail-template/update',NULL,'',NULL,'leave',1597668288,1627093571,'N','N','N','N','Y',NULL),

('leave/mail-template/view',2,'leave/mail-template/view',NULL,NULL,NULL,NULL,1597668279,1597668279,'N','N','N','N','N',NULL),

('leave/overtime-requests/approve',2,'leave/overtime-requests/approve','','N',0,'leave',1596016729,1627093589,'N','N','N','N','N',NULL),

('leave/overtime-requests/create',2,'leave/overtime-requests/create','','N',0,'leave',1596382029,1627093616,'N','N','N','N','N',NULL),

('leave/overtime-requests/get-calculated-days',2,'leave/overtime-requests/get-calculated-days','','N',0,'leave',1596382038,1627093629,'N','N','N','N','N',NULL),

('leave/overtime-requests/index',2,'leave/overtime-requests/index','','N',0,'leave',1596382005,1627093682,'N','N','N','N','N',NULL),

('leave/overtime-requests/view',2,'leave/overtime-requests/view','','N',0,'leave',1596382013,1627093696,'N','N','N','N','N',NULL),

('leave/stationleave/create',2,'leave/stationleave/create',NULL,'s:0:\"\";',NULL,'leave',1626678194,1626678194,'N','N','N','Y','N',NULL),

('leave/stationleave/index',2,'leave/stationleave/index',NULL,'',NULL,'leave',1620820779,1626678119,'N','N','N','Y','N',NULL),

('leave/stationleave/submit',2,'leave/stationleave/submit',NULL,'s:0:\"\";',NULL,'leave',1626678567,1626678567,'Y','N','Y','Y','N',NULL),

('leave/stationleave/update',2,'leave/stationleave/update',NULL,'s:0:\"\";',NULL,'leave',1626678448,1627093751,'N','N','N','N','Y',NULL),

('leave/stationleave/view',2,'leave/stationleave/view',NULL,'s:0:\"\";',NULL,'leave',1626678357,1627093783,'N','N','N','N','N',NULL),

('legal_admin',1,'This role is to be provided to the person from the University who handles the legal cases registered in the University.','','',NULL,NULL,NULL,1572263093,'N','N','N','N','N',NULL),

('legal_admin_view',1,'View-only rights for Legal module','','',NULL,NULL,1571469799,1571470756,'N','N','N','N','N',NULL),

('legal_data_entry_operator',1,'This role is to be provided to the person from the University who inserts the legal details under the supervision of Legal Admin.','','',NULL,NULL,NULL,1572263107,'N','N','N','N','N',NULL),

('legal/case-hearing-details/index',2,'legal/case-hearing-details/index',NULL,NULL,NULL,NULL,1562997742,1562997742,'N','N','N','N','N',NULL),

('legal/case-hearing-details/next-week-hearing',2,'legal/case-hearing-details/next-week-hearing',NULL,NULL,NULL,NULL,1562997621,1562997621,'N','N','N','N','N',NULL),

('legal/case-hearing-details/this-week-hearing',2,'legal/case-hearing-details/this-week-hearing',NULL,NULL,NULL,NULL,1562997605,1562997605,'N','N','N','N','N',NULL),

('legal/case-hearing-details/update',2,'legal/case-hearing-details/update',NULL,NULL,NULL,NULL,1562997785,1562997785,'N','N','N','N','N',NULL),

('legal/case-status/create',2,'legal/case-status/create',NULL,NULL,NULL,NULL,1562997988,1562997988,'N','N','N','N','N',NULL),

('legal/case-status/delete',2,'legal/case-status/delete',NULL,NULL,NULL,NULL,1562998023,1562998023,'N','N','N','N','N',NULL),

('legal/case-status/index',2,'legal/case-status/index',NULL,NULL,NULL,NULL,1562997974,1562997974,'N','N','N','N','N',NULL),

('legal/case-status/update',2,'legal/case-status/update',NULL,NULL,NULL,NULL,1562998013,1562998013,'N','N','N','N','N',NULL),

('legal/case-status/view',2,'legal/case-status/view',NULL,NULL,NULL,NULL,1562997999,1562997999,'N','N','N','N','N',NULL),

('legal/case-type/create',2,'legal/case-type/create',NULL,NULL,NULL,NULL,1577784446,1577784446,'N','N','N','N','N',NULL),

('legal/case-type/delete',2,'legal/case-type/delete',NULL,NULL,NULL,NULL,1577784485,1577784485,'N','N','N','N','N',NULL),

('legal/case-type/index',2,'legal/case-type/index',NULL,NULL,NULL,NULL,1577784462,1577784462,'N','N','N','N','N',NULL),

('legal/case-type/update',2,'legal/case-type/update',NULL,NULL,NULL,NULL,1577784455,1577784455,'N','N','N','N','N',NULL),

('legal/case-type/view',2,'legal/case-type/view',NULL,NULL,NULL,NULL,1577784478,1577784478,'N','N','N','N','N',NULL),

('legal/court/create',2,'legal/court/create',NULL,NULL,NULL,NULL,1562997883,1562997883,'N','N','N','N','N',NULL),

('legal/court/delete',2,'legal/court/delete',NULL,NULL,NULL,NULL,1562997925,1562997925,'N','N','N','N','N',NULL),

('legal/court/index',2,'legal/court/index',NULL,NULL,NULL,NULL,1562997868,1562997868,'N','N','N','N','N',NULL),

('legal/court/update',2,'legal/court/update',NULL,NULL,NULL,NULL,1562997905,1562997905,'N','N','N','N','N',NULL),

('legal/court/view',2,'legal/court/view',NULL,NULL,NULL,NULL,1562997894,1562997894,'N','N','N','N','N',NULL),

('legal/default/index',2,'legal/default/index',NULL,NULL,NULL,NULL,1562997254,1562997254,'N','N','N','N','N',NULL),

('legal/default/settings',2,'legal/default/settings',NULL,NULL,NULL,NULL,1562997833,1562997833,'N','N','N','N','N',NULL),

('legal/lcms-case/against-cases',2,'legal/lcms-case/against-cases',NULL,NULL,NULL,NULL,1562997652,1562997652,'N','N','N','N','N',NULL),

('legal/lcms-case/create',2,'legal/lcms-case/create','','',NULL,NULL,NULL,1562997394,'N','N','N','N','N',NULL),

('legal/lcms-case/delete',2,'legal/lcms-case/delete','','',NULL,NULL,NULL,1562997416,'N','N','N','N','N',NULL),

('legal/lcms-case/hc-cases',2,'legal/lcms-case/hc-cases',NULL,NULL,NULL,NULL,1562997687,1562997687,'N','N','N','N','N',NULL),

('legal/lcms-case/in-favour-cases',2,'legal/lcms-case/in-favour-cases',NULL,NULL,NULL,NULL,1562997638,1562997638,'N','N','N','N','N',NULL),

('legal/lcms-case/index',2,'legal/lcms-case/index','','',NULL,NULL,NULL,1562997430,'N','N','N','N','N',NULL),

('legal/lcms-case/print',2,'Case Details Print',NULL,NULL,NULL,NULL,1580985852,1580985852,'N','N','N','N','N',NULL),

('legal/lcms-case/sc-cases',2,'legal/lcms-case/sc-cases',NULL,NULL,NULL,NULL,1562997672,1562997672,'N','N','N','N','N',NULL),

('legal/lcms-case/update',2,'legal/lcms-case/update','','',NULL,NULL,NULL,1562997462,'N','N','N','N','N',NULL),

('legal/lcms-case/view',2,'legal/lcms-case/view','','',NULL,NULL,NULL,1562997477,'N','N','N','N','N',NULL),

('legal/lcms-uploads/create',2,'legal/lcms-uploads/create',NULL,NULL,NULL,NULL,1581241874,1581241874,'N','N','N','N','N',NULL),

('legal/lcms-uploads/delete',2,'legal/lcms-uploads/delete',NULL,NULL,NULL,NULL,1581241881,1581241881,'N','N','N','N','N',NULL),

('ltc_approve_admin',1,'ltc_approve_admin',NULL,NULL,NULL,NULL,1597646730,1597646730,'N','N','N','N','N',NULL),

('ltc_leave_approve_admin',1,'ltc_approve_admin','','',NULL,NULL,1597646730,1610614504,'N','N','N','N','N',NULL),

('master/core-ou-structure',2,'master/core-ou-structure',NULL,NULL,NULL,NULL,1563798911,1563798911,'N','N','N','N','N',NULL),

('master/designation/create',2,'master/designation/create',NULL,NULL,NULL,NULL,1600854293,1600854293,'N','N','N','N','N',NULL),

('master/designation/delete',2,'master/designation/delete',NULL,NULL,NULL,NULL,1600860272,1600860272,'N','N','N','N','N',NULL),

('master/designation/index',2,'master/designation/index',NULL,NULL,NULL,NULL,1600854232,1600854232,'N','N','N','N','N',NULL),

('master/designation/update',2,'master/designation/update',NULL,NULL,NULL,NULL,1600854317,1600854317,'N','N','N','N','N',NULL),

('master/designation/view',2,'master/designation/view',NULL,NULL,NULL,NULL,1600854332,1600854332,'N','N','N','N','N',NULL),

('master/email-templates/create',2,'master/email-templates/create',NULL,NULL,NULL,NULL,1609408297,1609408297,'N','N','N','N','N',NULL),

('master/institutions/create',2,'master/institutions/create',NULL,NULL,NULL,NULL,1600876976,1600876976,'N','N','N','N','N',NULL),

('master/institutions/index',2,'master/institutions/index',NULL,NULL,NULL,NULL,1600876950,1600876950,'N','N','N','N','N',NULL),

('master/institutions/update',2,'master/institutions/update',NULL,NULL,NULL,NULL,1563809620,1563809620,'N','N','N','N','N',NULL),

('master/institutions/view',2,'master/institutions/view',NULL,NULL,NULL,NULL,1574774923,1574774923,'N','N','N','N','N',NULL),

('master/master/audience/create',2,'Permission to create the stake holders','','',NULL,NULL,1567223981,1567231369,'N','N','N','N','N',NULL),

('master/master/audience/delete',2,'Permission to delete the stake holder','','',NULL,NULL,1567224016,1567231389,'N','N','N','N','N',NULL),

('master/master/audience/index',2,'Permission to add list the stakeholders','','',NULL,NULL,1567223813,1567231380,'N','N','N','N','N',NULL),

('master/master/audience/update',2,'Permission to update the stake holder','','',NULL,NULL,1567223999,1567231394,'N','N','N','N','N',NULL),

('master/master/payment-gateway/create',2,'Permission to create the new Payment gateway','','',NULL,NULL,1567224070,1567231277,'N','N','N','N','N',NULL),

('master/master/payment-gateway/delete',2,'Permission to delete the gateway','','',NULL,NULL,1567224113,1567231273,'N','N','N','N','N',NULL),

('master/master/payment-gateway/index',2,'Permission to view all Payment Gateways.','','',NULL,NULL,1567224047,1567231252,'N','N','N','N','N',NULL),

('master/master/payment-gateway/update',2,'Permission to update the gateway','','',NULL,NULL,1567224089,1567231269,'N','N','N','N','N',NULL),

('master/modules/index-module',2,'master/modules/index-module',NULL,'s:0:\"\";',NULL,'user',1621854235,1621854235,'N','N','N','N','N',NULL),

('master/organigram/copy',2,'master/organigram/copy',NULL,NULL,NULL,NULL,1600860272,1600860272,'N','N','N','N','N',NULL),

('master/organigram/create',2,'master/organigram/create',NULL,NULL,NULL,NULL,1564718670,1564718670,'N','N','N','N','N',NULL),

('master/organigram/delete',2,'master/organigram/delete',NULL,NULL,NULL,NULL,1564719564,1564719564,'N','N','N','N','N',NULL),

('master/organigram/index',2,'master/organigram/index',NULL,NULL,NULL,NULL,1564719535,1564719535,'N','N','N','N','N',NULL),

('master/organigram/list-parent-designations',2,'master/organigram/list-parent-designations',NULL,NULL,NULL,NULL,1600854414,1600854414,'N','N','N','N','N',NULL),

('master/organigram/tree',2,'master/organigram/tree',NULL,NULL,NULL,NULL,1600860272,1600860272,'N','N','N','N','N',NULL),

('master/organigram/update',2,'master/organigram/update',NULL,NULL,NULL,NULL,1564719197,1564719197,'N','N','N','N','N',NULL),

('master/organigram/view',2,'master/organigram/view',NULL,NULL,NULL,NULL,1564719179,1564719179,'N','N','N','N','N',NULL),

('master/organizational-unit-type',2,'master/organizational-unit-type',NULL,NULL,NULL,NULL,1563798794,1563798794,'N','N','N','N','N',NULL),

('master/organizational-unit-type/create',2,'master/organizational-unit-type/create',NULL,NULL,NULL,NULL,1600860272,1600860272,'N','N','N','N','N',NULL),

('master/organizational-unit-type/delete',2,'master/organizational-unit-type/delete',NULL,NULL,NULL,NULL,1600860272,1600860272,'N','N','N','N','N',NULL),

('master/organizational-unit-type/index',2,'master/organizational-unit-type','','',NULL,NULL,1563798794,1602056500,'N','N','N','N','N',NULL),

('master/organizational-unit-type/update',2,'master/organizational-unit-type/update',NULL,NULL,NULL,NULL,1600860272,1600860272,'N','N','N','N','N',NULL),

('master/organizational-unit-type/view',2,'master/organizational-unit-type/view',NULL,NULL,NULL,NULL,1600860272,1600860272,'N','N','N','N','N',NULL),

('master/organizational-unit/create',2,'master/organizational-unit/create',NULL,NULL,NULL,NULL,1563809780,1563809780,'N','N','N','N','N',NULL),

('master/organizational-unit/delete',2,'master/organizational-unit/delete',NULL,NULL,NULL,NULL,1600860272,1600860272,'N','N','N','N','N',NULL),

('master/organizational-unit/get-all-ou',2,'master/organizational-unit/get-all-ou',NULL,NULL,NULL,NULL,1600860272,1600860272,'N','N','N','N','N',NULL),

('master/organizational-unit/get-different-ous',2,'master/organizational-unit/get-different-ous',NULL,NULL,NULL,NULL,1600860272,1600860272,'N','N','N','N','N',NULL),

('master/organizational-unit/get-district',2,'master/organizational-unit/get-district',NULL,NULL,NULL,NULL,1600860272,1600860272,'N','N','N','N','N',NULL),

('master/organizational-unit/get-ous',2,'master/organizational-unit/get-ous',NULL,NULL,NULL,NULL,1600860272,1600860272,'N','N','N','N','N',NULL),

('master/organizational-unit/index',2,'master/organizational-unit/index',NULL,NULL,NULL,NULL,1563809683,1563809683,'N','N','N','N','N',NULL),

('master/organizational-unit/update',2,'master/organizational-unit/update',NULL,NULL,NULL,NULL,1563809750,1563809750,'N','N','N','N','N',NULL),

('master/organizational-unit/view',2,'master/organizational-unit/view',NULL,NULL,NULL,NULL,1563809733,1563809733,'N','N','N','N','N',NULL),

('master/organizational-unit/view-all',2,'master/organizational-unit/view-all',NULL,NULL,NULL,NULL,1600860272,1600860272,'N','N','N','N','N',NULL),

('mghavdl2021january/visualization/export',2,'mghavdl2021january/visualization/export','','',NULL,'admission',1618993128,1627010172,'N','N','N','N','N',NULL),

('model/menu',2,'To Push Navigation Menu Item','','',NULL,NULL,1579256687,1579256732,'N','N','N','N','N',NULL),

('model/menu_admin',2,'To Push Navigation Menu Item',NULL,NULL,NULL,NULL,1579256776,1579256776,'N','N','N','N','N',NULL),

('model/menu_emp',2,'To Push Navigation Menu Item if user is Employee',NULL,NULL,NULL,NULL,1579256905,1579256905,'N','N','N','N','N',NULL),

('model/menu_employee_admin',2,'Show the Menu to the Employee Admin Role.',NULL,NULL,NULL,NULL,1610356793,1610356793,'N','N','N','N','N',NULL),

('model/menu_par',2,'To Push Navigation Menu item if user is Payroll Asst. Registrar',NULL,NULL,NULL,NULL,1579256989,1579256989,'N','N','N','N','N',NULL),

('model/menu_pcm',2,'To Push Navigation Menu Item if user is Payroll Change Manager',NULL,NULL,NULL,NULL,1579256847,1579256847,'N','N','N','N','N',NULL),

('model/menu_pda',2,'To Push Navigation Menu Item if user is Payroll Dealing Asst.',NULL,NULL,NULL,NULL,1579256816,1579256816,'N','N','N','N','N',NULL),

('model/menu_pvo',2,'To Push Navigation Menu Item if user is Payroll Verification Officer',NULL,NULL,NULL,NULL,1579256947,1579256947,'N','N','N','N','N',NULL),

('nonteaching_recruitment_admin',1,'Admin for Non-Teaching Recruitments',NULL,NULL,NULL,NULL,1569651973,1569651973,'N','N','N','N','N',NULL),

('nonteaching_recruitment_screening',1,'nonteaching_recruitment_screening',NULL,NULL,NULL,NULL,1570260724,1570260724,'N','N','N','N','N',NULL),

('ocm_admin',1,'OCM Admin',NULL,NULL,NULL,NULL,1580224611,1580224611,'N','N','N','N','N',NULL),

('ocm_department',1,'Department Role for BUDGET','','',NULL,NULL,1582173866,1582178152,'N','N','N','N','N',NULL),

('ocm/admin/department-index',2,'To view Dashboard of the Department',NULL,'',NULL,'ocm',1582275237,1625476667,'N','N','N','N','N',NULL),

('ocm/admin/index',2,'OCM Admin Index',NULL,'',NULL,'ocm',1580224584,1624685630,'N','N','N','N','N',NULL),

('ocm/admin/manage',2,'OCM Settings',NULL,'',NULL,'ocm',1580225650,1624686012,'N','N','N','Y','N',NULL),

('ocm/budget-advance/approved',2,'To Approve Budget Advances of Budget Module',NULL,NULL,NULL,NULL,1582268578,1582268578,'N','N','N','N','N',NULL),

('ocm/budget-estimate/add-estimate',2,'To add Estimate of the Budget',NULL,'',NULL,'ocm',1582174000,1624687236,'N','N','N','N','N',NULL),

('ocm/budget-estimate/add-estimate_admin',2,'Admin To add estimate for Any Department',NULL,'',NULL,'ocm',1582174059,1624688171,'N','N','N','Y','N',NULL),

('ocm/budget-estimate/add-estimate_department',2,'Department to add Budget Estimate for Itself','','',NULL,'ocm',1582174087,1624688157,'N','N','N','Y','N',NULL),

('ocm/budget-transfer/approved',2,'To Approve Budget Transfer (Only for Administrator)',NULL,'',NULL,'ocm',1582266303,1624688109,'N','N','Y','N','N',NULL),

('ocm/expenditure/approved',2,'To approve expenditure of the Budget Module',NULL,'',NULL,'ocm',1582269410,1624688090,'N','N','Y','N','N',NULL),

('odl_admission_admin',1,'Distance learning admin',NULL,NULL,NULL,NULL,1608275050,1608275050,'N','N','N','N','N',NULL),

('ou_admin',1,'ou_admin',NULL,NULL,NULL,NULL,1600859871,1600859871,'N','N','N','N','N',NULL),

('ou_placement_coordinator',1,'ou_placement_coordinator','','',NULL,NULL,1599715574,1599733312,'N','N','N','N','N',NULL),

('papersetter/examination-paper-examiner/program-index',2,'papersetter/examination-paper-examiner/program-index',NULL,NULL,NULL,NULL,1610311186,1610311186,'N','N','N','N','N',NULL),

('papersetter/examination-paper-setter/program-index',2,'papersetter/examination-paper-setter/program-index',NULL,NULL,NULL,NULL,1610311172,1610311172,'N','N','N','N','N',NULL),

('parking_admin',1,'Admin to allot parking space ','','',NULL,NULL,1584352153,1603106846,'N','N','N','N','N',NULL),

('payroll_admin',1,'Payroll Admin','','',NULL,NULL,1571218579,1603107078,'N','N','N','N','N',NULL),

('payroll_ar_salary',1,'Assistant Registrar to Approve Salaries of the employees',NULL,NULL,NULL,NULL,1577172252,1577172252,'N','N','N','N','N',NULL),

('payroll_employee',1,'Payroll Employee','','',NULL,NULL,1571116523,1571119335,'N','N','N','N','N',NULL),

('payroll_pcm',1,'Payroll Change Manager','','',NULL,NULL,1575892861,1575892984,'N','N','N','N','N',NULL),

('payroll_pda',1,'Payroll Dealing Assistant',NULL,NULL,NULL,NULL,1575892957,1575892957,'N','N','N','N','N',NULL),

('payroll_pvo',1,'Payroll Verification Officer',NULL,NULL,NULL,NULL,1577167780,1577167780,'N','N','N','N','N',NULL),

('payroll-activity-logs/index',2,'to View Payroll Activity Log',NULL,NULL,NULL,NULL,1579241216,1579241216,'N','N','N','N','N',NULL),

('payroll-activity-logs/index_admin',2,'Admin to View Activity Logs',NULL,NULL,NULL,NULL,1579243448,1579243448,'N','N','N','N','N',NULL),

('payroll/dashboard/index',2,'View Payroll Dashboard','','',NULL,'payroll',1570772502,1627098303,'N','N','N','N','N',NULL),

('payroll/dashboard/index_admin',2,'Administrator Permission to see Dashboard of the Payroll Module',NULL,'',NULL,'payroll',1579167144,1627098313,'N','N','N','N','N',NULL),

('payroll/dashboard/index_emp',2,'Employee Permission to see Dashboard of Payroll',NULL,'',NULL,'payroll',1579167180,1627098325,'N','N','N','N','N',NULL),

('payroll/dashboard/index_par',2,'Payroll Asst. Registrar to View Payroll Dashboard',NULL,'',NULL,'payroll',1579254511,1627098348,'N','N','N','N','N',NULL),

('payroll/dashboard/index_pcm',2,'Payroll Change Manager',NULL,'',NULL,'payroll',1579167471,1627098359,'N','N','N','N','N',NULL),

('payroll/dashboard/index_pda',2,'Payroll Dealing Assistant to see Dashboard',NULL,'',NULL,'payroll',1579167227,1627098374,'N','N','N','N','N',NULL),

('payroll/dashboard/months',2,'payroll/dashboard/months',NULL,'',NULL,'payroll',1610954475,1627098389,'N','N','N','N','N',NULL),

('payroll/employee-salary-structure/add-salary-structure',2,'To Add Salary Structure of the employee',NULL,'',NULL,'payroll',1579176227,1627098409,'N','N','N','N','N',NULL),

('payroll/employee-salary-structure/add-salary-structure_admin',2,'Admin to add Salary Structure of the employee',NULL,'',NULL,'payroll',1579176263,1627098422,'N','N','N','N','N',NULL),

('payroll/employee-salary-structure/add-salary-structure_pcm',2,'Payroll Change Manager to Add Salary Structure',NULL,'',NULL,'payroll',1579176316,1627098431,'N','N','N','N','N',NULL),

('payroll/employee-salary-structure/ajax-submit',2,'To Submit to New Added Employee Payroll Entry',NULL,'',NULL,'payroll',1579685086,1627098585,'N','N','N','N','N',NULL),

('payroll/employee-salary-structure/ajax-update',2,'To update payroll entries',NULL,'',NULL,'payroll',1579685486,1627098442,'N','N','N','N','Y',NULL),

('payroll/employee-salary-structure/create',2,'To Add a New Payroll Entry',NULL,'',NULL,'payroll',1579674282,1627098456,'N','N','N','N','N',NULL),

('payroll/employee-salary-structure/index-ajax',2,'To View Salary Structure of the Employee',NULL,'',NULL,'payroll',1579614539,1627098473,'N','N','N','N','N',NULL),

('payroll/employee-salary-structure/index-ajax_admin',2,'Admin to View Payroll Entries of the Employee',NULL,'',NULL,'payroll',1579614574,1627098466,'N','N','N','N','N',NULL),

('payroll/employee-salary-structure/index-ajax_pcm',2,'Payroll Change Manager to see Payroll Entries of the Employee',NULL,'',NULL,'payroll',1579614616,1627098502,'N','N','N','N','N',NULL),

('payroll/employee-salary-structure/update-rule',2,'To Update the Employee Salary Structure Entry',NULL,'',NULL,'payroll',1579684633,1627098515,'N','N','N','N','Y',NULL),

('payroll/employee-salary-structure/update-salary-structure',2,'To Add an Entry from Pay Rule to Employee Salary Structure',NULL,'',NULL,'payroll',1579674543,1627098523,'N','N','N','N','N',NULL),

('payroll/employee-salary-structure/view-history',2,'To View Salary Structure History',NULL,'',NULL,'payroll',1579686793,1627098531,'N','N','N','N','N',NULL),

('payroll/employee-salary-structure/view-salary-structure',2,'To View Salary Structure of the employee','','',NULL,'payroll',1579612939,1627098541,'N','N','N','N','N',NULL),

('payroll/employee-salary-structure/view-salary-structure_admin',2,'Admin to View Salary Structure of the employee','','',NULL,'payroll',1579612956,1627098637,'N','N','N','N','N',NULL),

('payroll/employee-salary-structure/view-salary-structure_pcm',2,'Payroll Change Manager to see Employee Salary Structure','','',NULL,'payroll',1579613016,1627098647,'N','N','N','N','N',NULL),

('payroll/ems-salary-details/payroll-categories',2,'payroll/ems-salary-details/payroll-categories',NULL,'',NULL,'payroll',1613217308,1627098656,'N','N','N','N','N',NULL),

('payroll/ems-salary-details/payroll-index',2,'payroll/ems-salary-details/payroll-index',NULL,'',NULL,'payroll',1613217308,1627098664,'N','N','N','N','N',NULL),

('payroll/ems-salary-details/payroll-structure-index',2,'To View Employee Salary Structure Index',NULL,'',NULL,'payroll',1579611821,1627098682,'N','N','N','N','N',NULL),

('payroll/ems-salary-details/payroll-structure-index_admin',2,'Admin to See Salary Structure Records',NULL,'',NULL,'payroll',1579612684,1627098692,'N','N','N','N','N',NULL),

('payroll/ems-salary-details/payroll-structure-index_pcm',2,'Payroll Change Manager to see Payroll Salary Structure Index',NULL,'',NULL,'payroll',1579611879,1627098713,'N','N','N','N','N',NULL),

('payroll/ems-salary-details/salary-generate-index',2,'To Generate Salaries',NULL,'',NULL,'payroll',1579176354,1627098724,'N','N','N','N','N',NULL),

('payroll/ems-salary-details/salary-generate-index_admin',2,'Admin to generate Salaries',NULL,'',NULL,'payroll',1579176379,1627098741,'N','N','N','N','N',NULL),

('payroll/ems-salary-details/salary-generate-index_pda',2,'Payroll Dealing Assistant to Generate Salaries',NULL,'',NULL,'payroll',1579176403,1627098749,'N','N','N','N','N',NULL),

('payroll/final-salary/index',2,'payroll/final-salary/index',NULL,'',NULL,'payroll',1611918443,1627098769,'N','N','N','N','N',NULL),

('payroll/reports/e-pay-select',2,'e Pay Report',NULL,'',NULL,'payroll',1583929033,1627098781,'N','N','N','N','N',NULL),

('payroll/reports/index',2,'To Generate Reports',NULL,'',NULL,'payroll',1579240119,1627098789,'N','N','N','N','N',NULL),

('payroll/reports/index_admin',2,'Admin to Generate Reports',NULL,'',NULL,'payroll',1579240293,1627098800,'N','N','N','N','N',NULL),

('payroll/reports/index_par',2,'Payroll Assistant Registrar to Generate Reports',NULL,'',NULL,'payroll',1579240467,1627098887,'N','N','N','N','N',NULL),

('payroll/reports/index_pda',2,'Payroll Dealing Assistant to Generate Reports',NULL,'',NULL,'payroll',1579240314,1627098868,'N','N','N','N','N',NULL),

('payroll/reports/index_pso',2,'Payroll Section Officer to generate Reports',NULL,'',NULL,'payroll',1579240352,1627098812,'N','N','N','N','N',NULL),

('payroll/reports/pay-bill-report',2,'Permission to Display the Pay Bill Reports',NULL,'',NULL,'payroll',1613628704,1627098849,'N','N','N','N','N',NULL),

('payroll/reports/pf-report-categorize',2,'PF Report',NULL,'',NULL,'payroll',1583751788,1627098822,'N','N','N','N','N',NULL),

('payroll/reports/slip-pdf',2,'payroll/reports/slip-pdf',NULL,'',NULL,'payroll',1583933443,1627098830,'N','N','N','N','N',NULL),

('payroll/salary-config/get-grade-pays',2,'To Get Grade Pays based on Pay Bands',NULL,'',NULL,'payroll',1579856209,1627098975,'N','N','N','N','N',NULL),

('payroll/salary-config/get-levels',2,'To get levels based on payband',NULL,'',NULL,'payroll',1579856117,1627100187,'N','N','N','N','N',NULL),

('payroll/salary-config/previous-salary-details',2,'TO View previous salary information',NULL,'',NULL,'payroll',1579930292,1627100209,'N','N','N','N','N',NULL),

('payroll/salary-config/update-salary-details',2,'to update Salary Details',NULL,'',NULL,'payroll',1579176085,1627100224,'N','N','N','N','N',NULL),

('payroll/salary-config/update-salary-details_admin',2,'Admin to Update Salary Details',NULL,'',NULL,'payroll',1579176115,1627100253,'N','N','N','N','N',NULL),

('payroll/salary-config/update-salary-details_pcm',2,'Payroll Change Manager to update Salary Details of the Employee',NULL,'',NULL,'payroll',1579176161,1627100273,'N','N','N','N','N',NULL),

('payroll/salary-config/view-salary-details',2,'View Salary and Banking Details',NULL,'',NULL,'payroll',1571117477,1627100294,'N','N','N','N','N',NULL),

('payroll/salary-config/view-salary-details_admin',2,'Admin to view employee salary details\r\n',NULL,'',NULL,'payroll',1579176001,1627100303,'N','N','N','N','N',NULL),

('payroll/salary-config/view-salary-details_pcm',2,'Payroll Change Manager to see View Salary Details\r\n',NULL,'',NULL,'payroll',1579176051,1627100315,'N','N','N','N','N',NULL),

('payroll/salary-process/approval_admin',2,'Admin to Approve Salary',NULL,'',NULL,'payroll',1579239867,1627100326,'N','N','N','N','N',NULL),

('payroll/salary-process/approval_par',2,'Payroll Assistant Registrar to Approve Salaries',NULL,'',NULL,'payroll',1579239921,1627100358,'N','N','N','N','N',NULL),

('payroll/salary-process/approve-salary',2,'To Approve Salary',NULL,'',NULL,'payroll',1579239841,1627100371,'N','N','N','N','N',NULL),

('payroll/salary-process/bulk-update',2,'To Bulk Update the salary',NULL,'',NULL,'payroll',1579176544,1627101201,'N','N','N','N','Y',NULL),

('payroll/salary-process/bulk-update_admin',2,'Admin to Bulk update Salary','','',NULL,'payroll',1579177195,1627101209,'N','N','N','N','N',NULL),

('payroll/salary-process/bulk-update_pda',2,'Payroll Dealing Assistant to Bulk Update Salary',NULL,'',NULL,'payroll',1579177238,1627101303,'N','N','N','N','Y',NULL),

('payroll/salary-process/finalize-salary_admin',2,'Admin to Finalize Salary',NULL,'',NULL,'payroll',1579239756,1627101317,'N','N','N','N','N',NULL),

('payroll/salary-process/finalize-salary_pso',2,'Payroll Section Officer to Finalize Salary',NULL,'',NULL,'payroll',1579239803,1627101333,'N','N','N','N','N',NULL),

('payroll/salary-process/index',2,'To Verifiy Salary',NULL,'',NULL,'payroll',1577170159,1627101348,'N','N','N','N','N',NULL),

('payroll/salary-process/index_admin',2,'Admin to Process Salary',NULL,'',NULL,'payroll',1579177323,1627101360,'N','N','N','N','N',NULL),

('payroll/salary-process/index_pso',2,'Payroll Verifying Officer to process salary',NULL,'',NULL,'payroll',1579177491,1627101370,'N','N','N','N','N',NULL),

('payroll/salary-process/show-generated-salary',2,'To view generated salary',NULL,'',NULL,'payroll',1579176431,1627101452,'N','N','N','N','N',NULL),

('payroll/salary-process/show-generated-salary_admin',2,'Admin to View Generated Salary',NULL,'',NULL,'payroll',1579176464,1627101460,'N','N','N','N','N',NULL),

('payroll/salary-process/show-generated-salary_pda',2,'Payroll Dealing Assistant to view generated salary',NULL,'',NULL,'payroll',1579176502,1627101470,'N','N','N','N','N',NULL),

('payroll/salary-process/verify-salary',2,'To verify Salary',NULL,'',NULL,'payroll',1579177394,1627101478,'N','N','N','N','N',NULL),

('payroll/salary-process/verify-salary_admin',2,'Admin to Verify Salary',NULL,'',NULL,'payroll',1579177345,1627101490,'N','N','N','N','N',NULL),

('payroll/salary-process/verify-salary_pso',2,'Payroll Verifying Officer to Verify Salary',NULL,'',NULL,'payroll',1579177651,1627101499,'N','N','N','N','N',NULL),

('payroll/settings/index',2,'Payroll Settings Index',NULL,'',NULL,'payroll',1568640773,1627101506,'N','N','N','N','N',NULL),

('payroll/settings/index_admin',2,'Admin to View Payroll Master Settings',NULL,'',NULL,'payroll',1579241084,1627101521,'N','N','N','N','N',NULL),

('payroll/settings/index_pcm',2,'Payroll Change Manager to View Masters',NULL,'',NULL,'payroll',1579241151,1627101532,'N','N','N','N','N',NULL),

('payroll/settings/index_pda',2,'Payroll Dealing Assistant to View Masters',NULL,'',NULL,'payroll',1579241172,1627101545,'N','N','N','N','N',NULL),

('payroll/tax-deposit/index',2,'To View Tax Deposits ','','',NULL,'payroll',1579240516,1627101559,'N','N','N','N','N',NULL),

('payroll/tax-deposit/index_admin',2,'Admin to View Tax Deposits','','',NULL,'payroll',1579240547,1627101567,'N','N','N','N','N',NULL),

('payroll/tax-deposit/index_pda',2,'Payroll Dealing Assistant to View Tax Deposits','','',NULL,'payroll',1579240569,1627101574,'N','N','N','N','N',NULL),

('principal',1,'kind\r\n',NULL,NULL,NULL,NULL,1614847913,1614847913,'N','N','N','N','N',NULL),

('PRINCIPAL_BEC',2,'SUPER ADMIN','hrms_master_designation_create','BEC BGK',NULL,NULL,1607875877,1607875954,'N','N','N','N','N',NULL),

('program_management',1,'Role to create and edit the Program of the university.',NULL,NULL,NULL,NULL,1567576495,1567576495,'N','N','N','N','N',NULL),

('program/adm-programme-qualification-list/create',2,'program/adm-programme-qualification-list/create',NULL,'',NULL,'program',1588918612,1626679522,'N','N','N','N','N',NULL),

('program/adm-programme-qualification-list/delete',2,'program/adm-programme-qualification-list/delete',NULL,'',NULL,'program',1588918612,1626679600,'N','N','N','N','Y',NULL),

('program/adm-programme-qualification-list/index',2,'program/adm-programme-qualification-list/index',NULL,'',NULL,'program',1588918612,1626679794,'N','N','N','N','N',NULL),

('program/adm-programme-qualification-list/update',2,'program/adm-programme-qualification-list/update',NULL,'',NULL,'program',1588918612,1626679835,'N','N','N','N','Y',NULL),

('program/adm-programme-qualification-list/view',2,'program/adm-programme-qualification-list/view',NULL,'',NULL,'program',1588918612,1626679976,'N','N','N','N','N',NULL),

('program/adm-qualification/create',2,'program/adm-qualification/create',NULL,'',NULL,'program',1588918612,1626680192,'N','N','N','N','N',NULL),

('program/adm-qualification/delete',2,'program/adm-qualification/delete',NULL,'',NULL,'program',1588918612,1626680263,'N','N','N','N','Y',NULL),

('program/adm-qualification/index',2,'program/adm-qualification/index',NULL,'',NULL,'program',1588918612,1626680317,'N','N','N','N','N',NULL),

('program/adm-qualification/update',2,'program/adm-qualification/update',NULL,'',NULL,'program',1588918612,1626681586,'N','N','N','N','Y',NULL),

('program/adm-qualification/view',2,'program/adm-qualification/view',NULL,'',NULL,'program',1588918612,1626681726,'N','N','N','N','N',NULL),

('program/adm-type/create',2,'program/adm-type/create',NULL,'',NULL,'program',1588918612,1626681807,'Y','N','N','N','N',NULL),

('program/adm-type/delete',2,'program/adm-type/delete',NULL,'',NULL,'program',1588918612,1626681876,'N','N','N','N','Y',NULL),

('program/adm-type/index',2,'program/adm-type/index',NULL,'',NULL,'program',1588918612,1626681935,'N','N','N','N','N',NULL),

('program/adm-type/update',2,'program/adm-type/update',NULL,'',NULL,'program',1588918612,1626682058,'N','N','N','N','Y',NULL),

('program/adm-type/view',2,'program/adm-type/view',NULL,'',NULL,'program',1588918612,1626696150,'N','N','N','N','N',NULL),

('program/adm-upload-list/create',2,'program/adm-upload-list/create',NULL,'',NULL,'program',1588918612,1626696180,'N','N','N','N','N',NULL),

('program/adm-upload-list/delete',2,'program/adm-upload-list/delete',NULL,'',NULL,'program',1588918612,1626696242,'N','N','N','N','Y',NULL),

('program/adm-upload-list/index',2,'program/adm-upload-list/index',NULL,'',NULL,'program',1588918612,1626696368,'N','N','N','N','N',NULL),

('program/adm-upload-list/update',2,'program/adm-upload-list/update',NULL,'',NULL,'program',1588918612,1626697026,'N','N','N','N','Y',NULL),

('program/adm-upload-list/view',2,'program/adm-upload-list/view',NULL,'',NULL,'program',1588918612,1626697106,'N','N','N','N','N',NULL),

('program/adm/settings',2,'program/adm/settings',NULL,'',NULL,'program',1588918612,1626697792,'N','N','N','Y','N',NULL),

('program/admission-category/create',2,'permission to create admission quota',NULL,'',NULL,'program',1570629040,1626757514,'N','N','N','N','N',NULL),

('program/admission-category/delete',2,'permission to delete admission quota',NULL,'',NULL,'program',1570629091,1626757751,'N','N','N','N','Y',NULL),

('program/admission-category/index',2,'PErmission to the index page of admission quota',NULL,'',NULL,'program',1570628990,1626757850,'N','N','N','N','N',NULL),

('program/admission-category/update',2,'permission to update admission quota',NULL,'',NULL,'program',1570629063,1626757940,'N','N','N','N','Y',NULL),

('program/admission-category/view',2,'Permission to view admission quota',NULL,'',NULL,'program',1570629015,1626758013,'N','N','N','N','N',NULL),

('program/core-programme/',2,'program/core-programme/',NULL,'',NULL,'program',1588918612,1626758055,'N','N','N','N','N',NULL),

('program/core-programme/all-details',2,'program/core-programme/all-details',NULL,'',NULL,'program',1578467362,1626758106,'N','N','N','N','N',NULL),

('program/core-programme/api-search',2,'program/core-programme/api-search',NULL,'',NULL,'program',NULL,1626758181,'N','N','N','N','N',NULL),

('program/core-programme/batch',2,'program/core-programme/batch',NULL,'',NULL,'program',1588918612,1626758394,'N','N','N','N','N',NULL),

('program/core-programme/card-view',2,'program/core-programme/card-view',NULL,'',NULL,'program',1588918612,1626758863,'N','N','N','N','N',NULL),

('program/core-programme/create',2,'Permission to Create on core programme',NULL,'',NULL,'program',1570623778,1626759095,'N','N','N','N','N',NULL),

('program/core-programme/create-permission',2,'program/core-programme/create-permission',NULL,'',NULL,'program',1588918612,1626759293,'N','N','N','N','N',NULL),

('program/core-programme/delete',2,'permission to delete programms',NULL,'',NULL,'program',1570629352,1626759347,'N','N','N','N','N',NULL),

('program/core-programme/detail-view',2,'program/core-programme/detail-view',NULL,'',NULL,'program',1588918612,1626759438,'N','N','N','N','N',NULL),

('program/core-programme/fee-terms',2,'program/core-programme/fee-terms',NULL,'',NULL,'program',1588918612,1626759493,'N','N','N','N','N',NULL),

('program/core-programme/get-info ',2,'permission for the AJAX call.',NULL,NULL,NULL,NULL,1570692880,1570692880,'N','N','N','N','N',NULL),

('program/core-programme/index',2,'Permission for the index of core-program ',NULL,'',NULL,'program',1570623134,1626760799,'N','N','N','N','N',NULL),

('program/core-programme/master-details',2,'program/core-programme/master-details',NULL,'',NULL,'program',1573453017,1626760863,'N','N','N','N','N',NULL),

('program/core-programme/master-fees',2,'program/core-programme/master-fees',NULL,'',NULL,'program',1588918612,1626761004,'N','N','N','N','N',NULL),

('program/core-programme/master-qualification',2,'program/core-programme/master-qualification',NULL,'',NULL,'program',1588918612,1626762843,'N','N','N','N','N',NULL),

('program/core-programme/master-structure',2,'program/core-programme/master-structure',NULL,'',NULL,'program',1588918612,1626762907,'N','N','N','N','N',NULL),

('program/core-programme/master-uploads',2,'program/core-programme/master-uploads',NULL,'',NULL,'program',1588918612,1626762980,'N','N','N','N','N',NULL),

('program/core-programme/prg-adm-index',2,'program/core-programme/prg-adm-index',NULL,'',NULL,'program',1588918612,1626763049,'N','N','N','N','N',NULL),

('program/core-programme/settings',2,'program/core-programme/settings','','',NULL,'program',1572351470,1626763266,'N','N','N','N','N',NULL),

('program/core-programme/structure',2,'program/core-programme/structure',NULL,'',NULL,'program',1572081301,1626763814,'N','N','N','N','N',NULL),

('program/core-programme/toggle-status',2,'program/core-programme/toggle-status',NULL,'',NULL,'program',1588918612,1626764127,'N','N','N','N','N',NULL),

('program/core-programme/update',2,'Update permission on Core programme',NULL,'',NULL,'program',1570624277,1626764205,'N','N','N','N','N',NULL),

('program/core-programme/update-ou-enabled',2,'program/core-programme/update-ou-enabled',NULL,'',NULL,'program',1588918612,1626764304,'N','N','N','N','N',NULL),

('program/core-programme/update-programme-detail',2,'program/core-programme/update-programme-detail',NULL,'',NULL,'program',1580714160,1626764984,'N','N','N','N','N',NULL),

('program/core-programme/update-programme-status',2,'program/core-programme/update-programme-status',NULL,'',NULL,'program',1588918612,1626765124,'N','N','N','N','N',NULL),

('program/core-programme/view',2,'View permission on core-programme',NULL,'',NULL,'program',1570623866,1626765337,'N','N','N','N','N',NULL),

('program/core-session/create',2,'program/core-session/create',NULL,'',NULL,'program',1588918612,1626765569,'N','N','N','N','N',NULL),

('program/core-session/delete',2,'program/core-session/delete',NULL,'',NULL,'program',1588918613,1626765813,'N','N','N','N','Y',NULL),

('program/core-session/index',2,'program/core-session/index',NULL,'',NULL,'program',1588918612,1626765861,'N','N','N','N','N',NULL),

('program/core-session/update',2,'program/core-session/update',NULL,'',NULL,'program',1588918613,1626765926,'N','N','N','N','N',NULL),

('program/core-session/view',2,'program/core-session/view',NULL,'',NULL,'program',1588918612,1626765971,'N','N','N','N','N',NULL),

('program/core-time-table-slot/create',2,'program/core-time-table-slot/create',NULL,'',NULL,'program',1588918613,1626766016,'Y','N','N','N','N',NULL),

('program/core-time-table-slot/delete',2,'program/core-time-table-slot/delete',NULL,'',NULL,'program',1588918613,1626766120,'N','N','N','N','Y',NULL),

('program/core-time-table-slot/index',2,'program/core-time-table-slot/index',NULL,'',NULL,'program',1588918613,1626766157,'N','N','N','N','N',NULL),

('program/core-time-table-slot/update',2,'program/core-time-table-slot/update',NULL,'',NULL,'program',1588918613,1626766209,'N','N','N','N','N',NULL),

('program/core-time-table-slot/view',2,'program/core-time-table-slot/view',NULL,'',NULL,'program',1588918613,1626766723,'N','N','N','N','N',NULL),

('program/course/add-old-course',2,'program/course/add-old-course',NULL,'',NULL,'program',NULL,1626766836,'N','N','N','N','N',NULL),

('program/course/ajax-create',2,'program/course/ajax-create',NULL,'',NULL,'program',1588918613,1626767021,'N','N','N','N','N',NULL),

('program/course/api-search',2,'program/course/api-search',NULL,'',NULL,'program',NULL,1626768620,'N','N','N','N','N',NULL),

('program/course/approve',2,'program/course/approve',NULL,'',NULL,'program',1588918613,1626768810,'N','N','N','N','N',NULL),

('program/course/create',2,'program/course/create',NULL,'',NULL,'program',1588918613,1626772664,'N','N','N','N','N',NULL),

('program/course/delete',2,'program/course/delete',NULL,'',NULL,'program',1588918613,1626772720,'N','N','N','N','N',NULL),

('program/course/exam-detail',2,'program/course/exam-detail',NULL,'',NULL,'program',NULL,1626773371,'N','N','N','N','N',NULL),

('program/course/get-category',2,'program/course/get-category',NULL,'',NULL,'program',1588918613,1626773419,'N','N','N','N','N',NULL),

('program/course/get-course',2,'program/course/get-course',NULL,'',NULL,'program',NULL,1626774603,'N','N','N','N','N',NULL),

('program/course/get-program',2,'program/course/get-program',NULL,'',NULL,'program',NULL,1626774746,'N','N','N','N','N',NULL),

('program/course/index',2,'program/course/index',NULL,'',NULL,'program',1588918613,1626774802,'N','N','N','N','N',NULL),

('program/course/programme',2,'program/course/programme',NULL,'',NULL,'program',1588918613,1626774919,'N','N','N','N','N',NULL),

('program/course/remove-old-course',2,'program/course/remove-old-course',NULL,'',NULL,'program',NULL,1626774958,'N','N','N','N','N',NULL),

('program/course/update',2,'program/course/update',NULL,'',NULL,'program',1588918613,1626775238,'N','N','N','N','Y',NULL),

('program/course/view',2,'program/course/view',NULL,'',NULL,'program',1588918613,1626775354,'N','N','N','N','N',NULL),

('program/course/visible-toggle',2,'program/course/visible-toggle',NULL,'',NULL,'program',1588918613,1626775405,'N','N','N','N','N',NULL),

('program/curriculum-setting/index',2,'program/curriculum-setting/index',NULL,'',NULL,'program',1588918613,1626775543,'N','N','N','N','N',NULL),

('program/eca-adm-category/create',2,'program/eca-adm-category/create',NULL,'',NULL,'program',1588918613,1626775585,'N','N','N','N','N',NULL),

('program/eca-adm-category/delete',2,'program/eca-adm-category/delete',NULL,'',NULL,'program',1588918613,1626775639,'N','N','N','N','Y',NULL),

('program/eca-adm-category/index',2,'program/eca-adm-category/index',NULL,'',NULL,'program',1588918613,1626775712,'N','N','N','N','N',NULL),

('program/eca-adm-category/update',2,'program/eca-adm-category/update',NULL,'',NULL,'program',1588918613,1626775740,'N','N','N','N','Y',NULL),

('program/eca-adm-category/view',2,'program/eca-adm-category/view',NULL,'',NULL,'program',1588918613,1626776322,'N','N','N','N','N',NULL),

('program/enrolment-status/create',2,'program/enrolment-status/create',NULL,'',NULL,'program',1570688903,1626776353,'N','N','N','N','N',NULL),

('program/enrolment-status/delete',2,'program/enrolment-status/delete',NULL,'',NULL,'program',1570688938,1626776444,'N','N','N','N','Y',NULL),

('program/enrolment-status/index',2,'program/enrolment-status/index',NULL,'',NULL,'program',1570688889,1626776470,'N','N','N','N','N',NULL),

('program/enrolment-status/update',2,'program/enrolment-status/update',NULL,'',NULL,'program',1570688926,1626777779,'N','N','N','N','Y',NULL),

('program/enrolment-status/view',2,'program/enrolment-status/view',NULL,'',NULL,'program',1570688914,1626778009,'N','N','N','N','N',NULL),

('program/enrolment-type/create',2,'permission to create enrollment-type',NULL,'',NULL,'program',1570629174,1626777560,'N','N','N','N','N',NULL),

('program/enrolment-type/delete ',2,'permission to delete enrollment type',NULL,NULL,NULL,NULL,1570629241,1570629241,'N','N','N','N','N',NULL),

('program/enrolment-type/index',2,'Permission to the index page of the enrollment type',NULL,'',NULL,'program',1570629149,1626779802,'N','N','N','N','N',NULL),

('program/enrolment-type/update',2,'permission to update enrollment type',NULL,'',NULL,'program',1570629215,1626778059,'N','N','N','N','N',NULL),

('program/enrolment-type/view',2,'permission to view enrolment type',NULL,'',NULL,'program',1570629194,1626778162,'N','N','N','N','N',NULL),

('program/evaluation-criteria/create',2,'Permission to add the evaluation criteria',NULL,'',NULL,'program',1567575832,1626778217,'N','N','N','N','N',NULL),

('program/evaluation-criteria/delete',2,'Permission to delete the evaluation criteria',NULL,'',NULL,'program',1567575885,1626779892,'N','N','N','N','Y',NULL),

('program/evaluation-criteria/index',2,'Permission to list all the evaluation criteria',NULL,'',NULL,'program',1567575811,1626778265,'N','N','N','N','N',NULL),

('program/evaluation-criteria/update',2,'Permission to update the evaluation criteria',NULL,'',NULL,'program',1567575866,1626779930,'N','N','N','N','Y',NULL),

('program/evaluation-criteria/view',2,'Permission to view the evaluation criteria',NULL,NULL,NULL,NULL,1567575847,1567575847,'N','N','N','N','N',NULL),

('program/exam-scheme/create',2,'program/exam-scheme/create',NULL,'',NULL,'program',1572073253,1626780100,'N','N','N','N','Y',NULL),

('program/exam-scheme/delete',2,'program/exam-scheme/delete',NULL,'',NULL,'program',1588918613,1626780184,'N','N','N','N','Y',NULL),

('program/exam-scheme/index',2,'program/exam-scheme/index',NULL,'',NULL,'program',1588918613,1626780454,'N','N','N','N','N',NULL),

('program/exam-scheme/update',2,'program/exam-scheme/update',NULL,'',NULL,'program',1588918613,1626781682,'N','N','N','N','N',NULL),

('program/exam-scheme/view',2,'program/exam-scheme/view',NULL,'',NULL,'program',1588918613,1626781713,'N','N','N','N','N',NULL),

('program/import/import-course',2,'program/import/import-course',NULL,'',NULL,'program',1588918613,1626781741,'N','N','N','N','N',NULL),

('program/import/import-course-for-programme',2,'program/import/import-course-for-programme',NULL,NULL,NULL,NULL,1588918613,1588918613,'N','N','N','N','N',NULL),

('program/import/import-programme',2,'program/import/import-programme',NULL,'',NULL,'program',1588918613,1626781779,'N','N','N','N','N',NULL),

('program/import/import-qualification',2,'program/import/import-qualification',NULL,'',NULL,'program',1588918613,1626782150,'N','N','N','N','N',NULL),

('program/import/process-and-import-data',2,'program/import/process-and-import-data',NULL,'',NULL,'program',1588918613,1626782187,'N','N','N','N','N',NULL),

('program/import/process-and-import-data-for-programme',2,'program/import/process-and-import-data-for-programme',NULL,'',NULL,'program',1588918613,1626782214,'N','N','N','N','N',NULL),

('program/import/process-and-import-data-for-qualification',2,'program/import/process-and-import-data-for-qualification',NULL,'',NULL,'program',1588918613,1626782297,'N','N','N','N','N',NULL),

('program/paper-list/ajax-create',2,'program/paper-list/ajax-create',NULL,'',NULL,'program',1588918613,1626782474,'N','N','N','N','N',NULL),

('program/paper-list/approve',2,'program/paper-list/approve',NULL,'',NULL,'program',1588918613,1626782532,'N','N','N','N','N',NULL),

('program/paper-list/create',2,'permission to create course list',NULL,'',NULL,'program',1570629454,1626782558,'N','N','N','N','N',NULL),

('program/paper-list/delete',2,'permission to delete paper list',NULL,'',NULL,'program',1570629513,1626782592,'N','N','N','N','N',NULL),

('program/paper-list/get-category',2,'program/paper-list/get-category',NULL,'',NULL,'program',1588918613,1626782639,'N','N','N','N','N',NULL),

('program/paper-list/index',2,'permission to course list',NULL,'',NULL,'program',1570629431,1626782688,'N','N','N','N','N',NULL),

('program/paper-list/update',2,'permission to update paper list',NULL,'',NULL,'program',1570629493,1626782707,'N','N','N','N','N',NULL),

('program/paper-list/view',2,'permission to view paper list',NULL,'',NULL,'program',1570629470,1626782736,'N','N','N','N','N',NULL),

('program/paper-list/visible-toggle',2,'program/paper-list/visible-toggle',NULL,'',NULL,'program',1588918613,1626782754,'N','N','N','N','N',NULL),

('program/part/create',2,'program/part/create',NULL,'',NULL,'program',1588918613,1626782785,'N','N','N','N','N',NULL),

('program/part/delete',2,'program/part/delete',NULL,'',NULL,'program',1588918613,1626922365,'N','N','N','N','Y',NULL),

('program/part/index',2,'program/part/index',NULL,'',NULL,'program',1588918613,1626782826,'N','N','N','N','N',NULL),

('program/part/update',2,'program/part/update',NULL,'',NULL,'program',1588918613,1626782853,'N','N','N','N','N',NULL),

('program/part/view',2,'program/part/view',NULL,'',NULL,'program',1588918613,1626922480,'N','N','N','N','N',NULL),

('program/prg-adm-category/create',2,'program/prg-adm-category/create',NULL,'',NULL,'program',1588918613,1626922513,'Y','N','N','N','N',NULL),

('program/prg-adm-category/delete',2,'program/prg-adm-category/delete',NULL,'',NULL,'program',1588918613,1626922566,'N','N','N','N','Y',NULL),

('program/prg-adm-category/index',2,'program/prg-adm-category/index',NULL,'',NULL,'program',1588918613,1626922604,'N','N','N','N','N',NULL),

('program/prg-adm-category/update',2,'program/prg-adm-category/update',NULL,'',NULL,'program',1588918613,1626922650,'Y','N','N','N','N',NULL),

('program/prg-adm-category/view',2,'program/prg-adm-category/view',NULL,'',NULL,'program',1588918613,1626922826,'N','N','N','N','N',NULL),

('program/prg-adm-type/create',2,'program/prg-adm-type/create',NULL,'',NULL,'program',1588918613,1626922847,'N','N','N','N','N',NULL),

('program/prg-adm-type/delete',2,'program/prg-adm-type/delete',NULL,'',NULL,'program',1588918613,1626922885,'N','N','N','N','Y',NULL),

('program/prg-adm-type/index',2,'program/prg-adm-type/index',NULL,'',NULL,'program',1588918613,1626922905,'N','N','N','N','N',NULL),

('program/prg-adm-type/update',2,'program/prg-adm-type/update',NULL,'',NULL,'program',1588918613,1626923026,'N','N','N','N','Y',NULL),

('program/prg-adm-type/view',2,'program/prg-adm-type/view',NULL,'',NULL,'program',1588918613,1626923383,'N','N','N','N','N',NULL),

('program/prg-administration/create',2,'program/prg-administration/create',NULL,'',NULL,'program',1588918613,1626923419,'Y','N','N','N','N',NULL),

('program/prg-administration/discard',2,'program/prg-administration/discard',NULL,'',NULL,'program',1588918613,1626923463,'N','N','N','N','N',NULL),

('program/prg-administration/index',2,'program/prg-administration/index',NULL,'',NULL,'program',1588918613,1626923506,'N','N','N','N','N',NULL),

('program/prg-administration/update',2,'program/prg-administration/update',NULL,'',NULL,'program',1588918613,1626923544,'N','N','N','N','Y',NULL),

('program/prg-administration/view',2,'program/prg-administration/view',NULL,'',NULL,'program',1588918613,1626923574,'N','N','N','N','N',NULL),

('program/prg-attendance-group/create',2,'program/prg-attendance-group/create',NULL,'',NULL,'program',1570888234,1626923667,'Y','N','N','N','N',NULL),

('program/prg-attendance-group/delete',2,'program/prg-attendance-group/delete',NULL,'',NULL,'program',1570888319,1626923698,'N','N','N','N','Y',NULL),

('program/prg-attendance-group/index',2,'program/prg-attendance-group/index',NULL,'',NULL,'program',1570888222,1626923732,'N','N','N','N','N',NULL),

('program/prg-attendance-group/update',2,'program/prg-attendance-group/update',NULL,'',NULL,'program',1570888261,1626923763,'N','N','N','N','N',NULL),

('program/prg-attendance-group/view',2,'program/prg-attendance-group/view',NULL,'',NULL,'program',1570888246,1626923796,'N','N','N','N','N',NULL),

('program/prg-batch-ou/ajax-submit',2,'Permission for Ajax request to submit action of batch AU',NULL,'',NULL,'program',1570858276,1626923822,'N','N','N','N','N',NULL),

('program/prg-batch-ou/create',2,'Permission to create Batch OU',NULL,'',NULL,'program',1570624487,1626923849,'N','N','N','N','N',NULL),

('program/prg-batch-ou/create-ajax',2,'Permission for creating Bach Ou using Ajax',NULL,'',NULL,'program',1570856657,1626924161,'N','N','N','N','N',NULL),

('program/prg-batch-ou/delete',2,'program/prg-batch-ou/delete',NULL,'',NULL,'program',1570685055,1626924226,'N','N','N','N','Y',NULL),

('program/prg-batch-ou/get-aou-short-code',2,'program/prg-batch-ou/get-aou-short-code',NULL,'',NULL,'program',1588918613,1626924247,'N','N','N','N','N',NULL),

('program/prg-batch-ou/index',2,'Permission to the Index page of Batch OU',NULL,'',NULL,'program',1570624463,1626924268,'N','N','N','N','N',NULL),

('program/prg-batch-ou/update',2,'Permission to update Batch OU',NULL,'',NULL,'program',1570624526,1626924302,'N','N','N','N','Y',NULL),

('program/prg-batch-ou/view',2,'Permission to view Batch OU',NULL,'',NULL,'program',1570624507,1626928903,'N','N','N','N','N',NULL),

('program/prg-batch/ajax_create',2,'permission for ajax request to create batch',NULL,'',NULL,'program',1570860826,1626928926,'N','N','N','N','N',NULL),

('program/prg-batch/ajax-bulk-create',2,'Ajax request to create a bulk batch',NULL,NULL,NULL,NULL,1571834710,1571834710,'N','N','N','N','N',NULL),

('program/prg-batch/ajax-bulk-submit',2,'program/prg-batch/ajax-bulk-submit',NULL,'',NULL,'program',1571836659,1626928950,'N','N','N','N','N',NULL),

('program/prg-batch/ajax-create',2,'Permission to create batch using ajax request',NULL,'',NULL,'program',1570861082,1626928975,'N','N','N','N','N',NULL),

('program/prg-batch/ajax-submit',2,'Permission for Ajax Submit',NULL,'',NULL,'program',1570797255,1626928998,'N','N','N','N','N',NULL),

('program/prg-batch/create',2,'Permission to create Batch','','',NULL,'program',1570624050,1626929024,'N','N','N','N','N',NULL),

('program/prg-batch/delete',2,'program/prg-batch/delete',NULL,'',NULL,'program',1570684991,1626929052,'N','N','N','N','N',NULL),

('program/prg-batch/get-info',2,'program/prg-batch/get-info',NULL,'',NULL,'program',1588918613,1626929079,'N','N','N','N','N',NULL),

('program/prg-batch/index',2,'Permission to the index page of the batch.','','',NULL,'program',1570624023,1626929150,'N','N','N','N','Y',NULL),

('program/prg-batch/update',2,'Update permission for Batch',NULL,NULL,NULL,NULL,1570624332,1570624332,'N','N','N','N','N',NULL),

('program/prg-batch/view',2,'Permission to view Batch.','','',NULL,'program',1570624073,1626929172,'N','N','N','N','N',NULL),

('program/prg-class/ajax-create',2,'Permission for ajax request to create of class',NULL,'',NULL,'program',1570876474,1626929198,'N','N','N','N','N',NULL),

('program/prg-class/ajax-submit',2,'Permission to submit the form to add class using ajax ',NULL,'',NULL,'program',1570876550,1626929224,'N','N','N','N','N',NULL),

('program/prg-class/create',2,'Permission to create class',NULL,'',NULL,'program',1570624691,1626929356,'Y','N','N','N','N',NULL),

('program/prg-class/delete',2,'program/prg-class/delete',NULL,'',NULL,'program',1570685112,1626929383,'N','N','N','N','N',NULL),

('program/prg-class/index',2,'Permission to the Index page of Class',NULL,'',NULL,'program',1570624657,1626929420,'N','N','N','N','N',NULL),

('program/prg-class/update',2,'permission to update class',NULL,'',NULL,'program',1570624727,1626929459,'N','N','N','N','Y',NULL),

('program/prg-class/view',2,'permission to view class',NULL,'',NULL,'program',1570624709,1626929491,'N','N','N','N','N',NULL),

('program/prg-course-category/create',2,'program/prg-course-category/create',NULL,'',NULL,'program',1570705892,1626929541,'Y','N','N','N','N',NULL),

('program/prg-course-category/delete',2,'program/prg-course-category/delete',NULL,'',NULL,'program',1570705925,1626929674,'N','N','N','N','N',NULL),

('program/prg-course-category/index',2,'program/prg-course-category/index',NULL,'',NULL,'program',1570705883,1626929700,'N','N','N','N','N',NULL),

('program/prg-course-category/update',2,'program/prg-course-category/update',NULL,'',NULL,'program',1570705915,1626929728,'N','N','N','N','N',NULL),

('program/prg-course-category/view',2,'program/prg-course-category/view',NULL,'',NULL,'program',1570705902,1626929918,'N','N','N','N','N',NULL),

('program/prg-course-type/create',2,'program/prg-course-type/create',NULL,'',NULL,'program',1570705767,1626929955,'N','N','N','N','N',NULL),

('program/prg-course-type/delete',2,'program/prg-course-type/delete',NULL,'',NULL,'program',1570705818,1626929993,'N','N','N','N','N',NULL),

('program/prg-course-type/index',2,'program/prg-course-type/index',NULL,'',NULL,'program',1570705750,1626930029,'N','N','N','N','N',NULL),

('program/prg-course-type/update',2,'program/prg-course-type/update',NULL,'',NULL,'program',1570705808,1626930269,'N','N','N','N','N',NULL),

('program/prg-course-type/view',2,'program/prg-course-type/view',NULL,'',NULL,'program',1570705779,1626930303,'N','N','N','N','N',NULL),

('program/prg-course-unit/change-status',2,'program/prg-course-unit/change-status',NULL,'',NULL,'program',NULL,1626930358,'N','N','N','N','N',NULL),

('program/prg-course-unit/create',2,'program/prg-course-unit/create',NULL,'',NULL,'program',NULL,1626930380,'N','N','N','N','N',NULL),

('program/prg-course-unit/index',2,'program/prg-course-unit/index',NULL,'',NULL,'program',NULL,1626930431,'N','N','N','N','N',NULL),

('program/prg-course-unit/index-all',2,'program/prg-course-unit/index-all',NULL,'',NULL,'program',NULL,1626930460,'N','N','N','N','N',NULL),

('program/prg-course-unit/remove',2,'program/prg-course-unit/remove',NULL,'',NULL,'program',NULL,1626930484,'N','N','N','N','N',NULL),

('program/prg-course-unit/update',2,'program/prg-course-unit/update',NULL,'',NULL,'program',NULL,1626930513,'N','N','N','N','Y',NULL),

('program/prg-discipline/ajax-create',2,'program/prg-discipline/ajax-create',NULL,'',NULL,'program',1588918613,1626930540,'N','N','N','N','N',NULL),

('program/prg-discipline/ajax-create-detail',2,'program/prg-discipline/ajax-create-detail',NULL,'',NULL,'program',1588918613,1626930568,'N','N','N','N','N',NULL),

('program/prg-discipline/ajax-index',2,'program/prg-discipline/ajax-index',NULL,'',NULL,'program',1588918613,1626930593,'N','N','N','N','N',NULL),

('program/prg-discipline/create',2,'program/prg-discipline/create',NULL,'',NULL,'program',1573041672,1626930616,'N','N','N','N','N',NULL),

('program/prg-discipline/delete',2,'program/prg-discipline/delete',NULL,'',NULL,'program',1573041714,1626930642,'N','N','N','N','N',NULL),

('program/prg-discipline/index',2,'program/prg-discipline/index',NULL,'',NULL,'program',1573041724,1626930885,'N','N','N','N','N',NULL),

('program/prg-discipline/update',2,'program/prg-discipline/update',NULL,'',NULL,'program',1573041703,1626930933,'N','N','N','N','Y',NULL),

('program/prg-discipline/view',2,'program/prg-discipline/view',NULL,'',NULL,'program',1573041684,1626930994,'N','N','N','N','N',NULL),

('program/prg-fee-list-eca/approve',2,'program/prg-fee-list-eca/approve',NULL,'',NULL,'program',1588918613,1626931036,'N','N','N','N','N',NULL),

('program/prg-fee-list-eca/create',2,'program/prg-fee-list-eca/create',NULL,'',NULL,'program',1588918613,1626931433,'N','N','N','N','N',NULL),

('program/prg-fee-list-eca/discard',2,'program/prg-fee-list-eca/discard',NULL,'',NULL,'program',1588918613,1626931464,'N','N','N','N','N',NULL),

('program/prg-fee-list-eca/index',2,'program/prg-fee-list-eca/index',NULL,'',NULL,'program',1588918613,1626931493,'N','N','N','N','N',NULL),

('program/prg-fee-list-eca/view',2,'program/prg-fee-list-eca/view',NULL,'',NULL,'program',1588918613,1626931523,'N','N','N','N','N',NULL),

('program/prg-fee-list-sports/approve',2,'program/prg-fee-list-sports/approve',NULL,'',NULL,'program',1588918613,1626931549,'N','N','N','N','N',NULL),

('program/prg-fee-list-sports/create',2,'program/prg-fee-list-sports/create',NULL,'',NULL,'program',1588918613,1626931574,'N','N','N','N','N',NULL),

('program/prg-fee-list-sports/discard',2,'program/prg-fee-list-sports/discard',NULL,'',NULL,'program',1588918613,1626931603,'N','N','N','N','N',NULL),

('program/prg-fee-list-sports/index',2,'program/prg-fee-list-sports/index',NULL,'',NULL,'program',1588918613,1626931633,'N','N','N','N','N',NULL),

('program/prg-fee-list-sports/view',2,'program/prg-fee-list-sports/view',NULL,'',NULL,'program',1588918613,1626931720,'N','N','N','N','N',NULL),

('program/prg-fee-list-supernumerary/approve',2,'program/prg-fee-list-supernumerary/approve',NULL,'',NULL,'program',1588918613,1626931746,'N','N','N','N','N',NULL),

('program/prg-fee-list-supernumerary/create',2,'program/prg-fee-list-supernumerary/create',NULL,'',NULL,'program',1588918613,1626931836,'N','N','N','N','N',NULL),

('program/prg-fee-list-supernumerary/discard',2,'program/prg-fee-list-supernumerary/discard',NULL,'',NULL,'program',1588918613,1626931872,'N','N','N','N','N',NULL),

('program/prg-fee-list-supernumerary/index',2,'program/prg-fee-list-supernumerary/index',NULL,'',NULL,'program',1588918613,1626931909,'N','N','N','N','N',NULL),

('program/prg-fee-list-supernumerary/view',2,'program/prg-fee-list-supernumerary/view',NULL,'',NULL,'program',1588918613,1626931939,'N','N','N','N','N',NULL),

('program/prg-fee-list/create',2,'program/prg-fee-list/create',NULL,'',NULL,'program',1588918613,1626932035,'N','N','N','N','N',NULL),

('program/prg-fee-list/delete',2,'program/prg-fee-list/delete',NULL,'',NULL,'program',1588918613,1626932068,'N','N','N','N','Y',NULL),

('program/prg-fee-list/generate-custom-configuration',2,'program/prg-fee-list/generate-custom-configuration',NULL,'',NULL,'program',1588918613,1626932107,'N','N','N','N','N',NULL),

('program/prg-fee-list/generate-default-configuration',2,'program/prg-fee-list/generate-default-configuration',NULL,'',NULL,'program',1588918613,1626932146,'N','N','N','N','N',NULL),

('program/prg-fee-list/index',2,'program/prg-fee-list/index',NULL,'',NULL,'program',1588918613,1626932181,'N','N','N','N','N',NULL),

('program/prg-fee-list/ous',2,'program/prg-fee-list/ous',NULL,'',NULL,'program',1588918613,1626932508,'N','N','N','N','N',NULL),

('program/prg-fee-list/update',2,'program/prg-fee-list/update',NULL,'',NULL,'program',1588918613,1626932559,'N','N','N','N','N',NULL),

('program/prg-fee-list/view',2,'program/prg-fee-list/view',NULL,'',NULL,'program',1588918613,1626932584,'N','N','N','N','N',NULL),

('program/prg-fee-rules-list/add-rule',2,'program/prg-fee-rules-list/add-rule',NULL,'',NULL,'program',1588918614,1626932625,'N','N','N','N','N',NULL),

('program/prg-fee-rules-list/create',2,'program/prg-fee-rules-list/create',NULL,'',NULL,'program',1588918614,1626932653,'N','N','N','N','N',NULL),

('program/prg-fee-rules-list/delete',2,'program/prg-fee-rules-list/delete',NULL,'',NULL,'program',1588918614,1626933055,'N','N','N','N','N',NULL),

('program/prg-fee-rules-list/index',2,'program/prg-fee-rules-list/index',NULL,'',NULL,'program',1588918614,1626933076,'N','N','N','N','N',NULL),

('program/prg-fee-rules-list/update',2,'program/prg-fee-rules-list/update',NULL,'',NULL,'program',1588918614,1626933104,'N','N','N','N','N',NULL),

('program/prg-fee-rules-list/update-rule',2,'program/prg-fee-rules-list/update-rule',NULL,'',NULL,'program',1588918614,1626933239,'N','N','N','N','N',NULL),

('program/prg-fee-rules-list/view',2,'program/prg-fee-rules-list/view',NULL,'',NULL,'program',1588918614,1626933351,'N','N','N','N','N',NULL),

('program/prg-fee-rules-log/create',2,'program/prg-fee-rules-log/create',NULL,'',NULL,'program',1588918614,1626933396,'N','N','N','N','N',NULL),

('program/prg-fee-rules-log/index',2,'program/prg-fee-rules-log/index',NULL,'',NULL,'program',1588918614,1626933461,'N','N','N','N','N',NULL),

('program/prg-fee-rules-log/update',2,'program/prg-fee-rules-log/update',NULL,'',NULL,'program',1588918614,1626933485,'N','N','N','N','N',NULL),

('program/prg-fee-rules-log/view',2,'program/prg-fee-rules-log/view',NULL,'',NULL,'program',1588918614,1626933511,'N','N','N','N','N',NULL),

('program/prg-fee-rules/create',2,'program/prg-fee-rules/create',NULL,'',NULL,'program',1588918613,1626933930,'N','N','N','N','N',NULL),

('program/prg-fee-rules/delete',2,'program/prg-fee-rules/delete',NULL,'',NULL,'program',1588918613,1626933961,'N','N','N','N','N',NULL),

('program/prg-fee-rules/index',2,'program/prg-fee-rules/index',NULL,'',NULL,'program',1588918613,1626933985,'N','N','N','N','N',NULL),

('program/prg-fee-rules/toggle',2,'program/prg-fee-rules/toggle',NULL,'',NULL,'program',1588918613,1626934009,'N','N','N','N','N',NULL),

('program/prg-fee-rules/update',2,'program/prg-fee-rules/update',NULL,'',NULL,'program',1588918613,1626934061,'N','N','N','N','N',NULL),

('program/prg-fee-rules/view',2,'program/prg-fee-rules/view',NULL,'',NULL,'program',1588918613,1626934189,'N','N','N','N','N',NULL),

('program/prg-hostel/programme-index',2,'program/prg-hostel/programme-index',NULL,'',NULL,'program',1591263646,1626934235,'N','N','N','N','N',NULL),

('program/prg-optional-quantity/create',2,'program/prg-optional-quantity/create',NULL,'',NULL,'program',1588918614,1626934263,'N','N','N','N','N',NULL),

('program/prg-optional-quantity/update',2,'program/prg-optional-quantity/update',NULL,'',NULL,'program',1588918614,1626934664,'N','N','N','N','Y',NULL),

('program/prg-reregistration-control/bulk-update',2,'program/prg-reregistration-control/bulk-update',NULL,'',NULL,'program',1588918614,1626934691,'N','N','N','N','N',NULL),

('program/prg-reregistration-control/create',2,'program/prg-reregistration-control/create',NULL,'',NULL,'program',1588918614,1626934753,'N','N','N','N','N',NULL),

('program/prg-reregistration-control/delete',2,'program/prg-reregistration-control/delete',NULL,'',NULL,'program',1588918614,1626934783,'N','N','N','N','Y',NULL),

('program/prg-reregistration-control/index',2,'program/prg-reregistration-control/index',NULL,'',NULL,'program',1588918614,1626934857,'N','N','N','N','N',NULL),

('program/prg-reregistration-control/programme',2,'program/prg-reregistration-control/programme',NULL,'',NULL,'program',1588918614,1626934882,'N','N','N','N','N',NULL),

('program/prg-reregistration-control/update',2,'program/prg-reregistration-control/update',NULL,'',NULL,'program',1588918614,1626934948,'N','N','N','N','Y',NULL),

('program/prg-reregistration-control/view',2,'program/prg-reregistration-control/view',NULL,'',NULL,'program',1588918614,1626934978,'N','N','N','N','N',NULL),

('program/prg-rule-assignment/create',2,'program/prg-rule-assignment/create',NULL,'',NULL,'program',1591262219,1626935015,'N','N','N','N','N',NULL),

('program/prg-rule-assignment/index',2,'program/prg-rule-assignment/index',NULL,'',NULL,'program',1591262207,1626935351,'N','N','N','N','N',NULL),

('program/prg-rule-assignment/update',2,'program/prg-rule-assignment/update',NULL,'',NULL,'program',1591262231,1626935428,'N','N','N','N','N',NULL),

('program/prg-rule-assignment/view',2,'program/prg-rule-assignment/view',NULL,'',NULL,'program',1591262241,1626935455,'N','N','N','N','N',NULL),

('program/prg-rule/create',2,'program/prg-rule/create',NULL,'',NULL,'program',1591262199,1626935499,'N','N','N','N','N',NULL),

('program/prg-rule/index',2,'program/prg-rule/index',NULL,'',NULL,'program',1591262139,1626935537,'N','N','N','N','N',NULL),

('program/prg-rule/update',2,'program/prg-rule/update',NULL,'',NULL,'program',1591262171,1626935574,'N','N','N','N','N',NULL),

('program/prg-rule/view',2,'program/prg-rule/view',NULL,'',NULL,'program',1591262158,1626935601,'N','N','N','N','N',NULL),

('program/prg-seat-fee-log/create',2,'program/prg-seat-fee-log/create',NULL,'',NULL,'program',1588918614,1626935629,'N','N','N','N','N',NULL),

('program/prg-seat-fee-log/index',2,'program/prg-seat-fee-log/index',NULL,'',NULL,'program',1588918614,1626935658,'N','N','N','N','N',NULL),

('program/prg-seat-fee-log/update',2,'program/prg-seat-fee-log/update',NULL,'',NULL,'program',1588918614,1626935687,'N','N','N','N','N',NULL),

('program/prg-seat-fee-log/view',2,'program/prg-seat-fee-log/view',NULL,'',NULL,'program',1588918614,1626935728,'N','N','N','N','N',NULL),

('program/prg-student/create',2,'program/prg-student/create',NULL,'',NULL,'program',1570888474,1626935800,'N','N','N','N','N',NULL),

('program/prg-student/delete',2,'program/prg-student/delete',NULL,'',NULL,'program',1570888508,1626935825,'N','N','N','N','N',NULL),

('program/prg-student/index',2,'program/prg-student/index',NULL,'',NULL,'program',1570888464,1626935861,'N','N','N','N','N',NULL),

('program/prg-student/update',2,'program/prg-student/update',NULL,'',NULL,'program',1570888497,1626936159,'N','N','N','N','N',NULL),

('program/prg-student/view',2,'program/prg-student/view',NULL,'',NULL,'program',1570888486,1626936215,'N','N','N','N','N',NULL),

('program/prg-term-type/create',2,'program/prg-term-type/create',NULL,'',NULL,'program',1588918614,1626936261,'N','N','N','N','N',NULL),

('program/prg-term-type/delete',2,'program/prg-term-type/delete',NULL,'',NULL,'program',1588918614,1626936285,'N','N','N','N','Y',NULL),

('program/prg-term-type/index',2,'program/prg-term-type/index',NULL,'',NULL,'program',1588918614,1626936313,'N','N','N','N','N',NULL),

('program/prg-term-type/update',2,'program/prg-term-type/update',NULL,'',NULL,'program',1588918614,1626936335,'N','N','N','N','Y',NULL),

('program/prg-term-type/view',2,'program/prg-term-type/view',NULL,'',NULL,'program',1588918614,1626936360,'N','N','N','N','N',NULL),

('program/prg-time-table-rooms/admit-card',2,'program/prg-time-table-rooms/admit-card',NULL,'',NULL,'program',1588918614,1626936398,'N','N','N','N','N',NULL),

('program/prg-time-table-rooms/attendance-sheet',2,'program/prg-time-table-rooms/attendance-sheet',NULL,'',NULL,'program',1588918614,1626936443,'Y','N','N','N','N',NULL),

('program/prg-time-table-rooms/create',2,'program/prg-time-table-rooms/create',NULL,'',NULL,'program',1588918614,1626936474,'N','N','N','N','N',NULL),

('program/prg-time-table-rooms/delete',2,'program/prg-time-table-rooms/delete',NULL,'',NULL,'program',1588918614,1626936520,'N','N','N','N','N',NULL),

('program/prg-time-table-rooms/index',2,'program/prg-time-table-rooms/index',NULL,'',NULL,'program',1588918614,1626936543,'N','N','N','N','N',NULL),

('program/prg-time-table-rooms/print',2,'program/prg-time-table-rooms/print',NULL,'',NULL,'program',1588918614,1626936569,'N','N','N','N','N',NULL),

('program/prg-time-table-rooms/printtwo',2,'program/prg-time-table-rooms/printtwo',NULL,'',NULL,'program',1588918614,1626936597,'N','N','N','N','N',NULL),

('program/prg-time-table-rooms/time-table',2,'program/prg-time-table-rooms/time-table',NULL,'',NULL,'program',1588918614,1626936620,'N','N','N','N','N',NULL),

('program/prg-time-table-rooms/update',2,'program/prg-time-table-rooms/update',NULL,'',NULL,'program',1588918614,1626936663,'N','N','N','N','Y',NULL),

('program/prg-time-table-rooms/view',2,'program/prg-time-table-rooms/view',NULL,'',NULL,'program',1588918614,1626936685,'N','N','N','N','N',NULL),

('program/prg-time-table-versions/create',2,'program/prg-time-table-versions/create',NULL,'',NULL,'program',1588918614,1626936708,'N','N','N','N','N',NULL),

('program/prg-time-table-versions/delete',2,'program/prg-time-table-versions/delete',NULL,'',NULL,'program',1588918614,1626936739,'N','N','N','N','N',NULL),

('program/prg-time-table-versions/index',2,'program/prg-time-table-versions/index',NULL,'',NULL,'program',1588918614,1626936767,'N','N','N','N','N',NULL),

('program/prg-time-table-versions/modal-form',2,'program/prg-time-table-versions/modal-form',NULL,'',NULL,'program',1588918614,1626936800,'N','N','N','N','N',NULL),

('program/prg-time-table-versions/update',2,'program/prg-time-table-versions/update',NULL,'',NULL,'program',1588918614,1626936950,'N','N','N','N','Y',NULL),

('program/prg-time-table-versions/view',2,'program/prg-time-table-versions/view',NULL,'',NULL,'program',1588918614,1626936983,'N','N','N','N','N',NULL),

('program/prg-ugc-specified-degree/create',2,'program/prg-ugc-specified-degree/create',NULL,'',NULL,'program',1588918614,1626937049,'N','N','N','N','N',NULL),

('program/prg-ugc-specified-degree/delete',2,'program/prg-ugc-specified-degree/delete',NULL,'',NULL,'program',1588918614,1626937301,'N','N','N','N','Y',NULL),

('program/prg-ugc-specified-degree/index',2,'program/prg-ugc-specified-degree/index',NULL,'',NULL,'program',1588918614,1626937356,'N','N','N','N','N',NULL),

('program/prg-ugc-specified-degree/update',2,'program/prg-ugc-specified-degree/update',NULL,'',NULL,'program',1588918614,1626937133,'N','N','N','N','Y',NULL),

('program/prg-ugc-specified-degree/view',2,'program/prg-ugc-specified-degree/view',NULL,'',NULL,'program',1588918614,1626937421,'N','N','N','N','N',NULL),

('program/program-course-document-type/create',2,'program/program-course-document-type/create',NULL,'',NULL,'program',1612356163,1626941239,'N','N','N','N','N',NULL),

('program/program-course-document-type/index',2,'program/program-course-document-type/index',NULL,'',NULL,'program',NULL,1626939694,'N','N','N','N','N',NULL),

('program/program-course-document-type/status',2,'program/program-course-document-type/status',NULL,'',NULL,'program',1612356142,1626939755,'N','N','N','N','N',NULL),

('program/program-course-document-type/update',2,'program/program-course-document-type/update',NULL,'',NULL,'program',1612356150,1626941149,'N','N','N','N','Y',NULL),

('program/program-course-document-type/view',2,'program/program-course-document-type/view',NULL,'',NULL,'program',NULL,1626941475,'N','N','N','N','N',NULL),

('program/program-course-document/create',2,'program/program-course-document/create',NULL,'',NULL,'program',NULL,1626941579,'N','N','N','N','N',NULL),

('program/program-course-document/index',2,'program/program-course-document/index',NULL,'',NULL,'program',NULL,1626944610,'N','N','N','N','N',NULL),

('program/program-course-document/index-all',2,'program/program-course-document/index-all',NULL,'',NULL,'program',NULL,1626941623,'N','N','N','N','N',NULL),

('program/program-course-document/status',2,'program/program-course-document/status',NULL,'',NULL,'program',NULL,1626941680,'N','N','N','N','N',NULL),

('program/program-course-document/update',2,'program/program-course-document/update',NULL,'',NULL,'program',NULL,1626944760,'N','N','N','N','Y',NULL),

('program/program-course-evaluator/create',2,'program/program-course-evaluator/create',NULL,'',NULL,'program',1612356133,1626941728,'N','N','N','N','N',NULL),

('program/program-course-evaluator/get-evaluator',2,'program/program-course-evaluator/get-evaluator',NULL,'',NULL,'program',1612356119,1626941761,'N','N','N','N','N',NULL),

('program/program-course-evaluator/index',2,'program/program-course-evaluator/index',NULL,'',NULL,'program',NULL,1626941789,'N','N','N','N','N',NULL),

('program/program-course-evaluator/index-all',2,'program/program-course-evaluator/index-all',NULL,'',NULL,'program',NULL,1626941814,'N','N','N','N','N',NULL),

('program/program-course-evaluator/remove',2,'program/program-course-evaluator/remove',NULL,'',NULL,'program',NULL,1626944863,'N','N','N','N','Y',NULL),

('program/program-course-evaluator/status',2,'program/program-course-evaluator/status',NULL,'',NULL,'program',NULL,1626944880,'N','N','N','N','Y',NULL),

('program/program-curriculum-version/create',2,'program/program-curriculum-version/create',NULL,'',NULL,'program',1588918614,1626941912,'N','N','N','N','N',NULL),

('program/program-curriculum-version/delete',2,'program/program-curriculum-version/delete',NULL,'',NULL,'program',1588918614,1626941948,'N','N','N','N','N',NULL),

('program/program-curriculum-version/index',2,'program/program-curriculum-version/index',NULL,'',NULL,'program',1588918614,1626941980,'N','N','N','N','N',NULL),

('program/program-curriculum-version/update',2,'program/program-curriculum-version/update',NULL,'',NULL,'program',1588918614,1626944910,'N','N','N','N','Y',NULL),

('program/program-curriculum-version/view',2,'program/program-curriculum-version/view',NULL,'',NULL,'program',1588918614,1626942050,'N','N','N','N','N',NULL),

('program/program-discipline-map/create',2,'program/program-discipline-map/create',NULL,'',NULL,'program',1618484823,1626942075,'N','N','N','N','N',NULL),

('program/program-discipline-map/index',2,'program/program-discipline-map/index',NULL,'',NULL,'program',1618484753,1626942113,'N','N','N','N','N',NULL),

('program/program-discipline/create',2,'program/program-discipline/create',NULL,'',NULL,'program',1569234067,1626942172,'N','N','N','N','N',NULL),

('program/program-discipline/delete',2,'program/program-discipline/delete',NULL,'',NULL,'program',1569234076,1626942314,'N','N','N','N','N',NULL),

('program/program-discipline/disciplines',2,'program/program-discipline/disciplines',NULL,'',NULL,'program',1571917485,1626945041,'N','N','N','N','N',NULL),

('program/program-discipline/index',2,'program/program-discipline/index',NULL,'',NULL,'program',1569234083,1626942341,'N','N','N','N','N',NULL),

('program/program-discipline/programs',2,'program/program-discipline/programs',NULL,'',NULL,'program',1571918191,1626942367,'N','N','N','N','N',NULL),

('program/program-discipline/update',2,'program/program-discipline/update',NULL,'',NULL,'program',1569234090,1626942386,'N','N','N','N','N',NULL),

('program/program-discipline/view',2,'program/program-discipline/view',NULL,'',NULL,'program',1569234060,1626942410,'N','N','N','N','N',NULL),

('program/program-disciplines/discipline',2,'program/program-disciplines/discipline',NULL,'',NULL,'program',1571916281,1626942435,'N','N','N','N','N',NULL),

('program/program-eligibility-criteria/create',2,'program/program-eligibility-criteria/create',NULL,'',NULL,'program',1567576033,1626942459,'N','N','N','N','N',NULL),

('program/program-eligibility-criteria/delete',2,'program/program-eligibility-criteria/delete',NULL,'',NULL,'program',1567576053,1626942987,'N','N','N','N','Y',NULL),

('program/program-eligibility-criteria/index',2,'program/program-eligibility-criteria/index',NULL,'',NULL,'program',1567576014,1626943585,'N','N','N','N','N',NULL),

('program/program-eligibility-criteria/update',2,'program/program-eligibility-criteria/update',NULL,'',NULL,'program',1567576043,1626943617,'N','N','N','N','Y',NULL),

('program/program-eligibility-criteria/view',2,'program/program-eligibility-criteria/view',NULL,'',NULL,'program',1567576024,1626943642,'N','N','N','N','N',NULL),

('program/program-level/create',2,'program/program-level/create',NULL,'',NULL,'program',1569234010,1626943681,'N','N','N','N','N',NULL),

('program/program-level/delete',2,'program/program-level/delete',NULL,'',NULL,'program',1569234020,1626945200,'N','N','N','N','Y',NULL),

('program/program-level/index',2,'program/program-level/index',NULL,'',NULL,'program',1569234028,1626944324,'N','N','N','N','N',NULL),

('program/program-level/update',2,'program/program-level/update',NULL,'',NULL,'program',1569234036,1626945222,'N','N','N','N','N',NULL),

('program/program-level/view',2,'program/program-level/view',NULL,'',NULL,'program',1569234045,1626945409,'N','N','N','N','N',NULL),

('program/program-masters/create',2,'program/program-masters/create',NULL,'',NULL,'program',1569234257,1626945503,'N','N','N','N','N',NULL),

('program/program-masters/delete',2,'program/program-masters/delete',NULL,'',NULL,'program',1569234273,1626945534,'N','N','N','N','Y',NULL),

('program/program-masters/get-program-detail',2,'program/program-masters/get-program-detail',NULL,'',NULL,'program',1569234310,1626945571,'N','N','N','N','N',NULL),

('program/program-masters/index',2,'program/program-masters/index',NULL,'',NULL,'program',1569234281,1626945594,'N','N','N','N','N',NULL),

('program/program-masters/update',2,'program/program-masters/update',NULL,'',NULL,'program',1569234249,1626961239,'N','N','N','N','Y',NULL),

('program/program-masters/view',2,'program/program-masters/view',NULL,'',NULL,'program',1569234292,1626945646,'N','N','N','N','N',NULL),

('program/program-scheme/create',2,'program/program-scheme/create',NULL,'',NULL,'program',1567576090,1626945670,'N','N','N','N','N',NULL),

('program/program-scheme/delete',2,'program/program-scheme/delete',NULL,'',NULL,'program',1567576106,1626945792,'N','N','N','N','Y',NULL),

('program/program-scheme/index',2,'program/program-scheme/index',NULL,'',NULL,'program',1567576067,1626945817,'N','N','N','N','N',NULL),

('program/program-scheme/update',2,'program/program-scheme/update',NULL,'',NULL,'program',1567576097,1626945861,'N','N','N','N','Y',NULL),

('program/program-scheme/view',2,'program/program-scheme/view',NULL,'',NULL,'program',1567576082,1626945898,'N','N','N','N','N',NULL),

('program/program-stream/create',2,'program/program-stream/create',NULL,'',NULL,'program',1567576171,1626945935,'N','N','N','N','N',NULL),

('program/program-stream/delete',2,'program/program-stream/delete',NULL,'',NULL,'program',1567576186,1626945945,'N','N','N','N','N',NULL),

('program/program-stream/index',2,'program/program-stream/index',NULL,'',NULL,'program',1567576121,1626946009,'N','N','N','N','N',NULL),

('program/program-stream/update',2,'program/program-stream/update',NULL,'',NULL,'program',1567576178,1626946021,'N','N','N','N','Y',NULL),

('program/program-stream/view',2,'program/program-stream/view',NULL,'',NULL,'program',1567576163,1626946042,'N','N','N','N','N',NULL),

('program/program-type/create',2,'program/program-type/create',NULL,'',NULL,'program',1567576235,1626946066,'N','N','N','N','N',NULL),

('program/program-type/delete',2,'program/program-type/delete',NULL,'',NULL,'program',1567576248,1626946120,'N','N','N','N','Y',NULL),

('program/program-type/index',2,'program/program-type/index',NULL,'',NULL,'program',1567576206,1626946129,'N','N','N','N','N',NULL),

('program/program-type/update',2,'program/program-type/update',NULL,'',NULL,'program',1567576241,1626946177,'N','N','N','N','Y',NULL),

('program/program-type/view',2,'program/program-type/view',NULL,'',NULL,'program',1567576214,1626946187,'N','N','N','N','N',NULL),

('program/program/create',2,'Permission to add the program',NULL,'',NULL,'program',1567575959,1626946232,'N','N','N','N','N',NULL),

('program/program/delete',2,'Permission to delete the program',NULL,'',NULL,'program',1567575991,1626947584,'N','N','N','N','Y',NULL),

('program/program/index',2,'Permission to list the programmes',NULL,'',NULL,'program',1567575908,1626947604,'N','N','N','N','N',NULL),

('program/program/update',2,'Permission to update the program',NULL,'',NULL,'program',1567575974,1626947635,'N','N','N','N','N',NULL),

('program/program/view',2,'Permission to view the program detail',NULL,'',NULL,'program',1567575942,1626947661,'N','N','N','N','N',NULL),

('program/programme-course-group/create',2,'Create CBCS course structure',NULL,'',NULL,'program',1614062746,1626947687,'N','N','N','N','N',NULL),

('program/programme-course-group/delete',2,'program/programme-course-group/delete',NULL,'',NULL,'program',1610311743,1626947703,'N','N','N','N','Y',NULL),

('program/programme-course-group/delete-course',2,'Delete Course from CBCS course structure',NULL,'',NULL,'program',1614063471,1626947726,'N','N','N','N','N',NULL),

('program/programme-course-group/edit',2,'program/programme-course-group/edit',NULL,'s:0:\"\";',NULL,'program',1622448143,1622448143,'N','N','N','N','N',NULL),

('program/programme-course-group/structure-create',2,'Add courses in the CBCS course structure',NULL,'',NULL,'program',1614063288,1626947794,'N','N','N','N','N',NULL),

('program/programme-default-ou/ajax-create',2,'program/programme-default-ou/ajax-create',NULL,'',NULL,'program',1575401223,1626947818,'N','N','N','N','N',NULL),

('program/programme-default-ou/ajax-submit',2,'program/programme-default-ou/ajax-submit',NULL,'',NULL,'program',1574148312,1626947829,'N','N','N','N','N',NULL),

('program/programme-default-ou/ajax-submit-create',2,'program/programme-default-ou/ajax-submit-create',NULL,'',NULL,'program',1588918614,1626947868,'N','N','N','N','N',NULL),

('program/programme-default-ou/ajax-update',2,'program/programme-default-ou/ajax-update',NULL,'',NULL,'program',1575400880,1626947888,'N','N','N','N','N',NULL),

('program/programme-default-ou/create',2,'program/programme-default-ou/create',NULL,'',NULL,'program',1588918614,1626947919,'N','N','N','N','N',NULL),

('program/programme-default-ou/delete',2,'program/programme-default-ou/delete',NULL,'',NULL,'program',1588918614,1626947943,'N','N','N','N','N',NULL),

('program/programme-default-ou/index',2,'program/programme-default-ou/index',NULL,'',NULL,'program',1588918614,1626947964,'N','N','N','N','N',NULL),

('program/programme-default-ou/program',2,'program/programme-default-ou/program',NULL,'',NULL,'program',1588918614,1626947998,'N','N','N','N','N',NULL),

('program/programme-default-ou/programme',2,'program/programme-default-ou/programme',NULL,'',NULL,'program',1588918614,1626948024,'N','N','N','N','N',NULL),

('program/programme-default-ou/update',2,'program/programme-default-ou/update',NULL,'',NULL,'program',1588918614,1626948083,'N','N','N','N','Y',NULL),

('program/programme-default-ou/view',2,'program/programme-default-ou/view',NULL,'',NULL,'program',1588918614,1626948106,'N','N','N','N','N',NULL),

('program/programme-docs/create',2,'program/programme-docs/create',NULL,'',NULL,'program',1588918614,1626948129,'N','N','N','N','N',NULL),

('program/programme-docs/delete',2,'program/programme-docs/delete',NULL,'',NULL,'program',1588918614,1626948152,'N','N','N','N','N',NULL),

('program/programme-docs/index',2,'program/programme-docs/index',NULL,'',NULL,'program',1588918614,1626948185,'N','N','N','N','N',NULL),

('program/programme-docs/programme',2,'program/programme-docs/programme',NULL,NULL,NULL,NULL,1575380694,1575380694,'N','N','N','N','N',NULL),

('program/programme-docs/update',2,'program/programme-docs/update',NULL,'',NULL,'program',1575380933,1626948218,'N','N','N','N','N',NULL),

('program/programme-docs/view',2,'program/programme-docs/view',NULL,'',NULL,'program',1588918614,1626948244,'N','N','N','N','N',NULL),

('program/programme-ous/create',2,'program/programme-ous/create',NULL,'',NULL,'program',1575378655,1626948257,'N','N','N','N','N',NULL),

('program/programme-ous/delete',2,'program/programme-ous/delete',NULL,'',NULL,'program',1588918614,1626948267,'N','N','N','N','N',NULL),

('program/programme-ous/index',2,'program/programme-ous/index',NULL,'',NULL,'program',1588918614,1626948279,'N','N','N','N','N',NULL),

('program/programme-ous/ous',2,'program/programme-ous/ous',NULL,'',NULL,'program',1588918614,1626948335,'N','N','N','N','N',NULL),

('program/programme-ous/programme',2,'program/programme-ous/programme',NULL,'',NULL,'program',1588918614,1626948344,'N','N','N','N','N',NULL),

('program/programme-ous/update',2,'program/programme-ous/update',NULL,'',NULL,'program',1575379792,1626948369,'N','N','N','N','N',NULL),

('program/programme-ous/update/admin',2,'program/programme-ous/update/admin',NULL,'',NULL,'program',1617791984,1626948397,'N','N','N','N','N',NULL),

('program/programme-ous/view',2,'program/programme-ous/view',NULL,'',NULL,'program',1588918614,1626948411,'N','N','N','N','N',NULL),

('program/programme-qualification-list/create',2,'program/programme-qualification-list/create',NULL,'',NULL,'program',1588918614,1626948419,'N','N','N','N','N',NULL),

('program/programme-qualification-list/index',2,'program/programme-qualification-list/index',NULL,'',NULL,'program',1588918614,1626948432,'N','N','N','N','N',NULL),

('program/programme-qualification-list/programme',2,'program/programme-qualification-list/programme',NULL,NULL,NULL,NULL,1588918614,1588918614,'N','N','N','N','N',NULL),

('program/programme-qualification-list/update',2,'program/programme-qualification-list/update',NULL,NULL,NULL,NULL,1578462807,1578462807,'N','N','N','N','N',NULL),

('program/programme-qualification-list/view',2,'program/programme-qualification-list/view',NULL,NULL,NULL,NULL,1588918614,1588918614,'N','N','N','N','N',NULL),

('program/programme-qualification-map/create',2,'program/programme-qualification-map/create',NULL,NULL,NULL,NULL,1588918614,1588918614,'N','N','N','N','N',NULL),

('program/programme-qualification-map/delete',2,'program/programme-qualification-map/delete',NULL,NULL,NULL,NULL,1588918614,1588918614,'N','N','N','N','N',NULL),

('program/programme-qualification-map/index',2,'program/programme-qualification-map/index',NULL,NULL,NULL,NULL,1588918614,1588918614,'N','N','N','N','N',NULL),

('program/programme-qualification-map/update',2,'program/programme-qualification-map/update',NULL,NULL,NULL,NULL,1588918614,1588918614,'N','N','N','N','N',NULL),

('program/programme-qualification-map/view',2,'program/programme-qualification-map/view',NULL,NULL,NULL,NULL,1588918614,1588918614,'N','N','N','N','N',NULL),

('program/programme-seat-fee/add-course',2,'program/programme-seat-fee/add-course',NULL,NULL,NULL,NULL,1588918614,1588918614,'N','N','N','N','N',NULL),

('program/programme-seat-fee/add-term-fee',2,'program/programme-seat-fee/add-term-fee',NULL,NULL,NULL,NULL,1591261996,1591261996,'N','N','N','N','N',NULL),

('program/programme-seat-fee/approve',2,'program/programme-seat-fee/approve',NULL,NULL,NULL,NULL,1588918614,1588918614,'N','N','N','N','N',NULL),

('program/programme-seat-fee/check-ou-applicable',2,'program/programme-seat-fee/check-ou-applicable',NULL,'',NULL,'program',1588918615,1623507231,'N','N','N','N','N',NULL),

('program/programme-seat-fee/colcourse',2,'program/programme-seat-fee/colcourse',NULL,'',NULL,'program',1588918615,1627004132,'N','N','N','N','N',NULL),

('program/programme-seat-fee/copy',2,'program/programme-seat-fee/copy',NULL,'',NULL,'program',1588918615,1627004160,'N','N','N','N','N',NULL),

('program/programme-seat-fee/create',2,'program/programme-seat-fee/create',NULL,'',NULL,'program',1588918614,1627004190,'N','N','N','N','N',NULL),

('program/programme-seat-fee/create-fee',2,'program/programme-seat-fee/create-fee',NULL,'',NULL,'program',1588918614,1627004226,'N','N','N','N','N',NULL),

('program/programme-seat-fee/create1',2,'program/programme-seat-fee/create1',NULL,'',NULL,'program',1588918614,1627004248,'N','N','N','N','N',NULL),

('program/programme-seat-fee/edit',2,'program/programme-seat-fee/edit',NULL,'',NULL,'program',1588918614,1627004258,'N','N','N','N','N',NULL),

('program/programme-seat-fee/edit-fee',2,'program/programme-seat-fee/edit-fee',NULL,'',NULL,'program',1588918614,1627004278,'N','N','N','N','N',NULL),

('program/programme-seat-fee/edit-term',2,'program/programme-seat-fee/edit-term',NULL,'',NULL,'program',1591262114,1627004301,'N','N','N','N','N',NULL),

('program/programme-seat-fee/edit-term-fee',2,'program/programme-seat-fee/edit-term-fee',NULL,'',NULL,'program',1588918615,1627004325,'N','N','N','N','N',NULL),

('program/programme-seat-fee/fee-calculate',2,'program/programme-seat-fee/fee-calculate',NULL,'',NULL,'program',1588918615,1627004350,'N','N','N','N','N',NULL),

('program/programme-seat-fee/get-fee',2,'program/programme-seat-fee/get-fee',NULL,'',NULL,'program',1588918615,1627004369,'N','N','N','N','N',NULL),

('program/programme-seat-fee/index2',2,'program/programme-seat-fee/index2',NULL,'',NULL,'program',1588918614,1627004793,'N','N','N','N','N',NULL),

('program/programme-seat-fee/list',2,'program/programme-seat-fee/list',NULL,'',NULL,'program',1588918614,1627004821,'N','N','N','N','N',NULL),

('program/programme-seat-fee/ous',2,'program/programme-seat-fee/ous',NULL,'',NULL,'program',1588918615,1627004836,'N','N','N','N','N',NULL),

('program/programme-seat-fee/save-fee-multiple',2,'program/programme-seat-fee/save-fee-multiple',NULL,'',NULL,'program',1588918615,1627004897,'N','N','N','N','N',NULL),

('program/programme-seat-fee/term-edit',2,'program/programme-seat-fee/term-edit',NULL,'',NULL,'program',1588918615,1627004911,'N','N','N','N','N',NULL),

('program/programme-seat-fee/university-department-index',2,'program/programme-seat-fee/university-department-index',NULL,'',NULL,'program',1588918614,1627004926,'N','N','N','N','N',NULL),

('program/programme-seat-fee/update',2,'program/programme-seat-fee/update',NULL,'',NULL,'program',1576226595,1627004985,'N','N','N','N','N',NULL),

('program/programme-seat-fee/update-fee-multiple',2,'program/programme-seat-fee/update-fee-multiple',NULL,'',NULL,'program',1588918615,1627005008,'N','N','N','N','N',NULL),

('program/programme-seat-fee/update-v3',2,'program/programme-seat-fee/update-v3',NULL,'',NULL,'program',1588918614,1627005037,'N','N','N','N','N',NULL),

('program/programme-seat-fee/update1',2,'program/programme-seat-fee/update1',NULL,'',NULL,'program',1588918614,1627005059,'N','N','N','N','N',NULL),

('program/programme-seat-fee/view',2,'program/programme-seat-fee/view',NULL,'',NULL,'program',1588918614,1627005442,'N','N','N','N','N',NULL),

('program/programme-seat-fee/view-new',2,'program/programme-seat-fee/view-new',NULL,'',NULL,'program',1588918615,1627005450,'N','N','N','N','N',NULL),

('program/programme-structure/create',2,'program/programme-structure/create',NULL,'',NULL,'program',1588918615,1627005463,'N','N','N','N','N',NULL),

('program/programme-structure/get-courses',2,'program/programme-structure/get-courses',NULL,'',NULL,'program',1588918615,1627005492,'N','N','N','N','N',NULL),

('program/programme-structure/get-discipline',2,'program/programme-structure/get-discipline',NULL,'',NULL,'program',1591857718,1627005514,'N','N','N','N','N',NULL),

('program/programme-structure/index',2,'program/programme-structure/index',NULL,'',NULL,'program',1588918615,1627005535,'N','N','N','N','N',NULL),

('program/programme-structure/programme',2,'program/programme-structure/programme',NULL,'',NULL,'program',1598435960,1627005558,'N','N','N','N','N',NULL),

('program/programme-structure/programme-all',2,'program/programme-structure/programme-all',NULL,'',NULL,'program',1588918615,1627005598,'N','N','N','N','N',NULL),

('program/programme-structure/programme-new',2,'program/programme-structure/programme-new',NULL,'',NULL,'program',1588918615,1627005620,'N','N','N','N','N',NULL),

('program/programme-structure/programme-update',2,'Update CBCS course structure','','',NULL,NULL,1614062507,1614062528,'N','N','N','N','N',NULL),

('program/programme-structure/structure',2,'program/programme-structure/structure',NULL,'',NULL,'program',1588918615,1627005642,'N','N','N','N','N',NULL),

('program/programme-structure/structure-create',2,'program/programme-structure/structure-create',NULL,'',NULL,'program',1588918615,1627005666,'N','N','N','N','N',NULL),

('program/programme-structure/structure-update',2,'program/programme-structure/structure-update',NULL,'',NULL,'program',1588918615,1627005691,'N','N','N','N','N',NULL),

('program/programme-structure/structure-view',2,'program/programme-structure/structure-view',NULL,'',NULL,'program',1588918615,1627005828,'N','N','N','N','N',NULL),

('program/programme-structure/update',2,'program/programme-structure/update',NULL,'',NULL,'program',1588918615,1627005853,'N','N','N','N','N',NULL),

('program/programme-structure/view',2,'program/programme-structure/view',NULL,'',NULL,'program',1588918615,1627005877,'N','N','N','N','N',NULL),

('program/programme-term/create',2,'program/programme-term/create',NULL,'',NULL,'program',1588918615,1627005899,'N','N','N','N','N',NULL),

('program/programme-term/delete',2,'program/programme-term/delete',NULL,'',NULL,'program',1588918615,1627005914,'N','N','N','N','N',NULL),

('program/programme-term/index',2,'program/programme-term/index',NULL,'',NULL,'program',1588918615,1627005964,'N','N','N','N','N',NULL),

('program/programme-term/programme',2,'program/programme-term/programme',NULL,'',NULL,'program',1588918615,1627005976,'N','N','N','N','N',NULL),

('program/programme-term/update',2,'program/programme-term/update',NULL,'',NULL,'program',1588918615,1627006036,'N','N','N','N','N',NULL),

('program/programme-term/view',2,'program/programme-term/view',NULL,'',NULL,'program',1588918615,1627006062,'N','N','N','N','N',NULL),

('program/programme-uploads-map/index',2,'program/programme-uploads-map/index',NULL,'',NULL,'program',1614230487,1627006087,'N','N','N','N','N',NULL),

('program/programs/create',2,'program/programs/create',NULL,'',NULL,'program',1569234555,1627006112,'N','N','N','N','N',NULL),

('program/programs/delete',2,'program/programs/delete',NULL,'',NULL,'program',1569234595,1627006143,'N','N','N','N','Y',NULL),

('program/programs/index',2,'program/programs/index',NULL,'',NULL,'program',1569234564,1627006165,'N','N','N','N','N',NULL),

('program/programs/update',2,'program/programs/update',NULL,'',NULL,'program',1569234586,1627006189,'N','N','N','N','N',NULL),

('program/programs/view',2,'program/programs/view',NULL,'',NULL,'program',1569234579,1627006210,'N','N','N','N','N',NULL),

('program/session-program/create',2,'program/session-program/create',NULL,'',NULL,'program',1567576352,1627007428,'N','N','N','N','N',NULL),

('program/session-program/delete',2,'program/session-program/delete',NULL,'',NULL,'program',1567576419,1627007456,'N','N','N','N','Y',NULL),

('program/session-program/index',2,'program/session-program/index\r\n',NULL,'',NULL,'program',1567576346,1627008986,'N','N','N','N','N',NULL),

('program/session-program/seat-update',2,'program/session-program/seat-update',NULL,'',NULL,'program',1567576650,1627009014,'N','N','N','N','Y',NULL),

('program/session-program/update',2,'program/session-program/update',NULL,'',NULL,'program',1567576410,1627009103,'N','N','N','N','N',NULL),

('program/session-program/update-v2',2,'program/session-program/update-v2',NULL,'',NULL,'program',1567576691,1627009121,'N','N','N','N','Y',NULL),

('program/session-program/view',2,'program/session-program/view',NULL,'',NULL,'program',1567576389,1627009150,'N','N','N','N','N',NULL),

('program/session-program/view-seats',2,'program/session-program/view-seats',NULL,'',NULL,'program',1567576667,1627009179,'N','N','N','N','N',NULL),

('program/session/create',2,'program/session/create',NULL,'',NULL,'program',1567576297,1627009191,'N','N','N','N','N',NULL),

('program/session/delete',2,'program/session/delete',NULL,'',NULL,'program',1567576318,1627009223,'N','N','N','N','Y',NULL),

('program/session/index',2,'program/session/index',NULL,'',NULL,'program',1567576276,1627009247,'N','N','N','N','N',NULL),

('program/session/update',2,'program/session/update',NULL,'',NULL,'program',1567576309,1627009256,'N','N','N','N','N',NULL),

('program/session/view',2,'program/session/view',NULL,'',NULL,'program',1567576287,1627009270,'N','N','N','N','N',NULL),

('program/settings/advanced-settings',2,'program/settings/advanced-settings',NULL,'',NULL,'program',1588918615,1627009294,'N','N','N','Y','N',NULL),

('program/settings/index',2,'program/settings/index',NULL,'',NULL,'program',1567576447,1627009336,'N','N','N','Y','N',NULL),

('program/settings/ou',2,'program/settings/ou',NULL,'',NULL,'program',1574061634,1627009328,'N','N','N','Y','N',NULL),

('program/sports-adm-category/create',2,'program/sports-adm-category/create',NULL,'',NULL,'program',1588918615,1627009357,'N','N','N','N','N',NULL),

('program/sports-adm-category/delete',2,'program/sports-adm-category/delete',NULL,'',NULL,'program',1588918615,1627009371,'N','N','N','N','Y',NULL),

('program/sports-adm-category/index',2,'program/sports-adm-category/index',NULL,'',NULL,'program',1588918615,1627009381,'N','N','N','N','N',NULL),

('program/sports-adm-category/update',2,'program/sports-adm-category/update',NULL,'',NULL,'program',1588918615,1627009412,'N','N','N','N','Y',NULL),

('program/sports-adm-category/view',2,'program/sports-adm-category/view',NULL,'',NULL,'program',1588918615,1627009427,'N','N','N','N','N',NULL),

('program/ugc-specified-degree/create',2,'permission to add UGC Specified degree',NULL,'',NULL,'program',1570628807,1627009458,'N','N','N','N','N',NULL),

('program/ugc-specified-degree/delete',2,'permission to delete UGC Specified Degree',NULL,'',NULL,'program',1570628909,1627009486,'N','N','N','N','Y',NULL),

('program/ugc-specified-degree/get-program-detail',2,'program/ugc-specified-degree/get-program-detail',NULL,'',NULL,'program',1588918615,1627009497,'N','N','N','N','N',NULL),

('program/ugc-specified-degree/index',2,'Permission to the index page of UGC specified degree',NULL,'',NULL,'program',1570628774,1627009522,'N','N','N','N','N',NULL),

('program/ugc-specified-degree/update',2,'permission to update UGC Specified degree',NULL,'',NULL,'program',1570628884,1627009534,'N','N','N','N','Y',NULL),

('program/ugc-specified-degree/view',2,'Permission to view UGC Specified Degree',NULL,'',NULL,'program',1570628851,1627009557,'N','N','N','N','N',NULL),

('programme_admin',1,'Role to create and edit the Program of the university.','','',NULL,NULL,1567576495,1575361780,'N','N','N','N','N',NULL),

('programme_admin_view_only',1,'programme_admin_view_only',NULL,NULL,NULL,NULL,1575361805,1575361805,'N','N','N','N','N',NULL),

('programme_administrator',1,'This role defines the accessibility of the Programme and its configuration',NULL,NULL,NULL,NULL,1583324810,1583324810,'N','N','N','N','N',NULL),

('programme_admission_admin',1,'programme_admission_admin',NULL,NULL,NULL,NULL,1598438816,1598438816,'N','N','N','N','N',NULL),

('programme_ou_specific_role',1,'This role is for OU specific users.',NULL,NULL,NULL,NULL,1578388261,1578388261,'N','N','N','N','N',NULL),

('programme-course-group/structure-create',2,'programme-course-group/structure-create',NULL,NULL,NULL,NULL,1610311821,1610311821,'N','N','N','N','N',NULL),

('programme-structure/programme-update',2,'programme-structure/programme-update',NULL,NULL,NULL,NULL,1607606810,1607606810,'N','N','N','N','N',NULL),

('public_grievance/grievance-meeting/cancel',2,'public_grievance/grievance-meeting/cancel',NULL,NULL,NULL,NULL,1580377192,1580377192,'N','N','N','N','N',NULL),

('public_grievance/grievance-meeting/create',2,'public_grievance/grievance-meeting/create',NULL,NULL,NULL,NULL,1580377192,1580377192,'N','N','N','N','N',NULL),

('public_grievance/grievance-meeting/index',2,'public_grievance/grievance-meeting/index',NULL,NULL,NULL,NULL,1580377192,1580377192,'N','N','N','N','N',NULL),

('public_grievance/grievance-meeting/meeting-minutes',2,'public_grievance/grievance-meeting/meeting-minutes',NULL,NULL,NULL,NULL,1580377192,1580377192,'N','N','N','N','N',NULL),

('public_grievance/grievance-meeting/update',2,'public_grievance/grievance-meeting/update',NULL,NULL,NULL,NULL,1580377192,1580377192,'N','N','N','N','N',NULL),

('public_grievance/grievance-meeting/view',2,'public_grievance/grievance-meeting/view',NULL,NULL,NULL,NULL,1580377192,1580377192,'N','N','N','N','N',NULL),

('public_grievance/grievance-notes/create',2,'public_grievance/grievance-notes/create',NULL,NULL,NULL,NULL,1580377192,1580377192,'N','N','N','N','N',NULL),

('public_grievance/grievance-notes/index',2,'public_grievance/grievance-notes/index',NULL,NULL,NULL,NULL,1580377192,1580377192,'N','N','N','N','N',NULL),

('public_grievance/grievance-notes/resolution',2,'public_grievance/grievance-notes/resolution',NULL,NULL,NULL,NULL,1580377192,1580377192,'N','N','N','N','N',NULL),

('public_grievance/grievance-notes/view',2,'public_grievance/grievance-notes/view',NULL,NULL,NULL,NULL,1580377192,1580377192,'N','N','N','N','N',NULL),

('public_grievance/grievance-public/view',2,'public_grievance/grievance-public/view',NULL,NULL,NULL,NULL,1580377192,1580377192,'N','N','N','N','N',NULL),

('rbac_admin',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N','N',NULL),

('recruitment/nonteaching/academic/form',2,'recruitment/nonteaching/academic/form','','',0,'recruitment_nonteaching',1569413063,1627108193,'N','N','N','N','N',NULL),

('recruitment/nonteaching/academic/save',2,'recruitment/nonteaching/academic/save','','',0,'recruitment_nonteaching',1569413074,1627109751,'N','N','N','N','N',NULL),

('recruitment/nonteaching/academic/view',2,'recruitment/nonteaching/academic/view','','',0,'recruitment_nonteaching',1569413089,1627109839,'N','N','N','N','N',NULL),

('recruitment/nonteaching/advertisement/create',2,'recruitment/nonteaching/advertisement/create','','',0,'recruitment_nonteaching',1569411917,1627109938,'N','N','N','N','N',NULL),

('recruitment/nonteaching/advertisement/index',2,'recruitment/nonteaching/advertisement/index','','',0,'recruitment_nonteaching',1569411898,1627109978,'N','N','N','N','N',NULL),

('recruitment/nonteaching/advertisement/update',2,'recruitment/nonteaching/advertisement/update','','',0,'recruitment_nonteaching',1569411927,1627110006,'N','N','N','N','N',NULL),

('recruitment/nonteaching/advertisement/view',2,'recruitment/nonteaching/advertisement/view','','',0,'recruitment_nonteaching',1569411908,1627110041,'N','N','N','N','N',NULL),

('recruitment/nonteaching/all-application',2,'recruitment/nonteaching/all-application','','',0,'recruitment_nonteaching',1569411676,1627112568,'N','N','N','N','N',NULL),

('recruitment/nonteaching/app/dashboard',2,'recruitment/nonteaching/app/dashboard','','',0,'recruitment_nonteaching',1569408166,1627112995,'N','N','N','N','N',NULL),

('recruitment/nonteaching/app/dashboard-department',2,'recruitment/nonteaching/app/dashboard-department','','',0,'recruitment_nonteaching',1569409042,1627113039,'N','N','N','N','N',NULL),

('recruitment/nonteaching/app/settings',2,'recruitment/nonteaching/app/settings','','',0,'recruitment_nonteaching',1570617779,1627113436,'N','N','N','N','N',NULL),

('recruitment/nonteaching/application-control/create',2,'recruitment/nonteaching/application-control/create','','',0,'recruitment_nonteaching',1569409187,1627113478,'N','N','N','N','N',NULL),

('recruitment/nonteaching/application-control/index',2,'recruitment/nonteaching/application-control/index','','',0,'recruitment_nonteaching',1569409157,1627113449,'N','N','N','N','N',NULL),

('recruitment/nonteaching/application-control/update',2,'recruitment/nonteaching/application-control/update','','',0,'recruitment_nonteaching',1569409401,1627113462,'N','N','N','N','N',NULL),

('recruitment/nonteaching/application-control/view',2,'recruitment/nonteaching/application-control/view','','',0,NULL,1569409173,1569409173,'N','N','N','N','N',NULL),

('recruitment/nonteaching/attendance',2,'recruitment/nonteaching/attendance','','',0,'recruitment_nonteaching',1569411659,1627113487,'N','N','N','N','N',NULL),

('recruitment/nonteaching/candidates/index',2,'recruitment/nonteaching/candidates/index','','',0,'recruitment_nonteaching',1570715851,1627113500,'N','N','N','N','N',NULL),

('recruitment/nonteaching/candidates/registration-mail',2,'recruitment/nonteaching/candidates/registration-mail','','',0,'recruitment_nonteaching',1570715862,1627113507,'N','N','N','N','N',NULL),

('recruitment/nonteaching/department/add',2,'recruitment/nonteaching/department/add','','',0,'recruitment_nonteaching',1569567910,1627113531,'N','N','N','N','N',NULL),

('recruitment/nonteaching/department/index',2,'recruitment/nonteaching/department/index','','',0,'recruitment_nonteaching',1569485570,1627113547,'N','N','N','N','N',NULL),

('recruitment/nonteaching/department/update',2,'recruitment/nonteaching/department/update','','',0,'recruitment_nonteaching',1569485581,1627113705,'N','N','N','N','Y',NULL),

('recruitment/nonteaching/elearning/save',2,'recruitment/nonteaching/elearning/save','','',0,'recruitment_nonteaching',1569415736,1627113730,'N','N','N','N','N',NULL),

('recruitment/nonteaching/form/all-applications',2,'recruitment/nonteaching/form/all-applications','isScreeningAdminNt','',0,'recruitment_nonteaching',1569411140,1627113982,'N','N','N','N','N',NULL),

('recruitment/nonteaching/form/application',2,'recruitment/nonteaching/form/application','isScreeningAdminNt','',0,'recruitment_nonteaching',1569410083,1627114243,'N','N','N','N','N',NULL),

('recruitment/nonteaching/form/change-status',2,'recruitment/nonteaching/form/change-status','isScreeningAdminNt','',0,'recruitment_nonteaching',1569411402,1627114257,'N','N','N','N','N',NULL),

('recruitment/nonteaching/form/getajaxmailcount',2,'recruitment/nonteaching/form/getajaxmailcount','','',0,'recruitment_nonteaching',1569410070,1627114272,'N','N','N','N','N',NULL),

('recruitment/nonteaching/form/index',2,'recruitment/nonteaching/form/index','isScreeningAdminNt','',0,'recruitment_nonteaching',1569410047,1627114433,'N','N','N','N','N',NULL),

('recruitment/nonteaching/form/inprocess-application',2,'recruitment/nonteaching/form/inprocess-application','isScreeningAdminNt','',0,'recruitment_nonteaching',1569411262,1627114282,'N','N','N','N','N',NULL),

('recruitment/nonteaching/form/paid-application',2,'recruitment/nonteaching/form/paid-application','isScreeningAdminNt','',0,'recruitment_nonteaching',1569411124,1627114292,'N','N','N','N','N',NULL),

('recruitment/nonteaching/form/post',2,'recruitment/nonteaching/form/post','isScreeningAdminNt','',0,'recruitment_nonteaching',1569410146,1627114312,'N','N','N','N','N',NULL),

('recruitment/nonteaching/form/print-bulk',2,'recruitment/nonteaching/form/print-bulk','isScreeningAdminNt','',0,'recruitment_nonteaching',1569411360,1627114452,'N','N','N','N','N',NULL),

('recruitment/nonteaching/form/print-form',2,'recruitment/nonteaching/form/print-form','isScreeningAdminNt','',0,'recruitment_nonteaching',1569410111,1627114322,'N','N','N','N','N',NULL),

('recruitment/nonteaching/form/print-shortlisted-applicants',2,'recruitment/nonteaching/form/print-shortlisted-applicants','isScreeningAdminNt','',0,'recruitment_nonteaching',1569411336,1627114332,'N','N','N','N','N',NULL),

('recruitment/nonteaching/form/print-summary',2,'recruitment/nonteaching/form/print-summary','isScreeningAdminNt','',0,'recruitment_nonteaching',1569411573,1627114345,'N','N','N','N','N',NULL),

('recruitment/nonteaching/form/print-summary-option',2,'recruitment/nonteaching/form/print-summary-option','isScreeningAdminNt','',0,'recruitment_nonteaching',1569411593,1627114354,'N','N','N','N','N',NULL),

('recruitment/nonteaching/form/report',2,'recruitment/nonteaching/form/report','isScreeningAdminNt','',0,'recruitment_nonteaching',1569411608,1627114755,'N','N','N','N','N',NULL),

('recruitment/nonteaching/form/shortlist',2,'recruitment/nonteaching/form/shortlist','isScreeningAdminNt','',0,'recruitment_nonteaching',1569411296,1627114363,'N','N','N','N','N',NULL),

('recruitment/nonteaching/form/shortlisted-applicants',2,'recruitment/nonteaching/form/shortlisted-applicants','isScreeningAdminNt','',0,'recruitment_nonteaching',1569411313,1627114371,'N','N','N','N','N',NULL),

('recruitment/nonteaching/form/summary',2,'recruitment/nonteaching/form/summary','isScreeningAdminNt','',0,'recruitment_nonteaching',1569411279,1627114737,'N','N','N','N','N',NULL),

('recruitment/nonteaching/form/suspend-ajax',2,'recruitment/nonteaching/form/suspend-ajax','isScreeningAdminNt','',0,'recruitment_nonteaching',1569411384,1627114380,'N','N','N','N','N',NULL),

('recruitment/nonteaching/form/view',2,'recruitment/nonteaching/form/view','isScreeningAdminNt','',0,'recruitment_nonteaching',1569410123,1627114795,'N','N','N','N','N',NULL),

('recruitment/nonteaching/invitedlecture/save',2,'recruitment/nonteaching/invitedlecture/save','','',0,'recruitment_nonteaching',1569415781,1627114802,'N','N','N','N','N',NULL),

('recruitment/nonteaching/job-config/create',2,'recruitment/nonteaching/job-config/create','','',0,'recruitment_nonteaching',1569412471,1627115176,'N','N','N','N','N',NULL),

('recruitment/nonteaching/job-config/create-all',2,'recruitment/nonteaching/job-config/create-all','','',0,'recruitment_nonteaching',1569412566,1627115193,'N','N','N','N','N',NULL),

('recruitment/nonteaching/job-config/index',2,'recruitment/nonteaching/job-config/index','','',0,'recruitment_nonteaching',1569412426,1627115204,'N','N','N','N','N',NULL),

('recruitment/nonteaching/job-config/update',2,'recruitment/nonteaching/job-config/update','','',0,'recruitment_nonteaching',1569412541,1627115216,'N','N','N','N','N',NULL),

('recruitment/nonteaching/job-config/update-fees',2,'recruitment/nonteaching/job-config/update-fees','','',0,NULL,1569412552,1569412552,'N','N','N','N','N',NULL),

('recruitment/nonteaching/job-config/view',2,'recruitment/nonteaching/job-config/view','','',0,'recruitment_nonteaching',1569412436,1627115225,'N','N','N','N','N',NULL),

('recruitment/nonteaching/job-config/view-fees',2,'recruitment/nonteaching/job-config/view-fees','','',0,'recruitment_nonteaching',1569412460,1627115250,'N','N','N','N','N',NULL),

('recruitment/nonteaching/job-config/view-job',2,'recruitment/nonteaching/job-config/view-job','','',0,'recruitment_nonteaching',1569412446,1627115242,'N','N','N','N','N',NULL),

('recruitment/nonteaching/jobpost/change-show-screening',2,'recruitment/nonteaching/jobpost/change-show-screening','','',0,'recruitment_nonteaching',1572594285,1627115266,'N','N','N','N','N',NULL),

('recruitment/nonteaching/jobpost/change-show-status',2,'recruitment/nonteaching/jobpost/change-show-status','','',0,'recruitment_nonteaching',1572595168,1627115388,'N','N','N','N','N',NULL),

('recruitment/nonteaching/jobpost/change-status',2,'recruitment/nonteaching/jobpost/change-status','','',0,'recruitment_nonteaching',1569412307,1627115405,'N','N','N','N','N',NULL),

('recruitment/nonteaching/jobpost/create',2,'recruitment/nonteaching/jobpost/create','isScreeningAdminNt','',0,'recruitment_nonteaching',1569412130,1627115334,'N','N','N','N','N',NULL),

('recruitment/nonteaching/jobpost/index',2,'recruitment/nonteaching/jobpost/index','isScreeningAdminNt','',0,'recruitment_nonteaching',1569412108,1627115325,'N','N','N','N','N',NULL),

('recruitment/nonteaching/jobpost/setting',2,'recruitment/nonteaching/jobpost/setting','isScreeningAdminNt','',0,'recruitment_nonteaching',1569412283,1627115315,'N','N','N','N','N',NULL),

('recruitment/nonteaching/jobpost/stat',2,'recruitment/nonteaching/jobpost/stat','isScreeningAdminNt','',0,'recruitment_nonteaching',1569412298,1627115303,'N','N','N','N','N',NULL),

('recruitment/nonteaching/jobpost/update',2,'recruitment/nonteaching/jobpost/update','isScreeningAdminNt','',0,'recruitment_nonteaching',1569412119,1627115296,'N','N','N','N','N',NULL),

('recruitment/nonteaching/jobpost/view',2,'recruitment/nonteaching/jobpost/view','isScreeningAdminNt','',0,'recruitment_nonteaching',1569412145,1627115289,'N','N','N','N','N',NULL),

('recruitment/nonteaching/profile/change-status',2,'recruitment/nonteaching/profile/change-status','','',0,'recruitment_nonteaching',1572603310,1627115282,'N','N','N','N','N',NULL),

('recruitment/nonteaching/profile/finish-screening-otp',2,'recruitment/nonteaching/profile/finish-screening-otp','','',0,'recruitment_nonteaching',1572603365,1627115455,'N','N','N','N','N',NULL),

('recruitment/nonteaching/profile/index',2,'recruitment/nonteaching/profile/index','','',0,'recruitment_nonteaching',1572601899,1627115462,'N','N','N','N','N',NULL),

('recruitment/nonteaching/profile/save',2,'recruitment/nonteaching/profile/save','','',0,'recruitment_nonteaching',1572603391,1627115471,'N','N','N','N','N',NULL),

('recruitment/nonteaching/projectoutput/save',2,'recruitment/nonteaching/projectoutput/save','','',0,'recruitment_nonteaching',1569415467,1627115481,'N','N','N','N','N',NULL),

('recruitment/nonteaching/report-interview',2,'recruitment/nonteaching/report-interview','','',0,'recruitment_nonteaching',1569411643,1627115489,'N','N','N','N','N',NULL),

('recruitment/nonteaching/researcharticle/index',2,'recruitment/nonteaching/researcharticle/index','','',0,'recruitment_nonteaching',1569415403,1627115503,'N','N','N','N','N',NULL),

('recruitment/nonteaching/researcharticle/save',2,'recruitment/nonteaching/researcharticle/save','','',0,'recruitment_nonteaching',1569415391,1627115613,'N','N','N','N','N',NULL),

('recruitment/nonteaching/researchexp/save',2,'recruitment/nonteaching/researchexp/save','','',0,'recruitment_nonteaching',1569415329,1627115596,'N','N','N','N','N',NULL),

('recruitment/nonteaching/researchguidance/save',2,'recruitment/nonteaching/researchguidance/save','','',0,'recruitment_nonteaching',1569415281,1627115584,'N','N','N','N','N',NULL),

('recruitment/nonteaching/researchproject/save',2,'recruitment/nonteaching/researchproject/save','','',0,'recruitment_nonteaching',1569415207,1627115573,'N','N','N','N','N',NULL),

('recruitment/nonteaching/shortlisted-report',2,'recruitment/nonteaching/shortlisted-report','','',0,'recruitment_nonteaching',1569411627,1627115555,'N','N','N','N','N',NULL),

('recruitment/nonteaching/teachingexp/index',2,'recruitment/nonteaching/teachingexp/index','','',0,'recruitment_nonteaching',1569415098,1627115534,'N','N','N','N','N',NULL),

('recruitment/nonteaching/teachingexp/save',2,'recruitment/nonteaching/teachingexp/save','','',0,'recruitment_nonteaching',1569415109,1627115521,'N','N','N','N','N',NULL),

('recruitment/teaching/academic/form',2,'recruitment/teaching/academic/form','','',0,'recruitment_teaching',1569413063,1627115935,'N','N','N','N','N',NULL),

('recruitment/teaching/academic/save',2,'recruitment/teaching/academic/save','','',0,'recruitment_teaching',1569413074,1627115946,'N','N','N','N','N',NULL),

('recruitment/teaching/academic/view',2,'recruitment/teaching/academic/view','','',0,'recruitment_teaching',1569413089,1627115959,'N','N','N','N','N',NULL),

('recruitment/teaching/advertisement/create',2,'recruitment/teaching/advertisement/create','','',0,'recruitment_teaching',1569411917,1627116085,'N','N','N','N','N',NULL),

('recruitment/teaching/advertisement/index',2,'recruitment/teaching/advertisement/index','','',0,'recruitment_teaching',1569411898,1627116097,'N','N','N','N','N',NULL),

('recruitment/teaching/advertisement/update',2,'recruitment/teaching/advertisement/update','','',0,'recruitment_teaching',1569411927,1627116132,'N','N','N','N','N',NULL),

('recruitment/teaching/advertisement/view',2,'recruitment/teaching/advertisement/view','','',0,'recruitment_teaching',1569411908,1627116144,'N','N','N','N','N',NULL),

('recruitment/teaching/all-application',2,'recruitment/teaching/all-application','','',0,'recruitment_teaching',1569411676,1627116258,'N','N','N','N','N',NULL),

('recruitment/teaching/app/dashboard',2,'recruitment/teaching/app/dashboard','','',0,'recruitment_teaching',1569408166,1627116285,'N','N','N','N','N',NULL),

('recruitment/teaching/app/dashboard-department',2,'recruitment/teaching/app/dashboard-department','','',0,'recruitment_teaching',1569409042,1627116304,'N','N','N','N','N',NULL),

('recruitment/teaching/app/settings',2,'recruitment/teaching/app/settings','','',0,'recruitment_teaching',1570617779,1627116313,'N','N','N','N','N',NULL),

('recruitment/teaching/application-control/create',2,'recruitment/teaching/application-control/create','','',0,'recruitment_teaching',1569409187,1627116322,'N','N','N','N','N',NULL),

('recruitment/teaching/application-control/index',2,'recruitment/teaching/application-control/index','','',0,'recruitment_teaching',1569409157,1627116333,'N','N','N','N','N',NULL),

('recruitment/teaching/application-control/update',2,'recruitment/teaching/application-control/update','','',0,'recruitment_teaching',1569409401,1627116526,'N','N','N','N','N',NULL),

('recruitment/teaching/application-control/view',2,'recruitment/teaching/application-control/view','','',0,'recruitment_teaching',1569409173,1627116536,'N','N','N','N','N',NULL),

('recruitment/teaching/attendance',2,'recruitment/teaching/attendance','','',0,'recruitment_teaching',1569411659,1627116547,'N','N','N','N','N',NULL),

('recruitment/teaching/candidates/index',2,'recruitment/teaching/candidates/index','','',0,'recruitment_teaching',1570715851,1627116669,'N','N','N','N','N',NULL),

('recruitment/teaching/candidates/registration-mail',2,'recruitment/teaching/candidates/registration-mail','','',0,'recruitment_teaching',1570715862,1627116569,'N','N','N','N','N',NULL),

('recruitment/teaching/department/add',2,'recruitment/teaching/department/add','','',0,'recruitment_teaching',1569567910,1627116727,'N','N','N','N','N',NULL),

('recruitment/teaching/department/index',2,'recruitment/teaching/department/index','','',0,'recruitment_teaching',1569485570,1627116738,'N','N','N','N','N',NULL),

('recruitment/teaching/department/update',2,'recruitment/teaching/department/update','','',0,NULL,1569485581,1569485581,'N','N','N','N','N',NULL),

('recruitment/teaching/elearning/save',2,'recruitment/teaching/elearning/save','','',0,NULL,1569415736,1569415736,'N','N','N','N','N',NULL),

('recruitment/teaching/form/all-applications',2,'recruitment/teaching/form/all-applications','isScreeningAdmin','',0,'recruitment_teaching',1569411140,1627116619,'N','N','N','N','N',NULL),

('recruitment/teaching/form/application',2,'recruitment/teaching/form/application','isScreeningAdmin','',0,'recruitment_teaching',1569410083,1627116609,'N','N','N','N','N',NULL),

('recruitment/teaching/form/change-status',2,'recruitment/teaching/form/change-status','isScreeningAdmin','',0,'recruitment_teaching',1569411402,1627116599,'N','N','N','N','N',NULL),

('recruitment/teaching/form/getajaxmailcount',2,'recruitment/teaching/form/getajaxmailcount','','',0,'recruitment_teaching',1569410070,1627116591,'N','N','N','N','N',NULL),

('recruitment/teaching/form/index',2,'recruitment/teaching/form/index','isScreeningAdmin','',0,'recruitment_teaching',1569410047,1627116584,'N','N','N','N','N',NULL),

('recruitment/teaching/form/inprocess-application',2,'recruitment/teaching/form/inprocess-application','isScreeningAdmin','',0,'recruitment_teaching',1569411262,1627116795,'N','N','N','N','N',NULL),

('recruitment/teaching/form/mark',2,'recruitment/teaching/form/mark','isScreeningAdmin','',0,'recruitment_teaching',1569411140,1627116979,'N','N','N','N','N',NULL),

('recruitment/teaching/form/paid-application',2,'recruitment/teaching/form/paid-application','isScreeningAdmin','',0,'recruitment_teaching',1569411124,1627116987,'N','N','N','N','N',NULL),

('recruitment/teaching/form/post',2,'recruitment/teaching/form/post','isScreeningAdmin','',0,'recruitment_teaching',1569410146,1627116997,'N','N','N','N','N',NULL),

('recruitment/teaching/form/print-bulk',2,'recruitment/teaching/form/print-bulk','isScreeningAdmin','',0,'recruitment_teaching',1569411360,1627117029,'N','N','N','N','N',NULL),

('recruitment/teaching/form/print-form',2,'recruitment/teaching/form/print-form','isScreeningAdmin','',0,'recruitment_teaching',1569410111,1627117296,'N','N','N','N','N',NULL),

('recruitment/teaching/form/print-shortlisted-applicants',2,'recruitment/teaching/form/print-shortlisted-applicants','isScreeningAdmin','',0,'recruitment_teaching',1569411336,1627117339,'N','N','N','N','N',NULL),

('recruitment/teaching/form/print-summary',2,'recruitment/teaching/form/print-summary','isScreeningAdmin','',0,'recruitment_teaching',1569411573,1627117317,'N','N','N','N','N',NULL),

('recruitment/teaching/form/print-summary-option',2,'recruitment/teaching/form/print-summary-option','isScreeningAdmin','',0,'recruitment_teaching',1569411593,1627117355,'N','N','N','N','N',NULL),

('recruitment/teaching/form/report',2,'recruitment/teaching/form/report','isScreeningAdmin','',0,NULL,1569411608,1569411608,'N','N','N','N','N',NULL),

('recruitment/teaching/form/shortlist',2,'recruitment/teaching/form/shortlist','isScreeningAdmin','',0,'recruitment_teaching',1569411296,1627117377,'N','N','N','N','N',NULL),

('recruitment/teaching/form/shortlisted-applicants',2,'recruitment/teaching/form/shortlisted-applicants','isScreeningAdmin','',0,NULL,1569411313,1569411313,'N','N','N','N','N',NULL),

('recruitment/teaching/form/summary',2,'recruitment/teaching/form/summary','isScreeningAdmin','',0,NULL,1569411279,1569411279,'N','N','N','N','N',NULL),

('recruitment/teaching/form/suspend-ajax',2,'recruitment/teaching/form/suspend-ajax','isScreeningAdmin','',0,'recruitment_teaching',1569411384,1627117465,'N','N','N','N','N',NULL),

('recruitment/teaching/form/view',2,'recruitment/teaching/form/view','isScreeningAdmin','',0,'recruitment_teaching',1569410123,1627117457,'N','N','N','N','N',NULL),

('recruitment/teaching/invitedlecture/save',2,'recruitment/teaching/invitedlecture/save','','',0,'recruitment_teaching',1569415781,1627117443,'N','N','N','N','N',NULL),

('recruitment/teaching/job-config/create',2,'recruitment/teaching/job-config/create','','',0,'recruitment_teaching',1569412471,1627117431,'N','N','N','N','N',NULL),

('recruitment/teaching/job-config/create-all',2,'recruitment/teaching/job-config/create-all','','',0,'recruitment_teaching',1569412566,1627117420,'N','N','N','N','N',NULL),

('recruitment/teaching/job-config/index',2,'recruitment/teaching/job-config/index','','',0,'recruitment_teaching',1569412426,1627117410,'N','N','N','N','N',NULL),

('recruitment/teaching/job-config/update',2,'recruitment/teaching/job-config/update','','',0,'recruitment_teaching',1569412541,1627117396,'N','N','N','N','N',NULL),

('recruitment/teaching/job-config/update-fees',2,'recruitment/teaching/job-config/update-fees','','',0,'recruitment_teaching',1569412552,1627117628,'N','N','N','N','Y',NULL),

('recruitment/teaching/job-config/view',2,'recruitment/teaching/job-config/view','','',0,'recruitment_teaching',1569412436,1627117641,'N','N','N','N','N',NULL),

('recruitment/teaching/job-config/view-fees',2,'recruitment/teaching/job-config/view-fees','','',0,'recruitment_teaching',1569412460,1627124367,'N','N','N','N','N',NULL),

('recruitment/teaching/job-config/view-job',2,'recruitment/teaching/job-config/view-job','','',0,'recruitment_teaching',1569412446,1627117817,'N','N','N','N','N',NULL),

('recruitment/teaching/jobpost/change-show-screening',2,'recruitment/teaching/jobpost/change-show-screening','','',0,'recruitment_teaching',1572594285,1627124396,'N','N','N','N','N',NULL),

('recruitment/teaching/jobpost/change-show-status',2,'recruitment/teaching/jobpost/change-show-status','','',0,'recruitment_teaching',1572595168,1627124411,'N','N','N','N','N',NULL),

('recruitment/teaching/jobpost/change-status',2,'recruitment/teaching/jobpost/change-status','','',0,'recruitment_teaching',1569412307,1627124420,'N','N','N','N','N',NULL),

('recruitment/teaching/jobpost/create',2,'recruitment/teaching/jobpost/create','isScreeningAdmin','',0,'recruitment_teaching',1569412130,1627124430,'N','N','N','N','N',NULL),

('recruitment/teaching/jobpost/index',2,'recruitment/teaching/jobpost/index','isScreeningAdmin','',0,'recruitment_teaching',1569412108,1627124462,'N','N','N','N','N',NULL),

('recruitment/teaching/jobpost/setting',2,'recruitment/teaching/jobpost/setting','isScreeningAdmin','',0,'recruitment_teaching',1569412283,1627124595,'N','N','N','N','N',NULL),

('recruitment/teaching/jobpost/stat',2,'recruitment/teaching/jobpost/stat','isScreeningAdmin','',0,'recruitment_teaching',1569412298,1627124605,'N','N','N','N','N',NULL),

('recruitment/teaching/jobpost/update',2,'recruitment/teaching/jobpost/update','isScreeningAdmin','',0,'recruitment_teaching',1569412119,1627124612,'N','N','N','N','N',NULL),

('recruitment/teaching/jobpost/view',2,'recruitment/teaching/jobpost/view','isScreeningAdmin','',0,'recruitment_teaching',1569412145,1627124648,'N','N','N','N','N',NULL),

('recruitment/teaching/profile/change-status',2,'recruitment/teaching/profile/change-status','','',0,NULL,1572603310,1572603310,'N','N','N','N','N',NULL),

('recruitment/teaching/profile/finish-screening-otp',2,'recruitment/teaching/profile/finish-screening-otp','','',0,'recruitment_teaching',1572603365,1627124526,'N','N','N','N','N',NULL),

('recruitment/teaching/profile/index',2,'recruitment/teaching/profile/index','','',0,'recruitment_teaching',1572601899,1627124515,'N','N','N','N','N',NULL),

('recruitment/teaching/profile/save',2,'recruitment/teaching/profile/save','','',0,'recruitment_teaching',1572603391,1627124506,'N','N','N','N','N',NULL),

('recruitment/teaching/projectoutput/save',2,'recruitment/teaching/projectoutput/save','','',0,'recruitment_teaching',1569415467,1627124498,'N','N','N','N','N',NULL),

('recruitment/teaching/report-interview',2,'recruitment/teaching/report-interview','','',0,'recruitment_teaching',1569411643,1627124490,'N','N','N','N','N',NULL),

('recruitment/teaching/researcharticle/index',2,'recruitment/teaching/researcharticle/index','','',0,'recruitment_teaching',1569415403,1627124476,'N','N','N','N','N',NULL),

('recruitment/teaching/researcharticle/save',2,'recruitment/teaching/researcharticle/save','','',0,'recruitment_teaching',1569415391,1627124712,'N','N','N','N','N',NULL),

('recruitment/teaching/researchexp/save',2,'recruitment/teaching/researchexp/save','','',0,'recruitment_teaching',1569415329,1627124720,'N','N','N','N','N',NULL),

('recruitment/teaching/researchguidance/save',2,'recruitment/teaching/researchguidance/save','','',0,'recruitment_teaching',1569415281,1627124729,'N','N','N','N','N',NULL),

('recruitment/teaching/researchproject/save',2,'recruitment/teaching/researchproject/save','','',0,'recruitment_teaching',1569415207,1627124744,'N','N','N','N','N',NULL),

('recruitment/teaching/shortlisted-report',2,'recruitment/teaching/shortlisted-report','','',0,'recruitment_teaching',1569411627,1627124754,'N','N','N','N','N',NULL),

('recruitment/teaching/teachingexp/index',2,'recruitment/teaching/teachingexp/index','','',0,'recruitment_teaching',1569415098,1627124766,'N','N','N','N','N',NULL),

('recruitment/teaching/teachingexp/save',2,'recruitment/teaching/teachingexp/save','','',0,'recruitment_teaching',1569415109,1627124781,'N','N','N','N','N',NULL),

('rpms_accounts',1,'RPMS Accounts Investigator',NULL,NULL,NULL,NULL,1568963828,1568963828,'N','N','N','N','N',NULL),

('rpms_admin',1,'RPMS Administration',NULL,NULL,NULL,NULL,1568963767,1568963767,'N','N','N','N','N',NULL),

('rpms_admin_view',1,'view only for RPMS module',NULL,NULL,NULL,NULL,1571641659,1571641659,'N','N','N','N','N',NULL),

('rpms_pi',1,'RPMS Project Investigator',NULL,NULL,NULL,NULL,1568963828,1568963828,'N','N','N','N','N',NULL),

('rpms/account/view',2,'rpms/account/view',NULL,'',NULL,'rpms',1616753545,1625808561,'N','N','N','N','N',NULL),

('rpms/dashboard/index',2,'RPMS Dashboard','','',NULL,'rpms',1563216038,1625808593,'N','N','N','N','N',NULL),

('rpms/dashboard/manage',2,'RPMS Manage Dashboard',NULL,'',NULL,'rpms',1568988126,1625808782,'N','N','N','N','N',NULL),

('rpms/settings/index',2,'RPMS setting index',NULL,'',NULL,'rpms',1566474115,1625808831,'N','N','N','Y','N',NULL),

('rsd_admin',1,'rsd_admin',NULL,NULL,NULL,NULL,1598438851,1598438851,'N','N','N','N','N',NULL),

('rti_admin_view',1,'View-only rights for RTI module',NULL,NULL,NULL,NULL,1571479980,1571479980,'N','N','N','N','N',NULL),

('rti_department',1,'This role is to be provided to the administrative post from the particular organization unit who handles the RTI.  Once the role is applied, the RTI forwarded by the CPIO officer\'s visible to the particular person.','','RTI Role at Department Level',NULL,NULL,1562995740,1572263134,'N','N','N','N','N',NULL),

('rti_first_appellate_authority',1,'This role is for the First Appellate Authority of the University who handles all the cases received under FAA.','','First Appellate Authority',NULL,NULL,1563248933,1572263184,'N','N','N','N','N',NULL),

('rti_master_status_create',2,'RTI Application Master Creation.',NULL,NULL,NULL,NULL,1555403730,1555403730,'N','N','N','N','N',NULL),

('rti_officer',1,'This role is to be provided to the CPIO officer of the Univeristy, who initially registers the RTI received at the University.','','CPIO',NULL,NULL,1562672193,1572263120,'N','N','N','N','N',NULL),

('rti/admin/index',2,'Permission To identify User at RTI admin','','',NULL,NULL,1562776099,1562783990,'N','N','N','N','N',NULL),

('rti/app/create',2,'Permission to register RTI to the System','','',NULL,NULL,1562694751,1564459677,'N','N','N','N','N',NULL),

('rti/app/delete',2,'Permission to delete the RTI.','','',NULL,NULL,1562778707,1564459693,'N','N','N','N','N',NULL),

('rti/app/first-appellate-authority-index',2,'Permission to use the system as First Appellate Authority.','','',NULL,NULL,1563249158,1564459718,'N','N','N','N','N',NULL),

('rti/app/freeze-rti',2,'Permission to enable / disable to update the RTI.','','',NULL,NULL,1562778746,1564459752,'N','N','N','N','N',NULL),

('rti/app/index',2,'Permission to view the RTI list.','','',NULL,NULL,1562778627,1564459769,'N','N','N','N','N',NULL),

('rti/app/index-freeze',2,'rti/app/index-freeze',NULL,NULL,NULL,NULL,1562778639,1562778639,'N','N','N','N','N',NULL),

('rti/app/mark-to-first-appellate-authority',2,'Permission to mark the RTI to First Appellate Authority.','','',NULL,NULL,1563248565,1564459810,'N','N','N','N','N',NULL),

('rti/app/print-pdf',2,'Permission to print the RTI in PDF format.','','',NULL,NULL,1562994935,1564459835,'N','N','N','N','N',NULL),

('rti/app/print-responses',2,'Permission to Print the Responses provided by the Organization Units.','','',NULL,NULL,1562778763,1564459884,'N','N','N','N','N',NULL),

('rti/app/response-from-first-appellate',2,'Permission to Provide Response by the First Appellate Authority.','','',NULL,NULL,1563257529,1564459908,'N','N','N','N','N',NULL),

('rti/app/rti-file-delete',2,'rti/app/rti-file-delete',NULL,NULL,NULL,NULL,1563284064,1563284064,'N','N','N','N','N',NULL),

('rti/app/send-response',2,'rti/app/send-response',NULL,NULL,NULL,NULL,1581676846,1581676846,'N','N','N','N','N',NULL),

('rti/app/update',2,'Permission to update the registered RTI.','','',NULL,NULL,1562697067,1564459950,'N','N','N','N','N',NULL),

('rti/app/view',2,'rti/app/view',NULL,NULL,NULL,NULL,1562697040,1562697040,'N','N','N','N','N',NULL),

('rti/communication/create',2,'rti/communication/create',NULL,NULL,NULL,NULL,1580988898,1580988898,'N','N','N','N','N',NULL),

('rti/communication/index',2,'rti/communication/index',NULL,NULL,NULL,NULL,1580988907,1580988907,'N','N','N','N','N',NULL),

('rti/default/dashboard',2,'rti/default/dashboard',NULL,NULL,NULL,NULL,1562694725,1562694725,'N','N','N','N','N',NULL),

('rti/department/dashboard',2,'Department access to RTI OAs',NULL,NULL,NULL,NULL,1563257401,1563257401,'N','N','N','N','N',NULL),

('rti/department/index',2,'rti/department/index',NULL,NULL,NULL,NULL,1562994971,1562994971,'N','N','N','N','N',NULL),

('rti/department/panel',2,'rti/department/panel',NULL,NULL,NULL,NULL,1563274108,1563274108,'N','N','N','N','N',NULL),

('rti/forwarded/confirm-revoke',2,'two step to revoke confirmation',NULL,NULL,NULL,NULL,1571308802,1571308802,'N','N','N','N','N',NULL),

('rti/forwarded/create',2,'rti/forwarded/create',NULL,NULL,NULL,NULL,1562779205,1562779205,'N','N','N','N','N',NULL),

('rti/forwarded/create-modal',2,'rti/forwarded/create-modal',NULL,NULL,NULL,NULL,1562779218,1562779218,'N','N','N','N','N',NULL),

('rti/forwarded/delete',2,'rti/forwarded/delete',NULL,NULL,NULL,NULL,1562779242,1562779242,'N','N','N','N','N',NULL),

('rti/forwarded/index',2,'rti/forwarded/index',NULL,NULL,NULL,NULL,1562779166,1562779166,'N','N','N','N','N',NULL),

('rti/forwarded/view',2,'rti/forwarded/view',NULL,NULL,NULL,NULL,1562779193,1562779193,'N','N','N','N','N',NULL),

('rti/log/create',2,'rti/log/create',NULL,NULL,NULL,NULL,1562779298,1562779298,'N','N','N','N','N',NULL),

('rti/log/delete',2,'rti/log/delete',NULL,NULL,NULL,NULL,1562779316,1562779316,'N','N','N','N','N',NULL),

('rti/log/index',2,'rti/log/index',NULL,NULL,NULL,NULL,1562779277,1562779277,'N','N','N','N','N',NULL),

('rti/log/update',2,'rti/log/update',NULL,NULL,NULL,NULL,1562779307,1562779307,'N','N','N','N','N',NULL),

('rti/log/view',2,'rti/log/view',NULL,NULL,NULL,NULL,1562779288,1562779288,'N','N','N','N','N',NULL),

('rti/responsed/accept-response',2,'rti/responsed/accept-response',NULL,NULL,NULL,NULL,1562995325,1562995325,'N','N','N','N','N',NULL),

('rti/responsed/create-modal',2,'rti/responsed/create-modal','','',NULL,NULL,1562779378,1562995263,'N','N','N','N','N',NULL),

('rti/responsed/delete',2,'rti/responsed/delete',NULL,NULL,NULL,NULL,1562779407,1562779407,'N','N','N','N','N',NULL),

('rti/responsed/delete-response-file',2,'rti/responsed/delete-response-file','','',NULL,NULL,1563180196,1563180518,'N','N','N','N','N',NULL),

('rti/responsed/index',2,'rti/responsed/index',NULL,NULL,NULL,NULL,1562779361,1562779361,'N','N','N','N','N',NULL),

('rti/responsed/raise-concern',2,'rti/responsed/raise-concern',NULL,NULL,NULL,NULL,1562995305,1562995305,'N','N','N','N','N',NULL),

('rti/responsed/update-modal',2,'rti/responsed/update-modal','','',NULL,NULL,1562779398,1562995279,'N','N','N','N','N',NULL),

('rti/responsed/view',2,'rti/responsed/view',NULL,NULL,NULL,NULL,1562779386,1562779386,'N','N','N','N','N',NULL),

('rti/rti-category/create',2,'rti/rti-category/create',NULL,NULL,NULL,NULL,1580975471,1580975471,'N','N','N','N','N',NULL),

('rti/rti-category/delete',2,'rti/rti-category/delete',NULL,NULL,NULL,NULL,1580975555,1580975555,'N','N','N','N','N',NULL),

('rti/rti-category/index',2,'rti/rti-category/index',NULL,NULL,NULL,NULL,1580975526,1580975526,'N','N','N','N','N',NULL),

('rti/rti-category/update',2,'rti/rti-category/update',NULL,NULL,NULL,NULL,1580975480,1580975480,'N','N','N','N','N',NULL),

('rti/rti-category/view',2,'rti/rti-category/view',NULL,NULL,NULL,NULL,1580975506,1580975506,'N','N','N','N','N',NULL),

('rti/rti-response-to-applicant/index',2,'rti/rti-response-to-applicant/index',NULL,NULL,NULL,NULL,1581683703,1581683703,'N','N','N','N','N',NULL),

('rti/rti-uploads/create',2,'Permission to add more RTI Files','','',NULL,NULL,1572844746,1572844822,'N','N','N','N','N',NULL),

('rti/rti-uploads/delete',2,'Deletion of RTI Files',NULL,NULL,NULL,NULL,1572845637,1572845637,'N','N','N','N','N',NULL),

('rti/settings/index',2,'Permission to edit the RTI settings',NULL,NULL,NULL,NULL,1565171335,1565171335,'N','N','N','N','N',NULL),

('security_admin',1,'this role is for security head, he handles settings ','','',NULL,NULL,1581416980,1603107464,'N','N','N','N','N',NULL),

('security_admin_view',1,'this role is for the security admin view',NULL,NULL,NULL,NULL,1581417015,1581417015,'N','N','N','N','N',NULL),

('security/awareness-program/create',2,'security/awareness-program/create',NULL,'',NULL,'program',1581416313,1627009569,'N','N','N','N','N',NULL),

('security/awareness-program/index',2,'security/awareness-program/index',NULL,'',NULL,'program',1581416301,1627009586,'N','N','N','N','N',NULL),

('security/awareness-program/save',2,'security/awareness-program/save',NULL,'',NULL,'program',1581416369,1627009608,'N','N','N','N','N',NULL),

('security/awareness-program/update',2,'security/awareness-program/update',NULL,'',NULL,'program',1581416325,1627009635,'N','N','N','N','N',NULL),

('security/awareness-program/view',2,'security/awareness-program/view',NULL,'',NULL,'program',1581416348,1627009650,'N','N','N','N','N',NULL),

('security/dashboard/index',2,'security/dashboard/index',NULL,NULL,NULL,NULL,1581415673,1581415673,'N','N','N','N','N',NULL),

('security/facility-ou/create',2,'security/facility-ou/create',NULL,NULL,NULL,NULL,1581416191,1581416191,'N','N','N','N','N',NULL),

('security/facility-ou/export-csv',2,'security/facility-ou/export-csv',NULL,NULL,NULL,NULL,1613217308,1613217308,'N','N','N','N','N',NULL),

('security/facility-ou/index',2,'security/facility-ou/index',NULL,NULL,NULL,NULL,1581416166,1581416166,'N','N','N','N','N',NULL),

('security/facility-ou/update',2,'security/facility-ou/update',NULL,NULL,NULL,NULL,1581416204,1581416204,'N','N','N','N','N',NULL),

('security/facility-ou/view',2,'security/facility-ou/view',NULL,NULL,NULL,NULL,1581416179,1581416179,'N','N','N','N','N',NULL),

('security/facility/create',2,'security/facility/create',NULL,NULL,NULL,NULL,1581415835,1581415835,'N','N','N','N','N',NULL),

('security/facility/export-csv',2,'security/facility/export-csv',NULL,NULL,NULL,NULL,1613217308,1613217308,'N','N','N','N','N',NULL),

('security/facility/index',2,'security/facility/index',NULL,NULL,NULL,NULL,1581415794,1581415794,'N','N','N','N','N',NULL),

('security/facility/save',2,'security/facility/save',NULL,NULL,NULL,NULL,1581415851,1581415851,'N','N','N','N','N',NULL),

('security/facility/update',2,'security/facility/update',NULL,NULL,NULL,NULL,1581415823,1581415823,'N','N','N','N','N',NULL),

('security/facility/view',2,'security/facility/view',NULL,NULL,NULL,NULL,1581415808,1581415808,'N','N','N','N','N',NULL),

('security/guidelines/create',2,'security/guidelines/create',NULL,NULL,NULL,NULL,1581416134,1581416134,'N','N','N','N','N',NULL),

('security/guidelines/guideline',2,'security/guidelines/guideline',NULL,NULL,NULL,NULL,1581416117,1581416117,'N','N','N','N','N',NULL),

('security/guidelines/index',2,'security/guidelines/index',NULL,NULL,NULL,NULL,1581416063,1581416063,'N','N','N','N','N',NULL),

('security/guidelines/update',2,'security/guidelines/update',NULL,NULL,NULL,NULL,1581416091,1581416091,'N','N','N','N','N',NULL),

('security/guidelines/view',2,'security/guidelines/view',NULL,NULL,NULL,NULL,1581416078,1581416078,'N','N','N','N','N',NULL),

('security/helpline/create',2,'security/helpline/create',NULL,NULL,NULL,NULL,1581415718,1581415718,'N','N','N','N','N',NULL),

('security/helpline/index',2,'security/helpline/index',NULL,NULL,NULL,NULL,1581415690,1581415690,'N','N','N','N','N',NULL),

('security/helpline/save',2,'security/helpline/save',NULL,NULL,NULL,NULL,1581415762,1581415762,'N','N','N','N','N',NULL),

('security/helpline/update',2,'security/helpline/update',NULL,NULL,NULL,NULL,1581415749,1581415749,'N','N','N','N','N',NULL),

('security/helpline/view',2,'security/helpline/view',NULL,NULL,NULL,NULL,1581415736,1581415736,'N','N','N','N','N',NULL),

('security/incident-record/create',2,'security/incident-record/create',NULL,NULL,NULL,NULL,1581416742,1581416742,'N','N','N','N','N',NULL),

('security/incident-record/index',2,'security/incident-record/index',NULL,NULL,NULL,NULL,1581416708,1581416708,'N','N','N','N','N',NULL),

('security/incident-record/resolution',2,'security/incident-record/resolution',NULL,NULL,NULL,NULL,1581416782,1581416782,'N','N','N','N','N',NULL),

('security/incident-record/update',2,'security/incident-record/update',NULL,NULL,NULL,NULL,1581416727,1581416727,'N','N','N','N','N',NULL),

('security/incident-record/view',2,'security/incident-record/view',NULL,NULL,NULL,NULL,1581416760,1581416760,'N','N','N','N','N',NULL),

('security/incident-type/create',2,'security/incident-type/create',NULL,NULL,NULL,NULL,1581415932,1581415932,'N','N','N','N','N',NULL),

('security/incident-type/index',2,'security/incident-type/index',NULL,NULL,NULL,NULL,1581415893,1581415893,'N','N','N','N','N',NULL),

('security/incident-type/save',2,'security/incident-type/save',NULL,NULL,NULL,NULL,1581415945,1581415945,'N','N','N','N','N',NULL),

('security/incident-type/update',2,'security/incident-type/update',NULL,NULL,NULL,NULL,1581415919,1581415919,'N','N','N','N','N',NULL),

('security/incident-type/view',2,'security/incident-type/view',NULL,NULL,NULL,NULL,1581415904,1581415904,'N','N','N','N','N',NULL),

('security/program-type/create',2,'security/program-type/create',NULL,NULL,NULL,NULL,1581415996,1581415996,'N','N','N','N','N',NULL),

('security/program-type/index',2,'security/program-type/index',NULL,NULL,NULL,NULL,1581415984,1581415984,'N','N','N','N','N',NULL),

('security/program-type/save',2,'security/program-type/save',NULL,NULL,NULL,NULL,1581416039,1581416039,'N','N','N','N','N',NULL),

('security/program-type/update',2,'security/program-type/update',NULL,NULL,NULL,NULL,1581416026,1581416026,'N','N','N','N','N',NULL),

('security/program-type/view',2,'security/program-type/view',NULL,NULL,NULL,NULL,1581416012,1581416012,'N','N','N','N','N',NULL),

('security/security-uploads/create',2,'security/security-uploads/create',NULL,NULL,NULL,NULL,1581424057,1581424057,'N','N','N','N','N',NULL),

('security/security-uploads/delete',2,'security/security-uploads/delete',NULL,NULL,NULL,NULL,1581424084,1581424084,'N','N','N','N','N',NULL),

('security/security-uploads/index-for-dept',2,'Security Uploads',NULL,NULL,NULL,NULL,1586773168,1586773168,'N','N','N','N','N',NULL),

('security/settings/index',2,'security/settings/index',NULL,NULL,NULL,NULL,1581415867,1581415867,'N','N','N','N','N',NULL),

('service_admin',1,'Admin of the Service Module',NULL,NULL,NULL,NULL,1574506013,1574506013,'N','N','N','N','N',NULL),

('service_mhrd',1,'Read only to keep watch on project','','',NULL,NULL,1574505937,1574506156,'N','N','N','N','N',NULL),

('service_operations',1,'operations','','',NULL,NULL,1574496144,1574506069,'N','N','N','N','N',NULL),

('service_operations_admin',1,'Admin of Operations to update status','','',NULL,NULL,1574505915,1574506121,'N','N','N','N','N',NULL),

('service_rollout',1,'Roll Out Engineer','','',NULL,NULL,1574493894,1574506133,'N','N','N','N','N',NULL),

('service/admission/aggregated-statistics/index-latest',2,'service/admission/aggregated-statistics/index-latest',NULL,NULL,NULL,NULL,1574753480,1574753480,'N','N','N','N','N',NULL),

('service/admission/category-statistics/index-latest',2,'service/admission/category-statistics/index-latest',NULL,NULL,NULL,NULL,1574753530,1574753530,'N','N','N','N','N',NULL),

('service/dashboard/central-university/create',2,'service/dashboard/central-university/create',NULL,NULL,NULL,NULL,1574505742,1574505742,'N','N','N','N','N',NULL),

('service/dashboard/central-university/index',2,'service/dashboard/central-university/index',NULL,NULL,NULL,NULL,1574505729,1574505729,'N','N','N','N','N',NULL),

('service/dashboard/central-university/update',2,'service/dashboard/central-university/update',NULL,NULL,NULL,NULL,1576822977,1576822977,'N','N','N','N','N',NULL),

('service/dashboard/central-university/view',2,'service/dashboard/central-university/view',NULL,NULL,NULL,NULL,1576823403,1576823403,'N','N','N','N','N',NULL),

('service/dashboard/dashboard-new/index',2,'/service/dashboard/dashboard-new/index',NULL,NULL,NULL,NULL,1574505401,1574505401,'N','N','N','N','N',NULL),

('service/dashboard/dashboard-new/university',2,'service/dashboard/dashboard-new/university',NULL,NULL,NULL,NULL,1576818272,1576818272,'N','N','N','N','N',NULL),

('service/dashboard/dashboard/index',2,'service/dashboard/dashboard/index',NULL,NULL,NULL,NULL,1574505412,1574505412,'N','N','N','N','N',NULL),

('service/dashboard/module-template/update',2,'service/dashboard/module-template/update',NULL,NULL,NULL,NULL,1576817526,1576817526,'N','N','N','N','N',NULL),

('service/dashboard/modules-progress/index',2,'service/dashboard/modules-progress/index',NULL,NULL,NULL,NULL,1574505426,1574505426,'N','N','N','N','N',NULL),

('service/dashboard/modules-progress/update',2,'service/dashboard/modules-progress/update',NULL,NULL,NULL,NULL,1576776821,1576776821,'N','N','N','N','N',NULL),

('service/dashboard/samarth-modules/create',2,'service/dashboard/samarth-modules/create',NULL,NULL,NULL,NULL,1574505767,1574505767,'N','N','N','N','N',NULL),

('service/dashboard/samarth-modules/index',2,'service/dashboard/samarth-modules/index',NULL,NULL,NULL,NULL,1574505755,1574505755,'N','N','N','N','N',NULL),

('service/dashboard/samarth-modules/modules-list',2,'service/dashboard/samarth-modules/modules-list',NULL,NULL,NULL,NULL,1574758401,1574758401,'N','N','N','N','N',NULL),

('service/recruitment/aggregated-statistics/index-latest',2,'service/recruitment/aggregated-statistics/index-latest',NULL,NULL,NULL,NULL,1574505581,1574505581,'N','N','N','N','N',NULL),

('service/recruitment/app/dashboard',2,'service/recruitment/app/dashboard',NULL,NULL,NULL,NULL,1574753993,1574753993,'N','N','N','N','N',NULL),

('service/recruitment/category-statistics/index-latest',2,'service/recruitment/category-statistics/index-latest',NULL,NULL,NULL,NULL,1574505595,1574505595,'N','N','N','N','N',NULL),

('service/recruitment/recruitment-dbs/create',2,'service/recruitment/recruitment-dbs/create',NULL,NULL,NULL,NULL,1574505836,1574505836,'N','N','N','N','N',NULL),

('service/recruitment/recruitment-dbs/index',2,'service/recruitment/recruitment-dbs/index',NULL,NULL,NULL,NULL,1574505571,1574505571,'N','N','N','N','N',NULL),

('service/recruitment/recruitment-dbs/setting',2,'service/recruitment/recruitment-dbs/setting',NULL,NULL,NULL,NULL,1574505824,1574505824,'N','N','N','N','N',NULL),

('service/rollout-progress/create',2,'service/rollout-progress/create',NULL,NULL,NULL,NULL,1574493200,1574493200,'N','N','N','N','N',NULL),

('service/rollout-progress/index',2,'service/rollout-progress/index',NULL,NULL,NULL,NULL,1574493189,1574493189,'N','N','N','N','N',NULL),

('service/rollout-progress/service-desk',2,'service/rollout-progress/service-desk',NULL,NULL,NULL,NULL,1574493271,1574493271,'N','N','N','N','N',NULL),

('service/rollout-progress/submit',2,'service/rollout-progress/submit',NULL,NULL,NULL,NULL,1575114243,1575114243,'N','N','N','N','N',NULL),

('service/rollout-progress/update',2,'service/rollout-progress/update',NULL,NULL,NULL,NULL,1574493252,1574493252,'N','N','N','N','N',NULL),

('service/rollout-progress/verify',2,'service/rollout-progress/verify',NULL,NULL,NULL,NULL,1574841267,1574841267,'N','N','N','N','N',NULL),

('service/rollout-progress/view',2,'service/rollout-progress/view',NULL,NULL,NULL,NULL,1574493350,1574493350,'N','N','N','N','N',NULL),

('service/settings/module-type-mapping/create',2,'service/settings/module-type-mapping/create',NULL,NULL,NULL,NULL,1574505813,1574505813,'N','N','N','N','N',NULL),

('service/settings/module-type-mapping/index',2,'service/settings/module-type-mapping/index',NULL,NULL,NULL,NULL,1574505804,1574505804,'N','N','N','N','N',NULL),

('service/settings/module-type-name/create',2,'service/settings/module-type-name/create',NULL,NULL,NULL,NULL,1574505792,1574505792,'N','N','N','N','N',NULL),

('service/settings/module-type-name/index',2,'service/settings/module-type-name/index',NULL,NULL,NULL,NULL,1574505782,1574505782,'N','N','N','N','N',NULL),

('setterorexaminer',1,'setterorexaminer',NULL,NULL,NULL,NULL,1609924275,1609924275,'N','N','N','N','N',NULL),

('Settings',1,'Settings','','',NULL,NULL,1563795627,1563795633,'N','N','N','N','N',NULL),

('settings/cache/flush-all',2,'settings/cache/flush-all','','',NULL,NULL,1563795582,1563795859,'N','N','N','N','N',NULL),

('settings/home/index',2,'settings/home/index',NULL,NULL,NULL,NULL,1563795489,1563795489,'N','N','N','N','N',NULL),

('settings/identity-authentication/tracking',2,'Identity Authentication Tracking extension for Yii2\r\n',NULL,NULL,NULL,NULL,1564405734,1564405734,'N','N','N','N','N',NULL),

('slcm_reregistration_admin',1,'slcm_reregistration_admin',NULL,NULL,NULL,NULL,1610009410,1610009410,'N','N','N','N','N',NULL),

('slcm/fee-report/index',2,'slcm/fee-report/index',NULL,NULL,NULL,NULL,1617194901,1617194901,'N','N','N','N','N',NULL),

('slcm/import/create',2,'slcm/import/create',NULL,NULL,NULL,NULL,1617107538,1617107538,'N','N','N','N','N',NULL),

('slcm/import/delete',2,'slcm/import/delete',NULL,NULL,NULL,NULL,1617107552,1617107552,'N','N','N','N','N',NULL),

('slcm/import/index',2,'slcm/import/index',NULL,NULL,NULL,NULL,1617107561,1617107561,'N','N','N','N','N',NULL),

('slcm/import/update',2,'slcm/import/update',NULL,NULL,NULL,NULL,1617107546,1617107546,'N','N','N','N','N',NULL),

('slcm/re-registration/all-student',2,'slcm/re-registration/all-student',NULL,NULL,NULL,NULL,1609834247,1609834247,'N','N','N','N','N',NULL),

('slcm/re-registration/index',2,'slcm/re-registration/index',NULL,NULL,NULL,NULL,1587498036,1587498036,'N','N','N','N','N',NULL),

('slcm/re-registration/index-programme',2,'slcm/re-registration/index-programme',NULL,NULL,NULL,NULL,1609835406,1609835406,'N','N','N','N','N',NULL),

('slcm/report/index',2,'slcm/report/index',NULL,NULL,NULL,NULL,1618484218,1618484218,'N','N','N','N','N',NULL),

('slcm/settings/index',2,'slcm/settings/index',NULL,NULL,NULL,NULL,1612435807,1612435807,'N','N','N','N','N',NULL),

('slcm/student-readmission-fee-control/index',2,'slcm/student-readmission-fee-control/index',NULL,NULL,NULL,NULL,1617194908,1617194908,'N','N','N','N','N',NULL),

('slcm/student-record-reregistartion/advance-search',2,'slcm/student-record-reregistartion/advance-search',NULL,NULL,NULL,NULL,1611921563,1611921563,'N','N','N','N','N',NULL),

('slcm/student-section/fee-index',2,'slcm/student-section/fee-index',NULL,NULL,NULL,NULL,1617194928,1617194928,'N','N','N','N','N',NULL),

('slcm/student/assign-programme',2,'slcm/student/assign-programme',NULL,NULL,NULL,NULL,1620307434,1620307434,'N','N','N','N','N',NULL),

('slcm/student/export',2,'slcm/student/export',NULL,NULL,NULL,NULL,1618484155,1618484155,'N','N','N','N','N',NULL),

('slcm/student/index',2,'slcm/student/index',NULL,NULL,NULL,NULL,1587498025,1587498025,'N','N','N','N','N',NULL),

('slcm/student/programme',2,'slcm/student/programme',NULL,NULL,NULL,NULL,1584215007,1584215007,'N','N','N','N','N',NULL),

('slcm/student/search',2,'slcm/student/search',NULL,NULL,NULL,NULL,1611921572,1611921572,'N','N','N','N','N',NULL),

('slcm/visualization/index',2,'slcm/visualization/index',NULL,NULL,NULL,NULL,1609835259,1609835259,'N','N','N','N','N',NULL),

('sports_admin',1,'This is the admin of the Sports facilities',NULL,NULL,NULL,NULL,1577425220,1577425220,'N','N','N','N','N',NULL),

('sports/admin/index',2,'Sports Admin Index',NULL,NULL,NULL,NULL,1584018228,1584018228,'N','N','N','N','N',NULL),

('sports/admin/manage',2,'Sports Settings',NULL,NULL,NULL,NULL,1584018242,1584018242,'N','N','N','N','N',NULL),

('sports/dashboard/index',2,'Permission to view the sports dashboard',NULL,NULL,NULL,NULL,1577702941,1577702941,'N','N','N','N','N',NULL),

('sports/settings/index',2,'Permission to create, view and edit various sports settings',NULL,NULL,NULL,NULL,1577703043,1577703043,'N','N','N','N','N',NULL),

('sports/sports-equipment-type/create',2,'Permission to create a sports equipment type',NULL,NULL,NULL,NULL,1577703200,1577703200,'N','N','N','N','N',NULL),

('sports/sports-equipment-type/index',2,'Permission to list all sports equipment types',NULL,NULL,NULL,NULL,1577703149,1577703149,'N','N','N','N','N',NULL),

('sports/sports-equipment-type/update',2,'Permission to edit a sports equipment type',NULL,NULL,NULL,NULL,1577703244,1577703244,'N','N','N','N','N',NULL),

('sports/sports-equipment-type/view',2,'Permission to view a sports equipment type','','',NULL,NULL,1577703174,1577703214,'N','N','N','N','N',NULL),

('sports/sports-infrastructure-type/create',2,'Permission to create a sports infrastructure type',NULL,NULL,NULL,NULL,1577703446,1577703446,'N','N','N','N','N',NULL),

('sports/sports-infrastructure-type/index',2,'Permission to list all sports infrastructure type',NULL,NULL,NULL,NULL,1577703473,1577703473,'N','N','N','N','N',NULL),

('sports/sports-infrastructure-type/update',2,'Permission to edit a sports infrastructure type',NULL,NULL,NULL,NULL,1577703498,1577703498,'N','N','N','N','N',NULL),

('sports/sports-infrastructure-type/view',2,'Permission to view a sports infrastructure type',NULL,NULL,NULL,NULL,1577703522,1577703522,'N','N','N','N','N',NULL),

('sports/sports-infrastructure/create',2,'Permission to create a sport infrastructure',NULL,NULL,NULL,NULL,1577703697,1577703697,'N','N','N','N','N',NULL),

('sports/sports-infrastructure/index',2,'Permission to list all sports infrastructure ',NULL,NULL,NULL,NULL,1577703728,1577703728,'N','N','N','N','N',NULL),

('sports/sports-infrastructure/update',2,'Permission to edit a sports infrastructure',NULL,NULL,NULL,NULL,1577703757,1577703757,'N','N','N','N','N',NULL),

('sports/sports-infrastructure/view',2,'Permission to view a sports infrastructure','','',NULL,NULL,1577703778,1577703805,'N','N','N','N','N',NULL),

('sports/sports-list/create',2,'Permission to create a sport',NULL,NULL,NULL,NULL,1577704029,1577704029,'N','N','N','N','N',NULL),

('sports/sports-list/index',2,'Permission to list all sports',NULL,NULL,NULL,NULL,1577704046,1577704046,'N','N','N','N','N',NULL),

('sports/sports-list/update',2,'Permission to edit a sport',NULL,NULL,NULL,NULL,1577704063,1577704063,'N','N','N','N','N',NULL),

('sports/sports-list/view',2,'Permission to view a sport',NULL,NULL,NULL,NULL,1577704082,1577704082,'N','N','N','N','N',NULL),

('sports/sports-ou-mapping/index',2,'Permission to list or map sports to ou\'s.',NULL,NULL,NULL,NULL,1577967380,1577967380,'N','N','N','N','N',NULL),

('sports/sports-ou-mapping/modal-form',2,'Permission to set the mapping to active/ inactive',NULL,NULL,NULL,NULL,1577967579,1577967579,'N','N','N','N','N',NULL),

('sports/sports-ou-mapping/view',2,'Permission to view a mapped sports to ou',NULL,NULL,NULL,NULL,1577967464,1577967464,'N','N','N','N','N',NULL),

('sports/sports-type/create',2,'Permission to create a sports type',NULL,NULL,NULL,NULL,1577703884,1577703884,'N','N','N','N','N',NULL),

('sports/sports-type/index',2,'Permission to list all sports type',NULL,NULL,NULL,NULL,1577703911,1577703911,'N','N','N','N','N',NULL),

('sports/sports-type/update',2,'Permission to edit a sports type',NULL,NULL,NULL,NULL,1577703927,1577703927,'N','N','N','N','N',NULL),

('sports/sports-type/view',2,'Permission to view a sports type',NULL,NULL,NULL,NULL,1577703942,1577703942,'N','N','N','N','N',NULL),

('student_admin',1,'student_admin',NULL,NULL,NULL,NULL,1587498158,1587498158,'N','N','N','N','N',NULL),

('student_fee_admin',1,'student_fee_admin',NULL,NULL,NULL,NULL,1617194764,1617194764,'N','N','N','N','N',NULL),

('student_view',1,'student_view',NULL,NULL,NULL,NULL,1610009488,1610009488,'N','N','N','N','N',NULL),

('student/profile/all',2,'student/profile/all',NULL,NULL,NULL,NULL,1611921598,1611921598,'N','N','N','N','N',NULL),

('student/programme/add-fee-category',2,'student/programme/add-fee-category',NULL,NULL,NULL,NULL,1587760101,1587760101,'N','N','N','N','N',NULL),

('student/programme/all',2,'student/programme/all',NULL,NULL,NULL,NULL,1609833452,1609833452,'N','N','N','N','N',NULL),

('student/programme/delete',2,'student/programme/delete',NULL,NULL,NULL,NULL,1612337084,1612337084,'N','N','N','N','N',NULL),

('student/programme/edit',2,'student/programme/edit',NULL,NULL,NULL,NULL,1609833927,1609833927,'N','N','N','N','N',NULL),

('student/programme/header',2,'student/programme/header',NULL,NULL,NULL,NULL,1609833788,1609833788,'N','N','N','N','N',NULL),

('student/programme/index',2,'student/programme/index',NULL,NULL,NULL,NULL,1610009854,1610009854,'N','N','N','N','N',NULL),

('student/programme/view',2,'student/programme/view',NULL,NULL,NULL,NULL,1609833827,1609833827,'N','N','N','N','N',NULL),

('student/programme/view-new',2,'student/programme/view-new',NULL,NULL,NULL,NULL,1609833847,1609833847,'N','N','N','N','N',NULL),

('student/settings/create-login',2,'student/settings/create-login',NULL,NULL,NULL,NULL,1612331246,1612331246,'N','N','N','N','N',NULL),

('student/settings/update-account-details',2,'student/settings/update-account-details',NULL,NULL,NULL,NULL,1612331194,1612331194,'N','N','N','N','N',NULL),

('student/settings/update-menu',2,'student/settings/update-menu',NULL,NULL,NULL,NULL,1612277330,1612277330,'N','N','N','N','N',NULL),

('student/settings/update-password',2,'student/settings/update-password',NULL,NULL,NULL,NULL,1612277446,1612277446,'N','N','N','N','N',NULL),

('student/student-login/index',2,'student/student-login/index',NULL,NULL,NULL,NULL,1611921551,1611921551,'N','N','N','N','N',NULL),

('student/student-update/bulk-update',2,'student/student-update/bulk-update',NULL,NULL,NULL,NULL,1612435839,1612435839,'N','N','N','N','N',NULL),

('student/student-update/create',2,'student/student-update/create',NULL,NULL,NULL,NULL,1612277487,1612277487,'N','N','N','N','N',NULL),

('student/student-update/get-options',2,'student/student-update/get-options',NULL,NULL,NULL,NULL,1612447031,1612447031,'N','N','N','N','N',NULL),

('student/student-update/index',2,'student/student-update/index',NULL,NULL,NULL,NULL,1612277505,1612277505,'N','N','N','N','N',NULL),

('student/student-update/process-and-import-data',2,'student/student-update/process-and-import-data',NULL,NULL,NULL,NULL,1612436152,1612436152,'N','N','N','N','N',NULL),

('super_admin',1,'This is a superman.',NULL,NULL,NULL,NULL,1555403160,1555403160,'N','N','N','N','N',NULL),

('teaching_recruitment_admin',1,'Admin for Teaching Faculty Recruitment',NULL,NULL,NULL,NULL,1569400657,1569400657,'N','N','N','N','N',NULL),

('teaching_recruitment_screening',1,'teaching_recruitment_screening',NULL,NULL,NULL,NULL,1569566789,1569566789,'N','N','N','N','N',NULL),

('teaching_screening_special_admin',1,'\"Role which have controls to pause advertisement and show screening \"','','',NULL,NULL,1595874628,1603109059,'N','N','N','N','N',NULL),

('teaching/interview/interview-batches-candidates/summary',2,'teaching/interview/interview-batches-candidates/summary',NULL,'s:0:\"\";',NULL,'recruitment_teaching',1621235940,1621235940,'N','N','N','N','N',NULL),

('test_admin',1,'Test',NULL,NULL,NULL,NULL,1596709705,1596709705,'N','N','N','N','N',NULL),

('tot_admin',1,'Administer of the training of the trainer of module',NULL,NULL,NULL,NULL,1584974462,1584974462,'N','N','N','N','N',NULL),

('tot_company',1,'Company who can offer Training programs like seminar or hand-on training','','',NULL,NULL,1585383308,1585393622,'N','N','N','N','N',NULL),

('tot_user',1,'User(employees) who can apply for training and request for them as well.','','',NULL,NULL,1585383413,1585383459,'N','N','N','N','N',NULL),

('tot/company-profile/create',2,'tot/company-profile/create',NULL,NULL,NULL,NULL,1587426213,1587426213,'N','N','N','N','N',NULL),

('tot/company-profile/index',2,'tot/company-profile/index',NULL,NULL,NULL,NULL,1587425545,1587425545,'N','N','N','N','N',NULL),

('tot/company-profile/update',2,'tot/company-profile/update',NULL,NULL,NULL,NULL,1588640339,1588640339,'N','N','N','N','N',NULL),

('tot/company-profile/view',2,'tot/company-profile/view',NULL,NULL,NULL,NULL,1587426259,1587426259,'N','N','N','N','N',NULL),

('tot/dashboard/admin',2,'tot/dashboard/admin',NULL,NULL,NULL,NULL,1587423037,1587423037,'N','N','N','N','N',NULL),

('tot/dashboard/company',2,'tot/dashboard/company',NULL,NULL,NULL,NULL,1587426117,1587426117,'N','N','N','N','N',NULL),

('tot/dashboard/user',2,'tot/dashboard/user',NULL,NULL,NULL,NULL,1587426937,1587426937,'N','N','N','N','N',NULL),

('tot/tot-opportunity/apply',2,'tot/tot-opportunity/apply',NULL,NULL,NULL,NULL,1585381427,1585381427,'N','N','N','N','N',NULL),

('tot/tot-opportunity/company-index',2,'tot/tot-opportunity/company-index',NULL,NULL,NULL,NULL,1585381358,1585381358,'N','N','N','N','N',NULL),

('tot/tot-opportunity/create',2,'tot/tot-opportunity/create',NULL,NULL,NULL,NULL,1585051322,1585051322,'N','N','N','N','N',NULL),

('tot/tot-opportunity/index',2,'tot/tot-opportunity/index',NULL,NULL,NULL,NULL,1585051313,1585051313,'N','N','N','N','N',NULL),

('tot/tot-opportunity/status-update',2,'tot/tot-opportunity/status-update',NULL,NULL,NULL,NULL,1585396623,1585396623,'N','N','N','N','N',NULL),

('tot/tot-opportunity/update',2,'tot/tot-opportunity/update',NULL,NULL,NULL,NULL,1585381397,1585381397,'N','N','N','N','N',NULL),

('tot/tot-opportunity/update-status',2,'tot/tot-opportunity/update-status',NULL,NULL,NULL,NULL,1585381409,1585381409,'N','N','N','N','N',NULL),

('tot/tot-opportunity/user-index',2,'tot/tot-opportunity/user-index',NULL,NULL,NULL,NULL,1585381335,1585381335,'N','N','N','N','N',NULL),

('tot/tot-opportunity/view',2,'tot/tot-opportunity/view',NULL,NULL,NULL,NULL,1585381379,1585381379,'N','N','N','N','N',NULL),

('tot/tot-participate/company-index',2,'tot/tot-participate/company-index',NULL,NULL,NULL,NULL,1585382033,1585382033,'N','N','N','N','N',NULL),

('tot/tot-participate/create',2,'tot/tot-participate/create',NULL,NULL,NULL,NULL,1585381836,1585381836,'N','N','N','N','N',NULL),

('tot/tot-participate/index',2,'tot/tot-participate/index',NULL,NULL,NULL,NULL,1585381780,1585381780,'N','N','N','N','N',NULL),

('tot/tot-participate/submit',2,'tot/tot-participate/submit',NULL,NULL,NULL,NULL,1585381850,1585381850,'N','N','N','N','N',NULL),

('tot/tot-participate/update',2,'tot/tot-participate/update',NULL,'',NULL,'tot',1585381869,1627101822,'N','N','N','N','Y',NULL),

('tot/tot-participate/update-status',2,'tot/tot-participate/update-status',NULL,'',NULL,'tot',1585399347,1627101831,'N','N','N','N','N',NULL),

('tot/tot-participate/user-index',2,'tot/tot-participate/user-index',NULL,'',NULL,'tot',1585381794,1627107310,'N','N','N','N','Y',NULL),

('tot/tot-participate/view',2,'tot/tot-participate/view','','',NULL,'tot',1585381811,1627103739,'N','N','N','N','N',NULL),

('tot/tot-request/create',2,'tot/tot-request/create',NULL,'',NULL,'tot',1585382153,1627103746,'N','N','N','N','N',NULL),

('tot/tot-request/index',2,'tot/tot-request/index',NULL,'',NULL,'tot',1585382109,1627103859,'N','N','N','N','N',NULL),

('tot/tot-request/status-update',2,'tot/tot-request/status-update',NULL,'',NULL,'tot',1585399090,1627103882,'N','N','N','N','N',NULL),

('tot/tot-request/submit',2,'tot/tot-request/submit',NULL,'',NULL,'tot',1585382208,1627107191,'N','N','N','N','N',NULL),

('tot/tot-request/update',2,'tot/tot-request/update',NULL,'',NULL,'tot',1585382183,1627107211,'N','N','N','N','Y',NULL),

('tot/tot-request/update-status',2,'tot/tot-request/update-status',NULL,'',NULL,'tot',1585382194,1627107225,'N','N','N','N','Y',NULL),

('tot/tot-request/user-index',2,'tot/tot-request/user-index',NULL,'',NULL,'tot',1585382130,1627107251,'N','N','N','N','N',NULL),

('tot/tot-request/view',2,'tot/tot-request/view',NULL,'',NULL,'tot',1585382141,1627107274,'N','N','N','N','N',NULL),

('tracking_admin',1,'Admin for samarth tracking module',NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N','N',NULL),

('training_admin',1,'central placement officer of the university',NULL,NULL,NULL,NULL,1576560511,1576560511,'N','N','N','N','N',NULL),

('training_company',1,'industry for placement','','',NULL,NULL,1576566144,1576573892,'N','N','N','N','N',NULL),

('training_department',1,'Department placement officer of University',NULL,NULL,NULL,NULL,1576560550,1576560550,'N','N','N','N','N',NULL),

('training/company-profile-ou/bulk-mail',2,'training/company-profile-ou/bulk-mail',NULL,'',NULL,'placement_admin',1598460926,1627011841,'N','N','N','N','N',NULL),

('training/company-profile-ou/create-admin',2,'training/company-profile-ou/create-admin',NULL,'',NULL,'program',1597662059,1627011737,'N','N','N','N','N',NULL),

('training/company-profile-ou/index',2,'training/company-profile-ou/index',NULL,'',NULL,'placement_admin',1597670224,1627011820,'N','N','N','Y','N',NULL),

('training/company-profile-ou/update',2,'training/company-profile-ou/update',NULL,'',NULL,'placement_admin',1597670239,1627011865,'N','N','N','N','N',NULL),

('training/company-profile-ou/view',2,'training/company-profile-ou/view',NULL,'',NULL,'placement_admin',1597670258,1627011877,'N','N','N','N','N',NULL),

('training/company-profile-requests/create',2,'training/company-profile-requests/create',NULL,'',NULL,'placement_admin',1598460926,1627011897,'N','N','N','N','N',NULL),

('training/company-profile-requests/index',2,'training/company-profile-requests/index',NULL,'',NULL,'placement_admin',1598460926,1627011936,'N','N','N','N','N',NULL),

('training/company-profile-requests/register',2,'training/company-profile-requests/register',NULL,'',NULL,'placement_admin',1598460926,1627011946,'N','N','N','N','N',NULL),

('training/company-profile-requests/reset',2,'training/company-profile-requests/reset',NULL,'',NULL,'placement_admin',1598460926,1627011963,'N','N','N','N','N',NULL),

('training/company-profile-requests/reset-password',2,'training/company-profile-requests/reset-password',NULL,'',NULL,'placement_admin',1598460926,1627011974,'N','N','N','N','N',NULL),

('training/company-profile-requests/update',2,'training/company-profile-requests/update',NULL,'',NULL,'placement_admin',1598460926,1627012006,'N','N','N','N','Y',NULL),

('training/company-profile-requests/verify',2,'training/company-profile-requests/verify',NULL,'',NULL,'placement_admin',1598460926,1627011996,'N','N','N','N','N',NULL),

('training/company-profile-requests/view',2,'training/company-profile-requests/view',NULL,'',NULL,'placement_admin',1598460926,1627012021,'N','N','N','N','N',NULL),

('training/company-profile/',2,'training/company-profile/',NULL,'',NULL,'placement_admin',1598460926,1627012032,'N','N','N','N','N',NULL),

('training/company-profile/bulk-mail',2,'training/company-profile/bulk-mail',NULL,'',NULL,'placement_admin',1597405714,1627012080,'N','N','N','N','N',NULL),

('training/company-profile/create',2,'training/company-profile/create',NULL,'',NULL,'placement_admin',1598460926,1627012056,'N','N','N','N','N',NULL),

('training/company-profile/create-admin',2,'training/company-profile/create-admin',NULL,'',NULL,'placement_admin',1597054001,1627012101,'N','N','N','N','N',NULL),

('training/company-profile/create-permission',2,'training/company-profile/create-permission',NULL,'',NULL,'placement_admin',1598460926,1627012114,'N','N','N','N','N',NULL),

('training/company-profile/index',2,'training/company-profile/index',NULL,'',NULL,'placement_admin',1598460926,1627012128,'N','N','N','N','N',NULL),

('training/company-profile/update',2,'training/company-profile/update',NULL,'',NULL,'placement_admin',1598460926,1627012151,'N','N','N','N','Y',NULL),

('training/company-profile/view',2,'training/company-profile/view',NULL,'',NULL,'placement_admin',1598460926,1627012161,'N','N','N','N','N',NULL),

('training/company/company-profile-ou/update',2,'training/company/company-profile-ou/update',NULL,'',NULL,'placement_admin',1599282319,1627012171,'N','N','N','N','Y',NULL),

('training/company/company-profile/create',2,'training/company/company-profile/create',NULL,'',NULL,'placement_admin',NULL,1627012181,'N','N','N','N','N',NULL),

('training/company/company-profile/delete',2,'training/company/company-profile/delete',NULL,'',NULL,'placement_admin',NULL,1627012189,'N','N','N','N','N',NULL),

('training/company/company-profile/index',2,'training/company/company-profile/index',NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N','N',NULL),

('training/company/company-profile/update',2,'training/company/company-profile/update',NULL,'',NULL,'placement_admin',NULL,1627012215,'N','N','N','N','Y',NULL),

('training/company/company-profile/view',2,'training/company/company-profile/view',NULL,'',NULL,'placement_admin',NULL,1627012202,'N','N','N','N','N',NULL),

('training/company/report/category-report',2,'training/company/report/category-report',NULL,'',NULL,'placement_admin',1580103744,1627012236,'N','N','N','N','N',NULL),

('training/company/report/company-report',2,'training/company/report/company-report',NULL,'',NULL,'placement_admin',1580103653,1627012246,'N','N','N','N','N',NULL),

('training/company/report/gender-report',2,'training/company/report/gender-report',NULL,'',NULL,'placement_admin',1580103724,1627012261,'N','N','N','N','N',NULL),

('training/company/report/job-report',2,'training/company/report/job-report',NULL,'',NULL,'placement_admin',1580103766,1627012274,'N','N','N','N','N',NULL),

('training/company/report/ou-report',2,'training/company/report/ou-report',NULL,'',NULL,'placement_admin',1580103704,1627012592,'N','N','N','N','N',NULL),

('training/company/report/season-report',2,'training/company/report/season-report',NULL,'',NULL,'placement_admin',1580103685,1627012622,'N','N','N','N','N',NULL),

('training/company/student-application',2,'training/company/student-application',NULL,'',NULL,'placement_admin',1578985119,1627012634,'N','N','N','N','N',NULL),

('training/company/student-application/view',2,'training/company/student-application/view',NULL,'',NULL,'placement_admin',1578985140,1627012659,'N','N','N','N','N',NULL),

('training/company/training-company-season',2,'training/company/training-company-season',NULL,'',NULL,'placement_admin',1578147062,1627012667,'N','N','N','N','N',NULL),

('training/company/training-company-season/create',2,'training/company/training-company-season/create',NULL,'',NULL,'placement_admin',1578146356,1627012684,'N','N','N','N','N',NULL),

('training/company/training-company-season/index',2,'training/company/training-company-season/index',NULL,'',NULL,'placement_admin',1578146286,1627012694,'N','N','N','N','N',NULL),

('training/company/training-company-season/update',2,'training/company/training-company-season/update',NULL,'',NULL,'placement_admin',1578146403,1627012703,'N','N','N','N','N',NULL),

('training/company/training-company-season/view',2,'training/company/training-company-season/view',NULL,'',NULL,'placement_admin',1578146371,1627012711,'N','N','N','N','N',NULL),

('training/company/training-placement-info',2,'training/company/training-placement-info',NULL,'',NULL,'placement_admin',1583216522,1627012730,'N','N','N','N','N',NULL),

('training/company/training-placement-info/adminindex',2,'training/company/training-placement-info/adminindex',NULL,'',NULL,'placement_admin',NULL,1627012738,'N','N','N','N','N',NULL),

('training/company/training-placement-info/applied-applicants',2,'training/company/training-placement-info/applied-applicants',NULL,'',NULL,'placement_admin',NULL,1627012748,'N','N','N','N','N',NULL),

('training/company/training-placement-info/delete',2,'training/company/training-placement-info/delete',NULL,'',NULL,'placement_admin',NULL,1627012769,'N','N','N','N','Y',NULL),

('training/company/training-placement-info/diew',2,'training/company/training-placement-info/diew',NULL,'',NULL,'placement_admin',NULL,1627012778,'N','N','N','N','N',NULL),

('training/company/training-placement-info/index',2,'training/company/training-placement-info/index',NULL,'',NULL,'placement_admin',NULL,1627012787,'N','N','N','N','N',NULL),

('training/company/training-placement-info/manage-applicants',2,'training/company/training-placement-info/manage-applicants',NULL,'',NULL,'placement_admin',NULL,1627012798,'N','N','N','N','N',NULL),

('training/company/training-placement-info/publish',2,'training/company/training-placement-info/publish',NULL,'',NULL,'placement_admin',NULL,1627012816,'N','N','N','N','N',NULL),

('training/company/training-placement-info/update',2,'training/company/training-placement-info/update',NULL,NULL,NULL,NULL,NULL,NULL,'N','N','N','N','N',NULL),

('training/company/training-placement-info/view',2,'training/company/training-placement-info/view',NULL,'',NULL,'placement_admin',NULL,1627012826,'N','N','N','N','N',NULL),

('training/dashboard/admin',2,'training/dashboard/admin',NULL,'',NULL,'placement_admin',NULL,1627012839,'N','N','N','N','N',NULL),

('training/dashboard/company',2,'training/dashboard/company',NULL,'',NULL,'placement_admin',NULL,1627012848,'N','N','N','N','N',NULL),

('training/dashboard/department',2,'training/dashboard/department',NULL,'',NULL,'placement_admin',1578986306,1627012857,'N','N','N','N','N',NULL),

('training/dashboard/dept',2,'training/dashboard/dept',NULL,'',NULL,'placement_admin',NULL,1627012867,'N','N','N','N','N',NULL),

('training/dashboard/index',2,'training/dashboard/index',NULL,'',NULL,'placement_admin',NULL,1627012877,'N','N','N','N','N',NULL),

('training/default/index',2,'training/default/index',NULL,NULL,NULL,NULL,1598460926,1598460926,'N','N','N','N','N',NULL),

('training/default/settings',2,'training/default/settings',NULL,'',NULL,'placement_admin',1578985205,1627012907,'N','N','N','Y','N',NULL),

('training/degree-name/create',2,'training/degree-name/create',NULL,'',NULL,'placement_admin',1598460926,1627012894,'N','N','N','N','N',NULL),

('training/degree-name/index',2,'training/degree-name/index',NULL,'',NULL,'placement_admin',1598460926,1627012923,'N','N','N','N','N',NULL),

('training/degree-name/update',2,'training/degree-name/update',NULL,'',NULL,'placement_admin',1598460926,1627012941,'N','N','N','N','Y',NULL),

('training/degree-name/view',2,'training/degree-name/view',NULL,'',NULL,'placement_admin',1598460926,1627030966,'N','N','N','N','N',NULL),

('training/ou-coordinator-mapping/create',2,'training/ou-coordinator-mapping/create',NULL,'',NULL,'placement_admin',1598460926,1627030977,'N','N','N','N','N',NULL),

('training/ou-coordinator-mapping/index',2,'training/ou-coordinator-mapping/index',NULL,'',NULL,'placement_admin',1598460926,1627030988,'N','N','N','N','N',NULL),

('training/ou-coordinator-mapping/update',2,'training/ou-coordinator-mapping/update',NULL,'',NULL,'placement_admin',1598460926,1627031010,'N','N','N','N','Y',NULL),

('training/ou-coordinator-mapping/view',2,'training/ou-coordinator-mapping/view',NULL,'',NULL,'placement_admin',1598460926,1627031022,'N','N','N','N','N',NULL),

('training/payment/finaldetails',2,'training/payment/finaldetails',NULL,'',NULL,'placement_admin',1598460926,1627031041,'N','N','N','N','N',NULL),

('training/payment/pay/tesponse',2,'training/payment/pay/tesponse',NULL,'',NULL,'placement_admin',NULL,1627031072,'N','N','N','N','N',NULL),

('training/payment/paymenterror',2,'training/payment/paymenterror',NULL,'',NULL,'placement_admin',1598460926,1627031086,'N','N','N','N','N',NULL),

('training/payment/response-from-pay',2,'training/payment/response-from-pay',NULL,NULL,NULL,NULL,1598460926,1598460926,'N','N','N','N','N',NULL),

('training/payment/topaytmpaymentgateway',2,'training/payment/topaytmpaymentgateway',NULL,'',NULL,'placement_admin',1598460926,1627031102,'N','N','N','N','N',NULL),

('training/report/category-report',2,'training/report/category-report',NULL,'',NULL,'placement_admin',1598460926,1627031112,'N','N','N','N','N',NULL),

('training/report/company-report',2,'training/report/company-report',NULL,'',NULL,'placement_admin',1598460926,1627031126,'N','N','N','N','N',NULL),

('training/report/gender-report',2,'training/report/gender-report',NULL,NULL,NULL,NULL,1598460926,1598460926,'N','N','N','N','N',NULL),

('training/report/index',2,'training/report/index',NULL,'',NULL,'placement_admin',1598460926,1627031133,'N','N','N','N','N',NULL),

('training/report/job-report',2,'training/report/job-report',NULL,NULL,NULL,NULL,1598460926,1598460926,'N','N','N','N','N',NULL),

('training/report/ou-report',2,'training/report/ou-report',NULL,'',NULL,'placement_admin',1598460926,1627031152,'N','N','N','N','N',NULL),

('training/report/season-report',2,'training/report/season-report',NULL,NULL,NULL,NULL,1598460926,1598460926,'N','N','N','N','N',NULL),

('training/student-application/bulk-mail',2,'training/student-application/bulk-mail',NULL,'',NULL,'placement_admin',1597405737,1627031162,'N','N','N','N','N',NULL),

('training/student-application/create-admin',2,'training/student-application/create-admin',NULL,NULL,NULL,NULL,1597053974,1597053974,'N','N','N','N','N',NULL),

('training/student-application/get-jobs',2,'training/student-application/get-jobs',NULL,'',NULL,'placement_admin',1598460926,1627031173,'N','N','N','N','N',NULL),

('training/student-application/hire-view',2,'training/student-application/hire-view',NULL,'',NULL,'placement_admin',1598460926,1627013386,'N','N','N','N','N',NULL),

('training/student-application/index',2,'training/student-application/index',NULL,'',NULL,'placement_admin',1598460926,1627013401,'N','N','N','N','N',NULL),

('training/student-application/update',2,'training/student-application/update',NULL,'',NULL,'placement_admin',1598460926,1627013414,'N','N','N','N','N',NULL),

('training/student-application/update-application-status',2,'training/student-application/update-application-status',NULL,'',NULL,'placement_admin',1598246515,1627013424,'N','N','N','N','N',NULL),

('training/student-application/update-company-status',2,'training/student-application/update-company-status',NULL,'',NULL,'placement_admin',1598257246,1627013441,'N','N','N','N','N',NULL),

('training/student-application/update-status',2,'training/student-application/update-status',NULL,'',NULL,'placement_admin',1598245112,1627013461,'N','N','N','N','N',NULL),

('training/student-application/view',2,'training/student-application/view',NULL,'',NULL,'placement_admin',1598460926,1627013471,'N','N','N','N','N',NULL),

('training/student-registration/index',2,'training/student-registration/index',NULL,'',NULL,'placement_admin',1598460926,1627013484,'N','N','N','N','N',NULL),

('training/student-registration/verify',2,'training/student-registration/verify',NULL,NULL,NULL,NULL,1598460926,1598460926,'N','N','N','N','N',NULL),

('training/student-registration/view-all',2,'training/student-registration/view-all',NULL,'',NULL,'placement_admin',1598460926,1627013494,'N','N','N','N','N',NULL),

('training/training-company-season/apply-company-season',2,'training/training-company-season/apply-company-season',NULL,'',NULL,'placement_admin',1598460926,1627013507,'N','N','N','N','N',NULL),

('training/training-company-season/create',2,'training/training-company-season/create',NULL,'',NULL,'placement_admin',1598460926,1627013515,'N','N','N','N','N',NULL),

('training/training-company-season/create-admin',2,'training/training-company-season/create-admin',NULL,'',NULL,'placement_admin',1597321636,1627013539,'N','N','N','N','N',NULL),

('training/training-company-season/index',2,'training/training-company-season/index',NULL,'',NULL,'placement_admin',1598460926,1627013548,'N','N','N','N','N',NULL),

('training/training-company-season/pay',2,'training/training-company-season/pay',NULL,'',NULL,'placement_admin',1598460926,1627016601,'N','N','N','N','N',NULL),

('training/training-company-season/update',2,'training/training-company-season/update',NULL,'',NULL,'placement_admin',1598460926,1627016615,'N','N','N','N','Y',NULL),

('training/training-company-season/view',2,'training/training-company-season/view',NULL,'',NULL,'employee',1598460926,1627016628,'N','N','N','N','N',NULL),

('training/training-ctc-breakup/create',2,'training/training-ctc-breakup/create',NULL,'',NULL,'placement_admin',1598460926,1627016649,'N','N','N','N','N',NULL),

('training/training-ctc-breakup/index',2,'training/training-ctc-breakup/index',NULL,NULL,NULL,NULL,1598460926,1598460926,'N','N','N','N','N',NULL),

('training/training-ctc-breakup/update',2,'training/training-ctc-breakup/update',NULL,'',NULL,'placement_admin',1598460927,1627016664,'N','N','N','N','Y',NULL),

('training/training-ctc-breakup/view',2,'training/training-ctc-breakup/view',NULL,'',NULL,'placement_admin',1598460926,1627016685,'N','N','N','N','N',NULL),

('training/training-ou-mapping/create',2,'training/training-ou-mapping/create',NULL,'',NULL,'placement_admin',1578985251,1627016695,'N','N','N','N','N',NULL),

('training/training-ou-mapping/index',2,'training/training-ou-mapping/index',NULL,'',NULL,'placement_admin',1578985231,1627016705,'N','N','N','N','N',NULL),

('training/training-ou-mapping/update',2,'training/training-ou-mapping/update',NULL,'',NULL,'placement_admin',1578985294,1627016716,'N','N','N','N','Y',NULL),

('training/training-ou-mapping/view',2,'training/training-ou-mapping/view',NULL,'',NULL,'placement_admin',1578985272,1627016726,'N','N','N','N','N',NULL),

('training/training-placement-info/admin-index',2,'training/training-placement-info/admin-index',NULL,'',NULL,'placement_admin',1598460927,1627016735,'N','N','N','N','N',NULL),

('training/training-placement-info/applied-applicants',2,'training/training-placement-info/applied-applicants',NULL,'',NULL,'placement_admin',1598460927,1627016754,'N','N','N','N','N',NULL),

('training/training-placement-info/change-application-status',2,'training/training-placement-info/change-application-status',NULL,NULL,NULL,NULL,1598460927,1598460927,'N','N','N','N','N',NULL),

('training/training-placement-info/create',2,'training/training-placement-info/create',NULL,'',NULL,'placement_admin',1598460927,1627016763,'N','N','N','N','N',NULL),

('training/training-placement-info/create-admin',2,'training/training-placement-info/create-admin',NULL,'',NULL,'placement_admin',1597468774,1627016778,'N','N','N','N','N',NULL),

('training/training-placement-info/index',2,'training/training-placement-info/index',NULL,'',NULL,'placement_admin',1598460927,1627016791,'N','N','N','N','N',NULL),

('training/training-placement-info/manage-applicants',2,'training/training-placement-info/manage-applicants',NULL,'',NULL,'placement_admin',1598460927,1627016812,'N','N','N','N','N',NULL),

('training/training-placement-info/publish',2,'training/training-placement-info/publish',NULL,'',NULL,'placement_admin',1598460927,1627016821,'N','N','N','N','N',NULL),

('training/training-placement-info/qualification-type',2,'training/training-placement-info/qualification-type',NULL,'',NULL,'placement_admin',1598460927,1627016838,'N','N','N','N','N',NULL),

('training/training-placement-info/update',2,'training/training-placement-info/update',NULL,'',NULL,'placement_admin',1598460927,1627016870,'N','N','N','N','Y',NULL),

('training/training-placement-info/update-publish',2,'training/training-placement-info/update-publish',NULL,'',NULL,'placement_admin',1598460927,1627016883,'N','N','N','N','Y',NULL),

('training/training-placement-info/view',2,'training/training-placement-info/view',NULL,'',NULL,'placement_admin',1598460927,1627016906,'N','N','N','N','N',NULL),

('training/training-season/create',2,'training/training-season/create',NULL,NULL,NULL,NULL,1578985380,1578985380,'N','N','N','N','N',NULL),

('training/training-season/index',2,'training/training-season/index',NULL,'',NULL,'placement_admin',1578985361,1627016917,'N','N','N','N','N',NULL),

('training/training-season/report-index',2,'training/training-season/report-index',NULL,'',NULL,'placement_admin',1598460927,1627016926,'N','N','N','N','N',NULL),

('training/training-season/update',2,'training/training-season/update',NULL,'',NULL,'placement_admin',1578985487,1627016957,'N','N','N','N','Y',NULL),

('training/training-season/view',2,'training/training-season/view',NULL,'',NULL,'placement_admin',1578985405,1627016965,'N','N','N','N','N',NULL),

('transport_admin',1,'Admin for Transport module, he handles setting,details of vehicle and their assignment to OU. He also handles list of vendor. He can also assign vehicle to approved transport request. and can generate reports.','','',NULL,NULL,1577959901,1603104697,'N','N','N','N','N',NULL),

('transport_admin_view',1,'transport_admin_view','','',NULL,NULL,1579168790,1603104719,'N','N','N','N','N',NULL),

('transport_employee',1,'This role capture details of daily travelling','','',NULL,NULL,1577960102,1603104743,'N','N','N','N','N',NULL),

('transport_request_admin',1,'Admin to approve transport request and verify it.','','',NULL,NULL,1584694998,1603104802,'N','N','N','N','N',NULL),

('transport/assign/create',2,'transport/assign/create',NULL,NULL,NULL,NULL,1577959398,1577959398,'N','N','N','N','N',NULL),

('transport/assign/index',2,'transport/assign/index',NULL,NULL,NULL,NULL,1577959382,1577959382,'N','N','N','N','N',NULL),

('transport/assign/mark-inactive',2,'transport/assign/mark-inactive',NULL,NULL,NULL,NULL,1578133235,1578133235,'N','N','N','N','N',NULL),

('transport/assign/save',2,'transport/assign/save',NULL,NULL,NULL,NULL,1578133217,1578133217,'N','N','N','N','N',NULL),

('transport/assign/update',2,'transport/assign/update',NULL,NULL,NULL,NULL,1577959476,1577959476,'N','N','N','N','N',NULL),

('transport/assign/view',2,'transport/assign/view',NULL,NULL,NULL,NULL,1577959420,1577959420,'N','N','N','N','N',NULL),

('transport/dashboard/index',2,'transport/dashboard/index',NULL,NULL,NULL,NULL,1577959340,1577959340,'N','N','N','N','N',NULL),

('transport/fuel-type/create',2,'transport/fuel-type/create',NULL,NULL,NULL,NULL,1579346940,1579346940,'N','N','N','N','N',NULL),

('transport/fuel-type/index',2,'transport/fuel-type/index',NULL,NULL,NULL,NULL,1579346924,1579346924,'N','N','N','N','N',NULL),

('transport/fuel-type/save',2,'transport/fuel-type/save',NULL,NULL,NULL,NULL,1579346981,1579346981,'N','N','N','N','N',NULL),

('transport/fuel-type/update',2,'transport/fuel-type/update',NULL,NULL,NULL,NULL,1579346955,1579346955,'N','N','N','N','N',NULL),

('transport/fuel-type/view',2,'transport/fuel-type/view',NULL,NULL,NULL,NULL,1579346967,1579346967,'N','N','N','N','N',NULL),

('transport/report/index',2,'transport/report/index',NULL,NULL,NULL,NULL,1579506597,1579506597,'N','N','N','N','N',NULL),

('transport/report/ou-expenditure',2,'transport/report/ou-expenditure',NULL,NULL,NULL,NULL,1579506639,1579506639,'N','N','N','N','N',NULL),

('transport/report/print',2,'transport/report/print',NULL,NULL,NULL,NULL,1579516409,1579516409,'N','N','N','N','N',NULL),

('transport/report/print-ou',2,'transport/report/print-ou',NULL,NULL,NULL,NULL,1579675131,1579675131,'N','N','N','N','N',NULL),

('transport/report/vehicle-expenditure',2,'transport/report/vehicle-expenditure',NULL,NULL,NULL,NULL,1579506624,1579506624,'N','N','N','N','N',NULL),

('transport/settings/index',2,'transport/settings/index',NULL,NULL,NULL,NULL,1579158844,1579158844,'N','N','N','N','N',NULL),

('transport/tracking/approved',2,'transport/tracking/approved',NULL,NULL,NULL,NULL,1579089026,1579089026,'N','N','N','N','N',NULL),

('transport/tracking/create',2,'transport/tracking/create',NULL,NULL,NULL,NULL,1577959741,1577959741,'N','N','N','N','N',NULL),

('transport/tracking/fuel',2,'transport/tracking/fuel',NULL,NULL,NULL,NULL,1578044857,1578044857,'N','N','N','N','N',NULL),

('transport/tracking/get-other-ou',2,'transport/tracking/get-other-ou',NULL,NULL,NULL,NULL,1612604903,1612604903,'N','N','N','N','N',NULL),

('transport/tracking/get-ou',2,'Vehicle based OU List',NULL,NULL,NULL,NULL,1579087291,1579087291,'N','N','N','N','N',NULL),

('transport/tracking/index',2,'transport/tracking/index',NULL,NULL,NULL,NULL,1577959696,1577959696,'N','N','N','N','N',NULL),

('transport/tracking/save',2,'transport/tracking/save',NULL,NULL,NULL,NULL,1578293358,1578293358,'N','N','N','N','N',NULL),

('transport/tracking/update',2,'transport/tracking/update',NULL,NULL,NULL,NULL,1577959725,1577959725,'N','N','N','N','N',NULL),

('transport/tracking/view',2,'transport/tracking/view',NULL,NULL,NULL,NULL,1577959674,1577959674,'N','N','N','N','N',NULL),

('transport/transport-vendor-type/create',2,'Create Transport Vendor Type','','',NULL,NULL,1600245725,1600246465,'N','N','N','N','N',NULL),

('transport/transport-vendor-type/index',2,'transport/transport-vendor-type/index','','',NULL,NULL,1599544634,1599545452,'N','N','N','N','N',NULL),

('transport/transport-vendor-type/save',2,'Save Transport Vendor Type','','',NULL,NULL,1600246041,1600246375,'N','N','N','N','N',NULL),

('transport/transport-vendor-type/update',2,'transport/transport-vendor-type/update',NULL,NULL,NULL,NULL,1612244918,1612244918,'N','N','N','N','N',NULL),

('transport/transport-vendor-type/view',2,'Transport Vendor View Type','','',NULL,NULL,1600245910,1600246437,'N','N','N','N','N',NULL),

('transport/transport-vendor-vehicle/create',2,'transport/transport-vendor-vehicle/create',NULL,NULL,NULL,NULL,1601268172,1601268172,'N','N','N','N','N',NULL),

('transport/transport-vendor-vehicle/index',2,'transport/transport-vendor-vehicle/index',NULL,NULL,NULL,NULL,1601268005,1601268005,'N','N','N','N','N',NULL),

('transport/transport-vendor-vehicle/index-vehicle',2,'transport/transport-vendor-vehicle/index-vehicle',NULL,NULL,NULL,NULL,1601268017,1601268017,'N','N','N','N','N',NULL),

('transport/transport-vendor-vehicle/save',2,'transport/transport-vendor-vehicle/save',NULL,NULL,NULL,NULL,1601279633,1601279633,'N','N','N','N','N',NULL),

('transport/transport-vendor-vehicle/update',2,'transport/transport-vendor-vehicle/update',NULL,NULL,NULL,NULL,1601279646,1601279646,'N','N','N','N','N',NULL),

('transport/transport-vendor-vehicle/view',2,'transport/transport-vendor-vehicle/view',NULL,NULL,NULL,NULL,1601267986,1601267986,'N','N','N','N','N',NULL),

('transport/transport-vendor/create',2,'transport/transport-vendor/create',NULL,NULL,NULL,NULL,1600246179,1600246179,'N','N','N','N','N',NULL),

('transport/transport-vendor/index',2,'transport/transport-vendor/index','','',NULL,NULL,1599546224,1599548665,'N','N','N','N','N',NULL),

('transport/transport-vendor/mark-active',2,'transport/transport-vendor/mark-active',NULL,NULL,NULL,NULL,1612600528,1612600528,'N','N','N','N','N',NULL),

('transport/transport-vendor/mark-inactive',2,'transport/transport-vendor/mark-inactive',NULL,NULL,NULL,NULL,1601268202,1601268202,'N','N','N','N','N',NULL),

('transport/transport-vendor/save',2,'transport/transport-vendor/save',NULL,NULL,NULL,NULL,1601268101,1601268101,'N','N','N','N','N',NULL),

('transport/transport-vendor/update',2,'transport/transport-vendor/update',NULL,NULL,NULL,NULL,1612268340,1612268340,'N','N','N','N','N',NULL),

('transport/transport-vendor/view',2,'transport/transport-vendor/view',NULL,NULL,NULL,NULL,1600246634,1600246634,'N','N','N','N','N',NULL),

('transport/type/create',2,'transport/type/create',NULL,NULL,NULL,NULL,1579158979,1579158979,'N','N','N','N','N',NULL),

('transport/type/index',2,'transport/type/index',NULL,NULL,NULL,NULL,1579158866,1579158866,'N','N','N','N','N',NULL),

('transport/type/save',2,'transport/type/save','','',NULL,NULL,1579163639,1579163652,'N','N','N','N','N',NULL),

('transport/type/update',2,'transport/type/update',NULL,NULL,NULL,NULL,1579158893,1579158893,'N','N','N','N','N',NULL),

('transport/type/view',2,'transport/type/view',NULL,NULL,NULL,NULL,1579158881,1579158881,'N','N','N','N','N',NULL),

('transport/vehical/create',2,'transport/vehical/create',NULL,NULL,NULL,NULL,1577959855,1577959855,'N','N','N','N','N',NULL),

('transport/vehical/index',2,'transport/vehical/index',NULL,NULL,NULL,NULL,1577959780,1577959780,'N','N','N','N','N',NULL),

('transport/vehical/mark-inactive',2,'transport/vehical/mark-inactive',NULL,NULL,NULL,NULL,1578130101,1578130101,'N','N','N','N','N',NULL),

('transport/vehical/save',2,'transport/vehical/save',NULL,NULL,NULL,NULL,1578119018,1578119018,'N','N','N','N','N',NULL),

('transport/vehical/update',2,'transport/vehical/update',NULL,NULL,NULL,NULL,1577959871,1577959871,'N','N','N','N','N',NULL),

('transport/vehical/view',2,'transport/vehical/view',NULL,NULL,NULL,NULL,1577959821,1577959821,'N','N','N','N','N',NULL),

('transport/vehicle-detail/create',2,'transport/vehicle-detail/create',NULL,NULL,NULL,NULL,1588227323,1588227323,'N','N','N','N','N',NULL),

('transport/vehicle-detail/index',2,'transport/vehicle-detail/index',NULL,NULL,NULL,NULL,1588230234,1588230234,'N','N','N','N','N',NULL),

('transport/vehicle-detail/index-vehicle',2,'transport/vehicle-detail/index-vehicle',NULL,NULL,NULL,NULL,1588227403,1588227403,'N','N','N','N','N',NULL),

('transport/vehicle-detail/save',2,'transport/vehicle-detail/save',NULL,NULL,NULL,NULL,1588227429,1588227429,'N','N','N','N','N',NULL),

('transport/vehicle-detail/update',2,'transport/vehicle-detail/update',NULL,NULL,NULL,NULL,1588227451,1588227451,'N','N','N','N','N',NULL),

('transport/vehicle-detail/view',2,'transport/vehicle-detail/view',NULL,NULL,NULL,NULL,1588227470,1588227470,'N','N','N','N','N',NULL),

('v1/dashboard/index',2,'API Dashboard',NULL,NULL,NULL,NULL,1584460856,1584460856,'N','N','N','N','N',NULL),

('vendor_admin',1,'This role is the admin of the Vendor Bill Tracking. The person can view all the bill status that is being navigating through the system.','','',NULL,NULL,1565344072,1572263195,'N','N','N','N','N',NULL),

('vendor_admin_view',1,'view-only rights for the Vendor module',NULL,NULL,NULL,NULL,1571832065,1571832065,'N','N','N','N','N',NULL),

('vendor_dealing_assistant',1,'Dealing Assistant is the role that is to be provided to the Person who handles the incoming bills from the particular organization.','','',NULL,NULL,1565344168,1572263221,'N','N','N','N','N',NULL),

('vendor_department',1,'This role is to be provided to the administrative post from the particular organization unit who handles the Billing that is to be processed by the Finance Branch Approval. ','','',NULL,NULL,1565344097,1572263231,'N','N','N','N','N',NULL),

('vendor_purchase/budget-head/create',2,'Creation of Budget Heads',NULL,'',NULL,'vendor',1565415135,1625813487,'N','N','N','N','N',NULL),

('vendor_purchase/budget-head/delete',2,'Deletion of Budget head',NULL,'',NULL,'vendor',1565415185,1625814636,'N','N','N','N','Y',NULL),

('vendor_purchase/budget-head/index',2,'List of Budget Heads',NULL,'',NULL,'vendor',1565415099,1625814699,'N','N','N','N','N',NULL),

('vendor_purchase/budget-head/update',2,'Updation of Budget Head',NULL,'',NULL,'vendor',1565415168,1625814887,'N','N','N','N','Y',NULL),

('vendor_purchase/budget-head/view',2,'Viewing of Budget Heads',NULL,'',NULL,'vendor',1565415119,1625816560,'N','N','N','N','N',NULL),

('vendor_purchase/procurement-procedure-head/create',2,'Permission to add the Procedure Procurement Head',NULL,'',NULL,'vendor',1565415588,1625816655,'N','N','N','N','N',NULL),

('vendor_purchase/procurement-procedure-head/delete',2,'Permission to delete the Procurement Procedure Head',NULL,'',NULL,'vendor',1565415634,1625816753,'N','N','N','N','N',NULL),

('vendor_purchase/procurement-procedure-head/index',2,'Permission to add Procedure Procurement Head',NULL,'',NULL,'vendor',1565415525,1625817391,'N','N','N','N','N',NULL),

('vendor_purchase/procurement-procedure-head/update',2,'Permission to update the Procurement Procedure Head',NULL,'',NULL,'vendor',1565415609,1625818670,'N','N','N','N','Y',NULL),

('vendor_purchase/procurement-procedure-head/view',2,'Permission to view the Procurement Procedure head',NULL,'',NULL,'vendor',1565415548,1625818765,'N','N','N','N','N',NULL),

('vendor_purchase/purchase-order/create',2,'Permission to create the Purchase Order',NULL,'',NULL,'vendor',1565415837,1625818874,'N','N','N','N','N',NULL),

('vendor_purchase/purchase-order/delete',2,'Permission to delete the Purchase Order',NULL,'',NULL,'vendor',1565415887,1625818954,'N','N','N','N','Y',NULL),

('vendor_purchase/purchase-order/index',2,'Permission to view the Purchase Orders',NULL,'',NULL,'vendor',1565415761,1625819006,'N','N','N','N','N',NULL),

('vendor_purchase/purchase-order/index-from-dashboard',2,'Permission to view the purchase orders from department view',NULL,'',NULL,'vendor',1565415799,1625819131,'N','N','N','N','N',NULL),

('vendor_purchase/purchase-order/print-pdf-purchase-order',2,'Permission to Print the Purchase Order Detail',NULL,'',NULL,'vendor',1566021643,1625819509,'N','N','N','N','N',NULL),

('vendor_purchase/purchase-order/proforma-by-dealing-assistant',2,'Permission to Forward the Proforma by Dealing Assistant to the Purchase order creator.',NULL,'',NULL,'vendor',1565416080,1625820208,'N','N','N','N','N',NULL),

('vendor_purchase/purchase-order/proforma-to-dealing-assistant',2,'Permission to forward the Purchase to dealing Assistant.',NULL,'',NULL,'vendor',1565416038,1625820265,'N','N','N','N','N',NULL),

('vendor_purchase/purchase-order/resent-otp',2,'Permission to re-sent the OTP',NULL,'',NULL,'vendor',1565415923,1625820330,'N','N','N','N','N',NULL),

('vendor_purchase/purchase-order/toggle-order-status',2,'vendor_purchase/purchase-order/toggle-order-status',NULL,'',NULL,'vendor',1577944996,1625820401,'N','N','N','N','N',NULL),

('vendor_purchase/purchase-order/update',2,'Permission to update the Purchase Order',NULL,'',NULL,'vendor',1565415870,1625820467,'N','N','N','N','Y',NULL),

('vendor_purchase/purchase-order/update-proforma',2,'Permission to update the Proforma by the person creating the purchase order',NULL,'',NULL,'vendor',1565415964,1625820497,'N','N','N','N','N',NULL),

('vendor_purchase/purchase-order/update-proforma-finance',2,'Permission to Update the Proforma form by finance branch.',NULL,'',NULL,'vendor',1565416000,1625820622,'N','N','N','N','N',NULL),

('vendor_purchase/purchase-order/view',2,'Permission to View the Purchase Order',NULL,'',NULL,'vendor',1565415818,1625820694,'N','N','N','N','N',NULL),

('vendor_purchase/settings/index',2,'Permission to use the Vendor Bill Payment Settings',NULL,'',NULL,'vendor',1565243351,1625824306,'N','N','N','Y','N',NULL),

('vendor_purchase/tracking-status/index',2,'Permission to View the Puchase Order Activity Logs',NULL,'',NULL,'vendor',1565416330,1625824353,'N','N','N','N','N',NULL),

('vice_chancellor',1,'Vice Chancellor ROle',NULL,NULL,NULL,NULL,1599481201,1599481201,'N','N','N','N','N',NULL),

('vidhyarthi/fee/adminviewupdateedit',2,'Special permission to view edit update student fee after date is closed    ',NULL,NULL,NULL,NULL,1619167795,1619167795,'N','N','N','N','N',NULL),

('vidhyarthi/fee/edit',2,'vidhyarthi/fee/edit',NULL,NULL,NULL,NULL,1619208735,1619208735,'N','N','N','N','N',NULL),

('vidhyarthi/fee/edit-gateway-offline',2,'vidhyarthi/fee/edit-gateway-offline',NULL,NULL,NULL,NULL,1619208749,1619208749,'N','N','N','N','N',NULL),

('vidhyarthi/fee/pre-view',2,'vidhyarthi/fee/pre-view',NULL,NULL,NULL,NULL,1618264874,1618264874,'N','N','N','N','N',NULL),

('vidhyarthi/fee/view',2,'vidhyarthi/fee/view',NULL,NULL,NULL,NULL,1618264865,1618264865,'N','N','N','N','N',NULL),

('Vinod',2,'System Analyst',NULL,NULL,NULL,NULL,1590304211,1590304211,'N','N','N','N','N',NULL),

('website',2,'managing website',NULL,NULL,NULL,NULL,1590057631,1590057631,'N','N','N','N','N',NULL),

('website_admin',1,'website_admin',NULL,NULL,NULL,NULL,1590057911,1590057911,'N','N','N','N','N',NULL);

/*Table structure for table `auth_item_child` */

DROP TABLE IF EXISTS `auth_item_child`;

CREATE TABLE `auth_item_child` (
  `parent` varchar(192) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(192) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `auth_item_child` */

insert  into `auth_item_child`(`parent`,`child`) values 

('exam_administrator','/examination/generate-admit-card/publish-admit-card'),

('programme_admin','academic_admin'),

('academic_admin','academic/academic-calendar-entries/create'),

('academic_admin','academic/academic-calendar-entries/update'),

('academic_admin','academic/academic-calendar-entries/view'),

('academic_admin','academic/academic-calendar/calendar'),

('academic_admin','academic/academic-calendar/create'),

('academic_admin','academic/academic-calendar/get-calendar-by-ac-year'),

('academic_admin','academic/academic-calendar/index'),

('academic_admin','academic/academic-calendar/update'),

('academic_admin','academic/academic-calendar/view'),

('academic_admin','academic/academic-cycle/index'),

('academic_admin','academic/academic-section/create'),

('academic_admin','academic/academic-section/get-ou-by-program'),

('academic_admin','academic/academic-section/get-term-by-program'),

('academic_admin','academic/academic-section/index'),

('academic_admin','academic/academic-section/index-programme'),

('academic_admin','academic/academic-section/update'),

('academic_admin','academic/academic-section/view'),

('academic_admin','academic/academic-session-entries/create'),

('academic_admin','academic/academic-session/create'),

('academic_admin','academic/academic-session/get-calendar-by-ac-year'),

('academic_admin','academic/academic-session/index'),

('academic_admin','academic/academic-session/update'),

('academic_admin','academic/academic-session/view'),

('academic_admin','academic/academic-year/approve'),

('academic_admin','academic/academic-year/create'),

('academic_admin','academic/academic-year/index'),

('academic_admin','academic/academic/add-student-to-section'),

('academic_admin','academic/academic/programme-term'),

('admin','academic/academic/programme-terms'),

('academic_admin','academic/academic/section'),

('academic_admin','academic/admission-cycle/index'),

('academic_admin','academic/batch/view'),

('academic_admin','academic/dashboard/index'),

('programme_admin','academic/dashboard/index'),

('academic_admin','academic/evaluation-role/index'),

('employee','academic/evaluation-role/index'),

('employee','academic/evaluation-role/index-programme'),

('academic_admin','academic/evaluation-session/course-management'),

('academic_admin','academic/evaluation-session/create'),

('academic_admin','academic/evaluation-session/get-courses'),

('academic_admin','academic/programme-batch/creat'),

('academic_admin','academic/programme-batch/create'),

('programme_admin','academic/programme-batch/create'),

('academic_admin','academic/programme-batch/index'),

('programme_admin','academic/programme-batch/index'),

('academic_admin','academic/settings/index'),

('odl_admission_admin','admadmin/adm-portal-content/index'),

('odl_admission_admin','admadmin/adm-portal-content/update'),

('odl_admission_admin','admadmin/adm-portal-content/view'),

('odl_admission_admin','admadmin/dashboard/index'),

('odl_admission_admin','admadmin/discrepancies/index'),

('odl_admission_admin','admadmin/pay-trans-sent/index'),

('odl_admission_admin','admadmin/preview/discrepancy'),

('odl_admission_admin','admadmin/preview/process'),

('odl_admission_admin','admadmin/preview/rdts-export'),

('odl_admission_admin','admadmin/preview/reset-password'),

('odl_admission_admin','admadmin/student/confirm-refund'),

('odl_admission_admin','admadmin/student/index'),

('odl_admission_admin','admadmin/visualization/export-index'),

('odl_admission_admin','admadmin/visualization/index'),

('odl_admission_admin','admission/archive/index'),

('odl_admission_admin','admission/programme-map/ajax-create'),

('odl_admission_admin','admission/programme-map/map-bulk'),

('odl_admission_admin','admission/programme-map/map-index'),

('odl_admission_admin','admission/session/ajax-update'),

('odl_admission_admin','admission/session/app'),

('odl_admission_admin','admission/settings/index'),

('admission_admin','admission/visualization-admission/index'),

('odl_admission_admin','admission/visualization-admission/index'),

('admission_admin','admission/visualization/index'),

('odl_admission_admin','admission/visualization/index'),

('academic_admin','affiliation_user'),

('affiliation_admin','affiliation/affiliation-user/index'),

('affiliation_admin','alumni_admin'),

('alumni_admin','alumni_administration/admin/approve-alumini'),

('alumni_admin','alumni_administration/admin/create'),

('alumni_admin','alumni_administration/admin/index'),

('alumni_ou_admin','alumni_administration/admin/index'),

('alumni_admin','alumni_administration/admin/mail'),

('alumni_admin','alumni_administration/admin/settings'),

('alumni_admin','alumni_administration/admin/update'),

('alumni_admin','alumni_administration/admin/verified-index'),

('alumni_ou_admin','alumni_administration/admin/verified-index'),

('alumni_admin','alumni_administration/admin/view'),

('alumni_admin','alumni_administration/import/import-alumni'),

('alumni_admin','alumni_administration/import/process-and-import-data'),

('alumni_admin','alumni_administration/mail-template/create'),

('alumni_admin','alumni_administration/mail-template/index'),

('alumni_admin','alumni_administration/mail-template/update'),

('alumni_admin','alumni_administration/mail-template/view'),

('alumni_admin','alumni_administration/ou-admin-mapping/create'),

('alumni_admin','alumni_administration/ou-admin-mapping/index'),

('alumni_admin','alumni_administration/ou-admin-mapping/view'),

('cas_admin','cas/cas-apar-applications/admin-index'),

('cas_admin','cas/cas-apar-applications/apar-employee-index'),

('cas_reporting_officer','cas/cas-apar-applications/application-report-create'),

('cas_reporting_officer','cas/cas-apar-applications/application-report-update'),

('cas_employee','cas/cas-apar-applications/application-report-view'),

('cas_reporting_officer','cas/cas-apar-applications/application-report-view'),

('cas_reviewing_officer','cas/cas-apar-applications/application-report-view'),

('cas_reviewing_officer','cas/cas-apar-applications/application-review-create'),

('cas_reviewing_officer','cas/cas-apar-applications/application-review-update'),

('cas_employee','cas/cas-apar-applications/application-review-view'),

('cas_reviewing_officer','cas/cas-apar-applications/application-review-view'),

('cas_employee','cas/cas-apar-applications/application-view'),

('cas_reporting_officer','cas/cas-apar-applications/application-view'),

('cas_admin','cas/cas-apar-applications/continue-admin-application'),

('cas_employee','cas/cas-apar-applications/continue-application'),

('cas_reporting_officer','cas/cas-apar-applications/continue-application-report'),

('cas_reviewing_officer','cas/cas-apar-applications/continue-application-review'),

('cas_admin','cas/cas-apar-applications/create'),

('cas_employee','cas/cas-apar-applications/download-pdf'),

('cas_reviewing_officer','cas/cas-apar-applications/download-pdf'),

('cas_employee','cas/cas-apar-applications/employee-application-create'),

('cas_employee','cas/cas-apar-applications/employee-application-update'),

('cas_employee','cas/cas-apar-applications/employee-index'),

('cas_reporting_officer','cas/cas-apar-applications/employee-index'),

('cas_employee','cas/cas-apar-applications/employee-view'),

('cas_reporting_officer','cas/cas-apar-applications/index'),

('cas_reviewing_officer','cas/cas-apar-applications/index'),

('vice_chancellor','cas/cas-apar-applications/index'),

('cas_admin','cas/cas-apar-applications/send-back'),

('cas_employee','cas/cas-apar-applications/send-back'),

('cas_reporting_officer','cas/cas-apar-applications/send-back'),

('cas_admin','cas/cas-apar-applications/update'),

('cas_admin','cas/cas-apar-applications/view'),

('admin','cas/cas-head/create'),

('cas_admin','cas/cas-head/create'),

('admin','cas/cas-head/delete'),

('cas_admin','cas/cas-head/delete'),

('admin','cas/cas-head/index'),

('cas_admin','cas/cas-head/index'),

('admin','cas/cas-head/update'),

('cas_admin','cas/cas-head/update'),

('admin','cas/cas-head/view'),

('cas_admin','cas/cas-head/view'),

('cas_employee','cas/cas-head/view'),

('employee','cas/cas-head/view'),

('cas_employee','cas/cas-pbas-applications/academic-details-preview'),

('cas_admin','cas/cas-pbas-applications/create'),

('cas_employee','cas/cas-pbas-applications/create'),

('cas_admin','cas/cas-pbas-applications/create-research'),

('cas_admin','cas/cas-pbas-applications/download-pdf'),

('cas_employee','cas/cas-pbas-applications/download-pdf'),

('cas_iqac','cas/cas-pbas-applications/download-pdf'),

('cas_employee','cas/cas-pbas-applications/extra-details'),

('cas_employee','cas/cas-pbas-applications/extra-details-preview'),

('admin','cas/cas-pbas-applications/forward-to-iqac'),

('cas_admin','cas/cas-pbas-applications/forward-to-iqac'),

('dean','cas/cas-pbas-applications/forward-to-iqac'),

('vice_chancellor','cas/cas-pbas-applications/forward-to-iqac'),

('cas_admin','cas/cas-pbas-applications/forward-to-vc'),

('hod','cas/cas-pbas-applications/forward-to-vc'),

('admin','cas/cas-pbas-applications/index'),

('cas_admin','cas/cas-pbas-applications/index'),

('cas_employee','cas/cas-pbas-applications/index'),

('cas_iqac','cas/cas-pbas-applications/index'),

('cas_reporting_officer','cas/cas-pbas-applications/index'),

('dean','cas/cas-pbas-applications/index'),

('hod','cas/cas-pbas-applications/index'),

('vice_chancellor','cas/cas-pbas-applications/index'),

('cas_employee','cas/cas-pbas-applications/preview-and-submit'),

('cas_employee','cas/cas-pbas-applications/process-application'),

('cas_admin','cas/cas-pbas-applications/quick-track'),

('cas_employee','cas/cas-pbas-applications/quick-track'),

('cas_iqac','cas/cas-pbas-applications/quick-track'),

('dean','cas/cas-pbas-applications/quick-track'),

('hod','cas/cas-pbas-applications/quick-track'),

('cas_employee','cas/cas-pbas-applications/research-details'),

('cas_employee','cas/cas-pbas-applications/research-details-preview'),

('cas_iqac','cas/cas-pbas-applications/review-applications'),

('cas_admin','cas/cas-pbas-applications/screening-details-preview'),

('cas_iqac','cas/cas-pbas-applications/screening-details-preview'),

('admin','cas/cas-pbas-applications/start-screening'),

('cas_admin','cas/cas-pbas-applications/start-screening'),

('cas_iqac','cas/cas-pbas-applications/start-screening'),

('cas_admin','cas/cas-pbas-applications/submit-screening'),

('cas_iqac','cas/cas-pbas-applications/submit-screening'),

('cas_employee','cas/cas-pbas-applications/teaching-details-preview'),

('cas_admin','cas/cas-pbas-applications/teaching-details-update'),

('cas_employee','cas/cas-pbas-applications/teaching-details-update'),

('cas_employee','cas/cas-pbas-applications/update'),

('cas_admin','cas/cas-pbas-applications/view'),

('cas_employee','cas/cas-pbas-applications/view'),

('admin','cas/cas-pbas-applications/view-forwarded-application'),

('cas_admin','cas/cas-pbas-applications/view-forwarded-application'),

('cas_employee','cas/cas-pbas-applications/view-forwarded-application'),

('cas_iqac','cas/cas-pbas-applications/view-forwarded-application'),

('dean','cas/cas-pbas-applications/view-forwarded-application'),

('hod','cas/cas-pbas-applications/view-forwarded-application'),

('cas_admin','cas/cas-pbas-applications/view-reviewed-application'),

('cas_employee','cas/cas-pbas-applications/view-reviewed-application'),

('cas_iqac','cas/cas-pbas-applications/view-reviewed-application'),

('dean','cas/cas-pbas-applications/view-reviewed-application'),

('admin','cas/cas/check-registration-status'),

('cas_admin','cas/cas/check-registration-status'),

('cas_employee','cas/cas/check-registration-status'),

('employee','cas/cas/check-registration-status'),

('admin','cas/cas/create'),

('cas_admin','cas/cas/create'),

('admin','cas/cas/delete'),

('cas_admin','cas/cas/delete'),

('admin','cas/cas/fupload'),

('cas_admin','cas/cas/fupload'),

('admin','cas/cas/index'),

('cas_admin','cas/cas/index'),

('admin','cas/cas/print-pdf'),

('cas_admin','cas/cas/print-pdf'),

('admin','cas/cas/process-form'),

('cas_admin','cas/cas/process-form'),

('admin','cas/cas/researcharticle'),

('cas_admin','cas/cas/researcharticle'),

('admin','cas/cas/submit'),

('cas_admin','cas/cas/submit'),

('admin','cas/cas/update'),

('cas_admin','cas/cas/update'),

('admin','cas/cas/view'),

('cas_admin','cas/cas/view'),

('cas_employee','cas/cas/view'),

('employee','cas/cas/view'),

('admin','cas/designation-head/create'),

('cas_admin','cas/designation-head/create'),

('admin','cas/designation-head/delete'),

('cas_admin','cas/designation-head/delete'),

('admin','cas/designation-head/index'),

('cas_admin','cas/designation-head/index'),

('admin','cas/designation-head/update'),

('cas_admin','cas/designation-head/update'),

('admin','cas/designation-head/view'),

('cas_admin','cas/designation-head/view'),

('admin','cas/promotion-head/create'),

('cas_admin','cas/promotion-head/create'),

('admin','cas/promotion-head/delete'),

('cas_admin','cas/promotion-head/delete'),

('admin','cas/promotion-head/index'),

('cas_admin','cas/promotion-head/index'),

('admin','cas/promotion-head/update'),

('cas_admin','cas/promotion-head/update'),

('admin','cas/promotion-head/view'),

('cas_admin','cas/promotion-head/view'),

('admin','cas/publication-head/create'),

('cas_admin','cas/publication-head/create'),

('admin','cas/publication-head/delete'),

('cas_admin','cas/publication-head/delete'),

('admin','cas/publication-head/index'),

('cas_admin','cas/publication-head/index'),

('admin','cas/publication-head/update'),

('cas_admin','cas/publication-head/update'),

('admin','cas/publication-head/view'),

('cas_admin','cas/publication-head/view'),

('admin','cas/tracking-status/create'),

('cas_admin','cas/tracking-status/create'),

('admin','cas/tracking-status/delete'),

('cas_admin','cas/tracking-status/delete'),

('admin','cas/tracking-status/index'),

('cas_admin','cas/tracking-status/index'),

('admin','cas/tracking-status/update'),

('cas_admin','cas/tracking-status/update'),

('admin','cas/tracking-status/view'),

('cas_admin','cas/tracking-status/view'),

('ccs_admin','ccs/admin/dashboard'),

('ccs_admin','ccs/admin/employee'),

('ccs_admin','ccs/admin/student'),

('ccs_admin','ccs/admin/view'),

('ccs_admin','ccs/commuinication/index'),

('ccs_admin','ccs/groups/create'),

('ccs_admin','ccs/groups/delete'),

('ccs_admin','ccs/groups/index'),

('ccs_admin','ccs/groups/update'),

('ccs_admin','ccs/groups/view'),

('ccs_admin','ccs/groups/view-members'),

('ccs_admin','ccs/groups/view-student-members'),

('ccs_admin','ccs/mail/view'),

('ccs_admin','ccs/settings/index'),

('cfs_admin','cfs/default/analysis'),

('cfs_ou_admin','cfs/default/analysis'),

('cfs_admin','cfs/default/index'),

('cfs_ou_admin','cfs/default/index'),

('cfs_admin','cfs/item/create'),

('cfs_ou_admin','cfs/item/create'),

('cfs_admin','cfs/item/delete'),

('cfs_ou_admin','cfs/item/delete'),

('cfs_admin','cfs/item/index'),

('cfs_ou_admin','cfs/item/index'),

('cfs_admin','cfs/item/index-for-dept'),

('cfs_ou_admin','cfs/item/index-for-dept'),

('cfs_admin','cfs/order-table/all-index'),

('cfs_ou_admin','cfs/order-table/all-index'),

('cfs_admin','cfs/order-table/create'),

('cfs_ou_admin','cfs/order-table/create'),

('cfs_admin','cfs/order-table/update'),

('cfs_ou_admin','cfs/order-table/update'),

('cfs_admin','cfs/order-table/update-status'),

('cfs_ou_admin','cfs/order-table/update-status'),

('cfs_admin','cfs/order-table/view'),

('cfs_ou_admin','cfs/order-table/view'),

('cfs_admin','cfs/publishing-head/create'),

('cfs_admin','cfs/publishing-head/index'),

('cfs_admin','cfs/publishing-head/update'),

('cfs_admin','cfs/publishing-head/view'),

('cfs_admin','cfs/settings/index'),

('cfs_admin','cfs/tracking-status/index'),

('cfs_ou_admin','cfs/tracking-status/index'),

('cfs_admin','cfs/tracking-status/index-order'),

('cfs_ou_admin','cfs/tracking-status/index-order'),

('parent','child'),

('exam_administrator','dashboard/settings'),

('admin','document/document-type/create'),

('employee','document/document-type/create'),

('admin','document/document-type/index'),

('employee','document/document-type/index'),

('admin','document/document-type/update'),

('admin','document/document-type/view'),

('employee','document/document-type/view'),

('admin','document/document/describe'),

('employee','document/document/describe'),

('admin','document/document/describe-update'),

('employee','document/document/describe-update'),

('admin','document/document/index'),

('employee','document/document/index'),

('admin','document/document/view'),

('employee','document/document/view'),

('admin','document/upload/delete-admin'),

('admin','document/upload/form'),

('employee','document/upload/form'),

('admin','document/upload/save-admin'),

('ehousing_admin','ehousing/admin/ehousing-employee-record/create'),

('ehousing_admin','ehousing/admin/ehousing-employee-record/delete'),

('ehousing_admin','ehousing/admin/ehousing-employee-record/index'),

('ehousing_admin','ehousing/admin/ehousing-employee-record/update'),

('ehousing_employee','ehousing/admin/ehousing-employee-record/update'),

('ehousing_admin','ehousing/admin/ehousing-employee-record/view'),

('ehousing_admin','ehousing/admin/ehousing-registration-form/allotment-details'),

('ehousing_employee','ehousing/admin/ehousing-registration-form/allotment-details'),

('ehousing_admin','ehousing/admin/ehousing-registration-form/applications-fresh'),

('ehousing_admin','ehousing/admin/ehousing-registration-form/applications-relocate'),

('ehousing_admin','ehousing/admin/ehousing-registration-form/applications-upgrade'),

('ehousing_admin','ehousing/admin/ehousing-registration-form/confirm-allotment'),

('ehousing_employee','ehousing/admin/ehousing-registration-form/confirm-allotment'),

('ehousing_admin','ehousing/admin/ehousing-registration-form/create'),

('ehousing_employee','ehousing/admin/ehousing-registration-form/create'),

('ehousing_admin','ehousing/admin/ehousing-registration-form/house-preference'),

('ehousing_employee','ehousing/admin/ehousing-registration-form/house-preference'),

('ehousing_admin','ehousing/admin/ehousing-registration-form/index'),

('ehousing_employee','ehousing/admin/ehousing-registration-form/index'),

('ehousing_admin','ehousing/admin/ehousing-registration-form/print-form'),

('ehousing_employee','ehousing/admin/ehousing-registration-form/print-form'),

('ehousing_admin','ehousing/admin/ehousing-registration-form/submit'),

('ehousing_employee','ehousing/admin/ehousing-registration-form/submit'),

('ehousing_admin','ehousing/admin/ehousing-registration-form/update'),

('ehousing_employee','ehousing/admin/ehousing-registration-form/update'),

('ehousing_admin','ehousing/admin/ehousing-registration-form/view'),

('ehousing_employee','ehousing/admin/ehousing-registration-form/view'),

('ehousing_admin','ehousing/admin/ehousing-scheme/create'),

('ehousing_admin','ehousing/admin/ehousing-scheme/house'),

('ehousing_employee','ehousing/admin/ehousing-scheme/house'),

('ehousing_admin','ehousing/admin/ehousing-scheme/index'),

('ehousing_employee','ehousing/admin/ehousing-scheme/index'),

('ehousing_admin','ehousing/admin/ehousing-scheme/publish'),

('ehousing_admin','ehousing/admin/ehousing-scheme/update'),

('ehousing_admin','ehousing/admin/ehousing-scheme/view'),

('ehousing_employee','ehousing/admin/ehousing-scheme/view'),

('ehousing_admin','ehousing/admin/house-type/create'),

('ehousing_admin','ehousing/admin/house-type/index'),

('ehousing_admin','ehousing/admin/house-type/update'),

('ehousing_admin','ehousing/admin/house-type/view'),

('ehousing_admin','ehousing/dashboard/dashboard'),

('ehousing_admin','ehousing/dashboard/employee-dashboard'),

('ehousing_employee','ehousing/dashboard/employee-dashboard'),

('ehousing_admin','ehousing/dashboard/employee-index'),

('ehousing_employee','ehousing/dashboard/employee-index'),

('ehousing_admin','ehousing/dashboard/houses'),

('admin','employee_admin'),

('leave_admin','employee-leave-mapping/index'),

('leave_admin','employee-record/confirm-employees-leave'),

('admin','employee/dashboard/index'),

('employee_admin','employee/dashboard/index'),

('employee_admin_view','employee/dashboard/index'),

('employee_statistics_view','employee/dashboard/index'),

('hrprofile-admin','employee/dashboard/index'),

('admin','employee/extradetails/family-details/create'),

('admin','employee/record/complete'),

('employee','employee/record/complete'),

('employee_admin','employee/record/complete'),

('employee_admin_view','employee/record/complete'),

('hrprofile-admin','employee/record/complete'),

('payroll_pvo','employee/record/complete'),

('admin','employee/record/create'),

('employee_admin','employee/record/create'),

('hrprofile-admin','employee/record/create'),

('admin','employee/record/d-v'),

('employee_admin','employee/record/d-v'),

('hrprofile-admin','employee/record/d-v'),

('payroll_pcm','employee/record/d-v'),

('payroll_pda','employee/record/d-v'),

('admin','employee/record/family'),

('admin','employee/record/get-designations'),

('employee','employee/record/get-designations'),

('employee_admin','employee/record/get-designations'),

('hrprofile-admin','employee/record/get-designations'),

('admin','employee/record/get-states'),

('employee','employee/record/get-states'),

('employee_admin','employee/record/get-states'),

('hrprofile-admin','employee/record/get-states'),

('admin','employee/record/history'),

('employee','employee/record/history'),

('employee_admin','employee/record/history'),

('hrprofile-admin','employee/record/history'),

('admin','employee/record/income-tax-index'),

('employee_admin','employee/record/income-tax-index'),

('admin','employee/record/income-tax-index_admin'),

('employee_admin','employee/record/income-tax-index_admin'),

('employee_admin','employee/record/income-tax-index_pda'),

('admin','employee/record/index'),

('employee_admin','employee/record/index'),

('employee_admin_view','employee/record/index'),

('employee_statistics_view','employee/record/index'),

('hrprofile-admin','employee/record/index'),

('payroll_pvo','employee/record/index'),

('employee_admin','employee/record/payroll-categories'),

('payroll_admin','employee/record/payroll-categories'),

('payroll_pcm','employee/record/payroll-categories'),

('payroll_pda','employee/record/payroll-categories'),

('payroll_pvo','employee/record/payroll-categories'),

('employee_admin','employee/record/payroll-categories_admin'),

('employee_admin','employee/record/payroll-categories_pcm'),

('payroll_pcm','employee/record/payroll-categories_pcm'),

('employee_admin','employee/record/payroll-index'),

('payroll_admin','employee/record/payroll-index'),

('payroll_pcm','employee/record/payroll-index'),

('payroll_pda','employee/record/payroll-index'),

('payroll_pvo','employee/record/payroll-index'),

('employee_admin','employee/record/payroll-index_admin'),

('employee_admin','employee/record/payroll-index_pcm'),

('payroll_pcm','employee/record/payroll-index_pcm'),

('admin','employee/record/profile'),

('employee','employee/record/profile'),

('employee_admin','employee/record/profile'),

('hrprofile-admin','employee/record/profile'),

('admin','employee/record/update'),

('employee','employee/record/update'),

('employee_admin','employee/record/update'),

('hrprofile-admin','employee/record/update'),

('admin','employee/record/view'),

('employee','employee/record/view'),

('employee_admin','employee/record/view'),

('employee_admin_view','employee/record/view'),

('hrprofile-admin','employee/record/view'),

('admin','employee/settings/index'),

('endowment_admin','endowment/admin/dashboard'),

('endowment_admin','endowment/admin/manage'),

('endowment_admin','endowment/application-control/create'),

('endowment_admin','endowment/application-control/delete'),

('endowment_admin','endowment/application-control/index'),

('endowment_admin','endowment/application-control/update'),

('endowment_admin','endowment/application-control/view'),

('endowment_admin','endowment/endowment-contribution-area/create'),

('endowment_admin','endowment/endowment-contribution-area/delete'),

('endowment_admin','endowment/endowment-contribution-area/index'),

('endowment_admin','endowment/endowment-contribution-area/update'),

('endowment_admin','endowment/endowment-contribution-area/view'),

('endowment_admin','endowment/payment-purpose/create'),

('endowment_admin','endowment/payment-purpose/delete'),

('endowment_admin','endowment/payment-purpose/index'),

('endowment_admin','endowment/payment-purpose/update'),

('endowment_admin','endowment/payment-purpose/view'),

('endowment_admin','endowment/salutation/create'),

('endowment_admin','endowment/salutation/delete'),

('endowment_admin','endowment/salutation/index'),

('endowment_admin','endowment/salutation/update'),

('endowment_admin','endowment/salutation/view'),

('endowment_admin','endowment/settings/index'),

('endowment_admin','endowment/user-type/create'),

('endowment_admin','endowment/user-type/delete'),

('endowment_admin','endowment/user-type/index'),

('endowment_admin','endowment/user-type/update'),

('endowment_admin','endowment/user-type/view'),

('conference_hall_admin','essential/conference-hall/approve'),

('conference_hall_admin','essential/conference-hall/create'),

('employee','essential/conference-hall/create'),

('conference_hall_admin','essential/conference-hall/delete'),

('employee','essential/conference-hall/delete'),

('conference_hall_admin','essential/conference-hall/index'),

('employee','essential/conference-hall/index'),

('conference_hall_admin','essential/conference-hall/print'),

('employee','essential/conference-hall/print'),

('conference_hall_admin','essential/conference-hall/save'),

('employee','essential/conference-hall/save'),

('conference_hall_admin','essential/conference-hall/update'),

('employee','essential/conference-hall/update'),

('conference_hall_admin','essential/conference-hall/view'),

('employee','essential/conference-hall/view'),

('conference_hall_admin','essential/default/index'),

('employee','essential/default/index'),

('guest_house_admin','essential/default/index'),

('parking_admin','essential/default/index'),

('transport_request_admin','essential/default/index'),

('guest_house_admin','essential/guest-house/approve'),

('guest_house_admin','essential/guest-house/check-in'),

('guest_house_admin','essential/guest-house/check-out'),

('admin','essential/guest-house/create'),

('employee','essential/guest-house/create'),

('guest_house_admin','essential/guest-house/create'),

('employee','essential/guest-house/delete'),

('guest_house_admin','essential/guest-house/delete'),

('admin','essential/guest-house/index'),

('employee','essential/guest-house/index'),

('guest_house_admin','essential/guest-house/index'),

('employee','essential/guest-house/print'),

('guest_house_admin','essential/guest-house/print'),

('employee','essential/guest-house/save'),

('guest_house_admin','essential/guest-house/save'),

('employee','essential/guest-house/update'),

('guest_house_admin','essential/guest-house/update'),

('employee','essential/guest-house/view'),

('guest_house_admin','essential/guest-house/view'),

('parking_admin','essential/parking/approve'),

('employee','essential/parking/create'),

('parking_admin','essential/parking/create'),

('employee','essential/parking/delete'),

('parking_admin','essential/parking/delete'),

('parking_admin','essential/parking/get-ou'),

('employee','essential/parking/index'),

('parking_admin','essential/parking/index'),

('employee','essential/parking/print'),

('parking_admin','essential/parking/print'),

('employee','essential/parking/save'),

('parking_admin','essential/parking/save'),

('employee','essential/parking/update'),

('parking_admin','essential/parking/update'),

('employee','essential/parking/view'),

('parking_admin','essential/parking/view'),

('conference_hall_admin','essential/reports/conference-hall-request-report'),

('guest_house_admin','essential/reports/guest-house-request-report'),

('conference_hall_admin','essential/reports/index'),

('guest_house_admin','essential/reports/index'),

('parking_admin','essential/reports/index'),

('transport_request_admin','essential/reports/index'),

('parking_admin','essential/reports/parking-request-report'),

('conference_hall_admin','essential/reports/search-conference-hall-request'),

('guest_house_admin','essential/reports/search-guest-house-request'),

('parking_admin','essential/reports/search-parking-request'),

('transport_request_admin','essential/reports/search-transport-request'),

('transport_request_admin','essential/reports/transport-request-report'),

('transport_request_admin','essential/transport-request/approve'),

('transport_admin','essential/transport-request/assign'),

('admin','essential/transport-request/create'),

('employee','essential/transport-request/create'),

('transport_request_admin','essential/transport-request/create'),

('admin','essential/transport-request/delete'),

('employee','essential/transport-request/delete'),

('transport_request_admin','essential/transport-request/delete'),

('admin','essential/transport-request/index'),

('employee','essential/transport-request/index'),

('transport_request_admin','essential/transport-request/index'),

('transport_admin','essential/transport-request/index-approve'),

('admin','essential/transport-request/print'),

('employee','essential/transport-request/print'),

('transport_request_admin','essential/transport-request/print'),

('admin','essential/transport-request/save'),

('employee','essential/transport-request/save'),

('transport_request_admin','essential/transport-request/save'),

('admin','essential/transport-request/update'),

('employee','essential/transport-request/update'),

('transport_request_admin','essential/transport-request/update'),

('employee','essential/transport-request/verify'),

('transport_admin','essential/transport-request/verify'),

('transport_request_admin','essential/transport-request/verify'),

('admin','essential/transport-request/view'),

('employee','essential/transport-request/view'),

('transport_admin','essential/transport-request/view'),

('transport_request_admin','essential/transport-request/view'),

('admin','estate_admin'),

('admin','estate/building/building-information'),

('estate_admin','estate/building/building-information'),

('estate_admin_view','estate/building/building-information'),

('admin','estate/building/confirm-deletion'),

('estate_admin','estate/building/confirm-deletion'),

('admin','estate/building/create'),

('estate_admin','estate/building/create'),

('admin','estate/building/delete'),

('estate_admin','estate/building/delete'),

('admin','estate/building/fetch-floor'),

('estate_admin','estate/building/fetch-floor'),

('estate_admin_view','estate/building/fetch-floor'),

('admin','estate/building/fetch-summary'),

('estate_admin','estate/building/fetch-summary'),

('estate_admin_view','estate/building/fetch-summary'),

('admin','estate/building/index'),

('estate_admin','estate/building/index'),

('estate_admin_view','estate/building/index'),

('admin','estate/building/index-ajax'),

('estate_admin','estate/building/index-ajax'),

('estate_admin_view','estate/building/index-ajax'),

('admin','estate/building/update'),

('estate_admin','estate/building/update'),

('admin','estate/building/view'),

('employee','estate/building/view'),

('estate_admin','estate/building/view'),

('estate_admin_view','estate/building/view'),

('admin','estate/building/view-ajax'),

('estate_admin','estate/building/view-ajax'),

('estate_admin_view','estate/building/view-ajax'),

('estate_admin','estate/corridor-flooring-type/create'),

('estate_admin','estate/corridor-flooring-type/delete'),

('estate_admin','estate/corridor-flooring-type/index'),

('estate_admin','estate/corridor-flooring-type/update'),

('estate_admin','estate/corridor-flooring-type/view'),

('estate_admin','estate/door-type/create'),

('estate_admin','estate/door-type/delete'),

('estate_admin','estate/door-type/index'),

('estate_admin','estate/door-type/update'),

('estate_admin','estate/door-type/view'),

('estate_admin','estate/estate-uploads/create'),

('estate_admin','estate/estate-uploads/delete'),

('estate_admin','estate/external-wall-type/create'),

('estate_admin','estate/external-wall-type/delete'),

('estate_admin','estate/external-wall-type/index'),

('estate_admin','estate/external-wall-type/update'),

('estate_admin','estate/external-wall-type/view'),

('estate_admin','estate/floor-category/create'),

('estate_admin','estate/floor-category/delete'),

('estate_admin','estate/floor-category/index'),

('estate_admin','estate/floor-category/update'),

('estate_admin','estate/floor-category/view'),

('estate_admin','estate/floor-level/create'),

('estate_admin','estate/floor-level/delete'),

('estate_admin','estate/floor-level/index'),

('estate_admin','estate/floor-level/update'),

('estate_admin','estate/floor-level/view'),

('estate_admin','estate/floor/create'),

('estate_admin','estate/floor/delete'),

('admin','estate/floor/fetch-floor'),

('estate_admin','estate/floor/fetch-floor'),

('estate_admin_view','estate/floor/fetch-floor'),

('estate_admin','estate/floor/index'),

('estate_admin_view','estate/floor/index'),

('admin','estate/floor/index-ajax'),

('estate_admin','estate/floor/index-ajax'),

('estate_admin_view','estate/floor/index-ajax'),

('estate_admin','estate/floor/update'),

('estate_admin','estate/floor/view'),

('estate_admin_view','estate/floor/view'),

('estate_admin','estate/footpath-type/create'),

('estate_admin','estate/footpath-type/delete'),

('estate_admin','estate/footpath-type/index'),

('estate_admin','estate/footpath-type/update'),

('estate_admin','estate/footpath-type/view'),

('estate_admin','estate/foundation-type/create'),

('estate_admin','estate/foundation-type/delete'),

('estate_admin','estate/foundation-type/index'),

('estate_admin','estate/foundation-type/update'),

('estate_admin','estate/foundation-type/view'),

('estate_admin','estate/housing-unit/create'),

('estate_admin','estate/housing-unit/delete'),

('estate_admin','estate/housing-unit/index'),

('estate_admin','estate/housing-unit/upadte'),

('estate_admin','estate/housing-unit/view'),

('estate_admin','estate/railing-type/create'),

('estate_admin','estate/railing-type/delete'),

('estate_admin','estate/railing-type/index'),

('estate_admin','estate/railing-type/update'),

('estate_admin','estate/railing-type/view'),

('estate_admin','estate/road-type/create'),

('estate_admin','estate/road-type/delete'),

('estate_admin','estate/road-type/index'),

('estate_admin','estate/road-type/update'),

('estate_admin','estate/road-type/view'),

('estate_admin','estate/road/create'),

('estate_admin','estate/road/delete'),

('admin','estate/road/fetch-road'),

('estate_admin','estate/road/fetch-road'),

('estate_admin_view','estate/road/fetch-road'),

('estate_admin','estate/road/index'),

('estate_admin','estate/road/index-ajax'),

('estate_admin','estate/road/update'),

('estate_admin','estate/road/view'),

('estate_admin','estate/roof-type/create'),

('estate_admin','estate/roof-type/delete'),

('estate_admin','estate/roof-type/index'),

('estate_admin','estate/roof-type/update'),

('estate_admin','estate/roof-type/view'),

('estate_admin','estate/room/create'),

('estate_admin','estate/room/delete'),

('admin','estate/room/fetch-room'),

('estate_admin','estate/room/fetch-room'),

('estate_admin_view','estate/room/fetch-room'),

('estate_admin','estate/room/get-floor-level'),

('estate_admin','estate/room/index'),

('estate_admin_view','estate/room/index'),

('admin','estate/room/index-ajax'),

('estate_admin','estate/room/index-ajax'),

('estate_admin_view','estate/room/index-ajax'),

('estate_admin','estate/room/update'),

('estate_admin','estate/room/view'),

('estate_admin_view','estate/room/view'),

('admin','estate/settings/index'),

('estate_admin','estate/settings/index'),

('admin','estate/site/admin'),

('estate_admin','estate/site/admin'),

('estate_admin_view','estate/site/admin'),

('estate_admin','estate/site/building-floor-matrix'),

('estate_admin','estate/site/settings'),

('estate_admin','estate/structure-type/create'),

('estate_admin','estate/structure-type/delete'),

('estate_admin','estate/structure-type/index'),

('estate_admin','estate/structure-type/update'),

('estate_admin','estate/structure-type/view'),

('estate_admin','estate/substation-type/create'),

('estate_admin','estate/substation-type/delete'),

('estate_admin','estate/substation-type/index'),

('estate_admin','estate/substation-type/update'),

('estate_admin','estate/substation-type/view'),

('estate_admin','estate/washroom/create'),

('estate_admin','estate/washroom/delete'),

('admin','estate/washroom/fetch-room'),

('estate_admin','estate/washroom/fetch-room'),

('estate_admin_view','estate/washroom/fetch-room'),

('admin','estate/washroom/fetch-washroom'),

('estate_admin','estate/washroom/fetch-washroom'),

('estate_admin_view','estate/washroom/fetch-washroom'),

('estate_admin','estate/washroom/index'),

('estate_admin_view','estate/washroom/index'),

('admin','estate/washroom/index-ajax'),

('estate_admin','estate/washroom/index-ajax'),

('estate_admin_view','estate/washroom/index-ajax'),

('estate_admin','estate/washroom/update'),

('estate_admin','estate/washroom/view'),

('estate_admin_view','estate/washroom/view'),

('estate_admin','estate/window-type/create'),

('estate_admin','estate/window-type/delete'),

('estate_admin','estate/window-type/index'),

('estate_admin','estate/window-type/update'),

('estate_admin','estate/window-type/view'),

('academic_admin','evaluation/detention-rules/index'),

('programme_admin','evaluation/detention-rules/index'),

('exam_administrator','evaluation/evaluation-report/export-report'),

('exam_administrator','evaluation/evaluation-report/generate-reports'),

('exam_administrator','evaluation/evaluation-report/index'),

('academic_admin','evaluation/evaluation/bulk-calculate-grades'),

('exam_administrator','evaluation/evaluation/bulk-calculate-grades'),

('academic_admin','evaluation/import-marks/import'),

('exam_administrator','evaluation/import-marks/import'),

('programme_admin','evaluation/import-marks/import'),

('exam_administrator','evaluation/import-marks/validate-sheet'),

('exam_administrator','evaluation/marks-entry/preview'),

('academic_admin','evaluation/marks-manipulation/app'),

('exam_administrator','evaluation/marks-manipulation/app'),

('academic_admin','evaluation/marks-manipulation/remove-course'),

('exam_administrator','evaluation/marks-manipulation/remove-course'),

('academic_admin','evaluation/marks-manipulation/remove-marks'),

('exam_administrator','evaluation/marks-manipulation/remove-marks'),

('academic_admin','evaluation/marks-manipulation/update-exam'),

('exam_administrator','evaluation/marks-manipulation/update-exam'),

('academic_admin','evaluation/marks-manipulation/update-type'),

('exam_administrator','evaluation/marks-manipulation/update-type'),

('academic_admin','evaluation/programme-detention-rules/index'),

('programme_admin','evaluation/programme-detention-rules/index'),

('academic_admin','evaluation/term-configuration/index'),

('programme_admin','evaluation/term-configuration/index'),

('admin','exam_administrator'),

('exam_administrator','exam_registration/examination-student-application/index'),

('exam_administrator','examination-centre-detail/index'),

('exam_administrator','examination/allocate-center/addstudent'),

('exam_administrator','examination/allocate-center/course'),

('exam_administrator','examination/allocate-center/get-halls'),

('exam_administrator','examination/allocate-center/gethalls'),

('exam_administrator','examination/allocate-center/programme'),

('exam_administrator','examination/attendance-sheet-template/create'),

('exam_administrator','examination/attendance-sheet-template/delete'),

('exam_administrator','examination/attendance-sheet-template/index'),

('exam_administrator','examination/attendance-sheet-template/update'),

('exam_administrator','examination/attendance-sheet-template/view'),

('exam_administrator','examination/attendance-sheet/centrewise'),

('exam_administrator','examination/attendance-sheet/centrewiseexcel'),

('exam_administrator','examination/attendance-sheet/get-courses'),

('exam_administrator','examination/attendance-sheet/getcourses'),

('exam_administrator','examination/attendance-sheet/index'),

('exam_administrator','examination/attendance-sheet/pdf'),

('exam_administrator','examination/attendance-sheet/preview'),

('exam_administrator','examination/attendance-sheet/programmewise'),

('exam_administrator','examination/attendance-sheet/programmewiseexcel'),

('exam_administrator','examination/attendance-sheet/programmewisepdf'),

('exam_administrator','examination/attendance-sheet/view'),

('exam_administrator','examination/attendance/index'),

('exam_administrator','examination/attendance/pdf'),

('exam_administrator','examination/attendance/preview'),

('exam_administrator','examination/attendance/view'),

('exam_administrator','examination/dashboard/'),

('exam_administrator','examination/dashboard/create-permission'),

('evaluator','examination/dashboard/evaluator'),

('exam_administrator','examination/dashboard/evaluator'),

('evaluator','examination/dashboard/evaluator-dashboard'),

('exam_administrator','examination/dashboard/evaluator-dashboard'),

('exam_administrator','examination/dashboard/evaluatordashboard'),

('exam_administrator','examination/dashboard/index'),

('exam_administrator','examination/dashboard/programme-settings'),

('exam_administrator','examination/dashboard/programmesettings'),

('exam_administrator','examination/dashboard/session'),

('exam_administrator','examination/dashboard/session-index'),

('exam_administrator','examination/dashboard/sessionindex'),

('exam_administrator','examination/dashboard/settings'),

('exam_administrator','examination/evaluation-template/create'),

('exam_administrator','examination/evaluation-template/delete'),

('exam_administrator','examination/evaluation-template/index'),

('exam_administrator','examination/evaluation-template/update'),

('exam_administrator','examination/evaluation-template/view'),

('exam_administrator','examination/evaluation/bulk-update'),

('evaluator','examination/evaluation/bulk-update-marks'),

('exam_administrator','examination/evaluation/bulk-update-marks'),

('exam_administrator','examination/evaluation/bulkupdate'),

('exam_administrator','examination/evaluation/bulkupdatemarks'),

('exam_administrator','examination/evaluation/calculate-component-marks-bulk-override'),

('exam_administrator','examination/evaluation/calculate-final-marks'),

('exam_administrator','examination/evaluation/calculate-grades'),

('exam_administrator','examination/evaluation/calculate-marks-bulk-override'),

('evaluator','examination/evaluation/calculate-marks-individual'),

('exam_administrator','examination/evaluation/calculate-marks-individual'),

('evaluator','examination/evaluation/calculate-marks-individual-form'),

('exam_administrator','examination/evaluation/calculate-marks-individual-form'),

('evaluator','examination/evaluation/calculate-marks-individual-override'),

('exam_administrator','examination/evaluation/calculate-marks-individual-override'),

('exam_administrator','examination/evaluation/calculatecomponentmarksbulkoverride'),

('exam_administrator','examination/evaluation/calculatefinalmarks'),

('exam_administrator','examination/evaluation/calculategrades'),

('exam_administrator','examination/evaluation/calculatemarksbulkoverride'),

('exam_administrator','examination/evaluation/calculatemarksindividual'),

('exam_administrator','examination/evaluation/calculatemarksindividualform'),

('exam_administrator','examination/evaluation/calculatemarksindividualoverride'),

('exam_administrator','examination/evaluation/download-excel'),

('exam_administrator','examination/evaluation/downloadexcel'),

('exam_administrator','examination/evaluation/export'),

('exam_administrator','examination/evaluation/export-form'),

('exam_administrator','examination/evaluation/export-pdf'),

('exam_administrator','examination/evaluation/export-student-list'),

('exam_administrator','examination/evaluation/exportform'),

('exam_administrator','examination/evaluation/exportpdf'),

('exam_administrator','examination/evaluation/exportstudentlist'),

('evaluator','examination/evaluation/horizontal-layout'),

('exam_administrator','examination/evaluation/horizontal-layout'),

('exam_administrator','examination/evaluation/horizontallayout'),

('exam_administrator','examination/evaluation/manage'),

('exam_administrator','examination/evaluation/manage-marks'),

('exam_administrator','examination/evaluation/managemarks'),

('exam_administrator','examination/evaluation/mark-sheet'),

('exam_administrator','examination/evaluation/marksheet'),

('exam_administrator','examination/evaluation/move'),

('exam_administrator','examination/evaluation/save-sgpa'),

('exam_administrator','examination/evaluation/savesgpa'),

('exam_administrator','examination/evaluation/semester-grade-card'),

('exam_administrator','examination/evaluation/semester-grade-card-supplementary'),

('exam_administrator','examination/evaluation/semestergradecard'),

('exam_administrator','examination/evaluation/semestergradecardsupplementary'),

('exam_administrator','examination/evaluation/sgpa'),

('exam_administrator','examination/evaluation/student-marks-component'),

('exam_administrator','examination/evaluation/studentmarkscomponent'),

('exam_administrator','examination/evaluation/supplementary-mark-sheet'),

('exam_administrator','examination/evaluation/supplementary-term-report'),

('exam_administrator','examination/evaluation/supplementarymarksheet'),

('exam_administrator','examination/evaluation/supplementarytermreport'),

('exam_administrator','examination/evaluation/term-report'),

('exam_administrator','examination/evaluation/termreport'),

('exam_administrator','examination/evaluation/verify-marks'),

('exam_administrator','examination/evaluation/verifymarks'),

('exam_administrator','examination/evaluation/withheld'),

('exam_administrator','examination/evaluation/withheld-form'),

('exam_administrator','examination/evaluation/withheldform'),

('academic_admin','examination/evaluator/assign-evaluators'),

('exam_administrator','examination/evaluator/assign-evaluators'),

('academic_admin','examination/evaluator/assignevaluators'),

('exam_administrator','examination/evaluator/assignevaluators'),

('academic_admin','examination/evaluator/dashboard'),

('exam_administrator','examination/evaluator/dashboard'),

('programme_admin','examination/evaluator/dashboard'),

('academic_admin','examination/evaluator/delete-evaluator'),

('exam_administrator','examination/evaluator/delete-evaluator'),

('exam_administrator','examination/evaluator/deleteevaluator'),

('academic_admin','examination/evaluator/export-data'),

('exam_administrator','examination/evaluator/export-data'),

('programme_admin','examination/evaluator/export-data'),

('exam_administrator','examination/evaluator/exportdata'),

('exam_administrator','examination/evaluator/exportform'),

('exam_administrator','examination/evaluator/generate'),

('academic_admin','examination/evaluator/get-section'),

('exam_administrator','examination/evaluator/get-section'),

('exam_administrator','examination/evaluator/getou'),

('exam_administrator','examination/evaluator/getsection'),

('exam_administrator','examination/evaluator/importdata'),

('academic_admin','examination/evaluator/index-session'),

('exam_administrator','examination/evaluator/indexsession'),

('exam_administrator','examination/evaluator/processandimportdata'),

('academic_admin','examination/evaluator/save-evaluator'),

('exam_administrator','examination/evaluator/save-evaluator'),

('exam_administrator','examination/evaluator/saveevaluator'),

('exam_administrator','examination/evaluator/select-programme'),

('exam_administrator','examination/evaluator/selectprogramme'),

('exam_administrator','examination/exam-cycle/create'),

('exam_administrator','examination/exam-cycle/delete'),

('exam_administrator','examination/exam-cycle/index'),

('exam_administrator','examination/exam-cycle/update'),

('exam_administrator','examination/exam-cycle/view'),

('exam_administrator','examination/exam-date-sheet/create'),

('exam_administrator','examination/exam-date-sheet/delete'),

('exam_administrator','examination/exam-date-sheet/index'),

('exam_administrator','examination/exam-date-sheet/update'),

('exam_administrator','examination/exam-date-sheet/view'),

('exam_administrator','examination/exam-roll-pattern/create'),

('exam_administrator','examination/exam-roll-pattern/delete'),

('exam_administrator','examination/exam-roll-pattern/generate-roll-number'),

('exam_administrator','examination/exam-roll-pattern/generaterollnumber'),

('exam_administrator','examination/exam-roll-pattern/publish'),

('exam_administrator','examination/exam-roll-pattern/update'),

('exam_administrator','examination/exam-roll-pattern/view'),

('exam_administrator','examination/exam-time-slots/create'),

('exam_administrator','examination/exam-time-slots/delete'),

('exam_administrator','examination/exam-time-slots/get-programmes-by-term'),

('exam_administrator','examination/exam-time-slots/getprogrammesbyterm'),

('exam_administrator','examination/exam-time-slots/index'),

('exam_administrator','examination/exam-time-slots/update'),

('exam_administrator','examination/exam-time-slots/view'),

('exam_administrator','examination/examination-admit-card-template/create'),

('exam_administrator','examination/examination-admit-card-template/delete'),

('exam_administrator','examination/examination-admit-card-template/index'),

('exam_administrator','examination/examination-admit-card-template/update'),

('exam_administrator','examination/examination-admit-card-template/view'),

('exam_administrator','examination/examination-admit-card/create'),

('exam_administrator','examination/examination-admit-card/delete'),

('exam_administrator','examination/examination-admit-card/get-center'),

('exam_administrator','examination/examination-admit-card/getcenter'),

('exam_administrator','examination/examination-admit-card/index'),

('exam_administrator','examination/examination-admit-card/lock'),

('exam_administrator','examination/examination-admit-card/mark-downloaded'),

('exam_administrator','examination/examination-admit-card/markdownloaded'),

('exam_administrator','examination/examination-admit-card/pdf'),

('exam_administrator','examination/examination-admit-card/programme'),

('exam_administrator','examination/examination-admit-card/release-bulk'),

('exam_administrator','examination/examination-admit-card/releasebulk'),

('exam_administrator','examination/examination-admit-card/update'),

('exam_administrator','examination/examination-admit-card/view'),

('exam_administrator','examination/examination-application-control/create'),

('exam_administrator','examination/examination-application-control/delete'),

('exam_administrator','examination/examination-application-control/index'),

('exam_administrator','examination/examination-application-control/update'),

('exam_administrator','examination/examination-application-control/view'),

('exam_administrator','examination/examination-centre-detail-session/availibility'),

('exam_administrator','examination/examination-centre-detail-session/city-index'),

('exam_administrator','examination/examination-centre-detail-session/cityindex'),

('exam_administrator','examination/examination-centre-detail-session/create'),

('exam_administrator','examination/examination-centre-detail-session/delete'),

('exam_administrator','examination/examination-centre-detail-session/import'),

('exam_administrator','examination/examination-centre-detail-session/index'),

('exam_administrator','examination/examination-centre-detail-session/update'),

('exam_administrator','examination/examination-centre-detail-session/view'),

('exam_administrator','examination/examination-centre-detail/city-index'),

('exam_administrator','examination/examination-centre-detail/cityindex'),

('exam_administrator','examination/examination-centre-detail/create'),

('exam_administrator','examination/examination-centre-detail/delete'),

('exam_administrator','examination/examination-centre-detail/index'),

('exam_administrator','examination/examination-centre-detail/update'),

('exam_administrator','examination/examination-centre-detail/view'),

('exam_administrator','examination/examination-content/create'),

('exam_administrator','examination/examination-content/delete'),

('exam_administrator','examination/examination-content/index'),

('exam_administrator','examination/examination-content/update'),

('exam_administrator','examination/examination-content/view'),

('exam_administrator','examination/examination-course-center-mapping/create'),

('exam_administrator','examination/examination-course-center-mapping/delete'),

('exam_administrator','examination/examination-course-center-mapping/index'),

('exam_administrator','examination/examination-course-center-mapping/index-center'),

('exam_administrator','examination/examination-course-center-mapping/update'),

('exam_administrator','examination/examination-course-center-mapping/view'),

('exam_administrator','examination/examination-fee/bulk-assign-examination-fee'),

('exam_administrator','examination/examination-fee/bulkassignexaminationfee'),

('exam_administrator','examination/examination-fee/bulkupdate'),

('exam_administrator','examination/examination-fee/changeconfig'),

('exam_administrator','examination/examination-fee/changetype'),

('exam_administrator','examination/examination-fee/configure-fee'),

('exam_administrator','examination/examination-fee/configurefee'),

('exam_administrator','examination/examination-fee/configurefee1'),

('exam_administrator','examination/examination-fee/examination-fee-index'),

('exam_administrator','examination/examination-fee/examinationfeeindex'),

('exam_administrator','examination/examination-fee/fixed-view'),

('exam_administrator','examination/examination-fee/fixedview'),

('exam_administrator','examination/examination-fee/index'),

('exam_administrator','examination/examination-fee/programme-index'),

('exam_administrator','examination/examination-fee/programmeindex'),

('exam_administrator','examination/examination-fee/savecoursefee'),

('exam_administrator','examination/examination-fee/savefixed'),

('exam_administrator','examination/examination-fee/savetemplate'),

('exam_administrator','examination/examination-fee/select-type'),

('exam_administrator','examination/examination-fee/selecttype'),

('exam_administrator','examination/examination-mail-format-template/create'),

('exam_administrator','examination/examination-mail-format-template/delete'),

('exam_administrator','examination/examination-mail-format-template/index'),

('exam_administrator','examination/examination-mail-format-template/update'),

('exam_administrator','examination/examination-mail-format-template/view'),

('exam_administrator','examination/examination-mail-log-examiner/create'),

('exam_administrator','examination/examination-mail-log-examiner/delete'),

('exam_administrator','examination/examination-mail-log-examiner/index'),

('exam_administrator','examination/examination-mail-log-examiner/indexteacher'),

('exam_administrator','examination/examination-mail-log-examiner/mail'),

('exam_administrator','examination/examination-mail-log-examiner/update'),

('exam_administrator','examination/examination-mail-log-examiner/view'),

('exam_administrator','examination/examination-mail-log/create'),

('exam_administrator','examination/examination-mail-log/createall'),

('exam_administrator','examination/examination-mail-log/delete'),

('exam_administrator','examination/examination-mail-log/index'),

('exam_administrator','examination/examination-mail-log/indexteacher'),

('exam_administrator','examination/examination-mail-log/mail'),

('exam_administrator','examination/examination-mail-log/mailall'),

('exam_administrator','examination/examination-mail-log/pdf'),

('exam_administrator','examination/examination-mail-log/pdfall'),

('exam_administrator','examination/examination-mail-log/preview'),

('exam_administrator','examination/examination-mail-log/print'),

('exam_administrator','examination/examination-mail-log/savecontent'),

('exam_administrator','examination/examination-mail-log/templateoption'),

('exam_administrator','examination/examination-mail-log/templateoptionall'),

('exam_administrator','examination/examination-mail-log/update'),

('exam_administrator','examination/examination-mail-log/view'),

('exam_administrator','examination/examination-marks/index-programme'),

('exam_administrator','examination/examination-marks/indexprogramme'),

('exam_administrator','examination/examination-marks/section-index'),

('exam_administrator','examination/examination-marks/sectionindex'),

('exam_administrator','examination/examination-paper-examiner-master/create'),

('exam_administrator','examination/examination-paper-examiner-master/detail-view'),

('exam_administrator','examination/examination-paper-examiner-master/detailview'),

('exam_administrator','examination/examination-paper-examiner-master/get-course'),

('exam_administrator','examination/examination-paper-examiner-master/get-teacher'),

('exam_administrator','examination/examination-paper-examiner-master/get-unit'),

('exam_administrator','examination/examination-paper-examiner-master/getcourse'),

('exam_administrator','examination/examination-paper-examiner-master/getteacher'),

('exam_administrator','examination/examination-paper-examiner-master/getunit'),

('exam_administrator','examination/examination-paper-examiner-master/index'),

('exam_administrator','examination/examination-paper-examiner-master/mail'),

('exam_administrator','examination/examination-paper-examiner-master/program-index'),

('exam_administrator','examination/examination-paper-examiner-master/programindex'),

('exam_administrator','examination/examination-paper-examiner-master/remove'),

('exam_administrator','examination/examination-paper-examiner-master/save'),

('exam_administrator','examination/examination-paper-examiner-master/update'),

('exam_administrator','examination/examination-paper-examiner-master/view'),

('exam_administrator','examination/examination-paper-examiner/award-sheet-upload'),

('exam_administrator','examination/examination-paper-examiner/awardsheetupload'),

('exam_administrator','examination/examination-paper-examiner/create'),

('exam_administrator','examination/examination-paper-examiner/dashboard'),

('exam_administrator','examination/examination-paper-examiner/deleteexaminer'),

('exam_administrator','examination/examination-paper-examiner/detail-view'),

('exam_administrator','examination/examination-paper-examiner/detailview'),

('exam_administrator','examination/examination-paper-examiner/get-course'),

('exam_administrator','examination/examination-paper-examiner/get-teacher'),

('exam_administrator','examination/examination-paper-examiner/get-unit'),

('exam_administrator','examination/examination-paper-examiner/getcourse'),

('exam_administrator','examination/examination-paper-examiner/getteacher'),

('exam_administrator','examination/examination-paper-examiner/getunit'),

('exam_administrator','examination/examination-paper-examiner/index'),

('exam_administrator','examination/examination-paper-examiner/mail'),

('exam_administrator','examination/examination-paper-examiner/program-index'),

('exam_administrator','examination/examination-paper-examiner/programindex'),

('exam_administrator','examination/examination-paper-examiner/record'),

('exam_administrator','examination/examination-paper-examiner/reminder'),

('exam_administrator','examination/examination-paper-examiner/remove'),

('exam_administrator','examination/examination-paper-examiner/save'),

('exam_administrator','examination/examination-paper-examiner/saveexaminer'),

('exam_administrator','examination/examination-paper-examiner/saveexaminercourse'),

('exam_administrator','examination/examination-paper-examiner/selectcourse'),

('exam_administrator','examination/examination-paper-examiner/selectprogramme'),

('exam_administrator','examination/examination-paper-examiner/set-reminder-date'),

('exam_administrator','examination/examination-paper-examiner/setreminderdate'),

('exam_administrator','examination/examination-paper-examiner/update'),

('exam_administrator','examination/examination-paper-examiner/view'),

('exam_administrator','examination/examination-paper-setter-master/create'),

('exam_administrator','examination/examination-paper-setter-master/detail-view'),

('exam_administrator','examination/examination-paper-setter-master/detailview'),

('exam_administrator','examination/examination-paper-setter-master/get-course'),

('exam_administrator','examination/examination-paper-setter-master/get-teacher'),

('exam_administrator','examination/examination-paper-setter-master/get-term'),

('exam_administrator','examination/examination-paper-setter-master/get-unit'),

('exam_administrator','examination/examination-paper-setter-master/getcourse'),

('exam_administrator','examination/examination-paper-setter-master/getteacher'),

('exam_administrator','examination/examination-paper-setter-master/getterm'),

('exam_administrator','examination/examination-paper-setter-master/getunit'),

('exam_administrator','examination/examination-paper-setter-master/index'),

('exam_administrator','examination/examination-paper-setter-master/mail'),

('exam_administrator','examination/examination-paper-setter-master/program-index'),

('exam_administrator','examination/examination-paper-setter-master/programindex'),

('exam_administrator','examination/examination-paper-setter-master/remove'),

('exam_administrator','examination/examination-paper-setter-master/save'),

('exam_administrator','examination/examination-paper-setter-master/update'),

('exam_administrator','examination/examination-paper-setter-master/view'),

('exam_administrator','examination/examination-paper-setter/accept'),

('exam_administrator','examination/examination-paper-setter/create'),

('exam_administrator','examination/examination-paper-setter/dashboard'),

('exam_administrator','examination/examination-paper-setter/decline'),

('exam_administrator','examination/examination-paper-setter/deletesetter'),

('exam_administrator','examination/examination-paper-setter/detail-view'),

('exam_administrator','examination/examination-paper-setter/detailview'),

('exam_administrator','examination/examination-paper-setter/disable'),

('exam_administrator','examination/examination-paper-setter/document-view'),

('exam_administrator','examination/examination-paper-setter/enable'),

('exam_administrator','examination/examination-paper-setter/get-course'),

('exam_administrator','examination/examination-paper-setter/get-paper'),

('exam_administrator','examination/examination-paper-setter/get-teacher'),

('exam_administrator','examination/examination-paper-setter/get-term'),

('exam_administrator','examination/examination-paper-setter/get-unit'),

('exam_administrator','examination/examination-paper-setter/getcourse'),

('exam_administrator','examination/examination-paper-setter/getteacher'),

('exam_administrator','examination/examination-paper-setter/getterm'),

('exam_administrator','examination/examination-paper-setter/getunit'),

('exam_administrator','examination/examination-paper-setter/index'),

('exam_administrator','examination/examination-paper-setter/mail'),

('exam_administrator','examination/examination-paper-setter/paper-upload'),

('exam_administrator','examination/examination-paper-setter/papersetter'),

('exam_administrator','examination/examination-paper-setter/paperupload'),

('exam_administrator','examination/examination-paper-setter/program-index'),

('exam_administrator','examination/examination-paper-setter/programindex'),

('exam_administrator','examination/examination-paper-setter/record'),

('exam_administrator','examination/examination-paper-setter/recordall'),

('exam_administrator','examination/examination-paper-setter/reminder'),

('exam_administrator','examination/examination-paper-setter/remove'),

('exam_administrator','examination/examination-paper-setter/save'),

('exam_administrator','examination/examination-paper-setter/save-setter'),

('exam_administrator','examination/examination-paper-setter/savesetter'),

('exam_administrator','examination/examination-paper-setter/savesettercourse'),

('exam_administrator','examination/examination-paper-setter/select-programme'),

('exam_administrator','examination/examination-paper-setter/selectcourse'),

('exam_administrator','examination/examination-paper-setter/selectprogramme'),

('exam_administrator','examination/examination-paper-setter/set-reminder-date'),

('exam_administrator','examination/examination-paper-setter/setreminderdate'),

('exam_administrator','examination/examination-paper-setter/setterview'),

('exam_administrator','examination/examination-paper-setter/termcondition'),

('exam_administrator','examination/examination-paper-setter/thankyou'),

('exam_administrator','examination/examination-paper-setter/update'),

('exam_administrator','examination/examination-paper-setter/verify-code'),

('exam_administrator','examination/examination-paper-setter/view'),

('academic_admin','examination/examination-programme-evaluation-template-mapping/create'),

('exam_administrator','examination/examination-programme-evaluation-template-mapping/create'),

('academic_admin','examination/examination-programme-evaluation-template-mapping/delete'),

('exam_administrator','examination/examination-programme-evaluation-template-mapping/delete'),

('exam_administrator','examination/examination-schedule-hall-mapping/confirm-occupancy'),

('exam_administrator','examination/examination-schedule-hall-mapping/course'),

('exam_administrator','examination/examination-schedule-hall-mapping/course-wise'),

('exam_administrator','examination/examination-schedule-hall-mapping/create'),

('exam_administrator','examination/examination-schedule-hall-mapping/create-bulk'),

('exam_administrator','examination/examination-schedule-hall-mapping/create-modal'),

('exam_administrator','examination/examination-schedule-hall-mapping/delete-mapping'),

('exam_administrator','examination/examination-schedule-hall-mapping/get-course'),

('exam_administrator','examination/examination-schedule-hall-mapping/get-halls'),

('exam_administrator','examination/examination-schedule-hall-mapping/get-schedule'),

('exam_administrator','examination/examination-schedule-hall-mapping/index'),

('exam_administrator','examination/examination-schedule-hall-mapping/map-halls'),

('exam_administrator','examination/examination-schedule-hall-mapping/programme'),

('exam_administrator','examination/examination-schedule-hall-mapping/programme-wise'),

('exam_administrator','examination/examination-schedule-hall-mapping/select-programme'),

('exam_administrator','examination/examination-schedule/copy-schedule'),

('exam_administrator','examination/examination-schedule/create'),

('exam_administrator','examination/examination-schedule/dashboar'),

('exam_administrator','examination/examination-schedule/dashboard'),

('exam_administrator','examination/examination-schedule/delete'),

('exam_administrator','examination/examination-schedule/delete-schedule'),

('exam_administrator','examination/examination-schedule/export-data'),

('exam_administrator','examination/examination-schedule/export-schedule'),

('exam_administrator','examination/examination-schedule/export-schedule-all'),

('exam_administrator','examination/examination-schedule/get-courses'),

('exam_administrator','examination/examination-schedule/index'),

('exam_administrator','examination/examination-schedule/save-schedule'),

('exam_administrator','examination/examination-schedule/save-schedule-course'),

('exam_administrator','examination/examination-schedule/select-course'),

('exam_administrator','examination/examination-schedule/select-programme'),

('exam_administrator','examination/examination-schedule/update'),

('exam_administrator','examination/examination-schedule/update-status'),

('exam_administrator','examination/examination-schedule/view'),

('exam_administrator','examination/examination-slots/create'),

('exam_administrator','examination/examination-slots/delete'),

('exam_administrator','examination/examination-slots/get-duration'),

('exam_administrator','examination/examination-slots/index'),

('exam_administrator','examination/examination-slots/update'),

('exam_administrator','examination/examination-slots/view'),

('exam_administrator','examination/examination-teacher/create'),

('exam_administrator','examination/examination-teacher/get-course'),

('exam_administrator','examination/examination-teacher/index'),

('exam_administrator','examination/examination-teacher/login'),

('exam_administrator','examination/examination-teacher/remove'),

('exam_administrator','examination/examination-teacher/save'),

('exam_administrator','examination/examination-teacher/update'),

('exam_administrator','examination/examination-teacher/view'),

('exam_administrator','examination/file/export-form'),

('exam_administrator','examination/file/generate'),

('exam_administrator','examination/file/import-data'),

('exam_administrator','examination/file/process-and-import-data'),

('exam_administrator','examination/generate-admit-card/generate'),

('exam_administrator','examination/generate-admit-card/get-course'),

('exam_administrator','examination/generate-admit-card/index'),

('exam_administrator','examination/generate-admit-card/index-student'),

('exam_administrator','examination/generate-admit-card/pdf'),

('exam_administrator','examination/generate-admit-card/publish-admit-card'),

('exam_administrator','examination/generate-admit-card/update-admit-card-status'),

('exam_administrator','examination/import-student-marks/import'),

('exam_administrator','examination/import-student-marks/import-all-sem'),

('exam_administrator','examination/import-student-marks/import-first-sem'),

('exam_administrator','examination/import-student-marks/import-first-sem-btech'),

('exam_administrator','examination/import-student-marks/process-and-import-data'),

('exam_administrator','examination/import-student-marks/process-and-import-eval-data'),

('exam_administrator','examination/import-student-marks/process-and-import-first-sem-cb'),

('exam_administrator','examination/papersetter/examination-teacher/index'),

('exam_administrator','examination/programme-map/ajax-create'),

('exam_administrator','examination/programme-map/ajax-update'),

('exam_administrator','examination/programme-map/bulk-update'),

('exam_administrator','examination/programme-map/get-programmes-by-term'),

('exam_administrator','examination/programme-map/grade-card-release-dates'),

('exam_administrator','examination/programme-map/grade-card-release-dates-bulk'),

('exam_administrator','examination/programme-map/map-index'),

('exam_administrator','examination/programme-map/map-programmes'),

('exam_administrator','examination/programme-map/select-term'),

('exam_administrator','examination/programme-map/synchronize'),

('exam_administrator','examination/session/ajax-create'),

('exam_administrator','examination/session/ajax-update'),

('exam_administrator','examination/session/create'),

('exam_administrator','examination/session/delete'),

('academic_admin','examination/session/exam-view'),

('exam_administrator','examination/session/exam-view'),

('programme_admin','examination/session/exam-view'),

('exam_administrator','examination/session/get-years'),

('exam_administrator','examination/session/index'),

('exam_administrator','examination/session/map-index'),

('exam_administrator','examination/session/update'),

('exam_administrator','examination/session/update-result-type'),

('academic_admin','examination/session/view'),

('exam_administrator','examination/session/view'),

('programme_admin','examination/session/view'),

('exam_administrator','examination/session/view-session'),

('programme_admin','examination/session/view-session'),

('exam_administrator','examination/student/course'),

('exam_administrator','examination/student/dashboard'),

('exam_administrator','examination/student/index'),

('exam_administrator','examination/student/index-course'),

('exam_administrator','examination/student/programme'),

('exam_administrator','examination/student/report'),

('exam_administrator','examination/student/view'),

('exam_administrator','examstudent/course-selection/addcourses'),

('exam_administrator','examstudent/course-selection/deletecourse'),

('exam_administrator','examstudent/course-selection/form'),

('exam_administrator','examstudent/course-selection/index'),

('exam_administrator','examstudent/course-selection/payment'),

('exam_administrator','examstudent/course-selection/preview'),

('exam_administrator','examstudent/course-selection/submit'),

('exam_administrator','examstudent/course-selection/verify'),

('exam_administrator','examstudent/course-selection/view'),

('exam_administrator','examstudent/examination-student-application/create'),

('exam_administrator','examstudent/examination-student-application/delete'),

('exam_administrator','examstudent/examination-student-application/index'),

('exam_administrator','examstudent/examination-student-application/markdownloaded'),

('exam_administrator','examstudent/examination-student-application/update'),

('exam_administrator','examstudent/examination-student-application/updatestatus'),

('exam_administrator','examstudent/examination-student-application/view'),

('exam_administrator','examstudent/examination-student-course-selection/applicationsubmit'),

('exam_administrator','examstudent/examination-student-course-selection/attendance'),

('exam_administrator','examstudent/examination-student-course-selection/attendancesubmit'),

('exam_administrator','examstudent/examination-student-course-selection/bulk'),

('exam_administrator','examstudent/examination-student-course-selection/bulk-verify'),

('exam_administrator','examstudent/examination-student-course-selection/bulk-verify-submit'),

('exam_administrator','examstudent/examination-student-course-selection/bulksubmit'),

('exam_administrator','examstudent/examination-student-course-selection/bulkverify'),

('exam_administrator','examstudent/examination-student-course-selection/bulkverifysubmit'),

('exam_administrator','examstudent/examination-student-course-selection/create'),

('exam_administrator','examstudent/examination-student-course-selection/createstudentcourse'),

('exam_administrator','examstudent/examination-student-course-selection/delete'),

('exam_administrator','examstudent/examination-student-course-selection/index'),

('exam_administrator','examstudent/examination-student-course-selection/selectcourses'),

('exam_administrator','examstudent/examination-student-course-selection/selectcoursesdeclaration'),

('exam_administrator','examstudent/examination-student-course-selection/selectstudentcourses'),

('exam_administrator','examstudent/examination-student-course-selection/selectstudentcoursesdeclaration'),

('exam_administrator','examstudent/examination-student-course-selection/student'),

('exam_administrator','examstudent/examination-student-course-selection/update'),

('exam_administrator','examstudent/examination-student-course-selection/updatestatus'),

('exam_administrator','examstudent/examination-student-course-selection/verifycourse'),

('exam_administrator','examstudent/examination-student-course-selection/view'),

('exam_administrator','examstudent/grade-card/gradeindex'),

('exam_administrator','examstudent/grade-card/gradeindexsession'),

('exam_administrator','examstudent/grade-card/index'),

('exam_administrator','examstudent/grade-card/mark'),

('exam_administrator','examstudent/grade-card/view'),

('exam_administrator','examstudent/grade-card/view2'),

('exam_administrator','examstudent/hall-admit-card/html'),

('exam_administrator','examstudent/hall-admit-card/index'),

('exam_administrator','examstudent/information/faq'),

('exam_administrator','examstudent/information/history'),

('exam_administrator','examstudent/information/index'),

('exam_administrator','examstudent/information/instructions'),

('exam_administrator','examstudent/information/manual'),

('exam_administrator','examstudent/information/status'),

('fee_admin','fee/dashboard/index'),

('student_fee_admin','fee/dashboard/index'),

('student_fee_admin','fee/dashboard/session'),

('student_fee_admin','fee/dashboard/student'),

('fee_admin','fee/fee/fee-bifurcation/create'),

('fee_admin','fee/fee/fee-bifurcation/delete'),

('fee_admin','fee/fee/fee-components/create'),

('fee_admin','fee/fee/fee-components/delete'),

('fee_admin','fee/fee/fee-components/index'),

('fee_admin','fee/fee/fee-components/update'),

('fee_admin','fee/fee/fee-components/view'),

('fee_admin','fee/fee/fee-config/create'),

('fee_admin','fee/fee/fee-config/delete'),

('fee_admin','fee/fee/fee-config/index'),

('fee_admin','fee/fee/fee-config/update'),

('fee_admin','fee/fee/fee-config/view'),

('fee_admin','fee/fee/fee-list/confirm-salary-approval'),

('fee_admin','fee/fee/fee-list/create'),

('fee_admin','fee/fee/fee-list/delete'),

('fee_admin','fee/fee/fee-list/index'),

('fee_admin','fee/fee/fee-list/pre-create'),

('fee_admin','fee/fee/fee-list/toggle-verify'),

('fee_admin','fee/fee/fee-list/update'),

('fee_admin','fee/fee/fee-list/view'),

('fee_admin','fee/fee/fee-payment/confirm-fee-toggle'),

('fee_admin','fee/fee/fee-payment/index'),

('fee_admin','fee/fee/fee-payment/toggle-status'),

('fee_admin','fee/fee/fee-payment/view'),

('fee_admin','fee/report/download'),

('fee_admin','fee/report/index'),

('fee_admin','fee/settings/index'),

('feedback_admin','feedback/admin/index'),

('feedback_admin','feedback/admin/manage'),

('feedback_admin','feedback/question/all-question-preview'),

('feedback_admin','feedback/question/create'),

('feedback_admin','feedback/question/delete'),

('feedback_admin','feedback/question/index'),

('feedback_admin','feedback/question/update'),

('feedback_admin','feedback/question/view'),

('feedback_admin','feedback/response/create'),

('feedback_admin','feedback/response/dashboard'),

('feedback_admin','feedback/response/delete'),

('feedback_admin','feedback/response/download-responses-excel'),

('feedback_admin','feedback/response/question-bank'),

('feedback_admin','feedback/response/update'),

('feedback_admin','feedback/settings/index'),

('feedback_admin','feedback/template/create'),

('feedback_admin','feedback/template/discard-template'),

('feedback_admin','feedback/template/duplicate-template'),

('feedback_admin','feedback/template/index'),

('feedback_admin','feedback/template/publish-template'),

('feedback_admin','feedback/template/update'),

('feedback_admin','feedback/template/view'),

('admin','file_import/file/generate'),

('ccs_admin','file_import/file/generate'),

('payroll_admin','file_import/file/generate'),

('program_management','file_import/file/generate'),

('admin','fmts/dashboard/filestatus-data'),

('file_management_admin','fmts/dashboard/filestatus-data'),

('file_management_department','fmts/dashboard/filestatus-data'),

('admin','fmts/dashboard/filetype-data'),

('file_management_admin','fmts/dashboard/filetype-data'),

('admin','fmts/dashboard/filetype-data-user'),

('file_management_admin','fmts/dashboard/filetype-data-user'),

('file_management_department','fmts/dashboard/filetype-data-user'),

('admin','fmts/dashboard/index'),

('file_management_admin','fmts/dashboard/index'),

('file_management_admin_view','fmts/dashboard/index'),

('file_management_department','fmts/dashboard/index'),

('admin','fmts/dashboard/settings'),

('file_management_admin','fmts/dashboard/settings'),

('admin','fmts/dashboard/user-index'),

('file_management_admin','fmts/dashboard/user-index'),

('file_management_admin_view','fmts/dashboard/user-index'),

('file_management_department','fmts/dashboard/user-index'),

('admin','fmts/file-details/add-part-file-image'),

('file_management_admin','fmts/file-details/add-part-file-image'),

('file_management_department','fmts/file-details/add-part-file-image'),

('admin','fmts/file-details/ajax-submit'),

('file_management_admin','fmts/file-details/ajax-submit'),

('file_management_department','fmts/file-details/ajax-submit'),

('admin','fmts/file-details/ajax-update'),

('file_management_admin','fmts/file-details/ajax-update'),

('file_management_department','fmts/file-details/ajax-update'),

('admin','fmts/file-details/cloose-file'),

('file_management_admin','fmts/file-details/cloose-file'),

('file_management_department','fmts/file-details/cloose-file'),

('admin','fmts/file-details/close-file'),

('file_management_admin','fmts/file-details/close-file'),

('file_management_department','fmts/file-details/close-file'),

('admin','fmts/file-details/create'),

('file_management_admin','fmts/file-details/create'),

('file_management_department','fmts/file-details/create'),

('admin','fmts/file-details/create-part-file'),

('file_management_admin','fmts/file-details/create-part-file'),

('file_management_department','fmts/file-details/create-part-file'),

('admin','fmts/file-details/delete'),

('file_management_admin','fmts/file-details/delete'),

('file_management_department','fmts/file-details/delete'),

('file_management_admin','fmts/file-details/file-status'),

('file_management_department','fmts/file-details/file-status'),

('admin','fmts/file-details/index-status'),

('file_management_admin','fmts/file-details/index-status'),

('file_management_department','fmts/file-details/index-status'),

('admin','fmts/file-details/lock-file'),

('file_management_admin','fmts/file-details/lock-file'),

('file_management_department','fmts/file-details/lock-file'),

('admin','fmts/file-details/my-files'),

('file_management_admin','fmts/file-details/my-files'),

('file_management_admin_view','fmts/file-details/my-files'),

('file_management_department','fmts/file-details/my-files'),

('admin','fmts/file-details/part-file-index'),

('file_management_admin','fmts/file-details/part-file-index'),

('file_management_admin_view','fmts/file-details/part-file-index'),

('file_management_department','fmts/file-details/part-file-index'),

('admin','fmts/file-details/print-full-report'),

('file_management_admin','fmts/file-details/print-full-report'),

('file_management_admin_view','fmts/file-details/print-full-report'),

('file_management_department','fmts/file-details/print-full-report'),

('admin','fmts/file-details/print-report-by-menu'),

('file_management_admin','fmts/file-details/print-report-by-menu'),

('file_management_admin_view','fmts/file-details/print-report-by-menu'),

('file_management_department','fmts/file-details/print-report-by-menu'),

('admin','fmts/file-details/remove-file-image'),

('file_management_admin','fmts/file-details/remove-file-image'),

('file_management_department','fmts/file-details/remove-file-image'),

('admin','fmts/file-details/reopen-file'),

('file_management_admin','fmts/file-details/reopen-file'),

('file_management_department','fmts/file-details/reopen-file'),

('admin','fmts/file-details/toggle-status'),

('file_management_admin','fmts/file-details/toggle-status'),

('file_management_department','fmts/file-details/toggle-status'),

('admin','fmts/file-details/unlock-file'),

('file_management_admin','fmts/file-details/unlock-file'),

('file_management_department','fmts/file-details/unlock-file'),

('admin','fmts/file-details/update'),

('file_management_admin','fmts/file-details/update'),

('file_management_department','fmts/file-details/update'),

('admin','fmts/file-details/update-part-file'),

('file_management_admin','fmts/file-details/update-part-file'),

('file_management_department','fmts/file-details/update-part-file'),

('admin','fmts/file-details/view'),

('file_management_admin','fmts/file-details/view'),

('file_management_admin_view','fmts/file-details/view'),

('file_management_department','fmts/file-details/view'),

('admin','fmts/file-forward/accept-physical-copy'),

('file_management_admin','fmts/file-forward/accept-physical-copy'),

('file_management_department','fmts/file-forward/accept-physical-copy'),

('admin','fmts/file-forward/close-file'),

('file_management_admin','fmts/file-forward/close-file'),

('file_management_department','fmts/file-forward/close-file'),

('admin','fmts/file-forward/create'),

('file_management_admin','fmts/file-forward/create'),

('file_management_department','fmts/file-forward/create'),

('admin','fmts/file-forward/create-from-part-file'),

('file_management_admin','fmts/file-forward/create-from-part-file'),

('file_management_department','fmts/file-forward/create-from-part-file'),

('admin','fmts/file-forward/create-from-part-file-ajax'),

('file_management_admin','fmts/file-forward/create-from-part-file-ajax'),

('file_management_department','fmts/file-forward/create-from-part-file-ajax'),

('admin','fmts/file-forward/delete'),

('file_management_admin','fmts/file-forward/delete'),

('file_management_department','fmts/file-forward/delete'),

('admin','fmts/file-forward/delete-from-file-detail'),

('file_management_admin','fmts/file-forward/delete-from-file-detail'),

('file_management_department','fmts/file-forward/delete-from-file-detail'),

('admin','fmts/file-forward/forward-file'),

('file_management_admin','fmts/file-forward/forward-file'),

('file_management_department','fmts/file-forward/forward-file'),

('admin','fmts/file-forward/index'),

('file_management_admin','fmts/file-forward/index'),

('file_management_department','fmts/file-forward/index'),

('admin','fmts/file-forward/my-files'),

('file_management_admin','fmts/file-forward/my-files'),

('file_management_department','fmts/file-forward/my-files'),

('admin','fmts/file-forward/view'),

('file_management_admin','fmts/file-forward/view'),

('file_management_department','fmts/file-forward/view'),

('admin','fmts/file-type/create'),

('file_management_admin','fmts/file-type/create'),

('admin','fmts/file-type/delete'),

('file_management_admin','fmts/file-type/delete'),

('admin','fmts/file-type/index'),

('file_management_admin','fmts/file-type/index'),

('admin','fmts/file-type/update'),

('file_management_admin','fmts/file-type/update'),

('admin','fmts/file-type/view'),

('file_management_admin','fmts/file-type/view'),

('admin','fmts/logs/index'),

('file_management_admin','fmts/logs/index'),

('file_management_admin_view','fmts/logs/index'),

('programme_admin','frontend/application-control/index'),

('employee','grievance/dashboard/index'),

('grievance_admin','grievance/dashboard/index'),

('grievance_admin_staff','grievance/dashboard/index'),

('grievance_admin_student','grievance/dashboard/index'),

('grievance_admin','grievance/grievance-category/create'),

('grievance_admin_staff','grievance/grievance-category/create'),

('grievance_admin_student','grievance/grievance-category/create'),

('grievance_admin','grievance/grievance-category/delete'),

('grievance_admin_staff','grievance/grievance-category/delete'),

('grievance_admin_student','grievance/grievance-category/delete'),

('grievance_admin','grievance/grievance-category/index'),

('grievance_admin_staff','grievance/grievance-category/index'),

('grievance_admin_student','grievance/grievance-category/index'),

('grievance_admin','grievance/grievance-category/update'),

('grievance_admin_staff','grievance/grievance-category/update'),

('grievance_admin_student','grievance/grievance-category/update'),

('grievance_admin','grievance/grievance-category/view'),

('grievance_admin_staff','grievance/grievance-category/view'),

('grievance_admin_student','grievance/grievance-category/view'),

('grievance_admin_staff','grievance/grievance-committee-members/create'),

('grievance_admin_student','grievance/grievance-committee-members/create'),

('grievance_admin_staff','grievance/grievance-committee-members/get-members'),

('grievance_admin_student','grievance/grievance-committee-members/get-members'),

('grievance_admin_staff','grievance/grievance-committee-members/index'),

('grievance_admin_student','grievance/grievance-committee-members/index'),

('grievance_admin_staff','grievance/grievance-committee-members/index-member'),

('grievance_admin_student','grievance/grievance-committee-members/index-member'),

('grievance_admin_staff','grievance/grievance-committee-members/update'),

('grievance_admin_student','grievance/grievance-committee-members/update'),

('grievance_admin_staff','grievance/grievance-committee-members/view'),

('grievance_admin_student','grievance/grievance-committee-members/view'),

('grievance_admin_staff','grievance/grievance-committee/create'),

('grievance_admin_student','grievance/grievance-committee/create'),

('grievance_admin_staff','grievance/grievance-committee/dissolve'),

('grievance_admin_student','grievance/grievance-committee/dissolve'),

('grievance_admin','grievance/grievance-committee/index'),

('grievance_admin_staff','grievance/grievance-committee/index'),

('grievance_admin_student','grievance/grievance-committee/index'),

('grievance_admin','grievance/grievance-committee/update'),

('grievance_admin_staff','grievance/grievance-committee/update'),

('grievance_admin_student','grievance/grievance-committee/update'),

('grievance_admin','grievance/grievance-committee/view'),

('grievance_admin_staff','grievance/grievance-committee/view'),

('grievance_admin_student','grievance/grievance-committee/view'),

('employee','grievance/grievance-form/committee-index'),

('grievance_admin_staff','grievance/grievance-form/committee-index'),

('employee','grievance/grievance-form/create'),

('grievance_admin','grievance/grievance-form/create'),

('grievance_admin_staff','grievance/grievance-form/create'),

('grievance_admin_student','grievance/grievance-form/create'),

('grievance_admin','grievance/grievance-form/get-category'),

('grievance_admin_staff','grievance/grievance-form/get-category'),

('grievance_admin_student','grievance/grievance-form/get-category'),

('employee','grievance/grievance-form/get-member'),

('grievance_admin','grievance/grievance-form/get-member'),

('grievance_admin_staff','grievance/grievance-form/get-member'),

('grievance_admin_student','grievance/grievance-form/get-member'),

('employee','grievance/grievance-form/index'),

('grievance_admin','grievance/grievance-form/index'),

('grievance_admin_staff','grievance/grievance-form/index'),

('grievance_admin_student','grievance/grievance-form/index'),

('employee','grievance/grievance-form/record'),

('grievance_admin_staff','grievance/grievance-form/record'),

('grievance_admin_student','grievance/grievance-form/record'),

('grievance_admin','grievance/grievance-form/resolution'),

('grievance_admin_staff','grievance/grievance-form/resolution'),

('grievance_admin_student','grievance/grievance-form/resolution'),

('employee','grievance/grievance-form/save'),

('grievance_admin_staff','grievance/grievance-form/save'),

('grievance_admin_student','grievance/grievance-form/save'),

('employee','grievance/grievance-form/update'),

('grievance_admin','grievance/grievance-form/update'),

('grievance_admin_staff','grievance/grievance-form/update'),

('grievance_admin_student','grievance/grievance-form/update'),

('employee','grievance/grievance-form/view'),

('grievance_admin','grievance/grievance-form/view'),

('grievance_admin_staff','grievance/grievance-form/view'),

('grievance_admin_student','grievance/grievance-form/view'),

('grievance_admin_staff','grievance/grievance-meeting/cancel'),

('grievance_admin_student','grievance/grievance-meeting/cancel'),

('grievance_admin_staff','grievance/grievance-meeting/create'),

('grievance_admin_student','grievance/grievance-meeting/create'),

('employee','grievance/grievance-meeting/index'),

('grievance_admin_staff','grievance/grievance-meeting/index'),

('grievance_admin_student','grievance/grievance-meeting/index'),

('grievance_admin_staff','grievance/grievance-meeting/meeting-minutes'),

('grievance_admin_student','grievance/grievance-meeting/meeting-minutes'),

('grievance_admin_staff','grievance/grievance-meeting/update'),

('grievance_admin_student','grievance/grievance-meeting/update'),

('grievance_admin_staff','grievance/grievance-meeting/view'),

('grievance_admin_student','grievance/grievance-meeting/view'),

('employee','grievance/grievance-notes/create'),

('grievance_admin_staff','grievance/grievance-notes/create'),

('grievance_admin_student','grievance/grievance-notes/create'),

('employee','grievance/grievance-notes/index'),

('grievance_admin_staff','grievance/grievance-notes/index'),

('grievance_admin_student','grievance/grievance-notes/index'),

('grievance_admin_staff','grievance/grievance-notes/resolution'),

('grievance_admin_student','grievance/grievance-notes/resolution'),

('employee','grievance/grievance-notes/view'),

('grievance_admin_staff','grievance/grievance-notes/view'),

('grievance_admin_student','grievance/grievance-notes/view'),

('grievance_admin_staff','grievance/reports/grievance-report'),

('grievance_admin_staff','grievance/reports/index'),

('grievance_admin_staff','grievance/reports/public-grievance-report'),

('grievance_admin_staff','grievance/reports/search-grievance'),

('grievance_admin_staff','grievance/reports/search-public-grievance'),

('grievance_admin','grievance/settings/index'),

('grievance_admin_staff','grievance/settings/index'),

('grievance_admin_student','grievance/settings/index'),

('admin','health_admin'),

('admin','health-doctor-details/report'),

('employee','health-doctor-details/report'),

('health_admin','health-doctor-details/report'),

('health_admin','health/dashboard/get-member'),

('employee','health/dashboard/index'),

('health_admin','health/dashboard/index'),

('health_admin','health/facility/create'),

('health_admin','health/facility/index'),

('health_admin','health/facility/save'),

('health_admin','health/facility/update'),

('health_admin','health/facility/view'),

('admin','health/health-doctor-details/create'),

('health_admin','health/health-doctor-details/create'),

('admin','health/health-doctor-details/index'),

('health_admin','health/health-doctor-details/index'),

('employee','health/health-doctor-details/report'),

('health_admin','health/health-doctor-details/report'),

('admin','health/health-doctor-details/save'),

('health_admin','health/health-doctor-details/save'),

('admin','health/health-doctor-details/update'),

('health_admin','health/health-doctor-details/update'),

('admin','health/health-doctor-details/view'),

('health_admin','health/health-doctor-details/view'),

('health_admin','health/health-record/create'),

('health_admin','health/health-record/get-member'),

('employee','health/health-record/index'),

('health_admin','health/health-record/index'),

('health_admin','health/health-record/print-opd-slip'),

('employee','health/health-record/record'),

('health_admin','health/health-record/record'),

('health_admin','health/health-record/save'),

('health_admin','health/health-record/update'),

('employee','health/health-record/view'),

('health_admin','health/health-record/view'),

('health_admin','health/health/index'),

('health_admin','health/health/view'),

('health_admin','health/hospitals/create'),

('employee','health/hospitals/index'),

('health_admin','health/hospitals/index'),

('health_admin','health/hospitals/save'),

('health_admin','health/hospitals/update'),

('employee','health/hospitals/view'),

('health_admin','health/hospitals/view'),

('health_admin','health/membership-subscription/index'),

('employee','health/membership-subscription/subscribe'),

('health_admin','health/membership-subscription/subscribe'),

('health_admin','health/membership-subscription/update'),

('health_admin','health/membership-subscription/view'),

('health_admin','health/membership-type/create'),

('health_admin','health/membership-type/get-membership'),

('health_admin','health/membership-type/index'),

('health_admin','health/membership-type/save'),

('health_admin','health/membership-type/update'),

('health_admin','health/membership-type/view'),

('health_admin','health/membership/ajax-fetch-data'),

('health_admin','health/membership/create'),

('health_admin','health/membership/get-member'),

('health_admin','health/membership/inactive'),

('admin','health/membership/index'),

('health_admin','health/membership/index'),

('employee','health/membership/Subscribe'),

('health_admin','health/membership/Subscribe'),

('health_admin','health/membership/update'),

('health_admin','health/membership/view'),

('health_admin','health/settings/index'),

('admin','health/speciality-type/create'),

('health_admin','health/speciality-type/create'),

('admin','health/speciality-type/index'),

('health_admin','health/speciality-type/index'),

('admin','health/speciality-type/save'),

('health_admin','health/speciality-type/save'),

('admin','health/speciality-type/update'),

('health_admin','health/speciality-type/update'),

('admin','health/speciality-type/view'),

('health_admin','health/speciality-type/view'),

('health_admin','health/unit-type/create'),

('health_admin','health/unit-type/index'),

('health_admin','health/unit-type/save'),

('health_admin','health/unit-type/update'),

('health_admin','health/unit-type/view'),

('hostel_admin','hostel/dashboard/admin'),

('hostel_admin','hostel/fee/fee-component/create'),

('hostel_admin','hostel/fee/fee-component/index'),

('hostel_admin','hostel/fee/fee-component/update'),

('hostel_admin','hostel/fee/fee-component/view'),

('hostel_admin','hostel/fee/student-fee-component/view'),

('hostel_admin','hostel/hostel-additional-attributes/create'),

('hostel_admin','hostel/hostel-additional-attributes/index'),

('admin','hostel/hostel-additional-attributes/update'),

('hostel_admin','hostel/hostel-additional-attributes/update'),

('hostel_admin','hostel/hostel-additional-attributes/view'),

('hostel_admin','hostel/hostel-allocation/assign-facility'),

('hostel_admin','hostel/hostel-allocation/create'),

('hostel_admin','hostel/hostel-allocation/get-building'),

('hostel_admin','hostel/hostel-allocation/get-room'),

('admin','hostel/hostel-allocation/index'),

('hostel_admin','hostel/hostel-allocation/index'),

('hostel_admin','hostel/hostel-allocation/submit'),

('hostel_admin','hostel/hostel-allocation/update'),

('hostel_admin','hostel/hostel-allocation/update-ajax'),

('hostel_admin','hostel/hostel-allocation/view'),

('hostel_admin','hostel/hostel-application/create'),

('hostel_admin','hostel/hostel-application/index'),

('hostel_admin','hostel/hostel-application/view-user'),

('hostel_admin','hostel/hostel-facility-list/create'),

('hostel_admin','hostel/hostel-facility-list/index'),

('hostel_admin','hostel/hostel-facility-list/update'),

('hostel_admin','hostel/hostel-facility-list/view'),

('hostel_admin','hostel/hostel-facility/create'),

('hostel_admin','hostel/hostel-facility/index'),

('hostel_admin','hostel/hostel-facility/update'),

('hostel_admin','hostel/hostel-facility/view'),

('hostel_admin','hostel/hostel-fees/create-category'),

('hostel_admin','hostel/hostel-fees/submit-recursive'),

('hostel_admin','hostel/hostel-incident/create'),

('hostel_admin','hostel/hostel-incident/index'),

('hostel_admin','hostel/hostel-incident/update'),

('hostel_admin','hostel/hostel-incident/view'),

('hostel_admin','hostel/hostel-mess-menu/create'),

('hostel_admin','hostel/hostel-mess-menu/index'),

('hostel_admin','hostel/hostel-mess-menu/view'),

('hostel_admin','hostel/hostel-request-type/create'),

('hostel_admin','hostel/hostel-request-type/get-type'),

('hostel_admin','hostel/hostel-request-type/index'),

('hostel_admin','hostel/hostel-request-type/update'),

('hostel_admin','hostel/hostel-request-type/view'),

('hostel_admin','hostel/hostel-requests/create'),

('hostel_admin','hostel/hostel-requests/index'),

('hostel_admin','hostel/hostel-requests/update'),

('hostel_admin','hostel/hostel-requests/view'),

('hostel_admin','hostel/hostel-rooms/create'),

('hostel_admin','hostel/hostel-rooms/index'),

('hostel_admin','hostel/hostel-rooms/update'),

('hostel_admin','hostel/hostel-rooms/view'),

('hostel_admin','hostel/hostel-student-facility-mapping/create'),

('hostel_admin','hostel/hostel-student-facility-mapping/index'),

('hostel_admin','hostel/hostel-student-facility-mapping/update'),

('hostel_admin','hostel/hostel-student-facility-mapping/view'),

('hostel_admin','hostel/hostel/index'),

('hostel_admin','hostel/hostel/update'),

('hostel_admin','hostel/hostel/view'),

('admin','hostel/settings/index'),

('hostel_admin','hostel/settings/index'),

('admin','hrms_master_designation_create'),

('admin','hrms_master_designation_update'),

('ims_admin','ims/budget-head/create'),

('ims_department','ims/budget-head/create'),

('ims_admin','ims/budget-head/delete'),

('ims_department','ims/budget-head/delete'),

('ims_admin','ims/budget-head/index'),

('ims_department','ims/budget-head/index'),

('ims_admin','ims/budget-head/update'),

('ims_department','ims/budget-head/update'),

('ims_admin','ims/budget-head/view'),

('ims_department','ims/budget-head/view'),

('admin','ims/communication/create'),

('ims_admin','ims/communication/create'),

('ims_department','ims/communication/create'),

('admin','ims/communication/delete'),

('ims_admin','ims/communication/delete'),

('ims_department','ims/communication/delete'),

('admin','ims/communication/index'),

('ims_admin','ims/communication/index'),

('ims_department','ims/communication/index'),

('admin','ims/communication/update'),

('ims_admin','ims/communication/update'),

('ims_department','ims/communication/update'),

('admin','ims/communication/view'),

('ims_admin','ims/communication/view'),

('ims_department','ims/communication/view'),

('admin','ims/dashboard/admin-dashboard'),

('ims_admin','ims/dashboard/admin-dashboard'),

('ims_admin_view','ims/dashboard/admin-dashboard'),

('admin','ims/dashboard/department-dashboard'),

('ims_admin','ims/dashboard/department-dashboard'),

('ims_department','ims/dashboard/department-dashboard'),

('admin','ims/dashboard/index'),

('ims_admin','ims/dashboard/index'),

('ims_department','ims/dashboard/index'),

('ims_user','ims/dashboard/index'),

('ims_admin','ims/disposal-detail/create'),

('ims_admin_view','ims/disposal-detail/create'),

('ims_department','ims/disposal-detail/create'),

('ims_admin','ims/disposal-detail/delete'),

('ims_admin_view','ims/disposal-detail/delete'),

('ims_department','ims/disposal-detail/delete'),

('ims_admin','ims/disposal-detail/get-description'),

('ims_admin_view','ims/disposal-detail/get-description'),

('ims_department','ims/disposal-detail/get-description'),

('ims_admin','ims/disposal-detail/index'),

('ims_admin_view','ims/disposal-detail/index'),

('ims_department','ims/disposal-detail/index'),

('ims_admin','ims/disposal-detail/update'),

('ims_admin_view','ims/disposal-detail/update'),

('ims_department','ims/disposal-detail/update'),

('ims_admin','ims/disposal-detail/view'),

('ims_admin_view','ims/disposal-detail/view'),

('ims_department','ims/disposal-detail/view'),

('admin','ims/inventory-type/create'),

('ims_admin','ims/inventory-type/create'),

('ims_department','ims/inventory-type/create'),

('admin','ims/inventory-type/index'),

('ims_admin','ims/inventory-type/index'),

('ims_department','ims/inventory-type/index'),

('admin','ims/inventory-type/update'),

('ims_admin','ims/inventory-type/update'),

('ims_department','ims/inventory-type/update'),

('admin','ims/inventory-type/view'),

('ims_admin','ims/inventory-type/view'),

('ims_department','ims/inventory-type/view'),

('admin','ims/issue/accept-return'),

('ims_admin','ims/issue/accept-return'),

('ims_department','ims/issue/accept-return'),

('admin','ims/issue/create'),

('ims_admin','ims/issue/create'),

('ims_department','ims/issue/create'),

('ims_admin','ims/issue/discard-issue'),

('ims_department','ims/issue/discard-issue'),

('ims_admin','ims/issue/generate-voucher'),

('ims_admin_view','ims/issue/generate-voucher'),

('ims_department','ims/issue/generate-voucher'),

('admin','ims/issue/index'),

('ims_admin','ims/issue/index'),

('ims_department','ims/issue/index'),

('ims_admin','ims/issue/search-inventory'),

('ims_admin_view','ims/issue/search-inventory'),

('ims_department','ims/issue/search-inventory'),

('admin','ims/issue/send-remainder'),

('ims_admin','ims/issue/send-remainder'),

('ims_department','ims/issue/send-remainder'),

('ims_admin','ims/issue/send-reminder'),

('ims_department','ims/issue/send-reminder'),

('ims_admin','ims/issue/stock-voucher'),

('ims_admin_view','ims/issue/stock-voucher'),

('ims_department','ims/issue/stock-voucher'),

('admin','ims/issue/user-index'),

('ims_admin','ims/issue/user-index'),

('ims_department','ims/issue/user-index'),

('ims_user','ims/issue/user-index'),

('admin','ims/issue/view'),

('ims_admin','ims/issue/view'),

('ims_department','ims/issue/view'),

('admin','ims/log/create'),

('ims_admin','ims/log/create'),

('admin','ims/log/delete'),

('ims_admin','ims/log/delete'),

('admin','ims/log/index'),

('ims_admin','ims/log/index'),

('admin','ims/log/update'),

('ims_admin','ims/log/update'),

('admin','ims/log/view'),

('ims_admin','ims/log/view'),

('ims_admin','ims/report-generation/download-excel'),

('ims_department','ims/report-generation/download-excel-department'),

('ims_admin','ims/report-generation/get-report'),

('ims_department','ims/report-generation/get-report-department'),

('ims_admin','ims/report-generation/index'),

('ims_department','ims/report-generation/index-department'),

('ims_admin','ims/report-generation/view-report'),

('ims_department','ims/report-generation/view-report-department'),

('admin','ims/settings/index'),

('ims_admin','ims/settings/index'),

('ims_department','ims/settings/index'),

('admin','ims/stock-details/create'),

('ims_admin','ims/stock-details/create'),

('ims_department','ims/stock-details/create'),

('admin','ims/stock-details/delete'),

('ims_admin','ims/stock-details/delete'),

('ims_department','ims/stock-details/delete'),

('ims_admin','ims/stock-details/disposal'),

('ims_admin_view','ims/stock-details/disposal'),

('ims_department','ims/stock-details/disposal'),

('admin','ims/stock-details/index'),

('ims_admin','ims/stock-details/index'),

('ims_admin_view','ims/stock-details/index'),

('ims_department','ims/stock-details/index'),

('ims_admin','ims/stock-details/move-faulty-to-available'),

('ims_department','ims/stock-details/move-faulty-to-available'),

('ims_admin','ims/stock-details/remove-image'),

('ims_department','ims/stock-details/remove-image'),

('admin','ims/stock-details/update'),

('ims_admin','ims/stock-details/update'),

('ims_department','ims/stock-details/update'),

('admin','ims/stock-details/view'),

('ims_admin','ims/stock-details/view'),

('ims_admin_view','ims/stock-details/view'),

('ims_department','ims/stock-details/view'),

('admin','ims/tax-detail/create'),

('ims_admin','ims/tax-detail/create'),

('ims_department','ims/tax-detail/create'),

('admin','ims/tax-detail/delete'),

('ims_admin','ims/tax-detail/delete'),

('ims_department','ims/tax-detail/delete'),

('admin','ims/tax-detail/index'),

('ims_admin','ims/tax-detail/index'),

('ims_department','ims/tax-detail/index'),

('admin','ims/tax-detail/update'),

('ims_admin','ims/tax-detail/update'),

('ims_department','ims/tax-detail/update'),

('admin','ims/tax-detail/view'),

('ims_admin','ims/tax-detail/view'),

('ims_department','ims/tax-detail/view'),

('admin','ims/vendor-detail/create'),

('ims_admin','ims/vendor-detail/create'),

('ims_department','ims/vendor-detail/create'),

('admin','ims/vendor-detail/create-from-modal'),

('ims_admin','ims/vendor-detail/create-from-modal'),

('ims_department','ims/vendor-detail/create-from-modal'),

('admin','ims/vendor-detail/get-vendor-detail'),

('ims_admin','ims/vendor-detail/get-vendor-detail'),

('ims_department','ims/vendor-detail/get-vendor-detail'),

('vendor_admin','ims/vendor-detail/get-vendor-detail'),

('vendor_dealing_assistant','ims/vendor-detail/get-vendor-detail'),

('vendor_department','ims/vendor-detail/get-vendor-detail'),

('admin','ims/vendor-detail/get-vendor-detail-for-vendor-management-system'),

('ims_admin','ims/vendor-detail/get-vendor-detail-for-vendor-management-system'),

('ims_department','ims/vendor-detail/get-vendor-detail-for-vendor-management-system'),

('vendor_admin','ims/vendor-detail/get-vendor-detail-for-vendor-management-system'),

('vendor_department','ims/vendor-detail/get-vendor-detail-for-vendor-management-system'),

('admin','ims/vendor-detail/index'),

('ims_admin','ims/vendor-detail/index'),

('ims_admin_view','ims/vendor-detail/index'),

('ims_department','ims/vendor-detail/index'),

('admin','ims/vendor-detail/save-vendor-using-ajax'),

('ims_admin','ims/vendor-detail/save-vendor-using-ajax'),

('ims_department','ims/vendor-detail/save-vendor-using-ajax'),

('admin','ims/vendor-detail/update'),

('ims_admin','ims/vendor-detail/update'),

('ims_department','ims/vendor-detail/update'),

('admin','ims/vendor-detail/view'),

('ims_admin','ims/vendor-detail/view'),

('ims_department','ims/vendor-detail/view'),

('admin','ims/warehouse-detail/create'),

('ims_admin','ims/warehouse-detail/create'),

('ims_department','ims/warehouse-detail/create'),

('admin','ims/warehouse-detail/delete'),

('ims_admin','ims/warehouse-detail/delete'),

('ims_department','ims/warehouse-detail/delete'),

('admin','ims/warehouse-detail/index'),

('ims_admin','ims/warehouse-detail/index'),

('ims_department','ims/warehouse-detail/index'),

('admin','ims/warehouse-detail/update'),

('ims_admin','ims/warehouse-detail/update'),

('ims_department','ims/warehouse-detail/update'),

('admin','ims/warehouse-detail/view'),

('ims_admin','ims/warehouse-detail/view'),

('ims_department','ims/warehouse-detail/view'),

('itsd_admin','itsd/assignto-agent/accept'),

('itsd_agent','itsd/assignto-agent/accept'),

('employee','itsd/assignto-agent/assign'),

('itsd_admin','itsd/assignto-agent/assign'),

('itsd_agent','itsd/assignto-agent/assign'),

('itsd_admin','itsd/assignto-agent/assign-agent'),

('itsd_agent','itsd/assignto-agent/assign-agent'),

('itsd_admin','itsd/assignto-agent/index'),

('itsd_admin','itsd/dashboard/get-member'),

('itsd_agent','itsd/dashboard/get-member'),

('itsd_admin','itsd/dashboard/get-states'),

('itsd_agent','itsd/dashboard/get-states'),

('itsd_admin','itsd/dashboard/get-status'),

('itsd_agent','itsd/dashboard/get-status'),

('employee','itsd/dashboard/index'),

('itsd_admin','itsd/dashboard/index'),

('itsd_agent','itsd/dashboard/index'),

('itsd_admin','itsd/itsd-agent-type/create'),

('itsd_admin','itsd/itsd-agent-type/index'),

('itsd_admin','itsd/itsd-agent-type/update'),

('itsd_admin','itsd/itsd-agent-type/view'),

('itsd_admin','itsd/itsd-form/accept'),

('itsd_agent','itsd/itsd-form/accept'),

('itsd_agent','itsd/itsd-form/agent-index'),

('employee','itsd/itsd-form/create'),

('itsd_admin','itsd/itsd-form/create'),

('itsd_agent','itsd/itsd-form/create'),

('itsd_admin','itsd/itsd-form/get-member'),

('itsd_agent','itsd/itsd-form/get-member'),

('employee','itsd/itsd-form/index'),

('itsd_admin','itsd/itsd-form/index'),

('itsd_agent','itsd/itsd-form/index'),

('itsd_admin','itsd/itsd-form/index-spam'),

('itsd_agent','itsd/itsd-form/index-spam'),

('employee','itsd/itsd-form/reopen'),

('itsd_admin','itsd/itsd-form/reopen'),

('itsd_agent','itsd/itsd-form/reopen'),

('employee','itsd/itsd-form/save'),

('itsd_admin','itsd/itsd-form/save'),

('itsd_agent','itsd/itsd-form/save'),

('itsd_admin','itsd/itsd-form/send-response'),

('itsd_agent','itsd/itsd-form/send-response'),

('employee','itsd/itsd-form/update'),

('itsd_admin','itsd/itsd-form/update'),

('itsd_agent','itsd/itsd-form/update'),

('employee','itsd/itsd-form/view'),

('itsd_admin','itsd/itsd-form/view'),

('itsd_agent','itsd/itsd-form/view'),

('itsd_admin','itsd/itsd-status-log/create'),

('itsd_agent','itsd/itsd-status-log/create'),

('itsd_admin','itsd/itsd-status-log/index'),

('itsd_agent','itsd/itsd-status-log/index'),

('employee','itsd/itsd-status-log/index-agent'),

('employee','itsd/itsd-status-log/index-ticket'),

('itsd_admin','itsd/itsd-status-log/index-ticket'),

('itsd_agent','itsd/itsd-status-log/index-ticket'),

('itsd_admin','itsd/itsd-status-log/update'),

('itsd_agent','itsd/itsd-status-log/update'),

('itsd_admin','itsd/itsd-status-log/view'),

('itsd_agent','itsd/itsd-status-log/view'),

('itsd_admin','itsd/itsd-type/active'),

('itsd_admin','itsd/itsd-type/create'),

('itsd_admin','itsd/itsd-type/inactive'),

('itsd_admin','itsd/itsd-type/index'),

('itsd_admin','itsd/itsd-type/save'),

('itsd_admin','itsd/itsd-type/update'),

('itsd_admin','itsd/itsd-type/view'),

('itsd_admin','itsd/settings/index'),

('ou_admin','jiuser/administration/add-user'),

('Settings','jiuser/administration/add-user'),

('rbac_admin','jiuser/administration/admin-index'),

('admin','jiuser/administration/index'),

('ou_admin','jiuser/administration/index'),

('Settings','jiuser/administration/index'),

('ou_admin','jiuser/auth/login'),

('Settings','jiuser/auth/login'),

('ou_admin','jiuser/authitem/create'),

('Settings','jiuser/authitem/create'),

('ou_admin','jiuser/authitem/create-permission-using-ajax'),

('Settings','jiuser/authitem/create-permission-using-ajax'),

('ou_admin','jiuser/authitem/create-role'),

('Settings','jiuser/authitem/create-role'),

('ou_admin','jiuser/authitem/delete'),

('Settings','jiuser/authitem/delete'),

('ou_admin','jiuser/authitem/index-permission'),

('Settings','jiuser/authitem/index-permission'),

('ou_admin','jiuser/authitem/index-role'),

('Settings','jiuser/authitem/index-role'),

('ou_admin','jiuser/authitem/index-role-permission'),

('Settings','jiuser/authitem/index-role-permission'),

('ou_admin','jiuser/authitem/index-user-roles'),

('Settings','jiuser/authitem/index-user-roles'),

('admin','jiuser/authitem/permission-role-mapping'),

('ou_admin','jiuser/authitem/render-role-permission-form'),

('Settings','jiuser/authitem/render-role-permission-form'),

('ou_admin','jiuser/authitem/render-update-user-permission-form'),

('Settings','jiuser/authitem/render-update-user-permission-form'),

('ou_admin','jiuser/authitem/render-user-permission-form'),

('Settings','jiuser/authitem/render-user-permission-form'),

('ou_admin','jiuser/authitem/render-user-roles-form'),

('Settings','jiuser/authitem/render-user-roles-form'),

('ou_admin','jiuser/authitem/update'),

('Settings','jiuser/authitem/update'),

('ou_admin','jiuser/authitem/update-bulk-user-roles'),

('Settings','jiuser/authitem/update-bulk-user-roles'),

('ou_admin','jiuser/authitem/update-permission-using-ajax'),

('Settings','jiuser/authitem/update-permission-using-ajax'),

('ou_admin','jiuser/authitem/update-role'),

('Settings','jiuser/authitem/update-role'),

('ou_admin','jiuser/authitem/update-role-permission-using-ajax'),

('ou_admin','jiuser/authitem/update-user-roles-using-ajax'),

('ou_admin','jiuser/authitem/view-role-permission'),

('ou_admin','jiuser/default/index'),

('ou_admin','jiuser/staff/create'),

('ou_admin','jiuser/staff/delete'),

('ou_admin','jiuser/staff/index'),

('ou_admin','jiuser/staff/update'),

('ou_admin','jiuser/staff/view'),

('ou_admin','jiuser/user/associate-account-from-core-user-assignment'),

('ou_admin','jiuser/user/create'),

('Settings','jiuser/user/create'),

('ou_admin','jiuser/user/delete'),

('Settings','jiuser/user/delete'),

('ou_admin','jiuser/user/get-assigned-users-administrative'),

('ou_admin','jiuser/user/get-assigned-users-employee'),

('employee','jiuser/user/get-users-by-account-type'),

('ou_admin','jiuser/user/get-users-by-account-type'),

('ou_admin','jiuser/user/index'),

('Settings','jiuser/user/index'),

('ou_admin','jiuser/user/reset-admin-password'),

('Settings','jiuser/user/reset-admin-password'),

('admin','jiuser/user/reset-password'),

('employee','jiuser/user/reset-password'),

('ou_admin','jiuser/user/reset-password'),

('Settings','jiuser/user/reset-password'),

('admin','jiuser/user/send-invite-mail'),

('ou_admin','jiuser/user/switch-employee'),

('ou_admin','jiuser/user/switch-status'),

('ou_admin','jiuser/user/update'),

('Settings','jiuser/user/update'),

('ou_admin','jiuser/user/view'),

('Settings','jiuser/user/view'),

('employee','knowledge_employee'),

('knowledge_admin','knowledge/dashboard/admin'),

('knowledge_admin','knowledge/dashboard/index'),

('knowledge_employee','knowledge/dashboard/index'),

('knowledge_admin','knowledge/knowledge-book/create'),

('knowledge_employee','knowledge/knowledge-book/create'),

('knowledge_admin','knowledge/knowledge-book/get'),

('knowledge_employee','knowledge/knowledge-book/get'),

('knowledge_admin','knowledge/knowledge-book/index'),

('knowledge_employee','knowledge/knowledge-book/index'),

('knowledge_employee','knowledge/knowledge-book/index-employee'),

('knowledge_employee','knowledge/knowledge-book/update'),

('knowledge_admin','knowledge/knowledge-book/view'),

('knowledge_employee','knowledge/knowledge-book/view'),

('knowledge_admin','knowledge/knowledge-paper/create'),

('knowledge_employee','knowledge/knowledge-paper/create'),

('knowledge_admin','knowledge/knowledge-paper/index'),

('knowledge_employee','knowledge/knowledge-paper/index'),

('knowledge_admin','knowledge/knowledge-paper/index-employee'),

('knowledge_employee','knowledge/knowledge-paper/index-employee'),

('knowledge_employee','knowledge/knowledge-paper/update'),

('knowledge_admin','knowledge/knowledge-paper/view'),

('knowledge_employee','knowledge/knowledge-paper/view'),

('knowledge_admin','knowledge/knowledge-patent/create'),

('knowledge_employee','knowledge/knowledge-patent/create'),

('knowledge_admin','knowledge/knowledge-patent/index'),

('knowledge_employee','knowledge/knowledge-patent/index'),

('knowledge_admin','knowledge/knowledge-patent/index-employee'),

('knowledge_employee','knowledge/knowledge-patent/index-employee'),

('knowledge_employee','knowledge/knowledge-patent/update'),

('knowledge_admin','knowledge/knowledge-patent/view'),

('knowledge_employee','knowledge/knowledge-patent/view'),

('knowledge_admin','knowledge/knowledge-profile/create'),

('knowledge_employee','knowledge/knowledge-profile/create'),

('knowledge_admin','knowledge/knowledge-profile/employee-index'),

('knowledge_employee','knowledge/knowledge-profile/employee-index'),

('knowledge_admin','knowledge/knowledge-profile/index'),

('knowledge_admin','knowledge/knowledge-profile/sync-data'),

('knowledge_admin','knowledge/knowledge-profile/update'),

('knowledge_employee','knowledge/knowledge-profile/update'),

('knowledge_admin','knowledge/knowledge-profile/view'),

('knowledge_employee','knowledge/knowledge-profile/view'),

('admin','leave_admin'),

('leave_admin','leave-account/get-remaining-leaves'),

('admin','leave/admin/configuration'),

('admin','leave/admin/index'),

('leave_admin','leave/admin/index'),

('leave_admin_view','leave/admin/index'),

('leave_admin','leave/admin/manage'),

('leave_admin_view','leave/admin/manage'),

('admin','leave/admin/update-settings'),

('leave_admin','leave/application-logs/application-logs'),

('leave_recommending_authority','leave/application-logs/application-logs'),

('leave_reviewing_authority','leave/application-logs/application-logs'),

('leave_sanction_authority','leave/application-logs/application-logs'),

('leave_admin','leave/application/index'),

('leave_admin_view','leave/application/index'),

('leave_admin','leave/applications/approval-index'),

('leave_approval','leave/applications/approval-index'),

('leave_admin','leave/applications/approve-rejoin'),

('employee','leave/applications/assign-duties'),

('leave_admin','leave/applications/assign-duties'),

('employee','leave/applications/cancel'),

('leave_admin','leave/applications/cancel'),

('leave_recommending_authority','leave/applications/cancel'),

('leave_reviewing_authority','leave/applications/cancel'),

('leave_sanction_authority','leave/applications/cancel'),

('leave_admin','leave/applications/cancel-application'),

('leave_recommending_authority','leave/applications/cancel-application'),

('leave_reviewing_authority','leave/applications/cancel-application'),

('leave_sanction_authority','leave/applications/cancel-application'),

('leave_admin','leave/applications/cancellation-index'),

('leave_recommending_authority','leave/applications/cancellation-index'),

('leave_reviewing_authority','leave/applications/cancellation-index'),

('leave_sanction_authority','leave/applications/cancellation-index'),

('employee','leave/applications/create'),

('leave_admin','leave/applications/create'),

('leave_admin','leave/applications/create-post-facto'),

('admin','leave/applications/get-calculated-days'),

('employee','leave/applications/get-calculated-days'),

('leave_admin','leave/applications/get-calculated-days'),

('leave_admin','leave/applications/get-combined-leaves'),

('leave_admin','leave/applications/get-leaves'),

('employee','leave/applications/index'),

('leave_admin','leave/applications/index'),

('leave_admin','leave/applications/print'),

('leave_recommending_authority','leave/applications/print'),

('leave_reviewing_authority','leave/applications/print'),

('leave_sanction_authority','leave/applications/print'),

('leave_admin','leave/applications/recommend-application'),

('leave_recommending_authority','leave/applications/recommend-application'),

('leave_admin','leave/applications/recommending-index'),

('leave_recommending_authority','leave/applications/recommending-index'),

('employee','leave/applications/rejoin'),

('leave_admin','leave/applications/rejoin'),

('admin','leave/applications/rejoin-index'),

('leave_admin','leave/applications/rejoin-index'),

('leave_admin','leave/applications/review-application'),

('leave_reviewing_authority','leave/applications/review-application'),

('leave_admin','leave/applications/reviewing-index'),

('leave_reviewing_authority','leave/applications/reviewing-index'),

('leave_admin','leave/applications/sanction-application'),

('leave_sanction_authority','leave/applications/sanction-application'),

('leave_admin','leave/applications/sanction-index'),

('leave_sanction_authority','leave/applications/sanction-index'),

('admin','leave/applications/send-reminder-email'),

('employee','leave/applications/submit'),

('leave_admin','leave/applications/submit'),

('leave_admin','leave/applications/submit-post-facto'),

('employee','leave/applications/update'),

('leave_admin','leave/applications/update'),

('leave_recommending_authority','leave/applications/update-duties-assignee'),

('leave_sanction_authority','leave/applications/update-duties-assignee'),

('employee','leave/applications/view'),

('leave_admin','leave/applications/view'),

('leave_recommending_authority','leave/applications/view'),

('leave_reviewing_authority','leave/applications/view'),

('leave_sanction_authority','leave/applications/view'),

('leave_admin','leave/authority-map/create'),

('leave_admin','leave/authority-map/index'),

('leave_admin','leave/authority-map/update'),

('leave_admin','leave/authority-map/view'),

('employee','leave/commute-request/create'),

('leave_admin','leave/commute-request/create'),

('employee','leave/commute-request/get-calculated-days'),

('leave_admin','leave/commute-request/get-calculated-days'),

('admin','leave/commute-request/index'),

('leave_admin','leave/compensatory-leaves/assign-leaves'),

('leave_admin','leave/compensatory-leaves/bulk-assign'),

('leave_admin','leave/compensatory-leaves/confirm-leave'),

('leave_admin','leave/compensatory-leaves/index'),

('leave_admin','leave/compensatory-leaves/update'),

('leave_admin','leave/compensatory-leaves/update-count'),

('leave_admin','leave/employee-leave-mapping/bulk-assign-authorities'),

('leave_admin','leave/employee-leave-mapping/index'),

('leave_admin','leave/employee-leave-mapping/update-ajax'),

('leave_admin','leave/employee-record/approval-index'),

('leave_admin','leave/employee-record/bulk-assign'),

('leave_admin','leave/employee-record/bulk-assign-leaves'),

('leave_admin','leave/employee-record/complete'),

('leave_admin','leave/employee-record/confirm-employees-leave'),

('leave_admin','leave/employee-record/employee-index'),

('leave_admin','leave/employee-record/get-employee-name'),

('leave_admin','leave/employee-record/get-leave-days'),

('leave_admin','leave/employee-record/get-leaves'),

('leave_admin','leave/employee-record/index'),

('leave_admin','leave/employee-record/update'),

('leave_admin','leave/employee-record/view'),

('leave_admin','leave/holidays/add-holiday'),

('leave_admin','leave/holidays/add-vacation'),

('leave_admin','leave/holidays/add-week-off'),

('leave_admin','leave/holidays/index'),

('leave_admin','leave/holidays/update-ajax'),

('leave_admin','leave/import/import-leaves'),

('leave_admin','leave/import/process-and-import-data'),

('leave_admin','leave/leave-account/assign-count'),

('leave_admin','leave/leave-account/assign-count-multiple'),

('leave_admin','leave/leave-account/get-models'),

('employee','leave/leave-account/get-remaining-leaves'),

('leave_admin','leave/leave-account/get-remaining-leaves'),

('employee','leave/leave-account/index'),

('leave_admin','leave/leave-account/index'),

('leave_admin','leave/leave-account/select-employee'),

('leave_admin','leave/leave-account/view'),

('leave_admin','leave/leave-account/view-multi-employees'),

('employee','leave/leave-ledger/index'),

('leave_admin','leave/leave-ledger/index'),

('admin','leave/leave-ltc-travel/index'),

('admin','leave/leave-ltc/index'),

('leave_admin','leave/leave-rule-special/create'),

('leave_admin','leave/leave-rule-special/index'),

('leave_admin','leave/leave-rule-special/update'),

('leave_admin','leave/leave-rule-special/view'),

('leave_admin','leave/leave-type/activity'),

('leave_admin','leave/leave-type/add-leaves'),

('employee','leave/leave-type/add-leaves-doj'),

('leave_admin','leave/leave-type/add-leaves-doj'),

('leave_admin','leave/leave-type/create'),

('leave_admin','leave/leave-type/index'),

('leave_admin','leave/leave-type/update'),

('leave_admin','leave/leave-type/view'),

('leave_admin','leave/ltc-requests/approve'),

('employee','leave/ltc-requests/create'),

('leave_admin','leave/ltc-requests/create'),

('employee','leave/ltc-requests/index'),

('leave_admin','leave/ltc-requests/index'),

('employee','leave/ltc-requests/view'),

('leave_admin','leave/ltc-requests/view'),

('leave_admin','leave/mail-template/create'),

('leave_admin','leave/mail-template/get-variables'),

('leave_admin','leave/mail-template/index'),

('leave_admin','leave/mail-template/update'),

('leave_admin','leave/mail-template/view'),

('leave_admin','leave/overtime-requests/approve'),

('employee','leave/overtime-requests/create'),

('leave_admin','leave/overtime-requests/create'),

('employee','leave/overtime-requests/get-calculated-days'),

('leave_admin','leave/overtime-requests/get-calculated-days'),

('leave_admin','leave/overtime-requests/index'),

('employee','leave/overtime-requests/view'),

('leave_admin','leave/overtime-requests/view'),

('admin','leave/stationleave/create'),

('employee','leave/stationleave/create'),

('admin','leave/stationleave/index'),

('employee','leave/stationleave/index'),

('admin','leave/stationleave/submit'),

('employee','leave/stationleave/submit'),

('admin','leave/stationleave/update'),

('employee','leave/stationleave/update'),

('admin','leave/stationleave/view'),

('employee','leave/stationleave/view'),

('admin','legal/case-hearing-details/index'),

('legal_admin','legal/case-hearing-details/index'),

('legal_admin_view','legal/case-hearing-details/index'),

('legal_data_entry_operator','legal/case-hearing-details/index'),

('admin','legal/case-hearing-details/next-week-hearing'),

('legal_admin','legal/case-hearing-details/next-week-hearing'),

('legal_admin_view','legal/case-hearing-details/next-week-hearing'),

('admin','legal/case-hearing-details/this-week-hearing'),

('legal_admin','legal/case-hearing-details/this-week-hearing'),

('legal_admin_view','legal/case-hearing-details/this-week-hearing'),

('admin','legal/case-hearing-details/update'),

('legal_admin','legal/case-hearing-details/update'),

('legal_data_entry_operator','legal/case-hearing-details/update'),

('admin','legal/case-status/create'),

('legal_admin','legal/case-status/create'),

('rti_first_appellate_authority','legal/case-status/create'),

('admin','legal/case-status/delete'),

('legal_admin','legal/case-status/delete'),

('admin','legal/case-status/index'),

('legal_admin','legal/case-status/index'),

('admin','legal/case-status/update'),

('legal_admin','legal/case-status/update'),

('admin','legal/case-status/view'),

('employee','legal/case-status/view'),

('legal_admin','legal/case-status/view'),

('legal_admin','legal/case-type/create'),

('legal_admin','legal/case-type/delete'),

('legal_admin','legal/case-type/index'),

('legal_admin_view','legal/case-type/index'),

('legal_admin','legal/case-type/update'),

('legal_admin','legal/case-type/view'),

('legal_admin_view','legal/case-type/view'),

('admin','legal/court/create'),

('legal_admin','legal/court/create'),

('admin','legal/court/delete'),

('legal_admin','legal/court/delete'),

('admin','legal/court/index'),

('legal_admin','legal/court/index'),

('admin','legal/court/update'),

('legal_admin','legal/court/update'),

('admin','legal/court/view'),

('legal_admin','legal/court/view'),

('admin','legal/default/index'),

('legal_admin','legal/default/index'),

('legal_admin_view','legal/default/index'),

('admin','legal/default/settings'),

('legal_admin','legal/default/settings'),

('admin','legal/lcms-case/against-cases'),

('legal_admin','legal/lcms-case/against-cases'),

('legal_admin_view','legal/lcms-case/against-cases'),

('admin','legal/lcms-case/create'),

('legal_admin','legal/lcms-case/create'),

('legal_data_entry_operator','legal/lcms-case/create'),

('admin','legal/lcms-case/delete'),

('legal_admin','legal/lcms-case/delete'),

('admin','legal/lcms-case/hc-cases'),

('legal_admin','legal/lcms-case/hc-cases'),

('legal_admin_view','legal/lcms-case/hc-cases'),

('admin','legal/lcms-case/in-favour-cases'),

('legal_admin','legal/lcms-case/in-favour-cases'),

('legal_admin_view','legal/lcms-case/in-favour-cases'),

('admin','legal/lcms-case/index'),

('legal_admin','legal/lcms-case/index'),

('legal_admin_view','legal/lcms-case/index'),

('legal_data_entry_operator','legal/lcms-case/index'),

('admin','legal/lcms-case/print'),

('legal_admin','legal/lcms-case/print'),

('admin','legal/lcms-case/sc-cases'),

('legal_admin','legal/lcms-case/sc-cases'),

('legal_admin_view','legal/lcms-case/sc-cases'),

('admin','legal/lcms-case/update'),

('legal_admin','legal/lcms-case/update'),

('admin','legal/lcms-case/view'),

('legal_admin','legal/lcms-case/view'),

('legal_admin_view','legal/lcms-case/view'),

('legal_admin','legal/lcms-uploads/create'),

('legal_admin','legal/lcms-uploads/delete'),

('admin','master/core-ou-structure'),

('Settings','master/core-ou-structure'),

('ou_admin','master/designation/create'),

('Settings','master/designation/create'),

('ou_admin','master/designation/delete'),

('Settings','master/designation/delete'),

('ou_admin','master/designation/index'),

('Settings','master/designation/index'),

('ou_admin','master/designation/update'),

('Settings','master/designation/update'),

('ou_admin','master/designation/view'),

('Settings','master/designation/view'),

('Settings','master/email-templates/create'),

('ou_admin','master/institutions/create'),

('Settings','master/institutions/create'),

('ou_admin','master/institutions/index'),

('Settings','master/institutions/index'),

('ou_admin','master/institutions/update'),

('programme_admin','master/institutions/update'),

('Settings','master/institutions/update'),

('ou_admin','master/institutions/view'),

('Settings','master/institutions/view'),

('fee_admin','master/master/audience/create'),

('fee_admin','master/master/audience/delete'),

('fee_admin','master/master/audience/index'),

('fee_admin','master/master/audience/update'),

('fee_admin','master/master/payment-gateway/create'),

('fee_admin','master/master/payment-gateway/delete'),

('fee_admin','master/master/payment-gateway/index'),

('fee_admin','master/master/payment-gateway/update'),

('admin','master/modules/index-module'),

('ou_admin','master/organigram/copy'),

('Settings','master/organigram/copy'),

('admin','master/organigram/create'),

('ou_admin','master/organigram/create'),

('Settings','master/organigram/create'),

('admin','master/organigram/delete'),

('ou_admin','master/organigram/delete'),

('Settings','master/organigram/delete'),

('admin','master/organigram/index'),

('ou_admin','master/organigram/index'),

('Settings','master/organigram/index'),

('ou_admin','master/organigram/list-parent-designations'),

('Settings','master/organigram/list-parent-designations'),

('ou_admin','master/organigram/tree'),

('Settings','master/organigram/tree'),

('admin','master/organigram/update'),

('ou_admin','master/organigram/update'),

('Settings','master/organigram/update'),

('admin','master/organigram/view'),

('ou_admin','master/organigram/view'),

('Settings','master/organigram/view'),

('admin','master/organizational-unit-type'),

('ou_admin','master/organizational-unit-type'),

('Settings','master/organizational-unit-type'),

('ou_admin','master/organizational-unit-type/create'),

('Settings','master/organizational-unit-type/create'),

('ou_admin','master/organizational-unit-type/delete'),

('Settings','master/organizational-unit-type/delete'),

('ou_admin','master/organizational-unit-type/index'),

('Settings','master/organizational-unit-type/index'),

('ou_admin','master/organizational-unit-type/update'),

('Settings','master/organizational-unit-type/update'),

('ou_admin','master/organizational-unit-type/view'),

('Settings','master/organizational-unit-type/view'),

('admin','master/organizational-unit/create'),

('ou_admin','master/organizational-unit/create'),

('Settings','master/organizational-unit/create'),

('ou_admin','master/organizational-unit/delete'),

('Settings','master/organizational-unit/delete'),

('ou_admin','master/organizational-unit/get-all-ou'),

('programme_admin','master/organizational-unit/get-all-ou'),

('Settings','master/organizational-unit/get-all-ou'),

('ou_admin','master/organizational-unit/get-different-ous'),

('Settings','master/organizational-unit/get-different-ous'),

('ou_admin','master/organizational-unit/get-district'),

('Settings','master/organizational-unit/get-district'),

('ou_admin','master/organizational-unit/get-ous'),

('Settings','master/organizational-unit/get-ous'),

('admin','master/organizational-unit/index'),

('ou_admin','master/organizational-unit/index'),

('Settings','master/organizational-unit/index'),

('admin','master/organizational-unit/update'),

('ou_admin','master/organizational-unit/update'),

('Settings','master/organizational-unit/update'),

('admin','master/organizational-unit/view'),

('ou_admin','master/organizational-unit/view'),

('Settings','master/organizational-unit/view'),

('ou_admin','master/organizational-unit/view-all'),

('Settings','master/organizational-unit/view-all'),

('admission_admin','mghavdl2021january/visualization/export'),

('odl_admission_admin','mghavdl2021january/visualization/export'),

('programme_admission_admin','mghavdl2021january/visualization/export'),

('payroll_admin','model/menu'),

('payroll_admin','model/menu_admin'),

('employee','model/menu_emp'),

('payroll_employee','model/menu_emp'),

('employee_admin','model/menu_employee_admin'),

('payroll_ar_salary','model/menu_par'),

('payroll_pcm','model/menu_pcm'),

('payroll_pda','model/menu_pda'),

('payroll_pvo','model/menu_pvo'),

('ocm_department','ocm/admin/department-index'),

('admin','ocm/admin/index'),

('ocm_admin','ocm/admin/index'),

('admin','ocm/admin/manage'),

('ocm_admin','ocm/admin/manage'),

('ocm_admin','ocm/budget-advance/approved'),

('ocm_admin','ocm/budget-estimate/add-estimate'),

('ocm_admin','ocm/budget-estimate/add-estimate_admin'),

('ocm_admin','ocm/budget-transfer/approved'),

('ocm_admin','ocm/expenditure/approved'),

('admin','odl_admission_admin'),

('admin','ou_admin'),

('training_department','ou_placement_coordinator'),

('exam_administrator','papersetter/examination-paper-examiner/program-index'),

('exam_administrator','papersetter/examination-paper-setter/program-index'),

('employee','payroll_employee'),

('payroll_admin','payroll-activity-logs/index_admin'),

('admin','payroll/dashboard/index'),

('employee','payroll/dashboard/index'),

('payroll_admin','payroll/dashboard/index'),

('payroll_ar_salary','payroll/dashboard/index'),

('payroll_employee','payroll/dashboard/index'),

('payroll_pcm','payroll/dashboard/index'),

('payroll_pda','payroll/dashboard/index'),

('payroll_pvo','payroll/dashboard/index'),

('admin','payroll/dashboard/index_admin'),

('payroll_admin','payroll/dashboard/index_admin'),

('admin','payroll/dashboard/index_emp'),

('employee','payroll/dashboard/index_emp'),

('payroll_employee','payroll/dashboard/index_emp'),

('admin','payroll/dashboard/index_par'),

('payroll_ar_salary','payroll/dashboard/index_par'),

('admin','payroll/dashboard/index_pcm'),

('payroll_pcm','payroll/dashboard/index_pcm'),

('admin','payroll/dashboard/index_pda'),

('payroll_pda','payroll/dashboard/index_pda'),

('employee','payroll/dashboard/months'),

('payroll_employee','payroll/dashboard/months'),

('admin','payroll/employee-salary-structure/add-salary-structure'),

('payroll_admin','payroll/employee-salary-structure/add-salary-structure'),

('payroll_pcm','payroll/employee-salary-structure/add-salary-structure'),

('admin','payroll/employee-salary-structure/add-salary-structure_admin'),

('payroll_admin','payroll/employee-salary-structure/add-salary-structure_admin'),

('payroll_admin','payroll/employee-salary-structure/add-salary-structure_pcm'),

('payroll_pcm','payroll/employee-salary-structure/add-salary-structure_pcm'),

('admin','payroll/employee-salary-structure/ajax-submit'),

('payroll_admin','payroll/employee-salary-structure/ajax-submit'),

('payroll_pda','payroll/employee-salary-structure/ajax-submit'),

('admin','payroll/employee-salary-structure/ajax-update'),

('payroll_admin','payroll/employee-salary-structure/ajax-update'),

('payroll_pda','payroll/employee-salary-structure/ajax-update'),

('admin','payroll/employee-salary-structure/create'),

('payroll_admin','payroll/employee-salary-structure/create'),

('payroll_pcm','payroll/employee-salary-structure/create'),

('admin','payroll/employee-salary-structure/index-ajax'),

('payroll_admin','payroll/employee-salary-structure/index-ajax'),

('payroll_pcm','payroll/employee-salary-structure/index-ajax'),

('admin','payroll/employee-salary-structure/index-ajax_admin'),

('payroll_admin','payroll/employee-salary-structure/index-ajax_admin'),

('payroll_pcm','payroll/employee-salary-structure/index-ajax_pcm'),

('admin','payroll/employee-salary-structure/update-rule'),

('payroll_admin','payroll/employee-salary-structure/update-rule'),

('payroll_pcm','payroll/employee-salary-structure/update-rule'),

('admin','payroll/employee-salary-structure/update-salary-structure'),

('payroll_admin','payroll/employee-salary-structure/update-salary-structure'),

('payroll_pcm','payroll/employee-salary-structure/update-salary-structure'),

('admin','payroll/employee-salary-structure/view-history'),

('payroll_pcm','payroll/employee-salary-structure/view-history'),

('admin','payroll/employee-salary-structure/view-salary-structure'),

('payroll_admin','payroll/employee-salary-structure/view-salary-structure'),

('payroll_pcm','payroll/employee-salary-structure/view-salary-structure'),

('admin','payroll/employee-salary-structure/view-salary-structure_admin'),

('payroll_admin','payroll/employee-salary-structure/view-salary-structure_admin'),

('payroll_pcm','payroll/employee-salary-structure/view-salary-structure_admin'),

('payroll_admin','payroll/employee-salary-structure/view-salary-structure_pcm'),

('payroll_pcm','payroll/employee-salary-structure/view-salary-structure_pcm'),

('admin','payroll/ems-salary-details/payroll-categories'),

('employee_admin','payroll/ems-salary-details/payroll-categories'),

('payroll_admin','payroll/ems-salary-details/payroll-categories'),

('payroll_pcm','payroll/ems-salary-details/payroll-categories'),

('payroll_pda','payroll/ems-salary-details/payroll-categories'),

('payroll_pvo','payroll/ems-salary-details/payroll-categories'),

('payroll_admin','payroll/ems-salary-details/payroll-index'),

('payroll_pda','payroll/ems-salary-details/payroll-index'),

('admin','payroll/ems-salary-details/payroll-structure-index'),

('payroll_admin','payroll/ems-salary-details/payroll-structure-index'),

('admin','payroll/ems-salary-details/payroll-structure-index_admin'),

('payroll_admin','payroll/ems-salary-details/payroll-structure-index_admin'),

('admin','payroll/ems-salary-details/salary-generate-index'),

('payroll_admin','payroll/ems-salary-details/salary-generate-index'),

('payroll_pda','payroll/ems-salary-details/salary-generate-index'),

('admin','payroll/ems-salary-details/salary-generate-index_admin'),

('payroll_admin','payroll/ems-salary-details/salary-generate-index_admin'),

('payroll_pda','payroll/ems-salary-details/salary-generate-index_pda'),

('payroll_admin','payroll/final-salary/index'),

('payroll_pcm','payroll/final-salary/index'),

('payroll_pda','payroll/final-salary/index'),

('payroll_pvo','payroll/final-salary/index'),

('payroll_admin','payroll/reports/e-pay-select'),

('admin','payroll/reports/index'),

('payroll_ar_salary','payroll/reports/index'),

('admin','payroll/reports/index_admin'),

('payroll_admin','payroll/reports/index_admin'),

('payroll_ar_salary','payroll/reports/index_par'),

('payroll_pda','payroll/reports/index_pda'),

('payroll_pvo','payroll/reports/index_pso'),

('payroll_admin','payroll/reports/pay-bill-report'),

('payroll_pcm','payroll/reports/pay-bill-report'),

('payroll_pda','payroll/reports/pay-bill-report'),

('payroll_pvo','payroll/reports/pay-bill-report'),

('payroll_admin','payroll/reports/pf-report-categorize'),

('payroll_pcm','payroll/reports/pf-report-categorize'),

('payroll_pda','payroll/reports/pf-report-categorize'),

('payroll_pvo','payroll/reports/pf-report-categorize'),

('payroll_admin','payroll/reports/slip-pdf'),

('admin','payroll/salary-config/get-grade-pays'),

('payroll_admin','payroll/salary-config/get-grade-pays'),

('payroll_pcm','payroll/salary-config/get-grade-pays'),

('admin','payroll/salary-config/get-levels'),

('payroll_admin','payroll/salary-config/get-levels'),

('payroll_pcm','payroll/salary-config/get-levels'),

('admin','payroll/salary-config/previous-salary-details'),

('employee','payroll/salary-config/previous-salary-details'),

('admin','payroll/salary-config/update-salary-details'),

('payroll_admin','payroll/salary-config/update-salary-details'),

('payroll_pcm','payroll/salary-config/update-salary-details'),

('admin','payroll/salary-config/update-salary-details_admin'),

('payroll_admin','payroll/salary-config/update-salary-details_admin'),

('payroll_admin','payroll/salary-config/update-salary-details_pcm'),

('payroll_pcm','payroll/salary-config/update-salary-details_pcm'),

('admin','payroll/salary-config/view-salary-details'),

('employee','payroll/salary-config/view-salary-details'),

('payroll_admin','payroll/salary-config/view-salary-details'),

('payroll_employee','payroll/salary-config/view-salary-details'),

('payroll_pcm','payroll/salary-config/view-salary-details'),

('payroll_pda','payroll/salary-config/view-salary-details'),

('admin','payroll/salary-config/view-salary-details_admin'),

('employee','payroll/salary-config/view-salary-details_admin'),

('payroll_admin','payroll/salary-config/view-salary-details_admin'),

('employee','payroll/salary-config/view-salary-details_pcm'),

('payroll_admin','payroll/salary-config/view-salary-details_pcm'),

('payroll_pcm','payroll/salary-config/view-salary-details_pcm'),

('admin','payroll/salary-process/approval_admin'),

('payroll_admin','payroll/salary-process/approval_admin'),

('payroll_ar_salary','payroll/salary-process/approval_par'),

('payroll_admin','payroll/salary-process/bulk-update'),

('payroll_pvo','payroll/salary-process/bulk-update'),

('admin','payroll/salary-process/bulk-update_admin'),

('payroll_admin','payroll/salary-process/bulk-update_admin'),

('payroll_pda','payroll/salary-process/bulk-update_pda'),

('admin','payroll/salary-process/finalize-salary_admin'),

('payroll_admin','payroll/salary-process/finalize-salary_admin'),

('payroll_pvo','payroll/salary-process/finalize-salary_pso'),

('payroll_ar_salary','payroll/salary-process/index'),

('payroll_pvo','payroll/salary-process/index'),

('admin','payroll/salary-process/index_admin'),

('payroll_admin','payroll/salary-process/index_admin'),

('payroll_pvo','payroll/salary-process/index_pso'),

('payroll_admin','payroll/salary-process/show-generated-salary_admin'),

('payroll_pda','payroll/salary-process/show-generated-salary_pda'),

('admin','payroll/salary-process/verify-salary_admin'),

('payroll_admin','payroll/salary-process/verify-salary_admin'),

('payroll_pvo','payroll/salary-process/verify-salary_pso'),

('admin','payroll/settings/index'),

('payroll_admin','payroll/settings/index'),

('admin','payroll/settings/index_admin'),

('payroll_admin','payroll/settings/index_admin'),

('payroll_pcm','payroll/settings/index_pcm'),

('payroll_pda','payroll/settings/index_pda'),

('admin','payroll/tax-deposit/index_admin'),

('payroll_admin','payroll/tax-deposit/index_admin'),

('payroll_pda','payroll/tax-deposit/index_pda'),

('programme_admin','program/adm-programme-qualification-list/create'),

('programme_admission_admin','program/adm-programme-qualification-list/create'),

('programme_admin','program/adm-programme-qualification-list/delete'),

('programme_admission_admin','program/adm-programme-qualification-list/delete'),

('programme_admin','program/adm-programme-qualification-list/index'),

('programme_admission_admin','program/adm-programme-qualification-list/index'),

('programme_admin','program/adm-programme-qualification-list/update'),

('programme_admission_admin','program/adm-programme-qualification-list/update'),

('programme_admin','program/adm-programme-qualification-list/view'),

('programme_admission_admin','program/adm-programme-qualification-list/view'),

('programme_admin','program/adm-qualification/create'),

('programme_admission_admin','program/adm-qualification/create'),

('programme_admin','program/adm-qualification/delete'),

('programme_admission_admin','program/adm-qualification/delete'),

('programme_admin','program/adm-qualification/index'),

('programme_admission_admin','program/adm-qualification/index'),

('programme_admin','program/adm-qualification/update'),

('programme_admission_admin','program/adm-qualification/update'),

('programme_admin','program/adm-qualification/view'),

('programme_admission_admin','program/adm-qualification/view'),

('programme_admin','program/adm-type/create'),

('programme_admission_admin','program/adm-type/create'),

('programme_admin','program/adm-type/delete'),

('programme_admission_admin','program/adm-type/delete'),

('admission_programme_administrator','program/adm-type/index'),

('programme_admin','program/adm-type/index'),

('programme_admission_admin','program/adm-type/index'),

('programme_admin','program/adm-type/update'),

('programme_admission_admin','program/adm-type/update'),

('programme_admin','program/adm-type/view'),

('programme_admission_admin','program/adm-type/view'),

('programme_admin','program/adm-upload-list/create'),

('programme_admission_admin','program/adm-upload-list/create'),

('programme_admin','program/adm-upload-list/delete'),

('programme_admission_admin','program/adm-upload-list/delete'),

('programme_admin','program/adm-upload-list/index'),

('programme_admission_admin','program/adm-upload-list/index'),

('programme_admin','program/adm-upload-list/update'),

('programme_admission_admin','program/adm-upload-list/update'),

('programme_admin','program/adm-upload-list/view'),

('programme_admission_admin','program/adm-upload-list/view'),

('programme_admin','program/adm/settings'),

('programme_admission_admin','program/adm/settings'),

('program_management','program/admission-category/create'),

('programme_admin','program/admission-category/create'),

('programme_admission_admin','program/admission-category/create'),

('program_management','program/admission-category/delete'),

('programme_admin','program/admission-category/delete'),

('programme_admission_admin','program/admission-category/delete'),

('program_management','program/admission-category/index'),

('programme_admin','program/admission-category/index'),

('programme_admin_view_only','program/admission-category/index'),

('programme_admission_admin','program/admission-category/index'),

('program_management','program/admission-category/update'),

('programme_admin','program/admission-category/update'),

('programme_admission_admin','program/admission-category/update'),

('program_management','program/admission-category/view'),

('programme_admin','program/admission-category/view'),

('programme_admin_view_only','program/admission-category/view'),

('programme_admission_admin','program/admission-category/view'),

('programme_admin','program/core-programme/'),

('programme_admission_admin','program/core-programme/'),

('programme_admin','program/core-programme/academic-year'),

('program_management','program/core-programme/all-details'),

('programme_admin','program/core-programme/all-details'),

('programme_admin_view_only','program/core-programme/all-details'),

('programme_admission_admin','program/core-programme/all-details'),

('programme_ou_specific_role','program/core-programme/all-details'),

('exam_administrator','program/core-programme/api-search'),

('programme_admin','program/core-programme/batch'),

('programme_admission_admin','program/core-programme/batch'),

('programme_admin','program/core-programme/card-view'),

('programme_admission_admin','program/core-programme/card-view'),

('program_management','program/core-programme/create'),

('programme_admin','program/core-programme/create'),

('programme_admission_admin','program/core-programme/create'),

('programme_admin','program/core-programme/create-permission'),

('programme_admission_admin','program/core-programme/create-permission'),

('program_management','program/core-programme/delete'),

('programme_admin','program/core-programme/delete'),

('programme_admission_admin','program/core-programme/delete'),

('programme_admin','program/core-programme/detail-view'),

('programme_admission_admin','program/core-programme/detail-view'),

('programme_admin','program/core-programme/fee-terms'),

('programme_admission_admin','program/core-programme/fee-terms'),

('program_management','program/core-programme/get-info '),

('programme_admin','program/core-programme/get-info '),

('programme_admin_view_only','program/core-programme/get-info '),

('programme_admission_admin','program/core-programme/get-info '),

('programme_ou_specific_role','program/core-programme/get-info '),

('program_management','program/core-programme/index'),

('programme_admin','program/core-programme/index'),

('programme_admin_view_only','program/core-programme/index'),

('programme_admission_admin','program/core-programme/index'),

('programme_ou_specific_role','program/core-programme/index'),

('rsd_admin','program/core-programme/index'),

('program_management','program/core-programme/master-details'),

('programme_admin','program/core-programme/master-details'),

('programme_admin_view_only','program/core-programme/master-details'),

('programme_admission_admin','program/core-programme/master-details'),

('programme_ou_specific_role','program/core-programme/master-details'),

('programme_admin','program/core-programme/master-fees'),

('programme_admission_admin','program/core-programme/master-fees'),

('programme_admin','program/core-programme/master-qualification'),

('programme_admission_admin','program/core-programme/master-qualification'),

('programme_admin','program/core-programme/master-structure'),

('programme_admission_admin','program/core-programme/master-structure'),

('programme_admin','program/core-programme/master-uploads'),

('programme_admission_admin','program/core-programme/master-uploads'),

('programme_admin','program/core-programme/prg-adm-index'),

('programme_admission_admin','program/core-programme/prg-adm-index'),

('program_management','program/core-programme/settings'),

('programme_admin','program/core-programme/settings'),

('programme_admin_view_only','program/core-programme/settings'),

('programme_admission_admin','program/core-programme/settings'),

('programme_ou_specific_role','program/core-programme/settings'),

('admin','program/core-programme/structure'),

('programme_admin','program/core-programme/structure'),

('programme_admin_view_only','program/core-programme/structure'),

('programme_admission_admin','program/core-programme/structure'),

('programme_ou_specific_role','program/core-programme/structure'),

('programme_admin','program/core-programme/toggle-status'),

('programme_admission_admin','program/core-programme/toggle-status'),

('program_management','program/core-programme/update'),

('programme_admin','program/core-programme/update'),

('programme_admission_admin','program/core-programme/update'),

('programme_admin','program/core-programme/update-ou-enabled'),

('programme_admission_admin','program/core-programme/update-ou-enabled'),

('programme_admin','program/core-programme/update-programme-detail'),

('programme_admission_admin','program/core-programme/update-programme-detail'),

('programme_admin','program/core-programme/update-programme-status'),

('programme_admission_admin','program/core-programme/update-programme-status'),

('program_management','program/core-programme/view'),

('programme_admin','program/core-programme/view'),

('programme_admin_view_only','program/core-programme/view'),

('programme_admission_admin','program/core-programme/view'),

('programme_ou_specific_role','program/core-programme/view'),

('programme_admin','program/core-session/create'),

('programme_admission_admin','program/core-session/create'),

('programme_admin','program/core-session/delete'),

('programme_admission_admin','program/core-session/delete'),

('programme_admin','program/core-session/index'),

('programme_admission_admin','program/core-session/index'),

('programme_admin','program/core-session/update'),

('programme_admission_admin','program/core-session/update'),

('programme_admin','program/core-session/view'),

('programme_admission_admin','program/core-session/view'),

('programme_admin','program/core-time-table-slot/create'),

('programme_admission_admin','program/core-time-table-slot/create'),

('programme_admin','program/core-time-table-slot/delete'),

('programme_admission_admin','program/core-time-table-slot/delete'),

('programme_admin','program/core-time-table-slot/index'),

('programme_admission_admin','program/core-time-table-slot/index'),

('programme_admin','program/core-time-table-slot/update'),

('programme_admission_admin','program/core-time-table-slot/update'),

('programme_admin','program/core-time-table-slot/view'),

('programme_admission_admin','program/core-time-table-slot/view'),

('programme_admin','program/course/add-old-course'),

('programme_admin','program/course/ajax-create'),

('programme_admission_admin','program/course/ajax-create'),

('exam_administrator','program/course/api-search'),

('programme_admin','program/course/approve'),

('programme_admission_admin','program/course/approve'),

('programme_admin','program/course/create'),

('programme_admission_admin','program/course/create'),

('programme_admin','program/course/delete'),

('programme_admission_admin','program/course/delete'),

('programme_admin','program/course/exam-detail'),

('programme_admin','program/course/get-category'),

('programme_admission_admin','program/course/get-category'),

('programme_admin','program/course/get-program'),

('programme_admin','program/course/index'),

('programme_admission_admin','program/course/index'),

('programme_admin','program/course/programme'),

('programme_admission_admin','program/course/programme'),

('programme_admin','program/course/remove-old-course'),

('programme_admin','program/course/update'),

('programme_admission_admin','program/course/update'),

('programme_admin','program/course/view'),

('programme_admission_admin','program/course/view'),

('programme_admin','program/course/visible-toggle'),

('programme_admission_admin','program/course/visible-toggle'),

('programme_admin','program/curriculum-setting/index'),

('programme_admission_admin','program/curriculum-setting/index'),

('programme_admin','program/eca-adm-category/create'),

('programme_admission_admin','program/eca-adm-category/create'),

('programme_admin','program/eca-adm-category/delete'),

('programme_admission_admin','program/eca-adm-category/delete'),

('programme_admin','program/eca-adm-category/index'),

('programme_admission_admin','program/eca-adm-category/index'),

('programme_admin','program/eca-adm-category/update'),

('programme_admission_admin','program/eca-adm-category/update'),

('programme_admin','program/eca-adm-category/view'),

('programme_admission_admin','program/eca-adm-category/view'),

('program_management','program/enrolment-status/create'),

('programme_admin','program/enrolment-status/create'),

('programme_admission_admin','program/enrolment-status/create'),

('program_management','program/enrolment-status/delete'),

('programme_admin','program/enrolment-status/delete'),

('programme_admission_admin','program/enrolment-status/delete'),

('program_management','program/enrolment-status/index'),

('programme_admin','program/enrolment-status/index'),

('programme_admin_view_only','program/enrolment-status/index'),

('programme_admission_admin','program/enrolment-status/index'),

('program_management','program/enrolment-status/update'),

('programme_admin','program/enrolment-status/update'),

('programme_admission_admin','program/enrolment-status/update'),

('program_management','program/enrolment-status/view'),

('programme_admin','program/enrolment-status/view'),

('programme_admin_view_only','program/enrolment-status/view'),

('programme_admission_admin','program/enrolment-status/view'),

('program_management','program/enrolment-type/create'),

('programme_admin','program/enrolment-type/create'),

('programme_admission_admin','program/enrolment-type/create'),

('program_management','program/enrolment-type/delete '),

('programme_admin','program/enrolment-type/delete '),

('programme_admission_admin','program/enrolment-type/delete '),

('program_management','program/enrolment-type/index'),

('programme_admin','program/enrolment-type/index'),

('programme_admin_view_only','program/enrolment-type/index'),

('programme_admission_admin','program/enrolment-type/index'),

('program_management','program/enrolment-type/update'),

('programme_admin','program/enrolment-type/update'),

('programme_admission_admin','program/enrolment-type/update'),

('program_management','program/enrolment-type/view'),

('programme_admin','program/enrolment-type/view'),

('programme_admin_view_only','program/enrolment-type/view'),

('programme_admission_admin','program/enrolment-type/view'),

('program_management','program/evaluation-criteria/create'),

('programme_admin','program/evaluation-criteria/create'),

('programme_admission_admin','program/evaluation-criteria/create'),

('program_management','program/evaluation-criteria/delete'),

('programme_admin','program/evaluation-criteria/delete'),

('programme_admission_admin','program/evaluation-criteria/delete'),

('program_management','program/evaluation-criteria/index'),

('programme_admin','program/evaluation-criteria/index'),

('programme_admin_view_only','program/evaluation-criteria/index'),

('programme_admission_admin','program/evaluation-criteria/index'),

('program_management','program/evaluation-criteria/update'),

('programme_admin','program/evaluation-criteria/update'),

('programme_admission_admin','program/evaluation-criteria/update'),

('program_management','program/evaluation-criteria/view'),

('programme_admin','program/evaluation-criteria/view'),

('programme_admin_view_only','program/evaluation-criteria/view'),

('programme_admission_admin','program/evaluation-criteria/view'),

('admin','program/exam-scheme/create'),

('programme_admin','program/exam-scheme/create'),

('programme_admission_admin','program/exam-scheme/create'),

('programme_admin','program/exam-scheme/delete'),

('programme_admission_admin','program/exam-scheme/delete'),

('programme_admin','program/exam-scheme/index'),

('programme_admission_admin','program/exam-scheme/index'),

('programme_admin','program/exam-scheme/update'),

('programme_admission_admin','program/exam-scheme/update'),

('programme_admin','program/exam-scheme/view'),

('programme_admission_admin','program/exam-scheme/view'),

('programme_admin','program/import/import-course'),

('programme_admission_admin','program/import/import-course'),

('programme_admin','program/import/import-course-for-programme'),

('programme_admission_admin','program/import/import-course-for-programme'),

('programme_admin','program/import/import-programme'),

('programme_admission_admin','program/import/import-programme'),

('programme_admin','program/import/import-qualification'),

('programme_admission_admin','program/import/import-qualification'),

('programme_admin','program/import/process-and-import-data'),

('programme_admission_admin','program/import/process-and-import-data'),

('programme_admin','program/import/process-and-import-data-for-programme'),

('programme_admission_admin','program/import/process-and-import-data-for-programme'),

('programme_admin','program/import/process-and-import-data-for-qualification'),

('programme_admission_admin','program/import/process-and-import-data-for-qualification'),

('programme_admin','program/paper-list/ajax-create'),

('programme_admission_admin','program/paper-list/ajax-create'),

('programme_admin','program/paper-list/approve'),

('programme_admission_admin','program/paper-list/approve'),

('program_management','program/paper-list/create'),

('programme_admin','program/paper-list/create'),

('programme_admission_admin','program/paper-list/create'),

('program_management','program/paper-list/delete'),

('programme_admin','program/paper-list/delete'),

('programme_admission_admin','program/paper-list/delete'),

('programme_admin','program/paper-list/get-category'),

('programme_admission_admin','program/paper-list/get-category'),

('program_management','program/paper-list/index'),

('programme_admin','program/paper-list/index'),

('programme_admin_view_only','program/paper-list/index'),

('programme_admission_admin','program/paper-list/index'),

('program_management','program/paper-list/update'),

('programme_admin','program/paper-list/update'),

('programme_admission_admin','program/paper-list/update'),

('program_management','program/paper-list/view'),

('programme_admin','program/paper-list/view'),

('programme_admin_view_only','program/paper-list/view'),

('programme_admission_admin','program/paper-list/view'),

('programme_admin','program/paper-list/visible-toggle'),

('programme_admission_admin','program/paper-list/visible-toggle'),

('programme_admin','program/part/create'),

('programme_admission_admin','program/part/create'),

('programme_admin','program/part/delete'),

('programme_admission_admin','program/part/delete'),

('programme_admin','program/part/index'),

('programme_admission_admin','program/part/index'),

('programme_admin','program/part/update'),

('programme_admission_admin','program/part/update'),

('programme_admin','program/part/view'),

('programme_admission_admin','program/part/view'),

('programme_admin','program/prg-adm-category/create'),

('programme_admission_admin','program/prg-adm-category/create'),

('programme_admin','program/prg-adm-category/delete'),

('programme_admission_admin','program/prg-adm-category/delete'),

('programme_admin','program/prg-adm-category/index'),

('programme_admission_admin','program/prg-adm-category/index'),

('programme_admin','program/prg-adm-category/update'),

('programme_admission_admin','program/prg-adm-category/update'),

('programme_admin','program/prg-adm-category/view'),

('programme_admission_admin','program/prg-adm-category/view'),

('programme_admin','program/prg-adm-type/create'),

('programme_admission_admin','program/prg-adm-type/create'),

('programme_admin','program/prg-adm-type/delete'),

('programme_admission_admin','program/prg-adm-type/delete'),

('programme_admin','program/prg-adm-type/index'),

('programme_admission_admin','program/prg-adm-type/index'),

('programme_admin','program/prg-adm-type/update'),

('programme_admission_admin','program/prg-adm-type/update'),

('programme_admin','program/prg-adm-type/view'),

('programme_admission_admin','program/prg-adm-type/view'),

('admin','program/prg-administration/create'),

('programme_admin','program/prg-administration/create'),

('programme_admission_admin','program/prg-administration/create'),

('admin','program/prg-administration/discard'),

('programme_admin','program/prg-administration/discard'),

('programme_admission_admin','program/prg-administration/discard'),

('programme_admin','program/prg-administration/index'),

('programme_admission_admin','program/prg-administration/index'),

('admin','program/prg-administration/update'),

('programme_admin','program/prg-administration/update'),

('programme_admission_admin','program/prg-administration/update'),

('programme_admin','program/prg-administration/view'),

('programme_admission_admin','program/prg-administration/view'),

('program_management','program/prg-attendance-group/create'),

('programme_admin','program/prg-attendance-group/create'),

('programme_admission_admin','program/prg-attendance-group/create'),

('program_management','program/prg-attendance-group/delete'),

('programme_admin','program/prg-attendance-group/delete'),

('programme_admission_admin','program/prg-attendance-group/delete'),

('program_management','program/prg-attendance-group/index'),

('programme_admin','program/prg-attendance-group/index'),

('programme_admin_view_only','program/prg-attendance-group/index'),

('programme_admission_admin','program/prg-attendance-group/index'),

('program_management','program/prg-attendance-group/update'),

('programme_admin','program/prg-attendance-group/update'),

('programme_admission_admin','program/prg-attendance-group/update'),

('program_management','program/prg-attendance-group/view'),

('programme_admin','program/prg-attendance-group/view'),

('programme_admin_view_only','program/prg-attendance-group/view'),

('programme_admission_admin','program/prg-attendance-group/view'),

('program_management','program/prg-batch-ou/ajax-submit'),

('programme_admin','program/prg-batch-ou/ajax-submit'),

('programme_admission_admin','program/prg-batch-ou/ajax-submit'),

('program_management','program/prg-batch-ou/create'),

('programme_admin','program/prg-batch-ou/create'),

('programme_admission_admin','program/prg-batch-ou/create'),

('program_management','program/prg-batch-ou/create-ajax'),

('programme_admin','program/prg-batch-ou/create-ajax'),

('programme_admission_admin','program/prg-batch-ou/create-ajax'),

('program_management','program/prg-batch-ou/delete'),

('programme_admin','program/prg-batch-ou/delete'),

('programme_admission_admin','program/prg-batch-ou/delete'),

('programme_admin','program/prg-batch-ou/get-aou-short-code'),

('programme_admission_admin','program/prg-batch-ou/get-aou-short-code'),

('program_management','program/prg-batch-ou/index'),

('programme_admin','program/prg-batch-ou/index'),

('programme_admin_view_only','program/prg-batch-ou/index'),

('programme_admission_admin','program/prg-batch-ou/index'),

('programme_ou_specific_role','program/prg-batch-ou/index'),

('program_management','program/prg-batch-ou/update'),

('programme_admin','program/prg-batch-ou/update'),

('programme_admission_admin','program/prg-batch-ou/update'),

('program_management','program/prg-batch-ou/view'),

('programme_admin','program/prg-batch-ou/view'),

('programme_admin_view_only','program/prg-batch-ou/view'),

('programme_admission_admin','program/prg-batch-ou/view'),

('programme_ou_specific_role','program/prg-batch-ou/view'),

('programme_admin','program/prg-batch/ajax_create'),

('programme_admission_admin','program/prg-batch/ajax_create'),

('program_management','program/prg-batch/ajax-bulk-create'),

('programme_admin','program/prg-batch/ajax-bulk-create'),

('programme_admission_admin','program/prg-batch/ajax-bulk-create'),

('program_management','program/prg-batch/ajax-bulk-submit'),

('programme_admin','program/prg-batch/ajax-bulk-submit'),

('programme_admission_admin','program/prg-batch/ajax-bulk-submit'),

('program_management','program/prg-batch/ajax-create'),

('programme_admin','program/prg-batch/ajax-create'),

('programme_admission_admin','program/prg-batch/ajax-create'),

('program_management','program/prg-batch/ajax-submit'),

('programme_admin','program/prg-batch/ajax-submit'),

('programme_admission_admin','program/prg-batch/ajax-submit'),

('program_management','program/prg-batch/create'),

('programme_admin','program/prg-batch/create'),

('programme_admission_admin','program/prg-batch/create'),

('program_management','program/prg-batch/delete'),

('programme_admin','program/prg-batch/delete'),

('programme_admission_admin','program/prg-batch/delete'),

('programme_admin','program/prg-batch/get-info'),

('programme_admission_admin','program/prg-batch/get-info'),

('program_management','program/prg-batch/index'),

('programme_admin','program/prg-batch/index'),

('programme_admin_view_only','program/prg-batch/index'),

('programme_admission_admin','program/prg-batch/index'),

('program_management','program/prg-batch/update'),

('programme_admin','program/prg-batch/update'),

('programme_admission_admin','program/prg-batch/update'),

('program_management','program/prg-batch/view'),

('programme_admin','program/prg-batch/view'),

('programme_admin_view_only','program/prg-batch/view'),

('programme_admission_admin','program/prg-batch/view'),

('program_management','program/prg-class/ajax-create'),

('programme_admin','program/prg-class/ajax-create'),

('programme_admission_admin','program/prg-class/ajax-create'),

('program_management','program/prg-class/ajax-submit'),

('programme_admin','program/prg-class/ajax-submit'),

('programme_admission_admin','program/prg-class/ajax-submit'),

('program_management','program/prg-class/create'),

('programme_admin','program/prg-class/create'),

('programme_admission_admin','program/prg-class/create'),

('program_management','program/prg-class/delete'),

('programme_admin','program/prg-class/delete'),

('programme_admission_admin','program/prg-class/delete'),

('program_management','program/prg-class/index'),

('programme_admin','program/prg-class/index'),

('programme_admin_view_only','program/prg-class/index'),

('programme_admission_admin','program/prg-class/index'),

('program_management','program/prg-class/update'),

('programme_admin','program/prg-class/update'),

('programme_admission_admin','program/prg-class/update'),

('program_management','program/prg-class/view'),

('programme_admin','program/prg-class/view'),

('programme_admin_view_only','program/prg-class/view'),

('programme_admission_admin','program/prg-class/view'),

('program_management','program/prg-course-category/create'),

('programme_admin','program/prg-course-category/create'),

('programme_admission_admin','program/prg-course-category/create'),

('program_management','program/prg-course-category/delete'),

('programme_admin','program/prg-course-category/delete'),

('programme_admission_admin','program/prg-course-category/delete'),

('program_management','program/prg-course-category/index'),

('programme_admin','program/prg-course-category/index'),

('programme_admin_view_only','program/prg-course-category/index'),

('programme_admission_admin','program/prg-course-category/index'),

('program_management','program/prg-course-category/update'),

('programme_admin','program/prg-course-category/update'),

('programme_admission_admin','program/prg-course-category/update'),

('program_management','program/prg-course-category/view'),

('programme_admin','program/prg-course-category/view'),

('programme_admin_view_only','program/prg-course-category/view'),

('programme_admission_admin','program/prg-course-category/view'),

('program_management','program/prg-course-type/create'),

('programme_admin','program/prg-course-type/create'),

('programme_admission_admin','program/prg-course-type/create'),

('program_management','program/prg-course-type/delete'),

('programme_admin','program/prg-course-type/delete'),

('programme_admission_admin','program/prg-course-type/delete'),

('program_management','program/prg-course-type/index'),

('programme_admin','program/prg-course-type/index'),

('programme_admin_view_only','program/prg-course-type/index'),

('programme_admission_admin','program/prg-course-type/index'),

('program_management','program/prg-course-type/update'),

('programme_admin','program/prg-course-type/update'),

('programme_admission_admin','program/prg-course-type/update'),

('program_management','program/prg-course-type/view'),

('programme_admin','program/prg-course-type/view'),

('programme_admin_view_only','program/prg-course-type/view'),

('programme_admission_admin','program/prg-course-type/view'),

('programme_admin','program/prg-course-unit/change-status'),

('programme_admin','program/prg-course-unit/create'),

('programme_admin','program/prg-course-unit/index'),

('programme_admin','program/prg-course-unit/index-all'),

('programme_admin','program/prg-course-unit/remove'),

('programme_admin','program/prg-course-unit/update'),

('programme_admin','program/prg-discipline/ajax-create'),

('programme_admission_admin','program/prg-discipline/ajax-create'),

('programme_admin','program/prg-discipline/ajax-create-detail'),

('programme_admission_admin','program/prg-discipline/ajax-create-detail'),

('programme_admin','program/prg-discipline/ajax-index'),

('programme_admission_admin','program/prg-discipline/ajax-index'),

('program_management','program/prg-discipline/create'),

('programme_admin','program/prg-discipline/create'),

('programme_admission_admin','program/prg-discipline/create'),

('program_management','program/prg-discipline/delete'),

('programme_admin','program/prg-discipline/delete'),

('programme_admission_admin','program/prg-discipline/delete'),

('program_management','program/prg-discipline/index'),

('programme_admin','program/prg-discipline/index'),

('programme_admin_view_only','program/prg-discipline/index'),

('programme_admission_admin','program/prg-discipline/index'),

('program_management','program/prg-discipline/update'),

('programme_admin','program/prg-discipline/update'),

('programme_admission_admin','program/prg-discipline/update'),

('program_management','program/prg-discipline/view'),

('programme_admin','program/prg-discipline/view'),

('programme_admin_view_only','program/prg-discipline/view'),

('programme_admission_admin','program/prg-discipline/view'),

('programme_admin','program/prg-fee-list-eca/approve'),

('programme_admission_admin','program/prg-fee-list-eca/approve'),

('programme_admin','program/prg-fee-list-eca/create'),

('programme_admission_admin','program/prg-fee-list-eca/create'),

('programme_admin','program/prg-fee-list-eca/discard'),

('programme_admission_admin','program/prg-fee-list-eca/discard'),

('programme_admin','program/prg-fee-list-eca/index'),

('programme_admission_admin','program/prg-fee-list-eca/index'),

('programme_admin','program/prg-fee-list-eca/view'),

('programme_admission_admin','program/prg-fee-list-eca/view'),

('programme_admin','program/prg-fee-list-sports/approve'),

('programme_admission_admin','program/prg-fee-list-sports/approve'),

('programme_admin','program/prg-fee-list-sports/create'),

('programme_admission_admin','program/prg-fee-list-sports/create'),

('programme_admin','program/prg-fee-list-sports/discard'),

('programme_admission_admin','program/prg-fee-list-sports/discard'),

('programme_admin','program/prg-fee-list-sports/index'),

('programme_admission_admin','program/prg-fee-list-sports/index'),

('programme_admin','program/prg-fee-list-sports/view'),

('programme_admission_admin','program/prg-fee-list-sports/view'),

('programme_admin','program/prg-fee-list-supernumerary/approve'),

('programme_admission_admin','program/prg-fee-list-supernumerary/approve'),

('programme_admin','program/prg-fee-list-supernumerary/create'),

('programme_admission_admin','program/prg-fee-list-supernumerary/create'),

('programme_admin','program/prg-fee-list-supernumerary/discard'),

('programme_admission_admin','program/prg-fee-list-supernumerary/discard'),

('programme_admin','program/prg-fee-list-supernumerary/index'),

('programme_admission_admin','program/prg-fee-list-supernumerary/index'),

('programme_admin','program/prg-fee-list-supernumerary/view'),

('programme_admission_admin','program/prg-fee-list-supernumerary/view'),

('programme_admin','program/prg-fee-list/create'),

('programme_admission_admin','program/prg-fee-list/create'),

('programme_admin','program/prg-fee-list/delete'),

('programme_admission_admin','program/prg-fee-list/delete'),

('programme_admin','program/prg-fee-list/generate-custom-configuration'),

('programme_admission_admin','program/prg-fee-list/generate-custom-configuration'),

('programme_admin','program/prg-fee-list/generate-default-configuration'),

('programme_admission_admin','program/prg-fee-list/generate-default-configuration'),

('programme_admin','program/prg-fee-list/index'),

('programme_admission_admin','program/prg-fee-list/index'),

('programme_admin','program/prg-fee-list/ous'),

('programme_admission_admin','program/prg-fee-list/ous'),

('programme_admin','program/prg-fee-list/update'),

('programme_admission_admin','program/prg-fee-list/update'),

('programme_admin','program/prg-fee-list/view'),

('programme_admission_admin','program/prg-fee-list/view'),

('programme_admin','program/prg-fee-rules-list/add-rule'),

('programme_admission_admin','program/prg-fee-rules-list/add-rule'),

('programme_admin','program/prg-fee-rules-list/create'),

('programme_admission_admin','program/prg-fee-rules-list/create'),

('programme_admin','program/prg-fee-rules-list/delete'),

('programme_admission_admin','program/prg-fee-rules-list/delete'),

('programme_admin','program/prg-fee-rules-list/index'),

('programme_admission_admin','program/prg-fee-rules-list/index'),

('programme_admin','program/prg-fee-rules-list/update'),

('programme_admission_admin','program/prg-fee-rules-list/update'),

('programme_admin','program/prg-fee-rules-list/update-rule'),

('programme_admission_admin','program/prg-fee-rules-list/update-rule'),

('programme_admin','program/prg-fee-rules-list/view'),

('programme_admission_admin','program/prg-fee-rules-list/view'),

('programme_admin','program/prg-fee-rules-log/create'),

('programme_admission_admin','program/prg-fee-rules-log/create'),

('programme_admin','program/prg-fee-rules-log/index'),

('programme_admission_admin','program/prg-fee-rules-log/index'),

('programme_admin','program/prg-fee-rules-log/update'),

('programme_admission_admin','program/prg-fee-rules-log/update'),

('programme_admin','program/prg-fee-rules-log/view'),

('programme_admission_admin','program/prg-fee-rules-log/view'),

('programme_admin','program/prg-fee-rules/create'),

('programme_admission_admin','program/prg-fee-rules/create'),

('programme_admin','program/prg-fee-rules/delete'),

('programme_admission_admin','program/prg-fee-rules/delete'),

('programme_admin','program/prg-fee-rules/index'),

('programme_admission_admin','program/prg-fee-rules/index'),

('programme_admin','program/prg-fee-rules/toggle'),

('programme_admission_admin','program/prg-fee-rules/toggle'),

('programme_admin','program/prg-fee-rules/update'),

('programme_admission_admin','program/prg-fee-rules/update'),

('programme_admin','program/prg-fee-rules/view'),

('programme_admission_admin','program/prg-fee-rules/view'),

('program_management','program/prg-hostel/programme-index'),

('programme_admin','program/prg-hostel/programme-index'),

('programme_admission_admin','program/prg-hostel/programme-index'),

('programme_admin','program/prg-optional-quantity/create'),

('programme_admission_admin','program/prg-optional-quantity/create'),

('programme_admin','program/prg-optional-quantity/update'),

('programme_admission_admin','program/prg-optional-quantity/update'),

('programme_admin','program/prg-reregistration-control/bulk-update'),

('programme_admission_admin','program/prg-reregistration-control/bulk-update'),

('academic_admin','program/prg-reregistration-control/create'),

('programme_admin','program/prg-reregistration-control/create'),

('programme_admission_admin','program/prg-reregistration-control/create'),

('programme_admin','program/prg-reregistration-control/delete'),

('programme_admission_admin','program/prg-reregistration-control/delete'),

('programme_admin','program/prg-reregistration-control/index'),

('programme_admission_admin','program/prg-reregistration-control/index'),

('programme_admin','program/prg-reregistration-control/programme'),

('programme_admission_admin','program/prg-reregistration-control/programme'),

('programme_admin','program/prg-reregistration-control/update'),

('programme_admission_admin','program/prg-reregistration-control/update'),

('programme_admin','program/prg-reregistration-control/view'),

('programme_admission_admin','program/prg-reregistration-control/view'),

('programme_admin','program/prg-rule-assignment/create'),

('programme_admission_admin','program/prg-rule-assignment/create'),

('programme_admin','program/prg-rule-assignment/index'),

('programme_admission_admin','program/prg-rule-assignment/index'),

('programme_admin','program/prg-rule-assignment/update'),

('programme_admission_admin','program/prg-rule-assignment/update'),

('programme_admin','program/prg-rule-assignment/view'),

('programme_admission_admin','program/prg-rule-assignment/view'),

('programme_admin','program/prg-rule/create'),

('programme_admission_admin','program/prg-rule/create'),

('programme_admin','program/prg-rule/index'),

('programme_admission_admin','program/prg-rule/index'),

('programme_admin','program/prg-rule/update'),

('programme_admission_admin','program/prg-rule/update'),

('programme_admin','program/prg-rule/view'),

('programme_admission_admin','program/prg-rule/view'),

('programme_admin','program/prg-seat-fee-log/create'),

('programme_admission_admin','program/prg-seat-fee-log/create'),

('programme_admin','program/prg-seat-fee-log/index'),

('programme_admission_admin','program/prg-seat-fee-log/index'),

('programme_admin','program/prg-seat-fee-log/update'),

('programme_admission_admin','program/prg-seat-fee-log/update'),

('programme_admin','program/prg-seat-fee-log/view'),

('programme_admission_admin','program/prg-seat-fee-log/view'),

('program_management','program/prg-student/create'),

('programme_admin','program/prg-student/create'),

('programme_admission_admin','program/prg-student/create'),

('program_management','program/prg-student/delete'),

('programme_admin','program/prg-student/delete'),

('programme_admission_admin','program/prg-student/delete'),

('program_management','program/prg-student/index'),

('programme_admin','program/prg-student/index'),

('programme_admin_view_only','program/prg-student/index'),

('programme_admission_admin','program/prg-student/index'),

('program_management','program/prg-student/update'),

('programme_admin','program/prg-student/update'),

('programme_admission_admin','program/prg-student/update'),

('program_management','program/prg-student/view'),

('programme_admin','program/prg-student/view'),

('programme_admin_view_only','program/prg-student/view'),

('programme_admission_admin','program/prg-student/view'),

('programme_admin','program/prg-term-type/create'),

('programme_admission_admin','program/prg-term-type/create'),

('programme_admin','program/prg-term-type/delete'),

('programme_admission_admin','program/prg-term-type/delete'),

('programme_admission_admin','program/prg-term-type/index'),

('programme_admission_admin','program/prg-term-type/update'),

('programme_admission_admin','program/prg-term-type/view'),

('programme_admission_admin','program/prg-time-table-rooms/admit-card'),

('programme_admission_admin','program/prg-time-table-rooms/attendance-sheet'),

('programme_admission_admin','program/prg-time-table-rooms/create'),

('programme_admission_admin','program/prg-time-table-rooms/delete'),

('programme_admission_admin','program/prg-time-table-rooms/index'),

('programme_admission_admin','program/prg-time-table-rooms/print'),

('programme_admission_admin','program/prg-time-table-rooms/printtwo'),

('programme_admission_admin','program/prg-time-table-rooms/time-table'),

('programme_admission_admin','program/prg-time-table-rooms/update'),

('programme_admission_admin','program/prg-time-table-rooms/view'),

('programme_admission_admin','program/prg-time-table-versions/create'),

('programme_admission_admin','program/prg-time-table-versions/delete'),

('programme_admission_admin','program/prg-time-table-versions/index'),

('programme_admission_admin','program/prg-time-table-versions/modal-form'),

('programme_admission_admin','program/prg-time-table-versions/update'),

('programme_admission_admin','program/prg-time-table-versions/view'),

('programme_admission_admin','program/prg-ugc-specified-degree/create'),

('programme_admission_admin','program/prg-ugc-specified-degree/delete'),

('programme_admission_admin','program/prg-ugc-specified-degree/index'),

('programme_admission_admin','program/prg-ugc-specified-degree/update'),

('programme_admission_admin','program/prg-ugc-specified-degree/view'),

('programme_admin','program/program-course-document-type/create'),

('programme_admin','program/program-course-document-type/index'),

('programme_admin','program/program-course-document-type/status'),

('programme_admin','program/program-course-document-type/update'),

('programme_admin','program/program-course-document-type/view'),

('programme_admin','program/program-course-document/create'),

('programme_admin','program/program-course-document/index'),

('programme_admin','program/program-course-document/index-all'),

('programme_admin','program/program-course-document/status'),

('programme_admin','program/program-course-document/update'),

('programme_admin','program/program-course-evaluator/create'),

('programme_admin','program/program-course-evaluator/get-evaluator'),

('programme_admin','program/program-course-evaluator/index'),

('programme_admin','program/program-course-evaluator/index-all'),

('programme_admin','program/program-course-evaluator/remove'),

('programme_admin','program/program-course-evaluator/status'),

('programme_admin','program/program-curriculum-version/create'),

('programme_admission_admin','program/program-curriculum-version/create'),

('programme_admin','program/program-curriculum-version/delete'),

('programme_admission_admin','program/program-curriculum-version/delete'),

('programme_admission_admin','program/program-curriculum-version/index'),

('programme_admission_admin','program/program-curriculum-version/update'),

('programme_admission_admin','program/program-curriculum-version/view'),

('programme_admin','program/program-discipline-map/create'),

('programme_admin','program/program-discipline-map/index'),

('program_management','program/program-discipline/create'),

('programme_admin','program/program-discipline/create'),

('programme_admission_admin','program/program-discipline/create'),

('program_management','program/program-discipline/delete'),

('programme_admin','program/program-discipline/delete'),

('programme_admission_admin','program/program-discipline/delete'),

('program_management','program/program-discipline/disciplines'),

('programme_admin','program/program-discipline/disciplines'),

('programme_admin_view_only','program/program-discipline/disciplines'),

('programme_admission_admin','program/program-discipline/disciplines'),

('program_management','program/program-discipline/index'),

('programme_admin','program/program-discipline/index'),

('programme_admin_view_only','program/program-discipline/index'),

('programme_admission_admin','program/program-discipline/index'),

('affiliation_admin','program/program-discipline/programs'),

('program_management','program/program-discipline/programs'),

('programme_admin','program/program-discipline/programs'),

('programme_admin_view_only','program/program-discipline/programs'),

('programme_admission_admin','program/program-discipline/programs'),

('affiliation_admin','program/program-discipline/update'),

('program_management','program/program-discipline/update'),

('programme_admin','program/program-discipline/update'),

('programme_admission_admin','program/program-discipline/update'),

('affiliation_admin','program/program-discipline/view'),

('program_management','program/program-discipline/view'),

('programme_admin','program/program-discipline/view'),

('programme_admin_view_only','program/program-discipline/view'),

('programme_admission_admin','program/program-discipline/view'),

('affiliation_admin','program/program-disciplines/discipline'),

('program_management','program/program-disciplines/discipline'),

('programme_admin','program/program-disciplines/discipline'),

('programme_admin_view_only','program/program-disciplines/discipline'),

('programme_admission_admin','program/program-disciplines/discipline'),

('program_management','program/program-eligibility-criteria/create'),

('programme_admin','program/program-eligibility-criteria/create'),

('programme_admission_admin','program/program-eligibility-criteria/create'),

('program_management','program/program-eligibility-criteria/delete'),

('programme_admin','program/program-eligibility-criteria/delete'),

('programme_admission_admin','program/program-eligibility-criteria/delete'),

('program_management','program/program-eligibility-criteria/index'),

('programme_admin','program/program-eligibility-criteria/index'),

('programme_admin_view_only','program/program-eligibility-criteria/index'),

('programme_admission_admin','program/program-eligibility-criteria/index'),

('program_management','program/program-eligibility-criteria/update'),

('programme_admin','program/program-eligibility-criteria/update'),

('programme_admission_admin','program/program-eligibility-criteria/update'),

('program_management','program/program-eligibility-criteria/view'),

('programme_admin','program/program-eligibility-criteria/view'),

('programme_admin_view_only','program/program-eligibility-criteria/view'),

('programme_admission_admin','program/program-eligibility-criteria/view'),

('program_management','program/program-level/create'),

('programme_admin','program/program-level/create'),

('programme_admission_admin','program/program-level/create'),

('program_management','program/program-level/delete'),

('programme_admin','program/program-level/delete'),

('programme_admission_admin','program/program-level/delete'),

('program_management','program/program-level/index'),

('programme_admin','program/program-level/index'),

('programme_admin_view_only','program/program-level/index'),

('programme_admission_admin','program/program-level/index'),

('program_management','program/program-level/update'),

('programme_admin','program/program-level/update'),

('programme_admission_admin','program/program-level/update'),

('program_management','program/program-level/view'),

('programme_admin','program/program-level/view'),

('programme_admin_view_only','program/program-level/view'),

('programme_admission_admin','program/program-level/view'),

('program_management','program/program-masters/create'),

('programme_admin','program/program-masters/create'),

('programme_admission_admin','program/program-masters/create'),

('program_management','program/program-masters/delete'),

('programme_admin','program/program-masters/delete'),

('programme_admission_admin','program/program-masters/delete'),

('program_management','program/program-masters/get-program-detail'),

('programme_admin','program/program-masters/get-program-detail'),

('programme_admin_view_only','program/program-masters/get-program-detail'),

('programme_admission_admin','program/program-masters/get-program-detail'),

('program_management','program/program-masters/index'),

('programme_admin','program/program-masters/index'),

('programme_admin_view_only','program/program-masters/index'),

('programme_admission_admin','program/program-masters/index'),

('program_management','program/program-masters/update'),

('programme_admin','program/program-masters/update'),

('programme_admission_admin','program/program-masters/update'),

('program_management','program/program-masters/view'),

('programme_admin','program/program-masters/view'),

('programme_admin_view_only','program/program-masters/view'),

('programme_admission_admin','program/program-masters/view'),

('program_management','program/program-scheme/create'),

('programme_admin','program/program-scheme/create'),

('programme_admission_admin','program/program-scheme/create'),

('program_management','program/program-scheme/delete'),

('programme_admin','program/program-scheme/delete'),

('programme_admission_admin','program/program-scheme/delete'),

('program_management','program/program-scheme/index'),

('programme_admin','program/program-scheme/index'),

('programme_admin_view_only','program/program-scheme/index'),

('programme_admission_admin','program/program-scheme/index'),

('program_management','program/program-scheme/update'),

('programme_admin','program/program-scheme/update'),

('programme_admission_admin','program/program-scheme/update'),

('program_management','program/program-scheme/view'),

('programme_admin','program/program-scheme/view'),

('programme_admin_view_only','program/program-scheme/view'),

('programme_admission_admin','program/program-scheme/view'),

('program_management','program/program-stream/create'),

('programme_admin','program/program-stream/create'),

('programme_admission_admin','program/program-stream/create'),

('program_management','program/program-stream/delete'),

('programme_admin','program/program-stream/delete'),

('programme_admission_admin','program/program-stream/delete'),

('program_management','program/program-stream/index'),

('programme_admin','program/program-stream/index'),

('programme_admin_view_only','program/program-stream/index'),

('programme_admission_admin','program/program-stream/index'),

('program_management','program/program-stream/update'),

('programme_admin','program/program-stream/update'),

('programme_admission_admin','program/program-stream/update'),

('program_management','program/program-stream/view'),

('programme_admin','program/program-stream/view'),

('programme_admin_view_only','program/program-stream/view'),

('programme_admission_admin','program/program-stream/view'),

('program_management','program/program-type/create'),

('programme_admin','program/program-type/create'),

('programme_admission_admin','program/program-type/create'),

('program_management','program/program-type/delete'),

('programme_admin','program/program-type/delete'),

('programme_admission_admin','program/program-type/delete'),

('program_management','program/program-type/index'),

('programme_admin','program/program-type/index'),

('programme_admin_view_only','program/program-type/index'),

('programme_admission_admin','program/program-type/index'),

('program_management','program/program-type/update'),

('programme_admin','program/program-type/update'),

('programme_admission_admin','program/program-type/update'),

('program_management','program/program-type/view'),

('programme_admin','program/program-type/view'),

('programme_admin_view_only','program/program-type/view'),

('programme_admission_admin','program/program-type/view'),

('program_management','program/program/create'),

('programme_admin','program/program/create'),

('programme_admission_admin','program/program/create'),

('program_management','program/program/delete'),

('programme_admin','program/program/delete'),

('programme_admission_admin','program/program/delete'),

('program_management','program/program/index'),

('programme_admin','program/program/index'),

('programme_admin_view_only','program/program/index'),

('programme_admission_admin','program/program/index'),

('program_management','program/program/update'),

('programme_admin','program/program/update'),

('programme_admission_admin','program/program/update'),

('program_management','program/program/view'),

('programme_admin','program/program/view'),

('programme_admin_view_only','program/program/view'),

('programme_admission_admin','program/program/view'),

('programme_admin','program/programme-course-group/create'),

('programme_admin','program/programme-course-group/delete'),

('programme_admin','program/programme-course-group/delete-course'),

('programme_admin','program/programme-course-group/edit'),

('programme_admin','program/programme-course-group/structure-create'),

('programme_admin','program/programme-default-ou/ajax-create'),

('programme_admission_admin','program/programme-default-ou/ajax-create'),

('program_management','program/programme-default-ou/ajax-submit'),

('programme_admin','program/programme-default-ou/ajax-submit'),

('programme_admission_admin','program/programme-default-ou/ajax-submit'),

('programme_admin','program/programme-default-ou/ajax-submit-create'),

('programme_admission_admin','program/programme-default-ou/ajax-submit-create'),

('programme_admin','program/programme-default-ou/ajax-update'),

('programme_admission_admin','program/programme-default-ou/ajax-update'),

('programme_admin','program/programme-default-ou/create'),

('programme_admission_admin','program/programme-default-ou/create'),

('programme_admin','program/programme-default-ou/delete'),

('programme_admission_admin','program/programme-default-ou/delete'),

('programme_admission_admin','program/programme-default-ou/index'),

('programme_admission_admin','program/programme-default-ou/program'),

('programme_admission_admin','program/programme-default-ou/programme'),

('programme_admission_admin','program/programme-default-ou/update'),

('programme_admission_admin','program/programme-default-ou/view'),

('programme_admission_admin','program/programme-docs/create'),

('programme_admission_admin','program/programme-docs/delete'),

('programme_admission_admin','program/programme-docs/index'),

('programme_admin','program/programme-docs/programme'),

('programme_admission_admin','program/programme-docs/programme'),

('programme_admin','program/programme-docs/update'),

('programme_admission_admin','program/programme-docs/update'),

('programme_admission_admin','program/programme-docs/view'),

('programme_admin','program/programme-ous/create'),

('programme_admission_admin','program/programme-ous/create'),

('rsd_admin','program/programme-ous/create'),

('rsd_admin','program/programme-ous/create-multiple'),

('programme_admission_admin','program/programme-ous/delete'),

('rsd_admin','program/programme-ous/delete'),

('programme_admission_admin','program/programme-ous/index'),

('rsd_admin','program/programme-ous/index'),

('rsd_admin','program/programme-ous/index-programme'),

('programme_admission_admin','program/programme-ous/ous'),

('rsd_admin','program/programme-ous/ous'),

('programme_admission_admin','program/programme-ous/programme'),

('rsd_admin','program/programme-ous/programme'),

('odl_admission_admin','program/programme-ous/update'),

('programme_admin','program/programme-ous/update'),

('programme_admission_admin','program/programme-ous/update'),

('programme_ou_specific_role','program/programme-ous/update'),

('rsd_admin','program/programme-ous/update'),

('odl_admission_admin','program/programme-ous/update/admin'),

('programme_admission_admin','program/programme-ous/view'),

('rsd_admin','program/programme-ous/view'),

('programme_admission_admin','program/programme-qualification-list/create'),

('programme_admission_admin','program/programme-qualification-list/index'),

('programme_admission_admin','program/programme-qualification-list/programme'),

('program_management','program/programme-qualification-list/update'),

('programme_admin','program/programme-qualification-list/update'),

('programme_admission_admin','program/programme-qualification-list/update'),

('programme_admission_admin','program/programme-qualification-list/view'),

('programme_admin','program/programme-qualification-map/create'),

('programme_admission_admin','program/programme-qualification-map/create'),

('programme_admission_admin','program/programme-qualification-map/delete'),

('programme_admin','program/programme-qualification-map/index'),

('programme_admission_admin','program/programme-qualification-map/index'),

('programme_admission_admin','program/programme-qualification-map/update'),

('programme_admission_admin','program/programme-qualification-map/view'),

('programme_admission_admin','program/programme-seat-fee/add-course'),

('programme_admin','program/programme-seat-fee/add-term-fee'),

('programme_admission_admin','program/programme-seat-fee/add-term-fee'),

('programme_admission_admin','program/programme-seat-fee/approve'),

('programme_admission_admin','program/programme-seat-fee/check-ou-applicable'),

('programme_admission_admin','program/programme-seat-fee/colcourse'),

('programme_admission_admin','program/programme-seat-fee/copy'),

('programme_admission_admin','program/programme-seat-fee/create'),

('programme_admission_admin','program/programme-seat-fee/create-fee'),

('programme_admission_admin','program/programme-seat-fee/create1'),

('programme_admission_admin','program/programme-seat-fee/edit'),

('programme_admission_admin','program/programme-seat-fee/edit-fee'),

('programme_admission_admin','program/programme-seat-fee/edit-term'),

('programme_admission_admin','program/programme-seat-fee/edit-term-fee'),

('programme_admission_admin','program/programme-seat-fee/fee-calculate'),

('programme_admission_admin','program/programme-seat-fee/get-fee'),

('programme_admission_admin','program/programme-seat-fee/index2'),

('programme_admission_admin','program/programme-seat-fee/list'),

('programme_admission_admin','program/programme-seat-fee/ous'),

('programme_admission_admin','program/programme-seat-fee/save-fee-multiple'),

('programme_admission_admin','program/programme-seat-fee/term-edit'),

('programme_admission_admin','program/programme-seat-fee/university-department-index'),

('programme_admin','program/programme-seat-fee/update'),

('programme_admission_admin','program/programme-seat-fee/update'),

('programme_admission_admin','program/programme-seat-fee/update-fee-multiple'),

('programme_admission_admin','program/programme-seat-fee/update-v3'),

('programme_admission_admin','program/programme-seat-fee/update1'),

('programme_admission_admin','program/programme-seat-fee/view'),

('programme_admission_admin','program/programme-seat-fee/view-new'),

('programme_admission_admin','program/programme-structure/create'),

('programme_admission_admin','program/programme-structure/get-courses'),

('programme_admission_admin','program/programme-structure/get-discipline'),

('programme_admission_admin','program/programme-structure/index'),

('programme_admission_admin','program/programme-structure/programme'),

('programme_admission_admin','program/programme-structure/programme-all'),

('programme_admission_admin','program/programme-structure/programme-new'),

('programme_admin','program/programme-structure/programme-update'),

('programme_admission_admin','program/programme-structure/structure'),

('programme_admission_admin','program/programme-structure/structure-create'),

('programme_admission_admin','program/programme-structure/structure-update'),

('programme_admission_admin','program/programme-structure/structure-view'),

('programme_admission_admin','program/programme-structure/update'),

('programme_admission_admin','program/programme-structure/view'),

('programme_admin','program/programme-term/create'),

('programme_admission_admin','program/programme-term/create'),

('programme_admission_admin','program/programme-term/delete'),

('programme_admission_admin','program/programme-term/index'),

('programme_admission_admin','program/programme-term/programme'),

('programme_admission_admin','program/programme-term/update'),

('programme_admission_admin','program/programme-term/view'),

('programme_admin','program/programme-uploads-map/index'),

('program_management','program/programs/create'),

('programme_admin','program/programs/create'),

('programme_admission_admin','program/programs/create'),

('program_management','program/programs/delete'),

('programme_admin','program/programs/delete'),

('programme_admission_admin','program/programs/delete'),

('program_management','program/programs/index'),

('programme_admin','program/programs/index'),

('programme_admin_view_only','program/programs/index'),

('programme_admission_admin','program/programs/index'),

('program_management','program/programs/update'),

('programme_admin','program/programs/update'),

('programme_admission_admin','program/programs/update'),

('program_management','program/programs/view'),

('programme_admin','program/programs/view'),

('programme_admin_view_only','program/programs/view'),

('programme_admission_admin','program/programs/view'),

('program_management','program/session-program/create'),

('programme_admin','program/session-program/create'),

('programme_admission_admin','program/session-program/create'),

('program_management','program/session-program/delete'),

('programme_admin','program/session-program/delete'),

('programme_admission_admin','program/session-program/delete'),

('program_management','program/session-program/index'),

('programme_admin','program/session-program/index'),

('programme_admin_view_only','program/session-program/index'),

('programme_admission_admin','program/session-program/index'),

('program_management','program/session-program/seat-update'),

('programme_admin','program/session-program/seat-update'),

('programme_admission_admin','program/session-program/seat-update'),

('program_management','program/session-program/update'),

('programme_admin','program/session-program/update'),

('programme_admission_admin','program/session-program/update'),

('program_management','program/session-program/update-v2'),

('programme_admin','program/session-program/update-v2'),

('programme_admission_admin','program/session-program/update-v2'),

('program_management','program/session-program/view'),

('programme_admin','program/session-program/view'),

('programme_admin_view_only','program/session-program/view'),

('programme_admission_admin','program/session-program/view'),

('program_management','program/session-program/view-seats'),

('programme_admin','program/session-program/view-seats'),

('programme_admin_view_only','program/session-program/view-seats'),

('programme_admission_admin','program/session-program/view-seats'),

('program_management','program/session/create'),

('programme_admin','program/session/create'),

('programme_admission_admin','program/session/create'),

('program_management','program/session/delete'),

('programme_admin','program/session/delete'),

('programme_admission_admin','program/session/delete'),

('program_management','program/session/index'),

('programme_admin','program/session/index'),

('programme_admin_view_only','program/session/index'),

('programme_admission_admin','program/session/index'),

('program_management','program/session/update'),

('programme_admin','program/session/update'),

('programme_admission_admin','program/session/update'),

('program_management','program/session/view'),

('programme_admin','program/session/view'),

('programme_admin_view_only','program/session/view'),

('programme_admission_admin','program/session/view'),

('programme_admission_admin','program/settings/advanced-settings'),

('program_management','program/settings/index'),

('programme_admin','program/settings/index'),

('programme_admin_view_only','program/settings/index'),

('programme_admission_admin','program/settings/index'),

('program_management','program/settings/ou'),

('programme_admin','program/settings/ou'),

('programme_admin_view_only','program/settings/ou'),

('programme_admission_admin','program/settings/ou'),

('programme_admission_admin','program/sports-adm-category/create'),

('programme_admission_admin','program/sports-adm-category/delete'),

('programme_admission_admin','program/sports-adm-category/index'),

('programme_admission_admin','program/sports-adm-category/update'),

('programme_admission_admin','program/sports-adm-category/view'),

('program_management','program/ugc-specified-degree/create'),

('programme_admin','program/ugc-specified-degree/create'),

('programme_admission_admin','program/ugc-specified-degree/create'),

('program_management','program/ugc-specified-degree/delete'),

('programme_admin','program/ugc-specified-degree/delete'),

('programme_admission_admin','program/ugc-specified-degree/delete'),

('programme_admission_admin','program/ugc-specified-degree/get-program-detail'),

('program_admin','program/ugc-specified-degree/index'),

('program_management','program/ugc-specified-degree/index'),

('programme_admin','program/ugc-specified-degree/index'),

('programme_admin_view_only','program/ugc-specified-degree/index'),

('programme_admission_admin','program/ugc-specified-degree/index'),

('program_management','program/ugc-specified-degree/update'),

('programme_admin','program/ugc-specified-degree/update'),

('programme_admission_admin','program/ugc-specified-degree/update'),

('program_management','program/ugc-specified-degree/view'),

('programme_admin','program/ugc-specified-degree/view'),

('programme_admin_view_only','program/ugc-specified-degree/view'),

('programme_admission_admin','program/ugc-specified-degree/view'),

('admin','programme_admin'),

('program_management','programme_admin'),

('admin','programme_admission_admin'),

('program_management','programme_admission_admin'),

('programme_admin','programme_admission_admin'),

('programme_admin','programme-course-group/structure-create'),

('grievance_admin_staff','public_grievance/grievance-meeting/cancel'),

('grievance_admin_student','public_grievance/grievance-meeting/cancel'),

('grievance_admin_staff','public_grievance/grievance-meeting/create'),

('grievance_admin_student','public_grievance/grievance-meeting/create'),

('grievance_admin_staff','public_grievance/grievance-meeting/index'),

('grievance_admin_student','public_grievance/grievance-meeting/index'),

('grievance_admin_staff','public_grievance/grievance-meeting/meeting-minutes'),

('grievance_admin_student','public_grievance/grievance-meeting/meeting-minutes'),

('grievance_admin_staff','public_grievance/grievance-meeting/update'),

('grievance_admin_student','public_grievance/grievance-meeting/update'),

('grievance_admin_staff','public_grievance/grievance-meeting/view'),

('grievance_admin_student','public_grievance/grievance-meeting/view'),

('grievance_admin_staff','public_grievance/grievance-notes/create'),

('grievance_admin_student','public_grievance/grievance-notes/create'),

('grievance_admin_staff','public_grievance/grievance-notes/index'),

('grievance_admin_student','public_grievance/grievance-notes/index'),

('grievance_admin_staff','public_grievance/grievance-notes/resolution'),

('grievance_admin_student','public_grievance/grievance-notes/resolution'),

('grievance_admin_staff','public_grievance/grievance-notes/view'),

('grievance_admin_student','public_grievance/grievance-notes/view'),

('grievance_admin_staff','public_grievance/grievance-public/view'),

('grievance_admin_student','public_grievance/grievance-public/view'),

('admin','rbac_admin'),

('nonteaching_recruitment_admin','recruitment/nonteaching/advertisement/create'),

('nonteaching_recruitment_admin','recruitment/nonteaching/advertisement/index'),

('nonteaching_recruitment_admin','recruitment/nonteaching/advertisement/update'),

('nonteaching_recruitment_admin','recruitment/nonteaching/advertisement/view'),

('nonteaching_recruitment_admin','recruitment/nonteaching/all-application'),

('nonteaching_recruitment_admin','recruitment/nonteaching/app/dashboard'),

('nonteaching_recruitment_screening','recruitment/nonteaching/app/dashboard-department'),

('nonteaching_recruitment_admin','recruitment/nonteaching/app/settings'),

('nonteaching_recruitment_admin','recruitment/nonteaching/application-control/create'),

('nonteaching_recruitment_admin','recruitment/nonteaching/application-control/index'),

('nonteaching_recruitment_admin','recruitment/nonteaching/application-control/update'),

('nonteaching_recruitment_admin','recruitment/nonteaching/application-control/view'),

('nonteaching_recruitment_admin','recruitment/nonteaching/candidates/index'),

('nonteaching_recruitment_admin','recruitment/nonteaching/candidates/registration-mail'),

('nonteaching_recruitment_admin','recruitment/nonteaching/department/add'),

('nonteaching_recruitment_admin','recruitment/nonteaching/department/index'),

('nonteaching_recruitment_admin','recruitment/nonteaching/department/update'),

('nonteaching_recruitment_admin','recruitment/nonteaching/entrance/entrance-admitcard/attendance-sheet'),

('nonteaching_recruitment_admin','recruitment/nonteaching/entrance/entrance-admitcard/generate'),

('nonteaching_recruitment_admin','recruitment/nonteaching/entrance/entrance-admitcard/index'),

('nonteaching_recruitment_admin','recruitment/nonteaching/entrance/entrance-admitcard/print'),

('nonteaching_recruitment_admin','recruitment/nonteaching/entrance/entrance-admitcard/print-letter'),

('nonteaching_recruitment_admin','recruitment/nonteaching/entrance/entrance-admitcard/release'),

('nonteaching_recruitment_admin','recruitment/nonteaching/entrance/entrance-admitcard/summary'),

('nonteaching_recruitment_admin','recruitment/nonteaching/entrance/entrance-centers/create'),

('nonteaching_recruitment_admin','recruitment/nonteaching/entrance/entrance-centers/index'),

('nonteaching_recruitment_admin','recruitment/nonteaching/entrance/entrance-centers/update'),

('nonteaching_recruitment_admin','recruitment/nonteaching/entrance/entrance-centers/view'),

('nonteaching_recruitment_admin','recruitment/nonteaching/entrance/entrance-instructions/create'),

('nonteaching_recruitment_admin','recruitment/nonteaching/entrance/entrance-instructions/index'),

('nonteaching_recruitment_admin','recruitment/nonteaching/entrance/entrance-instructions/update'),

('nonteaching_recruitment_admin','recruitment/nonteaching/entrance/entrance-instructions/view'),

('nonteaching_recruitment_admin','recruitment/nonteaching/entrance/entrance-schedule/create'),

('nonteaching_recruitment_admin','recruitment/nonteaching/entrance/entrance-schedule/update'),

('nonteaching_recruitment_admin','recruitment/nonteaching/entrance/entrance-schedule/view'),

('nonteaching_recruitment_admin','recruitment/nonteaching/form/all-applications'),

('nonteaching_recruitment_admin','recruitment/nonteaching/form/application'),

('nonteaching_recruitment_screening','recruitment/nonteaching/form/application'),

('nonteaching_recruitment_admin','recruitment/nonteaching/form/change-status'),

('nonteaching_recruitment_admin','recruitment/nonteaching/form/index'),

('nonteaching_recruitment_admin','recruitment/nonteaching/form/inprocess-application'),

('nonteaching_recruitment_screening','recruitment/nonteaching/form/inprocess-application'),

('nonteaching_recruitment_admin','recruitment/nonteaching/form/paid-application'),

('nonteaching_recruitment_screening','recruitment/nonteaching/form/paid-application'),

('nonteaching_recruitment_admin','recruitment/nonteaching/form/post'),

('nonteaching_recruitment_screening','recruitment/nonteaching/form/post'),

('nonteaching_recruitment_admin','recruitment/nonteaching/form/print-form'),

('nonteaching_recruitment_screening','recruitment/nonteaching/form/print-form'),

('nonteaching_recruitment_admin','recruitment/nonteaching/form/report'),

('nonteaching_recruitment_screening','recruitment/nonteaching/form/report'),

('nonteaching_recruitment_admin','recruitment/nonteaching/form/shortlist'),

('nonteaching_recruitment_screening','recruitment/nonteaching/form/shortlist'),

('nonteaching_recruitment_admin','recruitment/nonteaching/form/shortlisted-applicants'),

('nonteaching_recruitment_screening','recruitment/nonteaching/form/shortlisted-applicants'),

('nonteaching_recruitment_admin','recruitment/nonteaching/form/summary'),

('nonteaching_recruitment_screening','recruitment/nonteaching/form/summary'),

('nonteaching_recruitment_admin','recruitment/nonteaching/form/view'),

('nonteaching_recruitment_screening','recruitment/nonteaching/form/view'),

('nonteaching_recruitment_admin','recruitment/nonteaching/job-config/create'),

('nonteaching_recruitment_admin','recruitment/nonteaching/job-config/create-all'),

('nonteaching_recruitment_admin','recruitment/nonteaching/job-config/index'),

('nonteaching_recruitment_admin','recruitment/nonteaching/job-config/update'),

('nonteaching_recruitment_admin','recruitment/nonteaching/job-config/update-fees'),

('nonteaching_recruitment_admin','recruitment/nonteaching/jobpost/change-show-screening'),

('nonteaching_recruitment_admin','recruitment/nonteaching/jobpost/change-show-status'),

('nonteaching_recruitment_admin','recruitment/nonteaching/jobpost/change-status'),

('nonteaching_recruitment_admin','recruitment/nonteaching/jobpost/create'),

('nonteaching_recruitment_admin','recruitment/nonteaching/jobpost/index'),

('nonteaching_recruitment_admin','recruitment/nonteaching/jobpost/setting'),

('nonteaching_recruitment_admin','recruitment/nonteaching/jobpost/stat'),

('nonteaching_recruitment_admin','recruitment/nonteaching/jobpost/update'),

('nonteaching_recruitment_admin','recruitment/nonteaching/jobpost/view'),

('nonteaching_recruitment_screening','recruitment/nonteaching/jobpost/view'),

('nonteaching_recruitment_admin','recruitment/nonteaching/profile/change-status'),

('nonteaching_recruitment_screening','recruitment/nonteaching/profile/change-status'),

('nonteaching_recruitment_admin','recruitment/nonteaching/profile/finish-screening-otp'),

('nonteaching_recruitment_screening','recruitment/nonteaching/profile/finish-screening-otp'),

('nonteaching_recruitment_admin','recruitment/nonteaching/profile/index'),

('nonteaching_recruitment_screening','recruitment/nonteaching/profile/index'),

('nonteaching_recruitment_admin','recruitment/nonteaching/profile/save'),

('nonteaching_recruitment_screening','recruitment/nonteaching/profile/save'),

('teaching_recruitment_admin','recruitment/teaching/academic/form'),

('teaching_recruitment_screening','recruitment/teaching/academic/form'),

('teaching_recruitment_admin','recruitment/teaching/academic/save'),

('teaching_recruitment_screening','recruitment/teaching/academic/save'),

('teaching_recruitment_admin','recruitment/teaching/academic/view'),

('teaching_recruitment_screening','recruitment/teaching/academic/view'),

('teaching_recruitment_admin','recruitment/teaching/advertisement/create'),

('teaching_screening_special_admin','recruitment/teaching/advertisement/create'),

('teaching_recruitment_admin','recruitment/teaching/advertisement/index'),

('teaching_screening_special_admin','recruitment/teaching/advertisement/index'),

('teaching_recruitment_admin','recruitment/teaching/advertisement/update'),

('teaching_screening_special_admin','recruitment/teaching/advertisement/update'),

('teaching_recruitment_admin','recruitment/teaching/advertisement/view'),

('teaching_recruitment_admin','recruitment/teaching/all-application'),

('teaching_recruitment_admin','recruitment/teaching/app/dashboard'),

('nonteaching_recruitment_screening','recruitment/teaching/app/dashboard-department'),

('teaching_recruitment_admin','recruitment/teaching/app/dashboard-department'),

('teaching_recruitment_screening','recruitment/teaching/app/dashboard-department'),

('teaching_recruitment_admin','recruitment/teaching/app/settings'),

('teaching_screening_special_admin','recruitment/teaching/app/settings'),

('teaching_recruitment_admin','recruitment/teaching/application-control/create'),

('teaching_screening_special_admin','recruitment/teaching/application-control/create'),

('teaching_recruitment_admin','recruitment/teaching/application-control/index'),

('teaching_screening_special_admin','recruitment/teaching/application-control/index'),

('teaching_recruitment_admin','recruitment/teaching/application-control/update'),

('teaching_recruitment_screening','recruitment/teaching/application-control/update'),

('teaching_screening_special_admin','recruitment/teaching/application-control/update'),

('teaching_recruitment_admin','recruitment/teaching/application-control/view'),

('teaching_recruitment_screening','recruitment/teaching/application-control/view'),

('teaching_recruitment_admin','recruitment/teaching/attendance'),

('teaching_recruitment_admin','recruitment/teaching/candidates/index'),

('teaching_recruitment_admin','recruitment/teaching/candidates/registration-mail'),

('teaching_recruitment_admin','recruitment/teaching/department/add'),

('teaching_recruitment_admin','recruitment/teaching/department/index'),

('teaching_recruitment_admin','recruitment/teaching/department/update'),

('teaching_recruitment_admin','recruitment/teaching/elearning/save'),

('teaching_recruitment_screening','recruitment/teaching/elearning/save'),

('admin','recruitment/teaching/entrance/default/conduct'),

('teaching_recruitment_admin','recruitment/teaching/entrance/default/conduct'),

('admin','recruitment/teaching/entrance/entrance-centers/create'),

('teaching_recruitment_admin','recruitment/teaching/entrance/entrance-centers/create'),

('admin','recruitment/teaching/entrance/entrance-instructions/create'),

('teaching_recruitment_admin','recruitment/teaching/entrance/entrance-instructions/create'),

('admin','recruitment/teaching/entrance/entrance-schedule/create'),

('teaching_recruitment_admin','recruitment/teaching/entrance/entrance-schedule/create'),

('teaching_recruitment_admin','recruitment/teaching/form/all-applications'),

('teaching_recruitment_screening','recruitment/teaching/form/all-applications'),

('teaching_recruitment_admin','recruitment/teaching/form/application'),

('teaching_recruitment_screening','recruitment/teaching/form/application'),

('teaching_recruitment_admin','recruitment/teaching/form/change-status'),

('teaching_recruitment_screening','recruitment/teaching/form/change-status'),

('teaching_screening_special_admin','recruitment/teaching/form/change-status'),

('teaching_recruitment_admin','recruitment/teaching/form/getajaxmailcount'),

('teaching_recruitment_screening','recruitment/teaching/form/getajaxmailcount'),

('teaching_recruitment_admin','recruitment/teaching/form/index'),

('affiliation_admin','recruitment/teaching/form/inprocess-application'),

('teaching_recruitment_admin','recruitment/teaching/form/inprocess-application'),

('teaching_recruitment_screening','recruitment/teaching/form/inprocess-application'),

('teaching_recruitment_admin','recruitment/teaching/form/mark'),

('teaching_recruitment_admin','recruitment/teaching/form/paid-application'),

('teaching_recruitment_screening','recruitment/teaching/form/paid-application'),

('teaching_recruitment_admin','recruitment/teaching/form/post'),

('teaching_recruitment_screening','recruitment/teaching/form/post'),

('teaching_recruitment_admin','recruitment/teaching/form/print-bulk'),

('teaching_recruitment_screening','recruitment/teaching/form/print-bulk'),

('teaching_recruitment_admin','recruitment/teaching/form/print-form'),

('teaching_recruitment_screening','recruitment/teaching/form/print-form'),

('teaching_recruitment_admin','recruitment/teaching/form/print-shortlisted-applicants'),

('teaching_recruitment_screening','recruitment/teaching/form/print-shortlisted-applicants'),

('teaching_recruitment_admin','recruitment/teaching/form/print-summary'),

('teaching_recruitment_screening','recruitment/teaching/form/print-summary'),

('teaching_recruitment_admin','recruitment/teaching/form/print-summary-option'),

('teaching_recruitment_screening','recruitment/teaching/form/print-summary-option'),

('teaching_recruitment_admin','recruitment/teaching/form/report'),

('teaching_recruitment_screening','recruitment/teaching/form/report'),

('teaching_recruitment_admin','recruitment/teaching/form/shortlist'),

('teaching_recruitment_screening','recruitment/teaching/form/shortlist'),

('teaching_recruitment_admin','recruitment/teaching/form/shortlisted-applicants'),

('teaching_recruitment_screening','recruitment/teaching/form/shortlisted-applicants'),

('teaching_recruitment_admin','recruitment/teaching/form/summary'),

('teaching_recruitment_screening','recruitment/teaching/form/summary'),

('teaching_recruitment_admin','recruitment/teaching/form/suspend-ajax'),

('teaching_recruitment_screening','recruitment/teaching/form/suspend-ajax'),

('teaching_screening_special_admin','recruitment/teaching/form/suspend-ajax'),

('teaching_recruitment_admin','recruitment/teaching/form/view'),

('teaching_recruitment_screening','recruitment/teaching/form/view'),

('teaching_recruitment_admin','recruitment/teaching/invitedlecture/save'),

('teaching_recruitment_screening','recruitment/teaching/invitedlecture/save'),

('teaching_recruitment_admin','recruitment/teaching/job-config/create'),

('teaching_screening_special_admin','recruitment/teaching/job-config/create'),

('teaching_recruitment_admin','recruitment/teaching/job-config/create-all'),

('teaching_recruitment_admin','recruitment/teaching/job-config/index'),

('teaching_screening_special_admin','recruitment/teaching/job-config/index'),

('teaching_recruitment_admin','recruitment/teaching/job-config/update'),

('teaching_screening_special_admin','recruitment/teaching/job-config/update'),

('teaching_recruitment_admin','recruitment/teaching/job-config/update-fees'),

('teaching_screening_special_admin','recruitment/teaching/job-config/update-fees'),

('teaching_recruitment_admin','recruitment/teaching/job-config/view'),

('teaching_recruitment_admin','recruitment/teaching/job-config/view-fees'),

('teaching_recruitment_admin','recruitment/teaching/job-config/view-job'),

('teaching_recruitment_admin','recruitment/teaching/jobpost/change-show-screening'),

('teaching_recruitment_admin','recruitment/teaching/jobpost/change-show-status'),

('teaching_recruitment_admin','recruitment/teaching/jobpost/change-status'),

('teaching_recruitment_admin','recruitment/teaching/jobpost/create'),

('teaching_recruitment_admin','recruitment/teaching/jobpost/index'),

('teaching_recruitment_admin','recruitment/teaching/jobpost/setting'),

('teaching_recruitment_admin','recruitment/teaching/jobpost/stat'),

('teaching_recruitment_admin','recruitment/teaching/jobpost/update'),

('teaching_recruitment_admin','recruitment/teaching/jobpost/view'),

('teaching_recruitment_screening','recruitment/teaching/jobpost/view'),

('teaching_recruitment_admin','recruitment/teaching/profile/change-status'),

('teaching_recruitment_admin','recruitment/teaching/profile/finish-screening-otp'),

('teaching_recruitment_admin','recruitment/teaching/profile/index'),

('teaching_recruitment_admin','recruitment/teaching/profile/save'),

('teaching_recruitment_admin','recruitment/teaching/projectoutput/save'),

('teaching_recruitment_screening','recruitment/teaching/projectoutput/save'),

('teaching_recruitment_admin','recruitment/teaching/report-interview'),

('teaching_recruitment_admin','recruitment/teaching/researcharticle/index'),

('teaching_recruitment_screening','recruitment/teaching/researcharticle/index'),

('teaching_recruitment_admin','recruitment/teaching/researcharticle/save'),

('teaching_recruitment_screening','recruitment/teaching/researcharticle/save'),

('teaching_recruitment_admin','recruitment/teaching/researchexp/save'),

('teaching_recruitment_screening','recruitment/teaching/researchexp/save'),

('teaching_recruitment_admin','recruitment/teaching/researchguidance/save'),

('teaching_recruitment_screening','recruitment/teaching/researchguidance/save'),

('teaching_recruitment_admin','recruitment/teaching/researchproject/save'),

('teaching_recruitment_screening','recruitment/teaching/researchproject/save'),

('teaching_recruitment_admin','recruitment/teaching/shortlisted-report'),

('teaching_recruitment_screening','recruitment/teaching/shortlisted-report'),

('teaching_recruitment_admin','recruitment/teaching/teachingexp/index'),

('teaching_recruitment_screening','recruitment/teaching/teachingexp/index'),

('teaching_recruitment_admin','recruitment/teaching/teachingexp/save'),

('teaching_recruitment_screening','recruitment/teaching/teachingexp/save'),

('rpms_admin','rpms/account/view'),

('admin','rpms/dashboard/index'),

('rpms_accounts','rpms/dashboard/index'),

('rpms_admin','rpms/dashboard/index'),

('rpms_admin_view','rpms/dashboard/index'),

('rpms_pi','rpms/dashboard/index'),

('rpms_admin','rpms/dashboard/manage'),

('rpms_admin_view','rpms/dashboard/manage'),

('admin','rpms/settings/index'),

('rpms_admin','rpms/settings/index'),

('hod','rti_department'),

('admin','rti_master_status_create'),

('admin','rti/admin/index'),

('rti_admin_view','rti/admin/index'),

('rti_officer','rti/admin/index'),

('admin','rti/app/create'),

('rti_officer','rti/app/create'),

('admin','rti/app/delete'),

('rti_officer','rti/app/delete'),

('admin','rti/app/first-appellate-authority-index'),

('rti_admin_view','rti/app/first-appellate-authority-index'),

('rti_first_appellate_authority','rti/app/first-appellate-authority-index'),

('rti_officer','rti/app/first-appellate-authority-index'),

('admin','rti/app/freeze-rti'),

('rti_officer','rti/app/freeze-rti'),

('admin','rti/app/index'),

('rti_admin_view','rti/app/index'),

('rti_officer','rti/app/index'),

('admin','rti/app/index-freeze'),

('rti_officer','rti/app/index-freeze'),

('admin','rti/app/mark-to-first-appellate-authority'),

('rti_admin_view','rti/app/mark-to-first-appellate-authority'),

('rti_officer','rti/app/mark-to-first-appellate-authority'),

('admin','rti/app/print-pdf'),

('rti_officer','rti/app/print-pdf'),

('admin','rti/app/print-responses'),

('rti_officer','rti/app/print-responses'),

('rti_first_appellate_authority','rti/app/response-from-first-appellate'),

('admin','rti/app/rti-file-delete'),

('rti_officer','rti/app/rti-file-delete'),

('rti_officer','rti/app/send-response'),

('admin','rti/app/update'),

('rti_officer','rti/app/update'),

('admin','rti/app/view'),

('rti_admin_view','rti/app/view'),

('rti_first_appellate_authority','rti/app/view'),

('rti_officer','rti/app/view'),

('rti_officer','rti/communication/create'),

('rti_officer','rti/communication/index'),

('admin','rti/default/dashboard'),

('rti_department','rti/department/dashboard'),

('admin','rti/department/index'),

('rti_department','rti/department/index'),

('rti_department','rti/department/panel'),

('admin','rti/forwarded/confirm-revoke'),

('admin','rti/forwarded/create'),

('rti_officer','rti/forwarded/create'),

('admin','rti/forwarded/create-modal'),

('rti_officer','rti/forwarded/create-modal'),

('admin','rti/forwarded/delete'),

('rti_officer','rti/forwarded/delete'),

('admin','rti/forwarded/index'),

('rti_department','rti/forwarded/index'),

('rti_officer','rti/forwarded/index'),

('admin','rti/forwarded/view'),

('rti_department','rti/forwarded/view'),

('rti_officer','rti/forwarded/view'),

('admin','rti/log/create'),

('rti_officer','rti/log/create'),

('admin','rti/log/delete'),

('rti_officer','rti/log/delete'),

('admin','rti/log/index'),

('rti_admin_view','rti/log/index'),

('rti_officer','rti/log/index'),

('admin','rti/log/update'),

('rti_officer','rti/log/update'),

('admin','rti/log/view'),

('rti_officer','rti/log/view'),

('admin','rti/responsed/accept-response'),

('rti_officer','rti/responsed/accept-response'),

('admin','rti/responsed/create-modal'),

('rti_department','rti/responsed/create-modal'),

('rti_officer','rti/responsed/create-modal'),

('admin','rti/responsed/delete'),

('rti_officer','rti/responsed/delete'),

('admin','rti/responsed/delete-response-file'),

('rti_department','rti/responsed/delete-response-file'),

('rti_officer','rti/responsed/delete-response-file'),

('admin','rti/responsed/index'),

('rti_officer','rti/responsed/index'),

('admin','rti/responsed/raise-concern'),

('rti_officer','rti/responsed/raise-concern'),

('admin','rti/responsed/update-modal'),

('rti_department','rti/responsed/update-modal'),

('rti_officer','rti/responsed/update-modal'),

('admin','rti/responsed/view'),

('rti_department','rti/responsed/view'),

('rti_officer','rti/responsed/view'),

('rti_officer','rti/rti-category/create'),

('rti_officer','rti/rti-category/index'),

('rti_officer','rti/rti-category/update'),

('rti_officer','rti/rti-category/view'),

('rti_officer','rti/rti-response-to-applicant/index'),

('rti_officer','rti/rti-uploads/create'),

('rti_officer','rti/rti-uploads/delete'),

('admin','rti/settings/index'),

('rti_officer','rti/settings/index'),

('security_admin','security/awareness-program/create'),

('security_admin_view','security/awareness-program/create'),

('security_ou_admin','security/awareness-program/create'),

('employee','security/awareness-program/index'),

('security_admin','security/awareness-program/index'),

('security_admin_view','security/awareness-program/index'),

('security_ou_admin','security/awareness-program/index'),

('security_admin','security/awareness-program/save'),

('security_admin_view','security/awareness-program/save'),

('security_ou_admin','security/awareness-program/save'),

('security_admin','security/awareness-program/update'),

('security_admin_view','security/awareness-program/update'),

('security_ou_admin','security/awareness-program/update'),

('employee','security/awareness-program/view'),

('security_admin','security/awareness-program/view'),

('security_admin_view','security/awareness-program/view'),

('security_ou_admin','security/awareness-program/view'),

('employee','security/dashboard/index'),

('security_admin','security/dashboard/index'),

('security_admin_view','security/dashboard/index'),

('security_ou_admin','security/dashboard/index'),

('security_admin','security/facility-ou/create'),

('security_admin_view','security/facility-ou/create'),

('security_ou_admin','security/facility-ou/create'),

('security_admin','security/facility-ou/export-csv'),

('security_admin','security/facility-ou/index'),

('security_admin_view','security/facility-ou/index'),

('security_ou_admin','security/facility-ou/index'),

('security_admin','security/facility-ou/update'),

('security_admin_view','security/facility-ou/update'),

('security_ou_admin','security/facility-ou/update'),

('security_admin','security/facility-ou/view'),

('security_admin_view','security/facility-ou/view'),

('security_ou_admin','security/facility-ou/view'),

('security_admin','security/facility/create'),

('security_admin_view','security/facility/create'),

('security_admin','security/facility/export-csv'),

('security_admin','security/facility/index'),

('security_admin_view','security/facility/index'),

('security_admin','security/facility/save'),

('security_admin_view','security/facility/save'),

('security_admin','security/facility/update'),

('security_admin_view','security/facility/update'),

('security_admin','security/facility/view'),

('security_admin_view','security/facility/view'),

('security_admin','security/guidelines/create'),

('security_admin_view','security/guidelines/create'),

('employee','security/guidelines/guideline'),

('security_admin','security/guidelines/guideline'),

('security_admin_view','security/guidelines/guideline'),

('security_ou_admin','security/guidelines/guideline'),

('employee','security/guidelines/index'),

('security_admin','security/guidelines/index'),

('security_admin_view','security/guidelines/index'),

('security_ou_admin','security/guidelines/index'),

('security_admin','security/guidelines/update'),

('security_admin_view','security/guidelines/update'),

('employee','security/guidelines/view'),

('security_admin','security/guidelines/view'),

('security_admin_view','security/guidelines/view'),

('security_ou_admin','security/guidelines/view'),

('security_admin','security/helpline/create'),

('security_admin_view','security/helpline/create'),

('security_admin','security/helpline/index'),

('security_admin_view','security/helpline/index'),

('security_ou_admin','security/helpline/index'),

('security_admin','security/helpline/save'),

('security_admin_view','security/helpline/save'),

('security_admin','security/helpline/update'),

('security_admin_view','security/helpline/update'),

('security_admin','security/helpline/view'),

('security_admin_view','security/helpline/view'),

('security_ou_admin','security/helpline/view'),

('employee','security/incident-record/create'),

('security_admin','security/incident-record/create'),

('security_admin_view','security/incident-record/create'),

('security_ou_admin','security/incident-record/create'),

('employee','security/incident-record/index'),

('security_admin','security/incident-record/index'),

('security_admin_view','security/incident-record/index'),

('security_ou_admin','security/incident-record/index'),

('security_admin','security/incident-record/resolution'),

('security_admin_view','security/incident-record/resolution'),

('security_ou_admin','security/incident-record/resolution'),

('employee','security/incident-record/update'),

('security_admin','security/incident-record/update'),

('security_admin_view','security/incident-record/update'),

('security_ou_admin','security/incident-record/update'),

('employee','security/incident-record/view'),

('security_admin','security/incident-record/view'),

('security_admin_view','security/incident-record/view'),

('security_ou_admin','security/incident-record/view'),

('security_admin','security/incident-type/create'),

('security_admin_view','security/incident-type/create'),

('security_admin','security/incident-type/index'),

('security_admin_view','security/incident-type/index'),

('security_admin','security/incident-type/save'),

('security_admin_view','security/incident-type/save'),

('security_admin','security/incident-type/update'),

('security_admin_view','security/incident-type/update'),

('security_admin','security/incident-type/view'),

('security_admin_view','security/incident-type/view'),

('security_admin','security/program-type/create'),

('security_admin_view','security/program-type/create'),

('security_admin','security/program-type/index'),

('security_admin_view','security/program-type/index'),

('security_admin','security/program-type/save'),

('security_admin_view','security/program-type/save'),

('security_admin','security/program-type/update'),

('security_admin_view','security/program-type/update'),

('security_admin','security/program-type/view'),

('security_admin_view','security/program-type/view'),

('security_admin','security/security-uploads/create'),

('security_ou_admin','security/security-uploads/create'),

('security_admin','security/security-uploads/delete'),

('security_ou_admin','security/security-uploads/delete'),

('security_admin','security/security-uploads/index-for-dept'),

('security_admin_view','security/security-uploads/index-for-dept'),

('security_ou_admin','security/security-uploads/index-for-dept'),

('security_admin','security/settings/index'),

('security_admin_view','security/settings/index'),

('service_admin','service/admission/aggregated-statistics/index-latest'),

('service_admin','service/admission/category-statistics/index-latest'),

('service_admin','service/dashboard/central-university/create'),

('service_admin','service/dashboard/central-university/index'),

('service_admin','service/dashboard/central-university/update'),

('service_admin','service/dashboard/central-university/view'),

('service_admin','service/dashboard/dashboard-new/index'),

('service_admin','service/dashboard/dashboard-new/university'),

('service_admin','service/dashboard/dashboard/index'),

('service_admin','service/dashboard/module-template/update'),

('service_admin','service/dashboard/modules-progress/index'),

('service_admin','service/dashboard/modules-progress/update'),

('service_admin','service/dashboard/samarth-modules/create'),

('service_admin','service/dashboard/samarth-modules/index'),

('service_admin','service/dashboard/samarth-modules/modules-list'),

('service_admin','service/recruitment/aggregated-statistics/index-latest'),

('service_admin','service/recruitment/app/dashboard'),

('service_admin','service/recruitment/category-statistics/index-latest'),

('service_admin','service/recruitment/recruitment-dbs/create'),

('service_admin','service/recruitment/recruitment-dbs/index'),

('service_admin','service/recruitment/recruitment-dbs/setting'),

('service_admin','service/rollout-progress/create'),

('service_admin','service/rollout-progress/index'),

('service_admin','service/rollout-progress/service-desk'),

('service_admin','service/rollout-progress/submit'),

('service_admin','service/rollout-progress/update'),

('ou_admin','settings/cache/flush-all'),

('programme_admin','settings/cache/flush-all'),

('Settings','settings/cache/flush-all'),

('Settings','settings/home/index'),

('admin','settings/identity-authentication/tracking'),

('ou_admin','settings/identity-authentication/tracking'),

('academic_admin','slcm_reregistration_admin'),

('admin','slcm_reregistration_admin'),

('slcm_reregistration_admin','slcm/batch/index'),

('slcm_reregistration_admin','slcm/batch/students'),

('slcm_reregistration_admin','slcm/class/create'),

('slcm_reregistration_admin','slcm/class/delete'),

('slcm_reregistration_admin','slcm/class/index'),

('slcm_reregistration_admin','slcm/class/update'),

('slcm_reregistration_admin','slcm/class/view'),

('slcm_reregistration_admin','slcm/course/create'),

('slcm_reregistration_admin','slcm/course/delete'),

('slcm_reregistration_admin','slcm/course/index'),

('slcm_reregistration_admin','slcm/course/management'),

('slcm_reregistration_admin','slcm/course/update'),

('slcm_reregistration_admin','slcm/course/view'),

('academic_admin','slcm/import/create'),

('academic_admin','slcm/import/delete'),

('academic_admin','slcm/import/index'),

('student_admin','slcm/import/index'),

('academic_admin','slcm/import/update'),

('slcm_reregistration_admin','slcm/re-registration/all-student'),

('student_admin','slcm/re-registration/all-student'),

('slcm_reregistration_admin','slcm/re-registration/dashboard'),

('slcm_reregistration_admin','slcm/re-registration/export'),

('slcm_reregistration_admin','slcm/re-registration/export-data'),

('slcm_reregistration_admin','slcm/re-registration/import-study-material-status'),

('slcm_reregistration_admin','slcm/re-registration/index'),

('student_admin','slcm/re-registration/index'),

('slcm_reregistration_admin','slcm/re-registration/index-ou'),

('slcm_reregistration_admin','slcm/re-registration/index-programme'),

('student_admin','slcm/re-registration/index-programme'),

('slcm_reregistration_admin','slcm/re-registration/ou-index'),

('slcm_reregistration_admin','slcm/re-registration/process-and-import-data'),

('slcm_reregistration_admin','slcm/re-registration/programme-index'),

('slcm_reregistration_admin','slcm/re-registration/report-programme'),

('slcm_reregistration_admin','slcm/re-registration/reports-index'),

('slcm_reregistration_admin','slcm/re-registration/student'),

('slcm_reregistration_admin','slcm/re-registration/transactions'),

('student_admin','slcm/report/index'),

('slcm_reregistration_admin','slcm/settings/index'),

('student_admin','slcm/settings/index'),

('slcm_reregistration_admin','slcm/settings/reset-password'),

('slcm_reregistration_admin','slcm/settings/students-accounts'),

('slcm_reregistration_admin','slcm/settings/students-login-status-toggle'),

('student_fee_admin','slcm/student-readmission-fee-control'),

('student_fee_admin','slcm/student-readmission-fee-control/index'),

('slcm_reregistration_admin','slcm/student-record-reregistartion/advance-search'),

('student_admin','slcm/student-record-reregistartion/advance-search'),

('slcm_reregistration_admin','slcm/student-record-reregistartion/create'),

('slcm_reregistration_admin','slcm/student-record-reregistartion/delete'),

('slcm_reregistration_admin','slcm/student-record-reregistartion/index'),

('slcm_reregistration_admin','slcm/student-record-reregistartion/update'),

('slcm_reregistration_admin','slcm/student-record-reregistartion/view'),

('slcm_reregistration_admin','slcm/student-record/index'),

('slcm_reregistration_admin','slcm/student-section/create'),

('slcm_reregistration_admin','slcm/student-section/delete'),

('student_fee_admin','slcm/student-section/fee-index'),

('slcm_reregistration_admin','slcm/student-section/index'),

('slcm_reregistration_admin','slcm/student-section/index-section'),

('slcm_reregistration_admin','slcm/student-section/update'),

('slcm_reregistration_admin','slcm/student-section/view'),

('slcm_reregistration_admin','slcm/student-service-menu/create'),

('slcm_reregistration_admin','slcm/student-service-menu/delete'),

('slcm_reregistration_admin','slcm/student-service-menu/index'),

('slcm_reregistration_admin','slcm/student-service-menu/update'),

('slcm_reregistration_admin','slcm/student-service-menu/view'),

('slcm_reregistration_admin','slcm/student-services/index'),

('slcm_reregistration_admin','slcm/student/add-students-in-batch'),

('academic_admin','slcm/student/assign-programme'),

('exam_administrator','slcm/student/assign-programme'),

('slcm_reregistration_admin','slcm/student/create'),

('slcm_reregistration_admin','slcm/student/delete'),

('student_admin','slcm/student/export'),

('slcm_reregistration_admin','slcm/student/import-student'),

('slcm_reregistration_admin','slcm/student/index'),

('student_admin','slcm/student/index'),

('slcm_reregistration_admin','slcm/student/process-and-import-data'),

('programme_admin','slcm/student/programme'),

('slcm_reregistration_admin','slcm/student/programme'),

('student_admin','slcm/student/programme'),

('student_admin','slcm/student/search'),

('slcm_reregistration_admin','slcm/student/update'),

('slcm_reregistration_admin','slcm/student/view'),

('slcm_reregistration_admin','slcm/student/view-via-student'),

('slcm_reregistration_admin','slcm/visualization/index'),

('slcm_reregistration_admin','slcm/visualization/login-count'),

('slcm_reregistration_admin','slcm/visualization/prg-wise-count'),

('slcm_reregistration_admin','slcm/visualization/registration-count'),

('slcm_reregistration_admin','slcm/zpay-trans-sent/create'),

('slcm_reregistration_admin','slcm/zpay-trans-sent/delete'),

('slcm_reregistration_admin','slcm/zpay-trans-sent/index'),

('slcm_reregistration_admin','slcm/zpay-trans-sent/update'),

('slcm_reregistration_admin','slcm/zpay-trans-sent/view'),

('sports_admin','sports/admin/index'),

('sports_admin','sports/admin/manage'),

('sports_admin','sports/dashboard/index'),

('sports_admin','sports/settings/index'),

('sports_admin','sports/sports-equipment-type/create'),

('sports_admin','sports/sports-equipment-type/index'),

('sports_admin','sports/sports-equipment-type/update'),

('sports_admin','sports/sports-equipment-type/view'),

('sports_admin','sports/sports-infrastructure-type/create'),

('sports_admin','sports/sports-infrastructure-type/index'),

('sports_admin','sports/sports-infrastructure-type/update'),

('sports_admin','sports/sports-infrastructure-type/view'),

('sports_admin','sports/sports-infrastructure/create'),

('sports_admin','sports/sports-infrastructure/index'),

('sports_admin','sports/sports-infrastructure/update'),

('sports_admin','sports/sports-infrastructure/view'),

('sports_admin','sports/sports-list/create'),

('sports_admin','sports/sports-list/index'),

('sports_admin','sports/sports-list/update'),

('sports_admin','sports/sports-list/view'),

('sports_admin','sports/sports-ou-mapping/index'),

('sports_admin','sports/sports-ou-mapping/modal-form'),

('sports_admin','sports/sports-ou-mapping/view'),

('sports_admin','sports/sports-type/create'),

('sports_admin','sports/sports-type/index'),

('sports_admin','sports/sports-type/update'),

('sports_admin','sports/sports-type/view'),

('academic_admin','student_admin'),

('admin','student_admin'),

('slcm_reregistration_admin','student_admin'),

('admin','student_fee_admin'),

('slcm_reregistration_admin','student_view'),

('student_admin','student/profile/all'),

('academic_admin','student/programme/add-fee-category'),

('slcm_reregistration_admin','student/programme/add-fee-category'),

('student_admin','student/programme/add-fee-category'),

('student_view','student/programme/add-fee-category'),

('student_view','student/programme/address'),

('academic_admin','student/programme/all'),

('slcm_reregistration_admin','student/programme/all'),

('student_admin','student/programme/all'),

('student_view','student/programme/all'),

('academic_admin','student/programme/delete'),

('student_admin','student/programme/delete'),

('academic_admin','student/programme/edit'),

('slcm_reregistration_admin','student/programme/edit'),

('student_admin','student/programme/edit'),

('student_view','student/programme/header'),

('academic_admin','student/programme/index'),

('student_admin','student/programme/index'),

('student_view','student/programme/index'),

('student_view','student/programme/sync-student-data'),

('student_view','student/programme/view'),

('student_view','student/programme/view-new'),

('student_admin','student/settings/create-login'),

('student_admin','student/settings/update-account-details'),

('student_admin','student/settings/update-menu'),

('student_admin','student/settings/update-password'),

('student_admin','student/student-login/index'),

('student_admin','student/student-record/index'),

('student_admin','student/student-update/bulk-update'),

('student_admin','student/student-update/create'),

('','student/student-update/get-options'),

('student_admin','student/student-update/get-options'),

('student_admin','student/student-update/index'),

('student_admin','student/student-update/process-and-import-data'),

('admin','super_admin'),

('teaching_recruitment_admin','teaching/interview/interview-batches-candidates/summary'),

('tot_admin','tot/company-profile/create'),

('tot_company','tot/company-profile/create'),

('tot_admin','tot/company-profile/index'),

('tot_company','tot/company-profile/index'),

('tot_company','tot/company-profile/update'),

('tot_admin','tot/company-profile/view'),

('tot_company','tot/company-profile/view'),

('tot_admin','tot/dashboard/admin'),

('tot_admin','tot/dashboard/company'),

('tot_company','tot/dashboard/company'),

('tot_admin','tot/dashboard/user'),

('tot_user','tot/dashboard/user'),

('tot_user','tot/tot-opportunity/apply'),

('tot_admin','tot/tot-opportunity/company-index'),

('tot_company','tot/tot-opportunity/company-index'),

('tot_admin','tot/tot-opportunity/create'),

('tot_company','tot/tot-opportunity/create'),

('tot_admin','tot/tot-opportunity/index'),

('tot_admin','tot/tot-opportunity/status-update'),

('tot_admin','tot/tot-opportunity/update'),

('tot_company','tot/tot-opportunity/update'),

('tot_admin','tot/tot-opportunity/update-status'),

('tot_admin','tot/tot-opportunity/user-index'),

('tot_user','tot/tot-opportunity/user-index'),

('tot_admin','tot/tot-opportunity/view'),

('tot_company','tot/tot-opportunity/view'),

('tot_user','tot/tot-opportunity/view'),

('tot_admin','tot/tot-participate/company-index'),

('tot_company','tot/tot-participate/company-index'),

('tot_admin','tot/tot-participate/create'),

('tot_user','tot/tot-participate/create'),

('tot_admin','tot/tot-participate/index'),

('tot_admin','tot/tot-participate/submit'),

('tot_user','tot/tot-participate/submit'),

('tot_admin','tot/tot-participate/update'),

('tot_user','tot/tot-participate/update'),

('tot_admin','tot/tot-participate/update-status'),

('tot_admin','tot/tot-participate/user-index'),

('tot_user','tot/tot-participate/user-index'),

('tot_admin','tot/tot-participate/view'),

('tot_user','tot/tot-participate/view'),

('tot_admin','tot/tot-request/create'),

('tot_user','tot/tot-request/create'),

('tot_admin','tot/tot-request/index'),

('tot_admin','tot/tot-request/status-update'),

('tot_admin','tot/tot-request/submit'),

('tot_user','tot/tot-request/submit'),

('tot_admin','tot/tot-request/update'),

('tot_user','tot/tot-request/update'),

('tot_admin','tot/tot-request/update-status'),

('tot_admin','tot/tot-request/user-index'),

('tot_user','tot/tot-request/user-index'),

('tot_admin','tot/tot-request/view'),

('tot_user','tot/tot-request/view'),

('admin','tracking_admin'),

('ou_placement_coordinator','training/company-profile-ou/bulk-mail'),

('training_admin','training/company-profile-ou/bulk-mail'),

('ou_placement_coordinator','training/company-profile-ou/create-admin'),

('training_admin','training/company-profile-ou/create-admin'),

('ou_placement_coordinator','training/company-profile-ou/index'),

('training_admin','training/company-profile-ou/index'),

('ou_placement_coordinator','training/company-profile-ou/update'),

('training_admin','training/company-profile-ou/update'),

('ou_placement_coordinator','training/company-profile-ou/view'),

('training_admin','training/company-profile-ou/view'),

('training_admin','training/company-profile-requests/create'),

('training_admin','training/company-profile-requests/index'),

('training_admin','training/company-profile-requests/register'),

('training_admin','training/company-profile-requests/reset'),

('training_admin','training/company-profile-requests/reset-password'),

('training_admin','training/company-profile-requests/update'),

('training_admin','training/company-profile-requests/verify'),

('training_admin','training/company-profile-requests/view'),

('ou_placement_coordinator','training/company-profile/bulk-mail'),

('training_admin','training/company-profile/bulk-mail'),

('training_admin','training/company-profile/create'),

('training_company','training/company-profile/create'),

('training_admin','training/company-profile/create-admin'),

('training_department','training/company-profile/create-admin'),

('training_admin','training/company-profile/create-permission'),

('training_admin','training/company-profile/index'),

('training_company','training/company-profile/index'),

('training_admin','training/company-profile/update'),

('training_company','training/company-profile/update'),

('training_admin','training/company-profile/view'),

('training_company','training/company-profile/view'),

('training_admin','training/company/company-profile-ou/update'),

('admin','training/company/company-profile/create'),

('training_admin','training/company/company-profile/create'),

('training_company','training/company/company-profile/create'),

('admin','training/company/company-profile/delete'),

('training_admin','training/company/company-profile/delete'),

('training_company','training/company/company-profile/delete'),

('admin','training/company/company-profile/index'),

('training_admin','training/company/company-profile/index'),

('training_company','training/company/company-profile/index'),

('training_department','training/company/company-profile/index'),

('admin','training/company/company-profile/update'),

('training_admin','training/company/company-profile/update'),

('training_company','training/company/company-profile/update'),

('admin','training/company/company-profile/view'),

('training_admin','training/company/company-profile/view'),

('training_company','training/company/company-profile/view'),

('training_department','training/company/company-profile/view'),

('training_admin','training/company/report/category-report'),

('training_admin','training/company/report/company-report'),

('training_admin','training/company/report/gender-report'),

('training_admin','training/company/report/job-report'),

('training_admin','training/company/report/ou-report'),

('training_admin','training/company/report/season-report'),

('training_admin','training/company/student-application'),

('training_department','training/company/student-application'),

('admin','training/company/student-application/view'),

('training_admin','training/company/student-application/view'),

('training_department','training/company/student-application/view'),

('admin','training/company/training-company-season'),

('training_admin','training/company/training-company-season'),

('training_company','training/company/training-company-season'),

('training_department','training/company/training-company-season'),

('admin','training/company/training-company-season/create'),

('training_admin','training/company/training-company-season/create'),

('training_company','training/company/training-company-season/create'),

('admin','training/company/training-company-season/index'),

('training_admin','training/company/training-company-season/index'),

('training_company','training/company/training-company-season/index'),

('training_department','training/company/training-company-season/index'),

('admin','training/company/training-company-season/update'),

('training_admin','training/company/training-company-season/update'),

('training_company','training/company/training-company-season/update'),

('admin','training/company/training-company-season/view'),

('training_admin','training/company/training-company-season/view'),

('training_company','training/company/training-company-season/view'),

('training_department','training/company/training-company-season/view'),

('training_company','training/company/training-placement-info'),

('admin','training/company/training-placement-info/adminindex'),

('training_admin','training/company/training-placement-info/adminindex'),

('training_company','training/company/training-placement-info/adminindex'),

('admin','training/company/training-placement-info/applied-applicants'),

('training_admin','training/company/training-placement-info/applied-applicants'),

('training_company','training/company/training-placement-info/applied-applicants'),

('training_department','training/company/training-placement-info/applied-applicants'),

('admin','training/company/training-placement-info/delete'),

('training_admin','training/company/training-placement-info/delete'),

('training_company','training/company/training-placement-info/delete'),

('admin','training/company/training-placement-info/diew'),

('training_admin','training/company/training-placement-info/diew'),

('training_company','training/company/training-placement-info/diew'),

('admin','training/company/training-placement-info/index'),

('training_admin','training/company/training-placement-info/index'),

('training_company','training/company/training-placement-info/index'),

('admin','training/company/training-placement-info/manage-applicants'),

('training_admin','training/company/training-placement-info/manage-applicants'),

('training_company','training/company/training-placement-info/manage-applicants'),

('admin','training/company/training-placement-info/publish'),

('training_admin','training/company/training-placement-info/publish'),

('training_company','training/company/training-placement-info/publish'),

('admin','training/company/training-placement-info/update'),

('training_admin','training/company/training-placement-info/update'),

('training_company','training/company/training-placement-info/update'),

('admin','training/company/training-placement-info/view'),

('training_admin','training/company/training-placement-info/view'),

('training_company','training/company/training-placement-info/view'),

('training_department','training/company/training-placement-info/view'),

('admin','training/dashboard/admin'),

('training_admin','training/dashboard/admin'),

('training_admin','training/dashboard/company'),

('training_company','training/dashboard/company'),

('ou_placement_coordinator','training/dashboard/department'),

('training_admin','training/dashboard/department'),

('ou_placement_coordinator','training/dashboard/dept'),

('training_admin','training/dashboard/dept'),

('training_department','training/dashboard/dept'),

('training_admin','training/dashboard/index'),

('training_admin','training/default/index'),

('admin','training/default/settings'),

('training_admin','training/default/settings'),

('training_admin','training/degree-name/create'),

('training_admin','training/degree-name/index'),

('training_admin','training/degree-name/update'),

('training_admin','training/degree-name/view'),

('training_admin','training/ou-coordinator-mapping/create'),

('training_admin','training/ou-coordinator-mapping/index'),

('training_admin','training/ou-coordinator-mapping/update'),

('training_admin','training/ou-coordinator-mapping/view'),

('training_admin','training/payment/finaldetails'),

('admin','training/payment/pay/tesponse'),

('training_admin','training/payment/pay/tesponse'),

('training_admin','training/payment/paymenterror'),

('training_admin','training/payment/response-from-pay'),

('training_admin','training/payment/topaytmpaymentgateway'),

('training_admin','training/report/category-report'),

('training_admin','training/report/company-report'),

('training_admin','training/report/gender-report'),

('training_admin','training/report/index'),

('training_admin','training/report/job-report'),

('training_admin','training/report/ou-report'),

('training_admin','training/report/season-report'),

('ou_placement_coordinator','training/student-application/bulk-mail'),

('training_admin','training/student-application/bulk-mail'),

('training_company','training/student-application/bulk-mail'),

('ou_placement_coordinator','training/student-application/create-admin'),

('training_admin','training/student-application/create-admin'),

('ou_placement_coordinator','training/student-application/get-jobs'),

('training_admin','training/student-application/get-jobs'),

('training_company','training/student-application/get-jobs'),

('ou_placement_coordinator','training/student-application/hire-view'),

('training_admin','training/student-application/hire-view'),

('ou_placement_coordinator','training/student-application/index'),

('training_admin','training/student-application/index'),

('training_company','training/student-application/index'),

('ou_placement_coordinator','training/student-application/update'),

('training_admin','training/student-application/update'),

('training_company','training/student-application/update'),

('ou_placement_coordinator','training/student-application/update-application-status'),

('training_admin','training/student-application/update-application-status'),

('training_company','training/student-application/update-company-status'),

('ou_placement_coordinator','training/student-application/update-status'),

('training_admin','training/student-application/update-status'),

('ou_placement_coordinator','training/student-application/view'),

('training_admin','training/student-application/view'),

('training_company','training/student-application/view'),

('ou_placement_coordinator','training/student-registration/index'),

('training_admin','training/student-registration/index'),

('ou_placement_coordinator','training/student-registration/verify'),

('training_admin','training/student-registration/verify'),

('ou_placement_coordinator','training/student-registration/view-all'),

('training_admin','training/student-registration/view-all'),

('training_admin','training/training-company-season/apply-company-season'),

('training_company','training/training-company-season/apply-company-season'),

('training_admin','training/training-company-season/create'),

('training_company','training/training-company-season/create'),

('training_admin','training/training-company-season/create-admin'),

('training_admin','training/training-company-season/index'),

('training_company','training/training-company-season/index'),

('training_admin','training/training-company-season/pay'),

('training_company','training/training-company-season/pay'),

('training_admin','training/training-company-season/update'),

('training_company','training/training-company-season/update'),

('training_admin','training/training-company-season/view'),

('training_company','training/training-company-season/view'),

('training_admin','training/training-ctc-breakup/create'),

('training_admin','training/training-ctc-breakup/index'),

('training_admin','training/training-ctc-breakup/update'),

('training_admin','training/training-ctc-breakup/view'),

('admin','training/training-ou-mapping/create'),

('training_admin','training/training-ou-mapping/create'),

('admin','training/training-ou-mapping/index'),

('training_admin','training/training-ou-mapping/index'),

('admin','training/training-ou-mapping/update'),

('training_admin','training/training-ou-mapping/update'),

('admin','training/training-ou-mapping/view'),

('training_admin','training/training-ou-mapping/view'),

('ou_placement_coordinator','training/training-placement-info/admin-index'),

('training_admin','training/training-placement-info/admin-index'),

('ou_placement_coordinator','training/training-placement-info/applied-applicants'),

('training_admin','training/training-placement-info/applied-applicants'),

('training_company','training/training-placement-info/applied-applicants'),

('ou_placement_coordinator','training/training-placement-info/change-application-status'),

('training_admin','training/training-placement-info/change-application-status'),

('training_company','training/training-placement-info/change-application-status'),

('ou_placement_coordinator','training/training-placement-info/create'),

('training_admin','training/training-placement-info/create'),

('training_company','training/training-placement-info/create'),

('ou_placement_coordinator','training/training-placement-info/create-admin'),

('training_admin','training/training-placement-info/create-admin'),

('ou_placement_coordinator','training/training-placement-info/index'),

('training_admin','training/training-placement-info/index'),

('training_company','training/training-placement-info/index'),

('ou_placement_coordinator','training/training-placement-info/manage-applicants'),

('training_admin','training/training-placement-info/manage-applicants'),

('training_company','training/training-placement-info/manage-applicants'),

('ou_placement_coordinator','training/training-placement-info/publish'),

('training_admin','training/training-placement-info/publish'),

('training_company','training/training-placement-info/publish'),

('ou_placement_coordinator','training/training-placement-info/qualification-type'),

('training_admin','training/training-placement-info/qualification-type'),

('training_company','training/training-placement-info/qualification-type'),

('ou_placement_coordinator','training/training-placement-info/update'),

('training_admin','training/training-placement-info/update'),

('training_company','training/training-placement-info/update'),

('ou_placement_coordinator','training/training-placement-info/update-publish'),

('training_admin','training/training-placement-info/update-publish'),

('training_company','training/training-placement-info/update-publish'),

('ou_placement_coordinator','training/training-placement-info/view'),

('training_admin','training/training-placement-info/view'),

('training_company','training/training-placement-info/view'),

('admin','training/training-season/create'),

('training_admin','training/training-season/create'),

('admin','training/training-season/index'),

('ou_placement_coordinator','training/training-season/index'),

('training_admin','training/training-season/index'),

('training_admin','training/training-season/report-index'),

('admin','training/training-season/update'),

('training_admin','training/training-season/update'),

('admin','training/training-season/view'),

('training_admin','training/training-season/view'),

('training_department','training/training-season/view'),

('transport_admin','transport/assign/create'),

('transport_admin','transport/assign/index'),

('transport_admin_view','transport/assign/index'),

('transport_admin','transport/assign/mark-inactive'),

('transport_admin','transport/assign/save'),

('transport_admin','transport/assign/update'),

('transport_admin','transport/assign/view'),

('transport_admin_view','transport/assign/view'),

('transport_admin','transport/dashboard/index'),

('transport_admin_view','transport/dashboard/index'),

('transport_admin','transport/fuel-type/create'),

('transport_admin','transport/fuel-type/index'),

('transport_admin','transport/fuel-type/save'),

('transport_admin','transport/fuel-type/update'),

('transport_admin','transport/fuel-type/view'),

('transport_admin','transport/report/index'),

('transport_admin','transport/report/ou-expenditure'),

('transport_admin','transport/report/print'),

('transport_admin','transport/report/print-ou'),

('transport_admin','transport/report/vehicle-expenditure'),

('transport_admin','transport/settings/index'),

('transport_admin_view','transport/settings/index'),

('transport_admin','transport/tracking/approved'),

('transport_admin','transport/tracking/create'),

('transport_employee','transport/tracking/create'),

('transport_admin','transport/tracking/fuel'),

('transport_employee','transport/tracking/fuel'),

('transport_admin','transport/tracking/get-other-ou'),

('training_admin','transport/tracking/get-ou'),

('transport_admin','transport/tracking/get-ou'),

('transport_employee','transport/tracking/get-ou'),

('transport_admin','transport/tracking/index'),

('transport_admin_view','transport/tracking/index'),

('transport_employee','transport/tracking/index'),

('transport_admin','transport/tracking/save'),

('transport_employee','transport/tracking/save'),

('transport_admin','transport/tracking/update'),

('transport_employee','transport/tracking/update'),

('transport_admin','transport/tracking/view'),

('transport_admin_view','transport/tracking/view'),

('transport_employee','transport/tracking/view'),

('transport_admin','transport/transport-vendor-type/create'),

('transport_admin','transport/transport-vendor-type/index'),

('transport_admin','transport/transport-vendor-type/save'),

('transport_admin','transport/transport-vendor-type/update'),

('transport_admin','transport/transport-vendor-type/view'),

('transport_admin','transport/transport-vendor-vehicle/create'),

('transport_admin','transport/transport-vendor-vehicle/index'),

('transport_admin','transport/transport-vendor-vehicle/index-vehicle'),

('transport_admin','transport/transport-vendor-vehicle/save'),

('transport_admin','transport/transport-vendor-vehicle/update'),

('transport_admin','transport/transport-vendor-vehicle/view'),

('transport_admin','transport/transport-vendor/create'),

('transport_admin','transport/transport-vendor/index'),

('transport_admin','transport/transport-vendor/mark-active'),

('transport_admin','transport/transport-vendor/mark-inactive'),

('transport_admin','transport/transport-vendor/save'),

('transport_admin','transport/transport-vendor/update'),

('transport_admin','transport/transport-vendor/view'),

('transport_admin','transport/type/create'),

('transport_admin','transport/type/index'),

('transport_admin_view','transport/type/index'),

('transport_admin','transport/type/save'),

('transport_admin','transport/type/update'),

('transport_admin','transport/type/view'),

('transport_admin_view','transport/type/view'),

('transport_admin','transport/vehical/create'),

('transport_admin','transport/vehical/index'),

('transport_admin_view','transport/vehical/index'),

('transport_admin','transport/vehical/mark-inactive'),

('transport_admin','transport/vehical/save'),

('transport_admin','transport/vehical/update'),

('transport_admin','transport/vehical/view'),

('transport_admin_view','transport/vehical/view'),

('transport_admin','transport/vehicle-detail/create'),

('transport_admin','transport/vehicle-detail/index'),

('transport_admin','transport/vehicle-detail/index-vehicle'),

('transport_admin','transport/vehicle-detail/save'),

('transport_admin','transport/vehicle-detail/update'),

('transport_admin','transport/vehicle-detail/view'),

('api_admin','v1/dashboard/index'),

('vendor_admin','vendor_purchase/budget-head/create'),

('vendor_admin','vendor_purchase/budget-head/delete'),

('vendor_admin','vendor_purchase/budget-head/index'),

('vendor_admin_view','vendor_purchase/budget-head/index'),

('vendor_admin','vendor_purchase/budget-head/update'),

('vendor_admin','vendor_purchase/budget-head/view'),

('vendor_admin','vendor_purchase/procurement-procedure-head/create'),

('vendor_admin','vendor_purchase/procurement-procedure-head/delete'),

('vendor_admin','vendor_purchase/procurement-procedure-head/index'),

('vendor_admin','vendor_purchase/procurement-procedure-head/update'),

('vendor_admin','vendor_purchase/procurement-procedure-head/view'),

('vendor_admin','vendor_purchase/purchase-order/create'),

('vendor_department','vendor_purchase/purchase-order/create'),

('vendor_admin','vendor_purchase/purchase-order/delete'),

('vendor_department','vendor_purchase/purchase-order/delete'),

('vendor_admin','vendor_purchase/purchase-order/index'),

('vendor_admin_view','vendor_purchase/purchase-order/index'),

('vendor_dealing_assistant','vendor_purchase/purchase-order/index'),

('vendor_department','vendor_purchase/purchase-order/index'),

('vendor_admin','vendor_purchase/purchase-order/index-from-dashboard'),

('vendor_admin_view','vendor_purchase/purchase-order/index-from-dashboard'),

('vendor_admin','vendor_purchase/purchase-order/print-pdf-purchase-order'),

('vendor_admin_view','vendor_purchase/purchase-order/print-pdf-purchase-order'),

('vendor_dealing_assistant','vendor_purchase/purchase-order/print-pdf-purchase-order'),

('vendor_department','vendor_purchase/purchase-order/print-pdf-purchase-order'),

('vendor_dealing_assistant','vendor_purchase/purchase-order/proforma-by-dealing-assistant'),

('vendor_admin','vendor_purchase/purchase-order/proforma-to-dealing-assistant'),

('vendor_department','vendor_purchase/purchase-order/proforma-to-dealing-assistant'),

('vendor_admin','vendor_purchase/purchase-order/resent-otp'),

('vendor_department','vendor_purchase/purchase-order/resent-otp'),

('vendor_admin','vendor_purchase/purchase-order/toggle-order-status'),

('vendor_department','vendor_purchase/purchase-order/toggle-order-status'),

('vendor_admin','vendor_purchase/purchase-order/update'),

('vendor_department','vendor_purchase/purchase-order/update'),

('vendor_admin','vendor_purchase/purchase-order/update-proforma'),

('vendor_department','vendor_purchase/purchase-order/update-proforma'),

('vendor_dealing_assistant','vendor_purchase/purchase-order/update-proforma-finance'),

('vendor_admin','vendor_purchase/purchase-order/view'),

('vendor_admin_view','vendor_purchase/purchase-order/view'),

('vendor_dealing_assistant','vendor_purchase/purchase-order/view'),

('vendor_department','vendor_purchase/purchase-order/view'),

('admin','vendor_purchase/settings/index'),

('vendor_admin','vendor_purchase/settings/index'),

('vendor_admin','vendor_purchase/tracking-status/index'),

('vendor_admin_view','vendor_purchase/tracking-status/index'),

('fee_admin','vidhyarthi/fee/adminviewupdateedit'),

('fee_admin','vidhyarthi/fee/edit'),

('fee_admin','vidhyarthi/fee/edit-gateway-offline'),

('student_fee_admin','vidhyarthi/fee/pre-view'),

('student_fee_admin','vidhyarthi/fee/view'),

('website_admin','website');



