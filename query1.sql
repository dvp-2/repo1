use `teqip_prod`;
insert into `leave_application_control`( `app_id`, `key`, `value`, `json`, `type`, `category`, `description`) values('1', 'negative_leave_balance_allowed', '1', NULL, NULL, NULL, NULL);

insert into `leave_application_control`( `app_id`, `key`, `value`, `json`, `type`, `category`, `description`) values('1', 'leave_post_facto_allowed', '1', NULL, NULL, NULL, NULL);

insert into `leave_application_control`( `app_id`, `key`, `value`, `json`, `type`, `category`, `description`) values('1','leave_special_rule_allowed', '1', NULL, NULL, NULL, NULL);

insert into `leave_application_control`( `app_id`, `key`, `value`, `json`, `type`, `category`, `description`) values('1', 'leave_overtime_allowed', '1', NULL, NULL, NULL, NULL);

insert into `leave_application_control`( `app_id`, `key`, `value`, `json`, `type`, `category`, `description`) values('1', 'leave_ltc_allowed', '1', NULL, NULL, NULL, NULL);

insert into `leave_application_control`( `app_id`, `key`, `value`, `json`, `type`, `category`, `description`) values('1', 'leave_timings_array', '{\"1\":\"10 AM\",\"2\":\"1 PM\",\"3\":\"6 PM\"}', NULL, NULL, NULL, NULL);

insert into `leave_application_control`( `app_id`, `key`, `value`, `json`, `type`, `category`, `description`) values('1', 'ltc_max_limit', '60', NULL, NULL, NULL, NULL);

insert into `leave_application_control`( `app_id`, `key`, `value`, `json`, `type`, `category`, `description`) values('1', 'ltc_max_at_a_time', '10', NULL, NULL, NULL, NULL);

insert into `leave_application_control`( `app_id`, `key`, `value`, `json`, `type`, `category`, `description`) values('1', 'email_format', '1', NULL, NULL, NULL, NULL);

insert into `leave_application_control`( `app_id`, `key`, `value`, `json`, `type`, `category`, `description`) values('1', 'reporting_designation', '1', NULL, NULL, NULL, NULL);

insert into `leave_application_control`( `app_id`, `key`, `value`, `json`, `type`, `category`, `description`) values('1', 'sms_active', '1', NULL, NULL, NULL, NULL);

insert into `leave_application_control`( `app_id`, `key`, `value`, `json`, `type`, `category`, `description`) values('1', 'send_reminder_email_frequency', '1', NULL, NULL, NULL, NULL);

insert into `leave_application_control`( `app_id`, `key`, `value`, `json`, `type`, `category`, `description`) values('1', 'change_assign_duties_authority', 'sanction', NULL, NULL, NULL, NULL);

insert into `leave_application_control`( `app_id`, `key`, `value`, `json`, `type`, `category`, `description`) values('1', 'commuted_leave_applicable', '1', NULL, NULL, NULL, NULL);

insert into `leave_application_control`( `app_id`, `key`, `value`, `json`, `type`, `category`, `description`) values('1', 'location_array', '0', NULL, NULL, NULL, NULL);

insert into `leave_application_control`( `app_id`, `key`, `value`, `json`, `type`, `category`, `description`) values('1', 'assign_duties_not_required_designation', '95,13', NULL, NULL, NULL, NULL);

insert into `leave_application_control`( `app_id`, `key`, `value`, `json`, `type`, `category`, `description`) values('1', 'assign_duties_required', '1', NULL, NULL, NULL, NULL);


insert into `leave_mail_variables`( `type`, `data`, `status`) values('REJOIN', '{\"created_at\":\"Application Date\",\"days\":\"Number od days\",\"user_id\":\"Applicant name\",\"leave\":\"Leave Name\",\"fromDate\":\"From Date\",\"toDate\":\"To Date\",\"rejoinDate\":\"Rejoined On\"}', '1');

insert into `leave_mail_variables`( `type`, `data`, `status`) values( 'SANCTION', '{\"created_at\":\"Application Date\",\"days\":\"Number od days\",\"user_id\":\"Applicant name\",\"leave\":\"Leave Name\",\"fromDate\":\"From Date\",\"toDate\":\"To Date\",\"approvedBy\":\"Sanctioned By\"}', '1');

insert into `leave_mail_variables`( `type`, `data`, `status`) values( 'AUTHORITY', '{\"created_at\":\"Application Date\",\"days\":\"Number od days\",\"user_id\":\"Applicant name\",\"leave\":\"Leave Name\",\"fromDate\":\"From Date\",\"toDate\":\"To Date\"}', '1');

insert into `leave_mail_variables`( `type`, `data`, `status`) values('SANCTION_LETTER', '{\"created_at\":\"Application Date\",\"days\":\"Number od days\",\"user_id\":\"Applicant name\",\"leave\":\"Leave Name\",\"fromDate\":\"From Date\",\"toDate\":\"To Date\"}', '1');

insert into `leave_mail_variables`( `type`, `data`, `status`) values('REJOIN_LETTER', '{\"created_at\":\"Application Date\",\"days\":\"Number of days\",\"user_id\":\"Applicant name\",\"leave\":\"Leave Name\",\"fromDate\":\"From Date\",\"toDate\":\"To Date\",\"leaveRecordNumber\":\"Leave Record Number\",\"rejoin_approved_by\":\"Rejoin Approved By\",\"leave_rejoin_date\":\"Rejoin Date\",\"rejoin_remarks\":\"Rejoin Remarks\",\"org_name\":\"Organization Name\",\"department\":\"Department\",\"designation\":\"Designation\"}', '1');

insert into `leave_mail_variables`( `type`, `data`, `status`) values('REMINDER_EMAIL', '{\"created_at\":\"Application Date\",\"days\":\"Number of days\",\"user_id\":\"Applicant name\",\"leave\":\"Leave Name\",\"fromDate\":\"From Date\",\"toDate\":\"To Date\",\"leaveRecordNumber\":\"Leave Record Number\",\"rejoin_approved_by\":\"Rejoin Approved By\",\"leave_rejoin_date\":\"Rejoin Date\",\"rejoin_remarks\":\"Rejoin Remarks\",\"org_name\":\"Organization Name\",\"department\":\"Department\",\"designation\":\"Designation\"}', NULL);

insert into `leave_mail_variables`( `type`, `data`, `status`) values('DUTIES_ASSIGNEE_MAIL', '{\"created_at\":\"Application Date\",\"days\":\"Number of days\",\"user_id\":\"Applicant name\",\"leave\":\"Leave Name\",\"fromDate\":\"From Date\",\"toDate\":\"To Date\",\"leaveRecordNumber\":\"Leave Record Number\",\"rejoin_approved_by\":\"Rejoin Approved By\",\"leave_rejoin_date\":\"Rejoin Date\",\"rejoin_remarks\":\"Rejoin Remarks\",\"org_name\":\"Organization Name\",\"department\":\"Department\",\"designation\":\"Designation\"}', NULL);





insert into `application_control`( `app_id`, `key`, `value`, `json`, `type`, `category`, `description`) values('1', 'upload_folder_essential', '<url-path>/uploads/uims/essential/', NULL, NULL, NULL, NULL);

insert into `application_control`( `app_id`, `key`, `value`, `json`, `type`, `category`, `description`) values( '1', 'view_images_essential', 'https://<ipofinstitute>/uploads/uims/essential/', NULL, NULL, NULL, NULL);

insert into `application_control`( `app_id`, `key`, `value`, `json`, `type`, `category`, `description`) values( '1', 'payroll_view_employer_contribution', '0', NULL, NULL, NULL, NULL);

insert into `application_control`(`app_id`, `key`, `value`, `json`, `type`, `category`, `description`) values( '1', 'allow_employee_to_update_critical', '1', NULL, 'integer', NULL, NULL);


 

TRUNCATE table `knowledge_application_control`;
INSERT INTO `knowledge_application_control` VALUES (1,'1','index_array','{\"SCI Index\":\"SCI Index\",\"Web of Science\":\"Web of Science\",\"SCOPUS Index\":\"SCOPUS Index\"}',NULL,'JSON',NULL,NULL,NULL),(2,'1','dfgrfdb','45',NULL,'INTEGER',NULL,NULL,NULL),(3,'1','dfghdfgjfghj','{\"SCI Index\":\"SCI Index\",\"Web of Science\":\"Web of Science\",\"SCOPUS Index\":\"SCOPUS Index\"}',NULL,'JSON',NULL,NULL,NULL),(4,'1','paper_level','{\"REG\":\"Regional\",\"STATE\":\"State\",\"NATIONAL\":\"National\",\"INTL\":\"International\"}',NULL,'JSON',NULL,NULL,NULL),(5,'1','paper_discipline','{\"1\":\"Sciences\",\"2\":\"Arts\",\"3\":\"Commerce\",\"4\":\"Engineering\",\"5\":\"Agriculture\",\"6\":\"Medical\",\"7\":\"Veterinary Sciences\",\"8\":\"Languages\",\"9\":\"Humanities\",\"10\":\"Social Sciences\",\"11\":\"Library\",\"12\":\"Education\",\"13\":\"Physical Education\",\"14\":\"Management\",\"15\":\"Architecture\"}',NULL,'JSON',NULL,NULL,NULL),(6,'1','paper_author','{\"SINGLE\":\"Single Author\",\"ONEOFTWO\":\"One of the two author\",\"FIRST\":\"First and Principal\",\"CORRESPONDING\":\"Corresponding Author\",\"OTHER\":\"Other/Joint Author\"}',NULL,'JSON',NULL,NULL,NULL),(7,'1','paper_audience','{\"1\":\"Only Me\",\"3\":\"All in OU\",\"4\":\"All in University\"}',NULL,'JSON',NULL,NULL,NULL),(8,'1','patent_output','{\"1\":\"Product\",\"2\":\"Policy Document\"}',NULL,'JSON',NULL,NULL,NULL),(9,'1','patent_audience','{\"1\":\"Only Me\",\"3\":\"All in OU\",\"4\":\"All in University\"}',NULL,'JSON',NULL,NULL,NULL),(10,'1','patent_stage','{\"1\":\"Filed\",\"2\":\"Published\",\"3\":\"Awarded\"}',NULL,'JSON',NULL,NULL,NULL),(11,'1','book_type','{\"AUTHORED\":\"Books Authored\",\"EDITED\":\"Editor of Book\",\"CHAPTER_EDITED\":\"Chapter in Edited Book\",\"TRANSLATED_BOOK\":\"Translation Works in Indian and Foreign Language- Chapter/Research Paper\",\"TRANSLATED_PAPER\":\"Translation Works in Indian and Foreign Language- Book\"}',NULL,'JSON',NULL,NULL,NULL);



INSERT INTO `auth_item` (`name`, `type`, `description`, `module_name`, `created_at`, `updated_at`, `privacy`, `spam`, `security`, `configuration`, `data_loss_risk`, `update_disable`) VALUES ('knowledge/knowledge-profile/create', '2', 'knowledge/knowledge-profile/create', 'knowledge', '1626420546', '1626420546', 'N', 'N', 'N', 'N', 'N', 0);

INSERT INTO `auth_item` (`name`, `type`, `description`, `module_name`, `created_at`, `updated_at`, `privacy`, `spam`, `security`, `configuration`, `data_loss_risk`, `update_disable`) VALUES ('knowledge/knowledge-profile/update', '2', 'knowledge/knowledge-profile/update', 'knowledge', '1626420546', '1626420546', 'N', 'N', 'N', 'N', 'N', 0);

INSERT INTO `auth_item` (`name`, `type`, `description`, `module_name`, `created_at`, `updated_at`, `privacy`, `spam`, `security`, `configuration`, `data_loss_risk`, `update_disable`) VALUES ('knowledge/knowledge-profile/view', '2', 'knowledge/knowledge-profile/view', 'knowledge', '1626420546', '1626420546', 'N', 'N', 'N', 'N', 'N', 0);

INSERT INTO `auth_item` (`name`, `type`, `description`, `module_name`, `created_at`, `updated_at`, `privacy`, `spam`, `security`, `configuration`, `data_loss_risk`, `update_disable`) VALUES ('knowledge/knowledge-profile/employee-index', '2', 'knowledge/knowledge-profile/employee-index', 'knowledge', '1626420546', '1626420546', 'N', 'N', 'N', 'N', 'N', 0);

INSERT INTO `auth_item` (`name`, `type`, `description`, `module_name`, `created_at`, `updated_at`, `privacy`, `spam`, `security`, `configuration`, `data_loss_risk`, `update_disable`) VALUES ('knowledge/knowledge-profile/sync-data', '2', 'knowledge/knowledge-profile/sync-data', 'knowledge', '1626420546', '1626420546', 'N', 'N', 'N', 'N', 'N', 0);


 

INSERT INTO `auth_item_child` (`parent`, `child`) VALUES ('knowledge_admin', 'knowledge/knowledge-profile/create');
INSERT INTO `auth_item_child` (`parent`, `child`) VALUES ('knowledge_admin', 'knowledge/knowledge-profile/update');
INSERT INTO `auth_item_child` (`parent`, `child`) VALUES ('knowledge_admin', 'knowledge/knowledge-profile/view');
INSERT INTO `auth_item_child` (`parent`, `child`) VALUES ('knowledge_admin', 'knowledge/knowledge-profile/index');
INSERT INTO `auth_item_child` (`parent`, `child`) VALUES ('knowledge_employee', 'knowledge/knowledge-profile/create');
INSERT INTO `auth_item_child` (`parent`, `child`) VALUES ('knowledge_employee', 'knowledge/knowledge-profile/update');
INSERT INTO `auth_item_child` (`parent`, `child`) VALUES ('knowledge_employee', 'knowledge/knowledge-profile/view');
INSERT INTO `auth_item_child` (`parent`, `child`) VALUES ('knowledge_admin', 'knowledge/knowledge-profile/sync-data');
INSERT INTO `auth_item_child` (`parent`, `child`) VALUES ('knowledge_admin', 'knowledge/knowledge-profile/employee-index');



INSERT INTO `auth_item_child` (`parent`, `child`) VALUES ('employee', 'leave/applications/print');
INSERT INTO `auth_item_child` (`parent`, `child`) VALUES ('knowledge_employee', 'knowledge/knowledge-book/get');
INSERT INTO `auth_item` (`name`, `type`, `description`, `data`, `module_name`, `created_at`, `updated_at`, `privacy`, `spam`, `security`, `configuration`, `data_loss_risk`) VALUES ('knowledge/knowledge-book/get', '2', 'knowledge/knowledge-book/get', 's:0:\"\";', 'knowledge', '1626416391', '1626416391', 'N', 'N', 'N', 'N', 'N');
INSERT INTO `auth_item_child` (`parent`, `child`) VALUES ('employee', 'leave/leave-account/get-remaining-leaves');
