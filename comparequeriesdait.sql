/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

USE `teqip_prod`; 

/* Foreign Keys must be dropped in the target to ensure that requires changes can be done*/

ALTER TABLE `cfs_uploads` 
	DROP FOREIGN KEY `cfs_uploads_ibfk_1`  ;

ALTER TABLE `core_college_course_list` 
	DROP FOREIGN KEY `core_college_course_list_ibfk_1`  , 
	DROP FOREIGN KEY `core_college_course_list_ibfk_2`  , 
	DROP FOREIGN KEY `core_college_course_list_ibfk_3`  , 
	DROP FOREIGN KEY `core_college_course_list_ibfk_4`  ;

ALTER TABLE `core_college_course_seats` 
	DROP FOREIGN KEY `core_college_course_seats_ibfk_1`  , 
	DROP FOREIGN KEY `core_college_course_seats_ibfk_2`  ;

ALTER TABLE `core_college_program_seats` 
	DROP FOREIGN KEY `core_college_program_seats_ibfk_1`  , 
	DROP FOREIGN KEY `core_college_program_seats_ibfk_2`  ;

ALTER TABLE `core_course_list` 
	DROP FOREIGN KEY `core_course_list_ibfk_1`  , 
	DROP FOREIGN KEY `core_course_list_ibfk_2`  , 
	DROP FOREIGN KEY `core_course_list_ibfk_3`  ;

ALTER TABLE `core_user_assignments` 
	DROP FOREIGN KEY `core_user_assignments_ibfk_3`  ;

ALTER TABLE `feedback_responses` 
	DROP FOREIGN KEY `feedback_responses_ibfk_1`  , 
	DROP FOREIGN KEY `feedback_responses_ibfk_2`  ;

ALTER TABLE `hostel_allocation` 
	DROP FOREIGN KEY `hostel_id_allocation`  , 
	DROP FOREIGN KEY `room_id`  ;

ALTER TABLE `hostel_facility` 
	DROP FOREIGN KEY `hostel_id_facility`  ;

ALTER TABLE `hostel_rooms` 
	DROP FOREIGN KEY `hostel_rooms_ibfk_1`  ;

ALTER TABLE `ims_items_issued` 
	DROP FOREIGN KEY `ims_items_issued_ibfk_1`  ;

ALTER TABLE `lcms_departmentProfile` 
	DROP FOREIGN KEY `departmentProfile_ibfk_1`  ;

ALTER TABLE `payroll_final_processed_salary_breakup` 
	DROP FOREIGN KEY `payroll_final_processed_salary_breakup_ibfk_1`  ;

ALTER TABLE `prg_batch_ou` 
	DROP FOREIGN KEY `prg_batch_ou_ibfk_2`  ;

ALTER TABLE `prg_course_evaluation_component` 
	DROP FOREIGN KEY `prg_course_evaluation_component_ibfk_1`  , 
	DROP FOREIGN KEY `prg_course_evaluation_component_ibfk_3`  , 
	DROP FOREIGN KEY `prg_course_evaluation_component_ibfk_4`  , 
	DROP FOREIGN KEY `prg_course_evaluation_component_ibfk_5`  ;

ALTER TABLE `prg_course_evaluation_session` 
	DROP FOREIGN KEY `prg_course_evaluation_session_ibfk_1`  ;

ALTER TABLE `rti_Response_From_Department` 
	DROP FOREIGN KEY `rti_Response_From_Department_ibfk_1`  ;

ALTER TABLE `vendor_detail` 
	DROP FOREIGN KEY `vendor_detail_ibfk_1`  ;


/* Alter table in target */
ALTER TABLE `academic_calendar` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first ;

/* Alter table in target */
ALTER TABLE `academic_calendar_entries` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first ;

/* Alter table in target */
ALTER TABLE `academic_cycle` 
	CHANGE `id` `id` varchar(20)  COLLATE utf8mb4_unicode_ci NOT NULL first , 
	CHANGE `code` `code` varchar(20)  COLLATE utf8mb4_unicode_ci NULL after `id` , 
	ADD COLUMN `sort_order` tinyint(4)   NULL after `update_disabled` , 
	CHANGE `created_at` `created_at` int(11)   NULL after `sort_order` ;

/* Alter table in target */
ALTER TABLE `academic_section` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first , 
	DROP KEY `name`, ADD UNIQUE KEY `name`(`name`,`programme_id`,`term`,`ou_id`,`academic_year`,`academic_calendar`) ;

/* Create table in target */
CREATE TABLE `academic_session`(
	`id` int(11) unsigned NOT NULL  auto_increment , 
	`name` varchar(100) COLLATE utf8mb4_unicode_ci NULL  , 
	`type` varchar(128) COLLATE utf8mb4_unicode_ci NULL  , 
	`academic_year` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`level` varchar(128) COLLATE utf8mb4_unicode_ci NULL  , 
	`year` int(11) NULL  , 
	`cycle` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL  , 
	`description` varchar(195) COLLATE utf8mb4_unicode_ci NULL  , 
	`status` varchar(50) COLLATE utf8mb4_unicode_ci NULL  DEFAULT 'DRAFT' , 
	`visibility` varchar(10) COLLATE utf8mb4_unicode_ci NULL  DEFAULT '1' , 
	`update_disabled` tinyint(4) NULL  DEFAULT 0 , 
	`created_at` int(11) NULL  , 
	`updated_at` int(11) NULL  , 
	`created_by` int(11) NULL  , 
	`updated_by` int(11) NULL  , 
	`updated` timestamp NULL  , 
	PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Alter table in target */
ALTER TABLE `academic_year` 
	CHANGE `year` `year` int(4)   NOT NULL after `title` , 
	CHANGE `status` `status` tinyint(5)   NOT NULL DEFAULT 0 after `cycle` , 
	CHANGE `start_date` `start_date` bigint(15)   NULL COMMENT 'time in unix time stamp' after `start_date_time` , 
	CHANGE `end_date` `end_date` bigint(15)   NULL COMMENT 'time in unix time stamp' after `start_date` , 
	CHANGE `verify` `verify` tinyint(3)   NULL DEFAULT 0 after `prefix` , 
	CHANGE `created_at` `created_at` int(15)   NULL after `remarks` , 
	CHANGE `updated_at` `updated_at` int(15)   NOT NULL after `created_at` ;

/* Alter table in target */
ALTER TABLE `academic_year_display_format` 
	CHANGE `id` `id` int(10)   NOT NULL first ;

/* Alter table in target */
ALTER TABLE `adm_programme_docs_map` 
	CHANGE `status` `status` tinyint(3)   NULL DEFAULT 1 after `document_id` ;

/* Alter table in target */
ALTER TABLE `adm_programme_qualification_map` 
	CHANGE `status` `status` tinyint(3)   NULL after `adm_type` , 
	CHANGE `created_by` `created_by` int(11)   NULL after `updated_at` , 
	CHANGE `updated` `updated` timestamp   NOT NULL DEFAULT CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP after `updated_by` , 
	CHANGE `ip` `ip` varchar(50)  COLLATE utf8_unicode_ci NULL after `updated` ;

/* Alter table in target */
ALTER TABLE `adm_session` 
	CHANGE `year` `year` int(4)   NOT NULL after `title` , 
	CHANGE `status` `status` tinyint(5)   NOT NULL DEFAULT 0 after `cycle` , 
	CHANGE `start_date` `start_date` bigint(15)   NULL COMMENT 'time in unix time stamp' after `start_date_time` , 
	CHANGE `end_date` `end_date` bigint(15)   NULL COMMENT 'time in unix time stamp' after `start_date` , 
	CHANGE `verify` `verify` tinyint(3)   NULL DEFAULT 0 after `prefix` , 
	CHANGE `created_at` `created_at` int(15)   NULL after `verify` , 
	CHANGE `updated_at` `updated_at` int(15)   NOT NULL after `created_at` ;

/* Alter table in target */
ALTER TABLE `adm_state_district` 
	CHANGE `status` `status` tinyint(3)   NULL DEFAULT 0 after `state_id` ;

/* Alter table in target */
ALTER TABLE `admin_login` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first , 
	CHANGE `collegeId` `collegeId` int(11) unsigned   NULL after `mobile` , 
	CHANGE `depId` `depId` int(11) unsigned   NULL after `collegeId` ;

/* Alter table in target */
ALTER TABLE `affiliation_student_course_category` 
	CHANGE `students_male_st` `students_male_st` int(11) unsigned   NULL after `students_male_sc` , 
	CHANGE `students_male_obc` `students_male_obc` int(11) unsigned   NULL after `students_male_st` , 
	CHANGE `students_male_gen` `students_male_gen` int(11) unsigned   NULL after `students_male_obc` , 
	CHANGE `students_female_gen` `students_female_gen` int(11) unsigned   NULL after `students_male_gen` , 
	CHANGE `students_female_obc` `students_female_obc` int(11) unsigned   NULL after `students_female_gen` , 
	CHANGE `students_female_sc` `students_female_sc` int(11) unsigned   NULL after `students_female_obc` , 
	CHANGE `students_female_st` `students_female_st` int(11) unsigned   NULL after `students_female_sc` ;

/* Create table in target */
CREATE TABLE `alumni_activity_log`(
	`id` int(11) NOT NULL  auto_increment , 
	`alumni_id` int(11) NULL  , 
	`activity` text COLLATE utf8mb4_unicode_ci NULL  , 
	`details` text COLLATE utf8mb4_unicode_ci NULL  , 
	`created_at` varchar(45) COLLATE utf8mb4_unicode_ci NULL  , 
	`created_by` varchar(45) COLLATE utf8mb4_unicode_ci NULL  , 
	`ip` varchar(45) COLLATE utf8mb4_unicode_ci NULL  , 
	PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Create table in target */
CREATE TABLE `alumni_communication_log`(
	`id` int(11) NOT NULL  auto_increment , 
	`send_choice` int(11) NOT NULL  , 
	`to_email` text COLLATE latin1_swedish_ci NOT NULL  , 
	`to_mobile` text COLLATE latin1_swedish_ci NULL  , 
	`subject` text COLLATE latin1_swedish_ci NOT NULL  , 
	`message` text COLLATE latin1_swedish_ci NOT NULL  , 
	`sms` text COLLATE latin1_swedish_ci NULL  , 
	`date` timestamp NULL  , 
	`ip` varchar(25) COLLATE latin1_swedish_ci NULL  , 
	`user_id` int(11) NULL  , 
	`formno` text COLLATE latin1_swedish_ci NULL  , 
	`batch_id` int(11) NULL  , 
	PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET='latin1' COLLATE='latin1_swedish_ci';


/* Create table in target */
CREATE TABLE `alumni_experience`(
	`id` int(11) NOT NULL  auto_increment , 
	`student_id` int(11) NOT NULL  , 
	`designation` varchar(20) COLLATE utf8mb4_unicode_ci NULL  , 
	`working_status` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`pay_scale` varchar(40) COLLATE utf8mb4_unicode_ci NULL  , 
	`from_date` varchar(100) COLLATE utf8mb4_unicode_ci NULL  , 
	`to_date` varchar(100) COLLATE utf8mb4_unicode_ci NULL  , 
	`institute` varchar(255) COLLATE utf8mb4_unicode_ci NULL  , 
	`created_at` int(11) NULL  , 
	`updated_at` int(11) NULL  , 
	`created_by` int(11) NULL  , 
	`updated_by` int(11) NULL  , 
	`updated` timestamp NOT NULL  DEFAULT CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP , 
	`ip` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Create table in target */
CREATE TABLE `alumni_logs_mail`(
	`id` int(10) unsigned NOT NULL  auto_increment , 
	`from` varchar(512) COLLATE latin1_swedish_ci NULL  , 
	`to` text COLLATE latin1_swedish_ci NULL  , 
	`subject` text COLLATE latin1_swedish_ci NULL  , 
	`content` text COLLATE latin1_swedish_ci NULL  , 
	`created_at` int(11) NULL  , 
	`created_by` int(11) NULL  , 
	`ip` varchar(50) COLLATE latin1_swedish_ci NULL  , 
	PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET='latin1' COLLATE='latin1_swedish_ci';


/* Create table in target */
CREATE TABLE `alumni_mail_template`(
	`id` int(11) NOT NULL  auto_increment , 
	`mail` varchar(45) COLLATE utf8mb4_unicode_ci NULL  , 
	`mail_body` text COLLATE utf8mb4_unicode_ci NULL  , 
	`subject` varchar(255) COLLATE utf8mb4_unicode_ci NULL  , 
	`status` varchar(45) COLLATE utf8mb4_unicode_ci NULL  , 
	`created_at` int(11) NULL  , 
	`updated_at` int(11) NULL  , 
	`created_by` int(11) NULL  , 
	`updated_by` int(11) NULL  , 
	`ip` varchar(45) COLLATE utf8mb4_unicode_ci NULL  , 
	PRIMARY KEY (`id`) , 
	UNIQUE KEY `mail_UNIQUE`(`mail`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Create table in target */
CREATE TABLE `alumni_mail_template_master`(
	`id` int(11) NOT NULL  auto_increment , 
	`mail` varchar(45) COLLATE utf8mb4_unicode_ci NULL  , 
	`variables` text COLLATE utf8mb4_unicode_ci NULL  , 
	`created_at` int(11) NULL  , 
	`updated_at` int(11) NULL  , 
	`created_by` int(11) NULL  , 
	`updated_by` int(11) NULL  , 
	`ip` varchar(45) COLLATE utf8mb4_unicode_ci NULL  , 
	PRIMARY KEY (`id`) , 
	UNIQUE KEY `mail_UNIQUE`(`mail`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Create table in target */
CREATE TABLE `alumni_otp_message`(
	`id` int(11) unsigned NOT NULL  auto_increment , 
	`user` varchar(255) COLLATE latin1_swedish_ci NOT NULL  , 
	`otp` int(11) unsigned NOT NULL  , 
	`expiry_time` bigint(20) unsigned NOT NULL  , 
	`service` tinyint(4) unsigned NOT NULL  , 
	`mode` tinyint(4) unsigned NOT NULL  COMMENT '1 = MAIL, 2 => SMS' , 
	`used` tinyint(4) unsigned NULL  DEFAULT 0 , 
	`request_ip` varchar(40) COLLATE latin1_swedish_ci NULL  , 
	`response_ip` varchar(40) COLLATE latin1_swedish_ci NULL  , 
	`created_at` bigint(20) unsigned NULL  , 
	`updated_at` bigint(20) unsigned NULL  , 
	PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET='latin1' COLLATE='latin1_swedish_ci';


/* Create table in target */
CREATE TABLE `alumni_ou_admin_mapping`(
	`id` int(11) NOT NULL  auto_increment , 
	`ou_id` int(11) NOT NULL  , 
	`user_id` varchar(255) COLLATE latin1_swedish_ci NOT NULL  , 
	`status` tinyint(4) NULL  , 
	`created_at` int(11) NULL  , 
	`updated_at` int(11) NULL  , 
	`created_by` int(11) NULL  , 
	`updated_by` int(11) NULL  , 
	`ip` varchar(255) COLLATE latin1_swedish_ci NULL  , 
	PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET='latin1' COLLATE='latin1_swedish_ci';


/* Create table in target */
CREATE TABLE `alumni_ou_mapping`(
	`id` int(11) NOT NULL  auto_increment , 
	`ou_id` int(11) NOT NULL  , 
	`alumni_id` varchar(255) COLLATE latin1_swedish_ci NOT NULL  , 
	`status` tinyint(4) NULL  , 
	`created_at` int(11) NULL  , 
	`updated_at` int(11) NULL  , 
	`created_by` int(11) NULL  , 
	`updated_by` int(11) NULL  , 
	`ip` varchar(255) COLLATE latin1_swedish_ci NULL  , 
	`program_id` int(11) NULL  , 
	`year_of_passing` int(11) NULL  , 
	PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET='latin1' COLLATE='latin1_swedish_ci';


/* Alter table in target */
ALTER TABLE `alumni_personal` 
	CHANGE `photo` `photo` text  COLLATE utf8mb4_unicode_ci NULL after `employer_name` , 
	CHANGE `cv` `cv` text  COLLATE utf8mb4_unicode_ci NULL after `photo` , 
	ADD COLUMN `account_created` tinyint(4)   NULL DEFAULT 0 after `updated` , 
	ADD COLUMN `account_created_at` datetime   NULL after `account_created` , 
	ADD COLUMN `firstLogin` tinyint(4)   NULL after `account_created_at` , 
	ADD COLUMN `otp_email` varchar(45)  COLLATE utf8mb4_unicode_ci NULL after `firstLogin` , 
	ADD COLUMN `otp_mobile` varchar(45)  COLLATE utf8mb4_unicode_ci NULL after `otp_email` ;

/* Create table in target */
CREATE TABLE `alumni_qualification_other`(
	`id` int(11) NOT NULL  auto_increment , 
	`student_id` int(11) NOT NULL  , 
	`level` varchar(20) COLLATE utf8mb4_unicode_ci NULL  , 
	`degree` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`subject` text COLLATE utf8mb4_unicode_ci NULL  , 
	`result_type` varchar(40) COLLATE utf8mb4_unicode_ci NULL  , 
	`percentage` float NULL  , 
	`year` int(11) NULL  , 
	`institute` varchar(255) COLLATE utf8mb4_unicode_ci NULL  , 
	`created_at` int(11) NULL  , 
	`updated_at` int(11) NULL  , 
	`created_by` int(11) NULL  , 
	`updated_by` int(11) NULL  , 
	`updated` timestamp NOT NULL  DEFAULT CURRENT_TIMESTAMP , 
	`ip` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Alter table in target */
ALTER TABLE `auth_item` 
	CHANGE `name` `name` varchar(192)  COLLATE utf8_unicode_ci NOT NULL first , 
	CHANGE `created_at` `created_at` int(10) unsigned   NULL after `module_name` , 
	CHANGE `updated_at` `updated_at` int(10) unsigned   NULL after `created_at` , 
	ADD COLUMN `privacy` varchar(1)  COLLATE utf8_unicode_ci NULL DEFAULT 'N' after `updated_at` , 
	ADD COLUMN `spam` varchar(1)  COLLATE utf8_unicode_ci NULL DEFAULT 'N' after `privacy` , 
	ADD COLUMN `security` varchar(1)  COLLATE utf8_unicode_ci NULL DEFAULT 'N' after `spam` , 
	ADD COLUMN `configuration` varchar(1)  COLLATE utf8_unicode_ci NULL DEFAULT 'N' after `security` , 
	ADD COLUMN `data_loss_risk` varchar(1)  COLLATE utf8_unicode_ci NULL DEFAULT 'N' after `configuration` , 
	ADD COLUMN `update_disable` tinyint(4)   NULL after `data_loss_risk` ;

/* Alter table in target */
ALTER TABLE `cas_pbas_applications` 
	ADD KEY `emp_id`(`emp_id`,`session`) , 
	ADD KEY `emp_id_2`(`emp_id`) , 
	ADD KEY `id`(`id`,`session`) ;

/* Alter table in target */
ALTER TABLE `cas_pbas_emp_details` 
	ADD KEY `emp_id`(`emp_id`,`pbas_id`,`session_id`,`det_cat`,`det_name`,`det_ref_id`) , 
	ADD KEY `emp_id_2`(`emp_id`) ;

/* Alter table in target */
ALTER TABLE `ccs_groups` 
	CHANGE `created_by` `created_by` int(30)   NULL after `description` ;

/* Alter table in target */
ALTER TABLE `ccs_mailing_list` 
	CHANGE `created_at` `created_at` int(11) unsigned   NULL after `name` , 
	CHANGE `updated_at` `updated_at` int(11) unsigned   NULL after `created_at` , 
	CHANGE `created_by` `created_by` int(11) unsigned   NULL after `updated_at` , 
	CHANGE `updated_by` `updated_by` int(11) unsigned   NULL after `created_by` ;

/* Alter table in target */
ALTER TABLE `ccs_message_list` 
	CHANGE `created_at` `created_at` int(11) unsigned   NULL after `name` , 
	CHANGE `updated_at` `updated_at` int(11) unsigned   NULL after `created_at` , 
	CHANGE `created_by` `created_by` int(11) unsigned   NULL after `updated_at` , 
	CHANGE `updated_by` `updated_by` int(11) unsigned   NULL after `created_by` ;

/* Alter table in target */
ALTER TABLE `cfs_uploads` 
	CHANGE `order_id` `order_id` int(11) unsigned   NOT NULL after `id` ;

/* Alter table in target */
ALTER TABLE `choice` COLLATE ='utf8mb4_general_ci' ;

/* Alter table in target */
ALTER TABLE `company_profile` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first , 
	CHANGE `companyHrContact` `companyHrContact` bigint(10)   NOT NULL after `companyHrName` ;

/* Alter table in target */
ALTER TABLE `company_profile_archive` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first ;

/* Alter table in target */
ALTER TABLE `core_administrative_unit` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first , 
	CHANGE `pincode` `pincode` int(15)   NULL after `country` , 
	CHANGE `status` `status` tinyint(5)   NOT NULL DEFAULT 0 after `visible` , 
	CHANGE `verified` `verified` tinyint(3)   NULL DEFAULT 0 after `status` ;

/* Alter table in target */
ALTER TABLE `core_administrative_unit_alias` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first ;

/* Alter table in target */
ALTER TABLE `core_bank_list` 
	CHANGE `created_by` `created_by` int(15)   NOT NULL after `created_at` , 
	CHANGE `updated_by` `updated_by` int(15)   NOT NULL after `updated_at` ;

/* Alter table in target */
ALTER TABLE `core_college_course_list` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first , 
	CHANGE `course_type` `course_type` tinyint(5)   NOT NULL after `course_name` , 
	CHANGE `status` `status` tinyint(5)   NOT NULL DEFAULT 1 after `seat_total_all` , 
	CHANGE `created_at` `created_at` int(11) unsigned   NULL after `updated_by` , 
	CHANGE `updated_at` `updated_at` int(11) unsigned   NULL after `created_at` ;

/* Alter table in target */
ALTER TABLE `core_college_course_seats` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first , 
	CHANGE `ou_id` `ou_id` int(11) unsigned   NOT NULL after `id` , 
	CHANGE `course_id` `course_id` int(11) unsigned   NOT NULL after `ou_id` , 
	CHANGE `total_seats` `total_seats` int(11) unsigned   NOT NULL DEFAULT 0 after `category` , 
	CHANGE `allocated_seats` `allocated_seats` int(11) unsigned   NULL DEFAULT 0 after `admission_fee` , 
	CHANGE `vacant_seats` `vacant_seats` int(11) unsigned   NULL DEFAULT 0 after `allocated_seats` , 
	CHANGE `seat_type` `seat_type` tinyint(4) unsigned   NOT NULL DEFAULT 0 COMMENT '1 => Supernumerary, 0 => Non-supernumerary' after `percentage` ;

/* Alter table in target */
ALTER TABLE `core_college_program_seats` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first , 
	CHANGE `ou_id` `ou_id` int(11) unsigned   NOT NULL after `id` , 
	CHANGE `total_seats` `total_seats` int(11) unsigned   NOT NULL DEFAULT 0 after `category` , 
	CHANGE `allocated_seats` `allocated_seats` int(11) unsigned   NULL DEFAULT 0 after `admission_fee` , 
	CHANGE `vacant_seats` `vacant_seats` int(11) unsigned   NULL DEFAULT 0 after `allocated_seats` , 
	CHANGE `seat_type` `seat_type` tinyint(4) unsigned   NOT NULL DEFAULT 0 COMMENT '1 => Supernumerary, 0 => Non-supernumerary' after `percentage` ;

/* Alter table in target */
ALTER TABLE `core_course_list` 
	CHANGE `course_type` `course_type` tinyint(11) unsigned   NOT NULL COMMENT 'pg/ug/diploma,crtificate' after `subject` , 
	CHANGE `program` `program` tinyint(4) unsigned   NOT NULL COMMENT 'Bsc(H),Bsc(Program),B.Sc(Applied),bcom,ma,msc' after `course_type` , 
	CHANGE `duration_months` `duration_months` int(11) unsigned   NOT NULL COMMENT 'numbers of months' after `program` , 
	CHANGE `stream` `stream` tinyint(4) unsigned   NOT NULL DEFAULT 1 COMMENT 'science,com,arts/humanities' after `duration_months` , 
	CHANGE `department` `department` int(11) unsigned   NULL after `stream` , 
	CHANGE `faculty` `faculty` int(11) unsigned   NULL after `department` , 
	CHANGE `visible` `visible` tinyint(4) unsigned   NULL DEFAULT 1 COMMENT 'public or private' after `fee_mode` , 
	CHANGE `status` `status` tinyint(4) unsigned   NULL DEFAULT 1 COMMENT 'enabled/disabled' after `visible` ;

/* Alter table in target */
ALTER TABLE `core_course_type` 
	CHANGE `status` `status` tinyint(4) unsigned   NULL DEFAULT 1 after `description` , 
	CHANGE `visible` `visible` tinyint(4) unsigned   NULL DEFAULT 1 after `status` ;

/* Alter table in target */
ALTER TABLE `core_evaluation_criteria` 
	CHANGE `title` `title` varchar(50)  COLLATE utf8mb4_unicode_ci NOT NULL after `id` , 
	CHANGE `short_code` `short_code` varchar(10)  COLLATE utf8mb4_unicode_ci NULL after `title` , 
	CHANGE `description` `description` mediumtext  COLLATE utf8mb4_unicode_ci NULL after `visible` , DEFAULT CHARSET='utf8mb4', COLLATE ='utf8mb4_unicode_ci' ;

/* Alter table in target */
ALTER TABLE `core_institutions` 
	CHANGE `status` `status` tinyint(5)   NOT NULL after `geo_coordinates` ;

/* Alter table in target */
ALTER TABLE `core_mailer` 
	CHANGE `use_file_transport` `use_file_transport` tinyint(3)   NULL DEFAULT 0 after `view_path` , 
	CHANGE `status` `status` tinyint(3)   NULL DEFAULT 0 after `use_file_transport` , 
	CHANGE `use_random` `use_random` tinyint(3)   NULL DEFAULT 0 after `status` ;

/* Create table in target */
CREATE TABLE `core_module`(
	`name` varchar(195) COLLATE utf8mb4_unicode_ci NOT NULL  , 
	`display_name` varchar(195) COLLATE utf8mb4_unicode_ci NULL  , 
	`menuitem_class_path` varchar(500) COLLATE utf8mb4_unicode_ci NULL  , 
	`status` varchar(20) COLLATE utf8mb4_unicode_ci NULL  DEFAULT 'DRAFT' , 
	`sort_order` int(11) NULL  DEFAULT 1000 , 
	`version` varchar(45) COLLATE utf8mb4_unicode_ci NULL  , 
	`created_at` int(11) NULL  , 
	`created_by` int(11) NULL  , 
	`updated_at` int(11) NULL  , 
	`updated_by` int(11) NULL  , 
	`updated` timestamp NOT NULL  DEFAULT CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP , 
	PRIMARY KEY (`name`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Alter table in target */
ALTER TABLE `core_program_discipline` COLLATE ='utf8mb4_general_ci' ;

/* Alter table in target */
ALTER TABLE `core_program_level` COLLATE ='utf8mb4_general_ci' ;

/* Alter table in target */
ALTER TABLE `core_program_list` 
	CHANGE `duration_months` `duration_months` int(11) unsigned   NOT NULL COMMENT 'numbers of months' after `program_type` , 
	CHANGE `stream` `stream` tinyint(4) unsigned   NOT NULL DEFAULT 1 COMMENT 'science,com,arts/humanities' after `duration_months` , 
	CHANGE `status` `status` tinyint(4) unsigned   NULL DEFAULT 1 COMMENT 'enabled/disabled' after `fee_mode` ;

/* Alter table in target */
ALTER TABLE `core_program_scheme` 
	CHANGE `status` `status` tinyint(4) unsigned   NULL DEFAULT 0 after `title` , 
	CHANGE `visible` `visible` tinyint(4) unsigned   NULL DEFAULT 0 after `status` ;

/* Alter table in target */
ALTER TABLE `core_program_type` 
	CHANGE `status` `status` tinyint(4) unsigned   NULL DEFAULT 1 after `description` , 
	CHANGE `visible` `visible` tinyint(4) unsigned   NULL DEFAULT 1 after `update_disabled` , COLLATE ='utf8mb4_general_ci' ;

/* Alter table in target */
ALTER TABLE `core_programme` 
	CHANGE `programme_type` `programme_type` varchar(128)  COLLATE utf8mb4_general_ci NULL after `ugc_sd_id` , 
	CHANGE `level` `level` varchar(128)  COLLATE utf8mb4_general_ci NULL after `programme_type` , 
	CHANGE `credit_scheme` `credit_scheme` varchar(128)  COLLATE utf8mb4_general_ci NOT NULL after `exam_scheme` , 
	CHANGE `broad_discipline_area` `broad_discipline_area` varchar(255)  COLLATE utf8mb4_general_ci NULL after `min_age` , 
	CHANGE `abreviated` `abreviated` varchar(128)  COLLATE utf8mb4_general_ci NULL after `broad_discipline_area` , 
	CHANGE `expanded` `expanded` varchar(255)  COLLATE utf8mb4_general_ci NULL after `abreviated` , 
	CHANGE `entry_qualification` `entry_qualification` varchar(128)  COLLATE utf8mb4_general_ci NULL after `total_programme_division` , 
	CHANGE `gazette` `gazette` varchar(128)  COLLATE utf8mb4_general_ci NULL after `discipline_count` , 
	CHANGE `delivery_mode` `delivery_mode` varchar(10)  COLLATE utf8mb4_general_ci NOT NULL after `specialization` , 
	CHANGE `max_duration` `max_duration` int(10)   NULL after `faculty` , 
	CHANGE `study_language_modes` `study_language_modes` varchar(1000)  COLLATE utf8mb4_general_ci NULL after `max_duration` , 
	CHANGE `description` `description` text  COLLATE utf8mb4_general_ci NULL after `notice` , 
	CHANGE `remarks` `remarks` text  COLLATE utf8mb4_general_ci NULL after `description` , 
	CHANGE `extra1` `extra1` varchar(198)  COLLATE utf8mb4_general_ci NULL after `evaluation_scheme` , 
	CHANGE `extra2` `extra2` varchar(198)  COLLATE utf8mb4_general_ci NULL after `extra1` , 
	CHANGE `extra3` `extra3` varchar(198)  COLLATE utf8mb4_general_ci NULL after `extra2` ;

/* Alter table in target */
ALTER TABLE `core_programme_detail` 
	CHANGE `programme_id` `programme_id` int(20)   NOT NULL after `id` ;

/* Alter table in target */
ALTER TABLE `core_session` 
	CHANGE `status` `status` tinyint(5)   NOT NULL DEFAULT 0 after `title` ;

/* Alter table in target */
ALTER TABLE `core_session_program` 
	CHANGE `duration_months` `duration_months` int(11) unsigned   NOT NULL COMMENT 'numbers of months' after `program_type` , 
	CHANGE `stream` `stream` tinyint(4) unsigned   NOT NULL DEFAULT 1 COMMENT 'science,com,arts/humanities' after `duration_months` , 
	CHANGE `status` `status` tinyint(4) unsigned   NULL DEFAULT 1 COMMENT 'enabled/disabled' after `fee_mode` , 
	CHANGE `seat_total` `seat_total` int(10)   NULL DEFAULT 0 after `description` , 
	CHANGE `seat_supnum` `seat_supnum` int(10)   NULL DEFAULT 0 after `seat_total` , 
	CHANGE `seat_total_all` `seat_total_all` int(10)   NULL DEFAULT 0 after `seat_supnum` ;

/* Alter table in target */
ALTER TABLE `core_user` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment COMMENT 'refrence to other tables or data if required' first , 
	CHANGE `ip` `ip` varchar(40)  COLLATE utf8mb4_unicode_ci NULL COMMENT 'last login ip' after `validatity_end_date` , 
	CHANGE `firstLogin` `firstLogin` tinyint(4)   NULL DEFAULT 1 after `ip` , 
	ADD COLUMN `forced_password_reset` tinyint(4)   NULL after `otp_generation_time` , 
	ADD COLUMN `two_factor_authentication` tinyint(4)   NULL after `forced_password_reset` , 
	DROP COLUMN `depId` , 
	DROP COLUMN `reset` , 
	DROP COLUMN `collegeId` , 
	DROP COLUMN `role` ;

/* Create table in target */
CREATE TABLE `core_user_application_control`(
	`id` int(10) unsigned NOT NULL  auto_increment , 
	`app_id` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL  , 
	`key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL  , 
	`value` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL  , 
	`json` varchar(1000) COLLATE utf8mb4_unicode_ci NULL  , 
	`type` varchar(20) COLLATE utf8mb4_unicode_ci NULL  , 
	`category` varchar(20) COLLATE utf8mb4_unicode_ci NULL  , 
	`description` varchar(255) COLLATE utf8mb4_unicode_ci NULL  , 
	PRIMARY KEY (`id`) , 
	UNIQUE KEY `key`(`key`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Alter table in target */
ALTER TABLE `core_user_assignments` 
	CHANGE `ou` `ou` int(11) unsigned   NOT NULL COMMENT 'department,faculty etc' after `id` , 
	CHANGE `user_id` `user_id` int(11) unsigned   NOT NULL COMMENT 'employee unique id from employee table' after `designation` , 
	ADD COLUMN `reporting_to_ou` int(11)   NULL after `substantive_post` , 
	ADD COLUMN `reporting_to_designation` varchar(50)  COLLATE utf8mb4_unicode_ci NULL after `reporting_to_ou` , 
	CHANGE `created_at` `created_at` int(10) unsigned   NULL after `reporting_to_designation` ;

/* Alter table in target */
ALTER TABLE `country` 
	CHANGE `status` `status` tinyint(3)   NULL after `name` ;

/* Alter table in target */
ALTER TABLE `degreeName` 
	CHANGE `status` `status` tinyint(5)   NOT NULL after `degreeName` ;

/* Alter table in target */
ALTER TABLE `document_system` 
	CHANGE `id` `id` int(10)   NOT NULL auto_increment first , 
	ADD COLUMN `other_members` text  COLLATE utf8_unicode_ci NULL after `author_id` , 
	CHANGE `series_name` `series_name` varchar(255)  COLLATE utf8_unicode_ci NULL after `other_members` ;

/* Alter table in target */
ALTER TABLE `document_system_authors` 
	CHANGE `id` `id` int(10)   NOT NULL auto_increment first , 
	CHANGE `document_id` `document_id` int(10)   NULL after `author_name` ;

/* Alter table in target */
ALTER TABLE `document_system_report` 
	CHANGE `document_id` `document_id` int(50)   NULL after `report` ;

/* Alter table in target */
ALTER TABLE `document_type` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first ;

/* Alter table in target */
ALTER TABLE `ehousing_employee_record` 
	CHANGE `confirm` `confirm` tinyint(2)   NULL after `house_id` , 
	CHANGE `status` `status` tinyint(2)   NULL after `updated_at` ;

/* Alter table in target */
ALTER TABLE `ehousing_registration_form` 
	CHANGE `emp_id` `emp_id` varchar(11)  COLLATE utf8mb4_general_ci NULL after `user_id` , 
	CHANGE `PayInPayMatrix` `PayInPayMatrix` int(100)   NOT NULL after `pay_level` , 
	CHANGE `Spouse_Univ_AllotteeName` `Spouse_Univ_AllotteeName` text  COLLATE utf8mb4_general_ci NULL after `SpouseUnivAccomd` , 
	CHANGE `Spouse_Univ_Locality` `Spouse_Univ_Locality` text  COLLATE utf8mb4_general_ci NULL after `Spouse_Univ_HouseType` , 
	CHANGE `Spouse_Univ_Block` `Spouse_Univ_Block` text  COLLATE utf8mb4_general_ci NULL after `Spouse_Univ_Locality` , 
	CHANGE `Spouse_Univ_HouseNo` `Spouse_Univ_HouseNo` text  COLLATE utf8mb4_general_ci NULL after `Spouse_Univ_Block` , 
	CHANGE `Spouse_Govt_Accomod` `Spouse_Govt_Accomod` text  COLLATE utf8mb4_general_ci NOT NULL after `Spouse_Univ_HouseNo` , 
	CHANGE `Spouse_Govt_Name` `Spouse_Govt_Name` text  COLLATE utf8mb4_general_ci NULL after `Spouse_Govt_Accomod` , 
	CHANGE `Spouse_Govt_AlotteeName` `Spouse_Govt_AlotteeName` text  COLLATE utf8mb4_general_ci NULL after `Spouse_Govt_Name` , 
	CHANGE `Spouse_Govt_AlotmentAddr` `Spouse_Govt_AlotmentAddr` text  COLLATE utf8mb4_general_ci NULL after `Spouse_Govt_AlotteeName` , 
	CHANGE `spouse_own_address` `spouse_own_address` varchar(255)  COLLATE utf8mb4_general_ci NULL after `Spouse_OwnProperty` , 
	CHANGE `preference` `preference` varchar(255)  COLLATE utf8mb4_general_ci NULL after `TTH` , 
	CHANGE `years_of_service` `years_of_service` tinyint(3)   NULL after `preference` , 
	CHANGE `AlternateMobile` `AlternateMobile` bigint(11)   NULL after `Mobile` , 
	CHANGE `Email` `Email` varchar(190)  COLLATE utf8mb4_general_ci NULL after `AlternateMobile` , 
	CHANGE `photo` `photo` varchar(255)  COLLATE utf8mb4_general_ci NULL after `applicationType` , 
	CHANGE `signature` `signature` varchar(255)  COLLATE utf8mb4_general_ci NULL after `photo` , 
	CHANGE `apr` `apr` varchar(255)  COLLATE utf8mb4_general_ci NULL after `signature` , 
	CHANGE `med_certificate` `med_certificate` varchar(255)  COLLATE utf8mb4_general_ci NULL after `apr` , 
	CHANGE `allotment` `allotment` tinyint(3)   NULL after `med_certificate` , 
	CHANGE `application_no` `application_no` varchar(50)  COLLATE utf8mb4_general_ci NULL after `allotment` , 
	CHANGE `status` `status` tinyint(3)   NULL after `application_no` , 
	CHANGE `remarks` `remarks` text  COLLATE utf8mb4_general_ci NULL after `status` , 
	CHANGE `ip` `ip` varchar(32)  COLLATE utf8mb4_general_ci NULL after `updated_by` , COLLATE ='utf8mb4_general_ci' ;

/* Alter table in target */
ALTER TABLE `ehousing_scheme` 
	CHANGE `docs_required` `docs_required` tinyint(3)   NULL after `no_house_preference` , 
	CHANGE `status` `status` tinyint(3)   NULL after `docs_required` ;

/* Alter table in target */
ALTER TABLE `ems_academic_details` 
	CHANGE `id` `id` varchar(50)  COLLATE utf8mb4_general_ci NOT NULL first , 
	CHANGE `employee_id` `employee_id` varchar(50)  COLLATE utf8mb4_general_ci NOT NULL after `id` , 
	CHANGE `type_of_degree` `type_of_degree` varchar(50)  COLLATE utf8mb4_general_ci NULL after `employee_id` , 
	CHANGE `name_of_degree` `name_of_degree` varchar(255)  COLLATE utf8mb4_general_ci NULL after `type_of_degree` , 
	CHANGE `subject` `subject` varchar(255)  COLLATE utf8mb4_general_ci NULL after `name_of_degree` , 
	CHANGE `marking_scheme` `marking_scheme` varchar(15)  COLLATE utf8mb4_general_ci NULL after `subject` , 
	CHANGE `value` `value` varchar(50)  COLLATE utf8mb4_general_ci NULL after `marking_scheme` , 
	CHANGE `equivalent_percentage` `equivalent_percentage` varchar(50)  COLLATE utf8mb4_general_ci NULL after `value` , 
	CHANGE `date_reg` `date_reg` varchar(50)  COLLATE utf8mb4_general_ci NULL after `year_of_passing` , 
	CHANGE `date_sub` `date_sub` varchar(50)  COLLATE utf8mb4_general_ci NULL after `date_reg` , 
	CHANGE `date_award` `date_award` varchar(50)  COLLATE utf8mb4_general_ci NULL after `date_sub` , 
	CHANGE `university` `university` varchar(255)  COLLATE utf8mb4_general_ci NULL after `date_award` , 
	CHANGE `other_university` `other_university` varchar(255)  COLLATE utf8mb4_general_ci NULL after `university` , 
	CHANGE `title` `title` varchar(255)  COLLATE utf8mb4_general_ci NULL after `other_university` , 
	CHANGE `degree_status` `degree_status` varchar(15)  COLLATE utf8mb4_general_ci NULL after `title` , 
	CHANGE `state` `state` varchar(255)  COLLATE utf8mb4_general_ci NULL after `degree_status` , 
	CHANGE `country` `country` varchar(255)  COLLATE utf8mb4_general_ci NULL after `state` , 
	CHANGE `visible` `visible` tinyint(5)   NULL after `country` , 
	CHANGE `status` `status` tinyint(5)   NULL after `visible` , 
	CHANGE `sort` `sort` int(10)   NULL after `status` , 
	CHANGE `ip` `ip` varchar(20)  COLLATE utf8mb4_general_ci NULL after `updated_by` , 
	ADD COLUMN `verified_status` tinyint(4)   NULL after `ip` , 
	ADD COLUMN `verified_by` int(10)   NULL after `verified_status` , 
	ADD COLUMN `verified_date` varchar(20)  COLLATE utf8mb4_general_ci NULL after `verified_by` , COLLATE ='utf8mb4_general_ci' ;

/* Create table in target */
CREATE TABLE `ems_action_options`(
	`id` int(1) NOT NULL  auto_increment , 
	`name` varchar(100) COLLATE utf8mb4_unicode_ci NULL  , 
	`description` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`status` varchar(20) COLLATE utf8mb4_unicode_ci NULL  , 
	`employee_id` int(11) NULL  , 
	`created_at` int(10) NULL  , 
	`created_by` int(10) NULL  , 
	`updated_at` int(10) NULL  , 
	`updated_by` int(10) NULL  , 
	`update` timestamp NOT NULL  DEFAULT CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP , 
	PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Create table in target */
CREATE TABLE `ems_action_options_reason`(
	`id` int(1) NOT NULL  auto_increment , 
	`name` varchar(100) COLLATE utf8mb4_unicode_ci NULL  , 
	`description` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`status` varchar(20) COLLATE utf8mb4_unicode_ci NULL  , 
	`action_id` int(11) NULL  , 
	`created_at` int(10) NULL  , 
	`created_by` int(10) NULL  , 
	`updated_at` int(10) NULL  , 
	`updated_by` int(10) NULL  , 
	`update` timestamp NOT NULL  DEFAULT CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP , 
	PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Alter table in target */
ALTER TABLE `ems_administrative_experience` 
	ADD COLUMN `remarks` text  COLLATE utf8mb4_unicode_ci NULL after `assignments` , 
	CHANGE `created_at` `created_at` int(11)   NULL after `remarks` ;

/* Alter table in target */
ALTER TABLE `ems_career_profile` 
	ADD COLUMN `remarks` text  COLLATE utf8mb4_unicode_ci NULL after `other_department` , 
	CHANGE `created_at` `created_at` int(11)   NULL after `remarks` ;

/* Create table in target */
CREATE TABLE `ems_document_options`(
	`id` int(11) NOT NULL  auto_increment , 
	`name` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`file_size` tinyint(4) NULL  , 
	`file_type` varchar(40) COLLATE utf8mb4_unicode_ci NULL  , 
	`status` varchar(40) COLLATE utf8mb4_unicode_ci NULL  , 
	`created_at` int(10) NULL  , 
	`created_by` int(10) NULL  , 
	`updated_at` int(10) NULL  , 
	`updated_by` int(10) NULL  , 
	`updated` timestamp NULL  , 
	`description` text COLLATE utf8mb4_unicode_ci NULL  , 
	PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Alter table in target */
ALTER TABLE `ems_exam_duty` 
	ADD COLUMN `semester` varchar(255)  COLLATE utf8mb4_unicode_ci NULL after `duties_assigned` , 
	ADD COLUMN `remarks` text  COLLATE utf8mb4_unicode_ci NULL after `semester` , 
	CHANGE `updated_at` `updated_at` varchar(100)  COLLATE utf8mb4_unicode_ci NULL after `remarks` ;

/* Alter table in target */
ALTER TABLE `ems_family_details` 
	ADD COLUMN `marital_status` varchar(100)  COLLATE utf8mb4_unicode_ci NULL after `ip` , 
	ADD COLUMN `status` varchar(10)  COLLATE utf8mb4_unicode_ci NULL after `marital_status` , 
	ADD COLUMN `reason` varchar(100)  COLLATE utf8mb4_unicode_ci NULL after `status` , 
	ADD COLUMN `verified_status` varchar(100)  COLLATE utf8mb4_unicode_ci NULL after `reason` ;

/* Alter table in target */
ALTER TABLE `ems_industrial_technical_research` 
	ADD COLUMN `remarks` text  COLLATE utf8mb4_unicode_ci NULL after `assignments` , 
	CHANGE `created_at` `created_at` int(11)   NULL after `remarks` ;

/* Alter table in target */
ALTER TABLE `ems_ltc_details` 
	CHANGE `year` `year` int(4)   NOT NULL after `type` ;

/* Alter table in target */
ALTER TABLE `ems_ltc_details_extension` 
	CHANGE `age` `age` int(3)   NOT NULL after `relationship` ;

/* Alter table in target */
ALTER TABLE `ems_mphil_guidance` 
	ADD COLUMN `roll_no` varchar(100)  COLLATE utf8mb4_unicode_ci NULL after `other_subject` , 
	ADD COLUMN `semester` varchar(100)  COLLATE utf8mb4_unicode_ci NULL after `roll_no` , 
	ADD COLUMN `remarks` text  COLLATE utf8mb4_unicode_ci NULL after `semester` , 
	CHANGE `created_at` `created_at` int(11)   NULL after `remarks` ;

/* Create table in target */
CREATE TABLE `ems_nominee_detail`(
	`id` int(11) NOT NULL  auto_increment , 
	`name` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`nomination_service` varchar(20) COLLATE utf8mb4_unicode_ci NULL  , 
	`relation` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`nominee_address` varchar(200) COLLATE utf8mb4_unicode_ci NULL  , 
	`percentage_share_for_nominee` tinyint(4) NULL  , 
	`created_at` int(10) NULL  , 
	`created_by` int(10) NULL  , 
	`updated_at` int(10) NULL  , 
	`updated_by` int(10) NULL  , 
	`ip` varchar(20) COLLATE utf8mb4_unicode_ci NULL  , 
	`verified_status` tinyint(4) NULL  , 
	`verified_by` int(10) NULL  , 
	`verified_date` varchar(20) COLLATE utf8mb4_unicode_ci NULL  , 
	`user_id` int(11) NULL  , 
	PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Create table in target */
CREATE TABLE `ems_nominee_service`(
	`id` int(11) NOT NULL  auto_increment , 
	`name` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`description` varchar(255) COLLATE utf8mb4_unicode_ci NULL  , 
	`created_at` int(11) NULL  , 
	`created_by` int(11) NULL  , 
	`updated_at` int(10) NULL  , 
	`updated_by` int(10) NULL  , 
	PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Alter table in target */
ALTER TABLE `ems_pg_details` 
	CHANGE `result_type` `result_type` tinyint(5) unsigned   NULL after `year` ;

/* Alter table in target */
ALTER TABLE `ems_phd_details` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first ;

/* Alter table in target */
ALTER TABLE `ems_profile` 
	CHANGE `organization_unit` `organization_unit` int(11) unsigned   NULL after `nature_of_employment` , 
	ADD COLUMN `residential_campus` varchar(128)  COLLATE utf8mb4_unicode_ci NULL after `university_accomodation` , 
	CHANGE `residential_address` `residential_address` mediumtext  COLLATE utf8_unicode_ci NULL after `residential_campus` , 
	ADD COLUMN `pfms_id` varchar(50)  COLLATE utf8mb4_unicode_ci NULL after `ledger_no` , 
	CHANGE `pf_subscription` `pf_subscription` varchar(10)  COLLATE utf8mb4_unicode_ci NULL after `pfms_id` , 
	CHANGE `approved` `approved` tinyint(5)   NULL DEFAULT 0 COMMENT 'Yes, No' after `reason_for_change_profile` , 
	ADD COLUMN `hometown_country` varchar(190)  COLLATE utf8mb4_unicode_ci NULL after `remark` , 
	ADD COLUMN `hometown_state` varchar(190)  COLLATE utf8mb4_unicode_ci NULL after `hometown_country` , 
	ADD COLUMN `hometown_city` varchar(190)  COLLATE utf8mb4_unicode_ci NULL after `hometown_state` , 
	ADD COLUMN `hometown_pincode` int(10)   NULL after `hometown_city` , 
	ADD COLUMN `driving_license` varchar(20)  COLLATE utf8mb4_unicode_ci NULL after `hometown_pincode` , 
	ADD COLUMN `passport_number` varchar(20)  COLLATE utf8mb4_unicode_ci NULL after `driving_license` , 
	ADD COLUMN `passport_validity` date   NULL after `passport_number` , 
	ADD COLUMN `emergency_contacts` int(11)   NULL after `passport_validity` , 
	ADD COLUMN `other_reason` varchar(100)  COLLATE utf8mb4_unicode_ci NULL after `emergency_contacts` , 
	ADD COLUMN `employee_status` varchar(100)  COLLATE utf8mb4_unicode_ci NULL after `other_reason` , 
	ADD COLUMN `employee_status_reason` varchar(100)  COLLATE utf8mb4_unicode_ci NULL after `employee_status` , 
	ADD COLUMN `employee_status_other_reason` varbinary(100)   NULL after `employee_status_reason` , 
	ADD COLUMN `verified_status` tinyint(4)   NULL after `employee_status_other_reason` , 
	ADD COLUMN `verified_by` int(10)   NULL after `verified_status` , 
	ADD COLUMN `verified_date` varchar(20)  COLLATE utf8mb4_unicode_ci NULL after `verified_by` , 
	ADD KEY `organization_unit`(`organization_unit`,`payroll_status`,`salary_config_status`,`status`) , 
	ADD KEY `payroll_status`(`payroll_status`,`salary_config_status`,`status`) ;

/* Alter table in target */
ALTER TABLE `ems_profile_history` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first ;

/* Alter table in target */
ALTER TABLE `ems_property_details` 
	CHANGE `acquired` `acquired` tinyint(11)   NOT NULL after `value` ;

/* Alter table in target */
ALTER TABLE `ems_time_table` 
	CHANGE `day` `day` varchar(50)  COLLATE utf8mb4_unicode_ci NOT NULL after `subject` ;

/* Create table in target */
CREATE TABLE `ems_travel_purpose`(
	`id` int(1) NOT NULL  auto_increment , 
	`purpose` varchar(100) COLLATE utf8mb4_unicode_ci NULL  , 
	`status` varchar(20) COLLATE utf8mb4_unicode_ci NULL  , 
	`created_at` int(10) NULL  , 
	`created_by` int(10) NULL  , 
	`updated_at` int(10) NULL  , 
	`updated_by` int(10) NULL  , 
	`update` timestamp NOT NULL  DEFAULT CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP , 
	PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Create table in target */
CREATE TABLE `ems_travel_reason`(
	`id` int(1) NOT NULL  auto_increment , 
	`reason` varchar(100) COLLATE utf8mb4_unicode_ci NULL  , 
	`status` varchar(20) COLLATE utf8mb4_unicode_ci NULL  , 
	`created_at` int(10) NULL  , 
	`created_by` int(10) NULL  , 
	`updated_at` int(10) NULL  , 
	`updated_by` int(10) NULL  , 
	`update` timestamp NOT NULL  DEFAULT CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP , 
	PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Alter table in target */
ALTER TABLE `ems_ug_details` 
	CHANGE `result_type` `result_type` tinyint(5) unsigned   NULL after `year` , 
	CHANGE `created_by` `created_by` int(11) unsigned   NULL after `updated_at` , 
	CHANGE `updated_by` `updated_by` int(11) unsigned   NULL after `created_by` ;

/* Alter table in target */
ALTER TABLE `endowment_pay_trans_sent` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first ;

/* Alter table in target */
ALTER TABLE `endowment_payment_gateway` 
	ADD COLUMN `type` varchar(50)  COLLATE utf8_unicode_ci NULL after `id` , 
	CHANGE `name` `name` varchar(45)  COLLATE utf8_unicode_ci NULL after `type` , 
	ADD COLUMN `account_name` varchar(197)  COLLATE utf8_unicode_ci NULL after `name` , 
	CHANGE `mid` `mid` varchar(45)  COLLATE utf8_unicode_ci NULL after `account_name` , 
	CHANGE `code` `code` varchar(45)  COLLATE utf8_unicode_ci NULL after `mid` , 
	CHANGE `key` `key` varchar(45)  COLLATE utf8_unicode_ci NULL after `code` , 
	ADD COLUMN `atom_request_hash_key` varchar(1024)  COLLATE utf8_unicode_ci NULL after `website` , 
	ADD COLUMN `atom_response_hash_key` varchar(1024)  COLLATE utf8_unicode_ci NULL after `atom_request_hash_key` , 
	ADD COLUMN `atom_request_encryption_key` varchar(1024)  COLLATE utf8_unicode_ci NULL after `atom_response_hash_key` , 
	ADD COLUMN `atom_response_encryption_key` varchar(1024)  COLLATE utf8_unicode_ci NULL after `atom_request_encryption_key` , 
	ADD COLUMN `atom_request_salt` varchar(1024)  COLLATE utf8_unicode_ci NULL after `atom_response_encryption_key` , 
	ADD COLUMN `atom_response_salt` varchar(1024)  COLLATE utf8_unicode_ci NULL after `atom_request_salt` , 
	CHANGE `transaction_url` `transaction_url` varchar(1024)  COLLATE utf8_unicode_ci NULL after `atom_response_salt` , 
	ADD COLUMN `currency` varchar(20)  COLLATE utf8_unicode_ci NULL DEFAULT 'INR' after `logo` , 
	CHANGE `created_at` `created_at` datetime   NULL after `currency` ;

/* Alter table in target */
ALTER TABLE `endowment_payment_purpose` 
	CHANGE `updated_at` `updated_at` timestamp   NULL after `created_at` ;

/* Create table in target */
CREATE TABLE `endowment_zpay_trans_sent`(
	`id` int(11) unsigned NOT NULL  auto_increment , 
	`transaction_type` varchar(50) COLLATE utf8mb4_unicode_ci NULL  COMMENT 'ONLINE/CASH/DRAFT' , 
	`product_info` varchar(100) COLLATE utf8mb4_unicode_ci NULL  COMMENT 'fee/admission/latefee' , 
	`product_payment_type` varchar(50) COLLATE utf8mb4_unicode_ci NULL  COMMENT 'sub category of payment_info' , 
	`consumer_type` varchar(50) COLLATE utf8mb4_unicode_ci NULL  COMMENT 'student/employee' , 
	`consumer_id` bigint(20) NULL  DEFAULT 0 COMMENT 'student_id/employee_id' , 
	`user_id` int(11) NULL  DEFAULT 0 COMMENT 'user login table id' , 
	`firstname` varchar(195) COLLATE utf8mb4_unicode_ci NULL  , 
	`service_reference_no` varchar(255) COLLATE utf8mb4_unicode_ci NULL  COMMENT 'id of table requesting payment' , 
	`referenceNo` bigint(20) NULL  COMMENT 'to be shown to consumer eg formNo/ enrolment_no' , 
	`pg_identifier` varchar(100) COLLATE utf8mb4_unicode_ci NULL  COMMENT 'payment gateway id' , 
	`mid` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`email` varchar(255) COLLATE utf8mb4_unicode_ci NULL  , 
	`mobile` varchar(255) COLLATE utf8mb4_unicode_ci NULL  , 
	`response` varchar(50) COLLATE utf8mb4_unicode_ci NULL  DEFAULT 'DRAFT' , 
	`response_sub_state` varchar(100) COLLATE utf8mb4_unicode_ci NULL  DEFAULT '' COMMENT 'unmappedstatus' , 
	`paid` tinyint(4) NULL  DEFAULT 0 , 
	`final_status` varchar(50) COLLATE utf8mb4_unicode_ci NULL  DEFAULT 'DRAFT' COMMENT 'paid,refund' , 
	`amount_sent` decimal(10,2) NULL  DEFAULT 0.00 , 
	`amount_sent_currency` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`amount_received` decimal(10,2) NULL  DEFAULT 0.00 , 
	`amount_received_currency` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`type` tinyint(4) NULL  DEFAULT 0 COMMENT 'payment 9 or refund=1' , 
	`pg_transaction_id` varchar(195) COLLATE utf8mb4_unicode_ci NULL  , 
	`pg_transaction_date` datetime NULL  , 
	`update_mode` char(3) COLLATE utf8mb4_unicode_ci NULL  COMMENT 'S2S,etc' , 
	`pg_transaction_date_raw` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`update_time_in_system` datetime NULL  , 
	`created_at` int(11) NULL  DEFAULT 1 , 
	`updated_at` int(11) NULL  DEFAULT 1 , 
	`created_by` int(11) NULL  DEFAULT 1 , 
	`created_by_name` varchar(195) COLLATE utf8mb4_unicode_ci NULL  , 
	`updated_by` int(11) NULL  , 
	`updated` timestamp NULL  on update CURRENT_TIMESTAMP , 
	`draft_bank_name` varchar(195) COLLATE utf8mb4_unicode_ci NULL  , 
	`draft_date` date NULL  , 
	`draft_number` varbinary(195) NULL  , 
	`group_type` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`group_name` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`extra1` varchar(195) COLLATE utf8mb4_unicode_ci NULL  , 
	`extra2` varchar(195) COLLATE utf8mb4_unicode_ci NULL  , 
	`verified` tinyint(4) NULL  DEFAULT 0 , 
	`verified_date` datetime NULL  , 
	`verified_mode` char(3) COLLATE utf8mb4_unicode_ci NULL  DEFAULT '' , 
	`double_payment` tinyint(4) NULL  DEFAULT 0 , 
	`refund_initiated` tinyint(4) NULL  DEFAULT 0 COMMENT 'yes/no' , 
	`refund_status` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`refund_reference_no` varchar(195) COLLATE utf8mb4_unicode_ci NULL  COMMENT 'from refund table' , 
	`refund_amount` decimal(10,2) NULL  , 
	`refund_date` int(11) NULL  , 
	`udf1` varchar(195) COLLATE utf8mb4_unicode_ci NULL  , 
	`udf2` varchar(195) COLLATE utf8mb4_unicode_ci NULL  , 
	`udf3` varchar(195) COLLATE utf8mb4_unicode_ci NULL  , 
	`udf4` varchar(195) COLLATE utf8mb4_unicode_ci NULL  , 
	`udf5` varchar(195) COLLATE utf8mb4_unicode_ci NULL  , 
	`udf6` varchar(195) COLLATE utf8mb4_unicode_ci NULL  , 
	`service_object` varchar(195) COLLATE utf8mb4_unicode_ci NULL  , 
	`remarks` text COLLATE utf8mb4_unicode_ci NULL  , 
	PRIMARY KEY (`id`) , 
	KEY `userId`(`user_id`) , 
	KEY `transaction_type`(`transaction_type`,`response`) , 
	KEY `product_info`(`product_info`,`product_payment_type`,`consumer_type`,`consumer_id`,`service_reference_no`,`pg_identifier`) , 
	FULLTEXT KEY `formNo`(`service_reference_no`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Alter table in target */
ALTER TABLE `essential_conference_hall` 
	CHANGE `coordination_contact` `coordination_contact` bigint(11)   NULL after `coordinator_id` , 
	CHANGE `participants` `participants` int(10)   NULL after `date_from` , 
	CHANGE `updated` `updated` timestamp   NULL DEFAULT CURRENT_TIMESTAMP after `ip` ;

/* Alter table in target */
ALTER TABLE `essential_guest_house` 
	CHANGE `guest_contact` `guest_contact` bigint(15)   NULL after `desi_add` , 
	ADD COLUMN `reference_doc` text  COLLATE utf8mb4_unicode_ci NULL after `medical_history` , 
	ADD COLUMN `id_proof` text  COLLATE utf8mb4_unicode_ci NULL after `reference_doc` , 
	CHANGE `created_at` `created_at` int(11)   NULL after `id_proof` ;

/* Alter table in target */
ALTER TABLE `essential_mail` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first , 
	CHANGE `memberMobile` `memberMobile` bigint(10)   NOT NULL after `memberEmail` ;

/* Alter table in target */
ALTER TABLE `essential_transport_request` 
	CHANGE `capacity` `capacity` tinyint(5)   NULL after `vehicle_type` , 
	ADD COLUMN `department_id` int(11)   NULL after `description` , 
	CHANGE `name` `name` varchar(255)  COLLATE utf8mb4_unicode_ci NULL after `department_id` , 
	CHANGE `contact` `contact` bigint(12)   NULL after `address` ;

/* Alter table in target */
ALTER TABLE `estate_app_form` 
	CHANGE `EmpID` `EmpID` varchar(98)  COLLATE utf8mb4_general_ci NULL after `user_id` , 
	CHANGE `ServiceType` `ServiceType` text  COLLATE utf8mb4_general_ci NOT NULL after `fsubmit` , 
	CHANGE `UnivJoindt` `UnivJoindt` text  COLLATE utf8mb4_general_ci NOT NULL after `ServiceType` , 
	CHANGE `Full_Name` `Full_Name` text  COLLATE utf8mb4_general_ci NOT NULL after `UnivJoindt` , 
	CHANGE `NameFath` `NameFath` text  COLLATE utf8mb4_general_ci NOT NULL after `Full_Name` , 
	CHANGE `Designation` `Designation` text  COLLATE utf8mb4_general_ci NOT NULL after `NameFath` , 
	CHANGE `Department` `Department` text  COLLATE utf8mb4_general_ci NOT NULL after `Designation` , 
	CHANGE `PayMatrix` `PayMatrix` text  COLLATE utf8mb4_general_ci NOT NULL after `Department` , 
	CHANGE `PayInPayMatrix` `PayInPayMatrix` int(100)   NOT NULL after `PayMatrix` , 
	CHANGE `DrawingPayMatrixDtLevel13` `DrawingPayMatrixDtLevel13` text  COLLATE utf8mb4_general_ci NULL after `GradePay` , 
	CHANGE `DrawingPayMatrixDtLevel12` `DrawingPayMatrixDtLevel12` text  COLLATE utf8mb4_general_ci NULL after `DrawingPayMatrixDtLevel13` , 
	CHANGE `DrawingPayMatrixDtLevel11` `DrawingPayMatrixDtLevel11` text  COLLATE utf8mb4_general_ci NULL after `DrawingPayMatrixDtLevel12` , 
	CHANGE `DrawingPayMatrixDt` `DrawingPayMatrixDt` text  COLLATE utf8mb4_general_ci NOT NULL after `DrawingPayMatrixDtLevel11` , 
	CHANGE `DOB` `DOB` text  COLLATE utf8mb4_general_ci NOT NULL after `DrawingPayMatrixDt` , 
	CHANGE `Gender` `Gender` text  COLLATE utf8mb4_general_ci NOT NULL after `DOB` , 
	CHANGE `Marital_Status` `Marital_Status` text  COLLATE utf8mb4_general_ci NOT NULL after `Gender` , 
	CHANGE `Category` `Category` text  COLLATE utf8mb4_general_ci NOT NULL after `Marital_Status` , 
	CHANGE `UnivAccomodation` `UnivAccomodation` text  COLLATE utf8mb4_general_ci NOT NULL after `Category` , 
	CHANGE `Univwhichdate` `Univwhichdate` text  COLLATE utf8mb4_general_ci NULL after `UnivAccomodation` , 
	CHANGE `SpouseUnivAccomd` `SpouseUnivAccomd` text  COLLATE utf8mb4_general_ci NOT NULL after `Univwhichdate` , 
	CHANGE `Spouse_Univ_AllotteeName` `Spouse_Univ_AllotteeName` text  COLLATE utf8mb4_general_ci NULL after `SpouseUnivAccomd` , 
	CHANGE `Spouse_Univ_HouseType` `Spouse_Univ_HouseType` text  COLLATE utf8mb4_general_ci NULL after `Spouse_Univ_AllotteeName` , 
	CHANGE `Spouse_Univ_Locality` `Spouse_Univ_Locality` text  COLLATE utf8mb4_general_ci NULL after `Spouse_Univ_HouseType` , 
	CHANGE `Spouse_Univ_Block` `Spouse_Univ_Block` text  COLLATE utf8mb4_general_ci NULL after `Spouse_Univ_Locality` , 
	CHANGE `Spouse_Univ_HouseNo` `Spouse_Univ_HouseNo` text  COLLATE utf8mb4_general_ci NULL after `Spouse_Univ_Block` , 
	CHANGE `Spouse_Govt_Accomod` `Spouse_Govt_Accomod` text  COLLATE utf8mb4_general_ci NOT NULL after `Spouse_Univ_HouseNo` , 
	CHANGE `Spouse_Govt_Name` `Spouse_Govt_Name` text  COLLATE utf8mb4_general_ci NULL after `Spouse_Govt_Accomod` , 
	CHANGE `Spouse_Govt_AlotteeName` `Spouse_Govt_AlotteeName` text  COLLATE utf8mb4_general_ci NULL after `Spouse_Govt_Name` , 
	CHANGE `Spouse_Govt_AlotmentAddr` `Spouse_Govt_AlotmentAddr` text  COLLATE utf8mb4_general_ci NULL after `Spouse_Govt_AlotteeName` , 
	CHANGE `Spouse_Govt_Alotmentdt` `Spouse_Govt_Alotmentdt` text  COLLATE utf8mb4_general_ci NULL after `Spouse_Govt_AlotmentAddr` , 
	CHANGE `Spouse_OwnProperty` `Spouse_OwnProperty` text  COLLATE utf8mb4_general_ci NOT NULL after `Spouse_Govt_Alotmentdt` , 
	CHANGE `Eligible_HouseType` `Eligible_HouseType` text  COLLATE utf8mb4_general_ci NOT NULL after `Spouse_OwnProperty` , 
	CHANGE `Eligible_gradePay` `Eligible_gradePay` text  COLLATE utf8mb4_general_ci NOT NULL after `Eligible_HouseType` , 
	CHANGE `TTH` `TTH` text  COLLATE utf8mb4_general_ci NOT NULL after `Eligible_gradePay` , 
	CHANGE `Floor` `Floor` text  COLLATE utf8mb4_general_ci NULL after `TTH` , 
	CHANGE `MedicalGround` `MedicalGround` text  COLLATE utf8mb4_general_ci NULL after `Floor` , 
	CHANGE `Phone` `Phone` text  COLLATE utf8mb4_general_ci NULL after `MedicalGround` , 
	CHANGE `AlternateMobile` `AlternateMobile` bigint(11)   NULL after `Mobile` , 
	CHANGE `Fax` `Fax` text  COLLATE utf8mb4_general_ci NULL after `AlternateMobile` , 
	CHANGE `Email` `Email` varchar(190)  COLLATE utf8mb4_general_ci NULL after `Fax` , 
	CHANGE `AlternateEmail` `AlternateEmail` varchar(255)  COLLATE utf8mb4_general_ci NULL after `Email` , 
	CHANGE `Acceptance` `Acceptance` text  COLLATE utf8mb4_general_ci NULL after `AlternateEmail` , 
	CHANGE `FormFillDate` `FormFillDate` text  COLLATE utf8mb4_general_ci NULL after `Acceptance` , 
	CHANGE `RetirementDt` `RetirementDt` text  COLLATE utf8mb4_general_ci NULL after `FormFillDate` , 
	CHANGE `apptype` `apptype` text  COLLATE utf8mb4_general_ci NULL after `RetirementDt` , 
	CHANGE `currentAddress` `currentAddress` text  COLLATE utf8mb4_general_ci NULL after `apptype` , 
	CHANGE `permanentAddress` `permanentAddress` text  COLLATE utf8mb4_general_ci NULL after `currentAddress` , 
	CHANGE `photo` `photo` varchar(255)  COLLATE utf8mb4_general_ci NULL after `permanentAddress` , 
	CHANGE `signature` `signature` varchar(255)  COLLATE utf8mb4_general_ci NULL after `photo` , 
	CHANGE `apr` `apr` varchar(255)  COLLATE utf8mb4_general_ci NULL after `signature` , 
	CHANGE `med_certificate` `med_certificate` varchar(255)  COLLATE utf8mb4_general_ci NULL after `apr` , 
	CHANGE `remarks` `remarks` text  COLLATE utf8mb4_general_ci NULL after `med_certificate` , 
	CHANGE `ip` `ip` varchar(32)  COLLATE utf8mb4_general_ci NULL after `updated_by` , COLLATE ='utf8mb4_general_ci' ;

/* Alter table in target */
ALTER TABLE `estate_building` 
	CHANGE `building_location` `building_location` varchar(255)  COLLATE utf8mb4_general_ci NULL after `id` , 
	CHANGE `building_name` `building_name` varchar(255)  COLLATE utf8mb4_general_ci NULL after `plot_area_of_building` , 
	CHANGE `is_residential` `is_residential` tinyint(3)   NOT NULL after `inauguration_date` , 
	CHANGE `used` `used` varchar(255)  COLLATE utf8mb4_general_ci NULL after `is_residential` , 
	CHANGE `connected_to_substation` `connected_to_substation` varchar(198)  COLLATE utf8mb4_general_ci NULL after `connected_to_water_harvesting` , 
	CHANGE `type_of_foundation` `type_of_foundation` varchar(198)  COLLATE utf8mb4_general_ci NULL after `connected_to_substation` , 
	CHANGE `type_of_structure` `type_of_structure` varchar(198)  COLLATE utf8mb4_general_ci NULL after `type_of_foundation` , 
	CHANGE `type_of_roofing` `type_of_roofing` varchar(198)  COLLATE utf8mb4_general_ci NULL after `plinth_protection_area` , 
	CHANGE `exterior_wall_type` `exterior_wall_type` varchar(198)  COLLATE utf8mb4_general_ci NULL after `thickness_exterior_wall` , 
	CHANGE `building_image_pic_path` `building_image_pic_path` varchar(255)  COLLATE utf8mb4_general_ci NULL after `wall_pastering_thickness` , 
	CHANGE `pre_agreement_upload` `pre_agreement_upload` varchar(255)  COLLATE utf8mb4_general_ci NULL after `building_image_pic_path` , 
	CHANGE `agreement_upload` `agreement_upload` varchar(255)  COLLATE utf8mb4_general_ci NULL after `pre_agreement_upload` , 
	CHANGE `post_agreement_upload` `post_agreement_upload` varchar(255)  COLLATE utf8mb4_general_ci NULL after `agreement_upload` ;

/* Alter table in target */
ALTER TABLE `estate_corridor_flooring_type` COLLATE ='utf8mb4_general_ci' ;

/* Alter table in target */
ALTER TABLE `estate_door_type` COLLATE ='utf8mb4_general_ci' ;

/* Alter table in target */
ALTER TABLE `estate_external_wall_type` COLLATE ='utf8mb4_general_ci' ;

/* Alter table in target */
ALTER TABLE `estate_floor_categories` COLLATE ='utf8mb4_general_ci' ;

/* Alter table in target */
ALTER TABLE `estate_floor_level` COLLATE ='utf8mb4_general_ci' ;

/* Alter table in target */
ALTER TABLE `estate_footpath_type` COLLATE ='utf8mb4_general_ci' ;

/* Alter table in target */
ALTER TABLE `estate_foundation_type` COLLATE ='utf8mb4_general_ci' ;

/* Alter table in target */
ALTER TABLE `estate_house_choice` 
	CHANGE `EmpID` `EmpID` text  COLLATE utf8mb4_general_ci NOT NULL after `﻿id` , 
	CHANGE `HouseType1` `HouseType1` text  COLLATE utf8mb4_general_ci NOT NULL after `EmpID` , 
	CHANGE `Campus1` `Campus1` text  COLLATE utf8mb4_general_ci NOT NULL after `HouseType1` , 
	CHANGE `Locality1` `Locality1` text  COLLATE utf8mb4_general_ci NOT NULL after `Campus1` , 
	CHANGE `Block1` `Block1` text  COLLATE utf8mb4_general_ci NULL after `Order1` , 
	CHANGE `Floor1` `Floor1` text  COLLATE utf8mb4_general_ci NOT NULL after `Block1` , 
	CHANGE `Remarks1` `Remarks1` text  COLLATE utf8mb4_general_ci NULL after `Floor1` , 
	CHANGE `Confirmtym` `Confirmtym` text  COLLATE utf8mb4_general_ci NOT NULL after `Remarks1` , 
	CHANGE `HouseType2` `HouseType2` text  COLLATE utf8mb4_general_ci NULL after `Confirmtym` , 
	CHANGE `Campus2` `Campus2` text  COLLATE utf8mb4_general_ci NULL after `HouseType2` , 
	CHANGE `Order2` `Order2` text  COLLATE utf8mb4_general_ci NULL after `Campus2` , 
	CHANGE `Locality2` `Locality2` text  COLLATE utf8mb4_general_ci NULL after `Order2` , 
	CHANGE `Block2` `Block2` text  COLLATE utf8mb4_general_ci NULL after `Locality2` , 
	CHANGE `Floor2` `Floor2` text  COLLATE utf8mb4_general_ci NULL after `Block2` , 
	CHANGE `Remarks2` `Remarks2` text  COLLATE utf8mb4_general_ci NULL after `Floor2` , 
	CHANGE `HouseType3` `HouseType3` text  COLLATE utf8mb4_general_ci NULL after `Remarks2` , 
	CHANGE `Campus3` `Campus3` text  COLLATE utf8mb4_general_ci NULL after `HouseType3` , 
	CHANGE `Order3` `Order3` text  COLLATE utf8mb4_general_ci NULL after `Campus3` , 
	CHANGE `Locality3` `Locality3` text  COLLATE utf8mb4_general_ci NULL after `Order3` , 
	CHANGE `Block3` `Block3` text  COLLATE utf8mb4_general_ci NULL after `Locality3` , 
	CHANGE `Floor3` `Floor3` text  COLLATE utf8mb4_general_ci NULL after `Block3` , 
	CHANGE `Remarks3` `Remarks3` text  COLLATE utf8mb4_general_ci NULL after `Floor3` , 
	CHANGE `HouseType4` `HouseType4` text  COLLATE utf8mb4_general_ci NULL after `Remarks3` , 
	CHANGE `Campus4` `Campus4` text  COLLATE utf8mb4_general_ci NULL after `HouseType4` , 
	CHANGE `Order4` `Order4` text  COLLATE utf8mb4_general_ci NULL after `Campus4` , 
	CHANGE `Locality4` `Locality4` text  COLLATE utf8mb4_general_ci NULL after `Order4` , 
	CHANGE `Block4` `Block4` text  COLLATE utf8mb4_general_ci NULL after `Locality4` , 
	CHANGE `Floor4` `Floor4` text  COLLATE utf8mb4_general_ci NULL after `Block4` , 
	CHANGE `Remarks4` `Remarks4` text  COLLATE utf8mb4_general_ci NULL after `Floor4` , 
	CHANGE `HouseType5` `HouseType5` text  COLLATE utf8mb4_general_ci NULL after `Remarks4` , 
	CHANGE `Campus5` `Campus5` text  COLLATE utf8mb4_general_ci NULL after `HouseType5` , 
	CHANGE `Order5` `Order5` text  COLLATE utf8mb4_general_ci NULL after `Campus5` , 
	CHANGE `Locality5` `Locality5` text  COLLATE utf8mb4_general_ci NULL after `Order5` , 
	CHANGE `Block5` `Block5` text  COLLATE utf8mb4_general_ci NULL after `Locality5` , 
	CHANGE `Floor5` `Floor5` text  COLLATE utf8mb4_general_ci NULL after `Block5` , 
	CHANGE `Remarks5` `Remarks5` text  COLLATE utf8mb4_general_ci NULL after `Floor5` , 
	CHANGE `FormFillDate` `FormFillDate` text  COLLATE utf8mb4_general_ci NOT NULL after `Remarks5` , COLLATE ='utf8mb4_general_ci' ;

/* Alter table in target */
ALTER TABLE `estate_house_type` 
	CHANGE `name` `name` varchar(198)  COLLATE utf8mb4_general_ci NOT NULL after `id` ;

/* Alter table in target */
ALTER TABLE `estate_housing` 
	CHANGE `created_by` `created_by` int(11) unsigned   NULL after `description` , 
	CHANGE `updated_by` `updated_by` int(11) unsigned   NULL after `created_by` ;

/* Alter table in target */
ALTER TABLE `estate_railing_type` COLLATE ='utf8mb4_general_ci' ;

/* Alter table in target */
ALTER TABLE `estate_road_type` COLLATE ='utf8mb4_general_ci' ;

/* Alter table in target */
ALTER TABLE `estate_roof_type` COLLATE ='utf8mb4_general_ci' ;

/* Alter table in target */
ALTER TABLE `estate_structure_type` COLLATE ='utf8mb4_general_ci' ;

/* Alter table in target */
ALTER TABLE `estate_substation_type` COLLATE ='utf8mb4_general_ci' ;

/* Alter table in target */
ALTER TABLE `estate_window_type` COLLATE ='utf8mb4_general_ci' ;


/* Create table in target */
CREATE TABLE `eval_term_result_history`(
	`id` bigint(20) unsigned NOT NULL  auto_increment , 
	`type` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`exam_session_id` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`recalculated_session_id` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`overwrote_calculation_by_supplementary` varchar(3) COLLATE utf8mb4_unicode_ci NULL  DEFAULT 'NO' , 
	`student_id` int(11) NOT NULL  , 
	`programme_id` int(11) NOT NULL  , 
	`enrolment_number` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`roll_number` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`total_marks_term` decimal(10,2) NULL  , 
	`student_total_marks_term` decimal(10,2) NULL  , 
	`student_obtained_total_credit` decimal(10,2) NULL  , 
	`total_credit` decimal(10,2) NULL  , 
	`student_total_credit_point` decimal(10,2) NULL  , 
	`result_type` varchar(50) COLLATE utf8mb4_unicode_ci NULL  COMMENT 'CGPA/GRADE/Percentage' , 
	`sgpa` decimal(10,5) NULL  , 
	`cgpa` decimal(10,5) NULL  , 
	`grade` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`term` int(11) NULL  , 
	`term_type` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`result_status` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`promotion_status` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`result_description` varchar(1000) COLLATE utf8mb4_unicode_ci NULL  , 
	`is_final_term` varchar(20) COLLATE utf8mb4_unicode_ci NULL  DEFAULT 'NO' , 
	`term_roman_numerals` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`term_division` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`remark` varchar(255) COLLATE utf8mb4_unicode_ci NULL  , 
	`rank` int(11) NULL  , 
	`section_rank` int(11) NULL  , 
	`calculation_datetime` datetime NULL  , 
	`year_of_exam` int(11) NULL  , 
	`cycle_of_exam` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`session_id` int(11) NULL  , 
	`academic_year_id` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`verification_status` varchar(50) COLLATE utf8mb4_unicode_ci NULL  DEFAULT 'DRAFT' , 
	`verified_on` datetime NULL  , 
	`json_term_data` text COLLATE utf8mb4_unicode_ci NULL  , 
	`moved_to_next_term` varchar(3) COLLATE utf8mb4_unicode_ci NULL  DEFAULT 'NO' , 
	`verified_by` int(11) NULL  , 
	`created_at` int(11) NULL  , 
	`updated_at` int(10) unsigned NULL  , 
	`created_by` int(11) NULL  , 
	`updated_by` int(11) NULL  , 
	`updated` timestamp NULL  , 
	`result_viewed_count` int(11) NULL  DEFAULT 0 , 
	`result_last_viewed_on` datetime NULL  , 
	PRIMARY KEY (`id`) , 
	UNIQUE KEY `exam_session_id`(`exam_session_id`,`student_id`,`programme_id`,`enrolment_number`,`roll_number`,`recalculated_session_id`,`term`,`calculation_datetime`) , 
	KEY `type`(`type`,`exam_session_id`,`student_id`,`programme_id`,`term`) , 
	KEY `programme_id`(`programme_id`,`term`) , 
	KEY `exam_session_id_2`(`exam_session_id`,`recalculated_session_id`,`enrolment_number`,`term`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Alter table in target */
ALTER TABLE `evaluation_assessment_type` 
	ADD COLUMN `sort_order` int(11)   NULL after `status` , 
	CHANGE `sub_components` `sub_components` varchar(3)  COLLATE utf8mb4_unicode_ci NULL DEFAULT 'NO' COMMENT 'YES/NO' after `sort_order` ;

/* Create table in target */
CREATE TABLE `evaluation_course_student_evaluator_mapping`(
	`id` int(10) unsigned NOT NULL  auto_increment , 
	`exam_session_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL  , 
	`programme_id` int(10) unsigned NOT NULL  , 
	`programme_code` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`course_id` int(10) unsigned NOT NULL  , 
	`course_code` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`term_type` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`term` int(11) NULL  , 
	`section_id` int(11) NULL  , 
	`student_id` int(11) NULL  , 
	`enrolment_number` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`evaluator_id` int(11) NULL  , 
	`prg_course_evaluator_role_id` int(11) NULL  , 
	`status` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`created_at` int(11) NULL  , 
	`created_by` int(11) NULL  , 
	`updated_at` int(11) NULL  , 
	`updated_by` int(11) NULL  , 
	PRIMARY KEY (`id`) , 
	UNIQUE KEY `exam_session_id`(`exam_session_id`,`programme_id`,`course_id`,`term`,`section_id`,`student_id`,`enrolment_number`) , 
	KEY `exam_session_id_2`(`exam_session_id`,`course_id`,`term`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Create table in target */
CREATE TABLE `evaluation_detention_rules`(
	`id` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL  , 
	`title` text COLLATE utf8mb4_unicode_ci NULL  , 
	`sort_order` int(11) NULL  , 
	`university_alias` varchar(255) COLLATE utf8mb4_unicode_ci NULL  , 
	`created_at` int(11) NULL  , 
	`updated_at` int(11) NULL  , 
	`created_by` int(11) NULL  , 
	`updated_by` int(11) NULL  , 
	PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Create table in target */
CREATE TABLE `evaluation_programme_detention_rules`(
	`id` int(10) unsigned NOT NULL  auto_increment , 
	`programme_id` int(11) NOT NULL  , 
	`upto_term` varchar(3) COLLATE utf8mb4_unicode_ci NULL  DEFAULT 'NO' COMMENT 'Rules applicable upto term' , 
	`term` int(11) NOT NULL  , 
	`detention_code` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL  , 
	`formula` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`upto_term_detention_code` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`upto_term_formula` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`sort_order` int(11) NULL  , 
	`upto_term_result` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`result` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL  , 
	`created_at` int(11) NULL  , 
	`created_by` int(11) NULL  , 
	`updated_at` int(11) NULL  , 
	`updated_by` int(11) NULL  , 
	`ip` varchar(32) COLLATE utf8mb4_unicode_ci NULL  , 
	PRIMARY KEY (`id`) , 
	UNIQUE KEY `detention_code`(`detention_code`,`programme_id`,`term`) , 
	CONSTRAINT `evaluation_programme_detention_rules_ibfk_1` 
	FOREIGN KEY (`detention_code`) REFERENCES `evaluation_detention_rules` (`id`) ON UPDATE CASCADE 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Create table in target */
CREATE TABLE `evaluation_report`(
	`id` int(10) unsigned NOT NULL  auto_increment , 
	`role_id` int(11) NULL  , 
	`exam_session_id` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`programme_id` int(11) NULL  , 
	`term` int(11) NULL  , 
	`course_id` int(11) NULL  , 
	`section_id` int(11) NULL  , 
	`component_id` int(11) NULL  , 
	`ou_id` int(11) NULL  , 
	`unit_id` int(11) NULL  , 
	`employee_id` int(11) NULL  , 
	`session_id` int(11) NULL  , 
	`regular_assigned` int(11) NULL  , 
	`regular_draft` int(11) NULL  , 
	`regular_submitted` int(11) NULL  , 
	`regular_verified` int(11) NULL  , 
	`ex_assigned` int(11) NULL  , 
	`ex_draft` int(11) NULL  , 
	`ex_submitted` int(11) NULL  , 
	`ex_verified` int(11) NULL  , 
	`improvement_assigned` int(11) NULL  , 
	`improvement_draft` int(11) NULL  , 
	`improvement_submitted` int(11) NULL  , 
	`improvement_verified` int(11) NULL  , 
	`supplementary_assigned` int(11) NULL  , 
	`supplementary_draft` int(11) NULL  , 
	`supplementary_submitted` int(11) NULL  , 
	`supplementary_verified` int(11) NULL  , 
	`er_assigned` int(11) NULL  , 
	`er_draft` int(11) NULL  , 
	`er_submitted` int(11) NULL  , 
	`er_verified` int(11) NULL  , 
	`report_generated_at` int(11) NULL  , 
	`created_at` int(11) NULL  , 
	`updated_at` int(11) NULL  , 
	`created_by` int(11) NULL  , 
	`updated_by` int(11) NULL  , 
	`ip` varchar(32) COLLATE utf8mb4_unicode_ci NULL  , 
	`updated` timestamp NOT NULL  DEFAULT CURRENT_TIMESTAMP , 
	PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Create table in target */
CREATE TABLE `evaluation_template`(
	`code` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL  , 
	`template` longtext COLLATE utf8mb4_unicode_ci NOT NULL  , 
	`user_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL  , 
	`type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL  , 
	`page_properties` json NULL  , 
	`applicable_for` varchar(20) COLLATE utf8mb4_unicode_ci NULL  , 
	`applicable_from_id` int(11) NULL  , 
	`applicable_type` varchar(20) COLLATE utf8mb4_unicode_ci NULL  , 
	`applicable_from_cycle` varchar(20) COLLATE utf8mb4_unicode_ci NULL  , 
	`applicable_from_year` int(11) NULL  , 
	`applicable_from_int` int(11) NULL  , 
	`created_at` int(10) unsigned NULL  , 
	`updated_at` int(10) unsigned NULL  , 
	`created_by` int(10) unsigned NULL  , 
	`updated_by` int(10) unsigned NULL  , 
	`ip` varchar(30) COLLATE utf8mb4_unicode_ci NULL  , 
	PRIMARY KEY (`code`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Create table in target */
CREATE TABLE `exam_cycle`(
	`id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL  , 
	`name` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`status` varchar(20) COLLATE utf8mb4_unicode_ci NULL  DEFAULT 'DRAFT' , 
	`sort_order` tinyint(4) NULL  DEFAULT 100 , 
	`created_at` int(11) NULL  , 
	`updated_at` int(11) NULL  , 
	`created_by` int(11) NULL  , 
	`updated_by` int(11) NULL  , 
	`updated` timestamp NOT NULL  DEFAULT CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP , 
	PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Create table in target */
CREATE TABLE `exam_date_sheet`(
	`id` int(10) unsigned NOT NULL  auto_increment , 
	`date` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`timeslot` int(11) NULL  , 
	`course` int(11) NULL  , 
	`status` varchar(20) COLLATE utf8mb4_unicode_ci NULL  , 
	`created_at` int(11) NULL  , 
	`created_by` int(11) NULL  , 
	`updated_at` int(11) NULL  , 
	`updated_by` int(11) NULL  , 
	`ip` varchar(32) COLLATE utf8mb4_unicode_ci NULL  , 
	`updated` timestamp NOT NULL  DEFAULT CURRENT_TIMESTAMP , 
	PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Create table in target */
CREATE TABLE `exam_programme_map`(
	`id` int(10) unsigned NOT NULL  auto_increment , 
	`programme_id` int(10) unsigned NOT NULL  , 
	`programme_code` varchar(20) COLLATE utf8mb4_unicode_ci NULL  , 
	`term` int(11) NULL  , 
	`term_type` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`exam_type` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`session_id` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`academic_calendar_id` int(11) NULL  , 
	`year` int(11) NULL  , 
	`cycle` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`exam_year` int(11) NULL  , 
	`exam_cycle` varchar(20) COLLATE utf8mb4_unicode_ci NULL  , 
	`portal` varchar(20) COLLATE utf8mb4_unicode_ci NULL  , 
	`name` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`status` tinyint(4) NULL  , 
	`start_date` int(10) unsigned NULL  , 
	`end_date` int(10) unsigned NULL  , 
	`start_date_str` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`end_date_str` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`extended_date` int(11) NULL  , 
	`extended_date_str` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`admin_last_date` int(11) NULL  , 
	`admin_last_date_str` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`applicable_in_even` varchar(10) COLLATE utf8mb4_unicode_ci NULL  , 
	`applicable_in_odd` varchar(10) COLLATE utf8mb4_unicode_ci NULL  , 
	`sort_order` int(11) NULL  , 
	`level` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`delivery_mode` varchar(20) COLLATE utf8mb4_unicode_ci NULL  , 
	`exam_mode` varchar(500) COLLATE utf8mb4_unicode_ci NULL  DEFAULT '{\"exam_mode\":[\"EXAMINATION\"]}' , 
	`admit_card_template` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`created_at` int(11) NULL  , 
	`updated_at` int(11) NULL  , 
	`created_by` int(11) NULL  , 
	`updated_by` int(11) NULL  , 
	`updated` timestamp NULL  DEFAULT CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP , 
	`programme_term_ayid` varchar(30) AS  (concat(`programme_id`,'_',`term`,'_',`academic_calendar_id`))  STORED , 
	`grade_card_end_date` datetime NULL  , 
	`grade_card_start_date` datetime NULL  , 
	PRIMARY KEY (`id`) , 
	UNIQUE KEY `programme_id`(`programme_id`,`term`,`exam_type`,`session_id`,`exam_year`,`exam_cycle`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Create table in target */
CREATE TABLE `exam_roll_count`(
	`id` int(11) NOT NULL  auto_increment , 
	`session` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`type` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`value` bigint(20) NULL  , 
	PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Create table in target */
CREATE TABLE `exam_roll_pattern`(
	`id` int(11) NOT NULL  auto_increment , 
	`prefix` varchar(10) COLLATE utf8mb4_unicode_ci NULL  , 
	`length` tinyint(4) NULL  , 
	`start_series` int(11) NULL  , 
	`session_id` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`same_as_roll` varchar(10) COLLATE utf8mb4_unicode_ci NULL  , 
	`status` varchar(20) COLLATE utf8mb4_unicode_ci NULL  DEFAULT 'DRAFT' , 
	`created_at` int(11) NULL  , 
	`created_by` int(11) NULL  , 
	`updated_at` int(11) NULL  , 
	`updated_by` int(11) NULL  , 
	`updated` timestamp NOT NULL  DEFAULT CURRENT_TIMESTAMP , 
	`ip` varchar(32) COLLATE utf8mb4_unicode_ci NULL  , 
	PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Create table in target */
CREATE TABLE `exam_session`(
	`id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL  , 
	`title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL  , 
	`name` varchar(255) COLLATE utf8mb4_unicode_ci NULL  , 
	`adm_session` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`adm_session_id` int(11) NULL  , 
	`year` int(4) NULL  , 
	`cycle` varchar(10) COLLATE utf8mb4_unicode_ci NULL  , 
	`exam_year` int(11) NULL  , 
	`exam_cycle` varchar(20) COLLATE utf8mb4_unicode_ci NULL  , 
	`status` tinyint(5) NULL  DEFAULT 0 , 
	`type` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`parent_id` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`url` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`verify` int(11) NULL  , 
	`start_date_time` varchar(20) COLLATE utf8mb4_unicode_ci NULL  , 
	`start_date` bigint(15) NULL  COMMENT 'time in unix time stamp' , 
	`end_date` bigint(15) NULL  COMMENT 'time in unix time stamp' , 
	`end_date_time` varchar(20) COLLATE utf8mb4_unicode_ci NULL  , 
	`extended_date_str` varchar(20) COLLATE utf8mb4_unicode_ci NULL  , 
	`extended_date` bigint(15) NULL  , 
	`admin_last_date` bigint(15) NULL  , 
	`admin_last_date_str` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`result_type` varchar(500) COLLATE utf8mb4_unicode_ci NULL  DEFAULT '{}' COMMENT '{\"result_type\":[\"PASS\",\"FAIL\",\"APPEARING\"]}' , 
	`created_at` int(15) NULL  , 
	`updated_at` int(15) NOT NULL  , 
	`created_by` int(11) NULL  , 
	`updated_by` int(11) NULL  , 
	`ip` varchar(20) COLLATE utf8mb4_unicode_ci NULL  , 
	`updated` timestamp NULL  DEFAULT CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP , 
	PRIMARY KEY (`id`) , 
	UNIQUE KEY `title`(`title`,`type`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Create table in target */
CREATE TABLE `examination_admit_card`(
	`id` int(10) unsigned NOT NULL  auto_increment , 
	`programme_id` int(11) NOT NULL  , 
	`programme_name` varchar(197) COLLATE utf8mb4_unicode_ci NOT NULL  , 
	`session_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL  , 
	`student_id` int(11) NOT NULL  , 
	`programme_selection_id` int(11) NULL  , 
	`enrolment_number` varchar(255) COLLATE utf8mb4_general_ci NOT NULL  , 
	`form_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL  , 
	`roll_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL  , 
	`admit_card_template_code` varchar(30) COLLATE utf8mb4_unicode_ci NULL  , 
	`center_id` int(11) NOT NULL  , 
	`center_name` varchar(255) COLLATE utf8mb4_unicode_ci NULL  , 
	`examination_date` date NULL  , 
	`reporting_time` varchar(30) COLLATE utf8mb4_unicode_ci NULL  , 
	`start_time` varchar(30) COLLATE utf8mb4_unicode_ci NULL  , 
	`end_time` varchar(30) COLLATE utf8mb4_unicode_ci NULL  , 
	`status` varchar(30) COLLATE utf8mb4_unicode_ci NULL  DEFAULT 'DRAFT' COMMENT 'DRAFT/PUBLISHED/LOCKED' , 
	`remark` varchar(255) COLLATE utf8mb4_unicode_ci NULL  , 
	`is_downloaded_by_applicant` varchar(5) COLLATE utf8mb4_unicode_ci NULL  DEFAULT 'NO' , 
	`downloaded_on` datetime NULL  , 
	`download_ip` varchar(30) COLLATE utf8mb4_unicode_ci NULL  , 
	`json_data` json NULL  , 
	`created_at` int(11) NULL  , 
	`updated_at` int(11) NULL  , 
	`created_by` int(11) NULL  , 
	`updated_by` int(11) NULL  , 
	`ip` varchar(30) COLLATE utf8mb4_unicode_ci NULL  , 
	PRIMARY KEY (`id`) , 
	UNIQUE KEY `programme_id`(`programme_id`,`roll_number`,`center_id`) , 
	UNIQUE KEY `roll_number`(`roll_number`) , 
	UNIQUE KEY `referenceNo`(`enrolment_number`) , 
	KEY `programme_selection_id`(`programme_selection_id`) , 
	KEY `user_id`(`student_id`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Create table in target */
CREATE TABLE `examination_admit_card_template`(
	`code` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL  , 
	`template` longtext COLLATE utf8mb4_unicode_ci NOT NULL  , 
	`applicable_for` varchar(20) COLLATE utf8mb4_unicode_ci NULL  , 
	`applicable_from_id` int(11) NULL  , 
	`applicable_type` varchar(20) COLLATE utf8mb4_unicode_ci NULL  , 
	`applicable_from_cycle` varchar(20) COLLATE utf8mb4_unicode_ci NULL  , 
	`applicable_from_year` int(11) NULL  , 
	`applicable_from_int` int(11) NULL  , 
	`created_at` int(10) unsigned NULL  , 
	`updated_at` int(10) unsigned NULL  , 
	`created_by` int(10) unsigned NULL  , 
	`updated_by` int(10) unsigned NULL  , 
	`ip` varchar(30) COLLATE utf8mb4_unicode_ci NULL  , 
	PRIMARY KEY (`code`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Create table in target */
CREATE TABLE `examination_application_control`(
	`id` int(10) unsigned NOT NULL  auto_increment , 
	`app_id` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL  , 
	`key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL  , 
	`value` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL  , 
	`json` varchar(1000) COLLATE utf8mb4_unicode_ci NULL  , 
	`type` varchar(20) COLLATE utf8mb4_unicode_ci NULL  , 
	`category` varchar(20) COLLATE utf8mb4_unicode_ci NULL  , 
	`description` varchar(255) COLLATE utf8mb4_unicode_ci NULL  , 
	PRIMARY KEY (`id`) , 
	UNIQUE KEY `key`(`key`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Create table in target */
CREATE TABLE `examination_attendance_sheet_template`(
	`code` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL  , 
	`applicable_from_id` int(11) NULL  , 
	`applicable_from_year` int(11) NULL  , 
	`applicable_from_int` int(11) NULL  , 
	`applicable_from_cycle` varchar(20) COLLATE utf8mb4_unicode_ci NULL  , 
	`applicable_type` varchar(20) COLLATE utf8mb4_unicode_ci NULL  , 
	`template` longtext COLLATE utf8mb4_unicode_ci NOT NULL  , 
	`header` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL  , 
	`created_at` int(10) unsigned NULL  , 
	`updated_at` int(10) unsigned NULL  , 
	`created_by` int(10) unsigned NULL  , 
	`updated_by` int(10) unsigned NULL  , 
	`ip` varchar(30) COLLATE utf8mb4_unicode_ci NULL  , 
	PRIMARY KEY (`code`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Create table in target */
CREATE TABLE `examination_centre_detail`(
	`id` int(10) unsigned NOT NULL  auto_increment , 
	`session_id` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`centre_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL  COMMENT 'CENTRE CODE' , 
	`centre_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL  COMMENT 'NAME OF THE CENTRE' , 
	`number_of_seats_available` int(10) unsigned NULL  COMMENT 'NUMBER OF SEATS AVAILABLE' , 
	`address_line_1` varchar(195) COLLATE utf8mb4_unicode_ci NULL  , 
	`address_line_2` varchar(195) COLLATE utf8mb4_unicode_ci NULL  , 
	`landmark` varchar(195) COLLATE utf8mb4_unicode_ci NULL  , 
	`city` varchar(100) COLLATE utf8mb4_unicode_ci NULL  , 
	`district` varchar(100) COLLATE utf8mb4_unicode_ci NULL  , 
	`pincode` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`state` varchar(100) COLLATE utf8mb4_unicode_ci NULL  , 
	`country` varchar(100) COLLATE utf8mb4_unicode_ci NULL  , 
	`status` varchar(30) COLLATE utf8mb4_unicode_ci NULL  DEFAULT 'DRAFT' COMMENT 'DRAFT/PUBLISHED' , 
	`created_at` int(10) unsigned NULL  , 
	`updated_at` int(10) unsigned NULL  , 
	`created_by` int(10) unsigned NULL  , 
	`updated_by` int(10) unsigned NULL  , 
	PRIMARY KEY (`id`) , 
	UNIQUE KEY `centre_code`(`centre_code`) , 
	UNIQUE KEY `city`(`centre_code`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Create table in target */
CREATE TABLE `examination_centre_detail_session`(
	`id` int(10) unsigned NOT NULL  auto_increment , 
	`session_id` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`centre_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL  COMMENT 'CENTRE CODE' , 
	`centre_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL  COMMENT 'NAME OF THE CENTRE' , 
	`number_of_seats_available` int(10) unsigned NULL  COMMENT 'NUMBER OF SEATS AVAILABLE' , 
	`address_line_1` varchar(195) COLLATE utf8mb4_unicode_ci NULL  , 
	`address_line_2` varchar(195) COLLATE utf8mb4_unicode_ci NULL  , 
	`landmark` varchar(195) COLLATE utf8mb4_unicode_ci NULL  , 
	`city` varchar(100) COLLATE utf8mb4_unicode_ci NULL  , 
	`district` varchar(100) COLLATE utf8mb4_unicode_ci NULL  , 
	`pincode` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`state` varchar(100) COLLATE utf8mb4_unicode_ci NULL  , 
	`country` varchar(100) COLLATE utf8mb4_unicode_ci NULL  , 
	`status` varchar(30) COLLATE utf8mb4_unicode_ci NULL  DEFAULT 'DRAFT' COMMENT 'DRAFT/PUBLISHED' , 
	`created_at` int(10) unsigned NULL  , 
	`updated_at` int(10) unsigned NULL  , 
	`created_by` int(10) unsigned NULL  , 
	`updated_by` int(10) unsigned NULL  , 
	PRIMARY KEY (`id`) , 
	UNIQUE KEY `centre_code`(`centre_code`,`session_id`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Create table in target */
CREATE TABLE `examination_content`(
	`id` int(11) unsigned NOT NULL  auto_increment , 
	`name` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`format` varchar(20) COLLATE utf8mb4_unicode_ci NULL  DEFAULT 'html' , 
	`language` varchar(10) COLLATE utf8mb4_unicode_ci NULL  DEFAULT 'en' , 
	`description` varchar(198) COLLATE utf8mb4_unicode_ci NULL  , 
	`content` longtext COLLATE utf8mb4_unicode_ci NULL  , 
	`portal` varchar(20) COLLATE utf8mb4_unicode_ci NULL  , 
	`created_at` int(11) NULL  , 
	`updated_at` int(11) NULL  , 
	`created_by` int(11) NULL  , 
	`updated_by` int(11) NULL  , 
	`updated` timestamp NOT NULL  DEFAULT CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP , 
	PRIMARY KEY (`id`) , 
	UNIQUE KEY `name`(`name`,`portal`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Create table in target */
CREATE TABLE `examination_course_center_mapping`(
	`id` int(10) unsigned NOT NULL  auto_increment , 
	`programme_id` int(10) unsigned NOT NULL  , 
	`programme_code` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`course_id` int(11) NULL  , 
	`course_code` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`center_id` int(11) NOT NULL  , 
	`session_id` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`pre_defined_series` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL  DEFAULT '1' COMMENT 'IS SERIES AVAILABLE' , 
	`series_prefix` varchar(10) COLLATE utf8mb4_unicode_ci NULL  COMMENT 'ANY PREFIX IF SERIES AVAILABLE' , 
	`start_range` int(10) unsigned NULL  COMMENT 'NUMBERIC START RANGE' , 
	`end_range` int(10) unsigned NULL  COMMENT 'NUMBER END RANGE' , 
	`total_available_range` int(10) unsigned NULL  COMMENT 'END RANGE - START RANGE' , 
	`created_at` int(10) unsigned NULL  , 
	`updated_at` int(10) unsigned NULL  , 
	`created_by` int(11) NULL  , 
	`updated_by` int(11) NULL  , 
	`ip` varchar(30) COLLATE utf8mb4_unicode_ci NULL  , 
	`status` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL  DEFAULT 'DRAFT' COMMENT 'DRAFT/PUBLISHED' , 
	PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Create table in target */
CREATE TABLE `examination_course_fee`(
	`id` int(10) unsigned NOT NULL  auto_increment , 
	`session` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL  , 
	`year` int(11) NULL  , 
	`cycle` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL  , 
	`programme_id` int(11) NOT NULL  , 
	`course_id` int(11) NULL  , 
	`category` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`fee_type` varchar(20) COLLATE utf8mb4_unicode_ci NULL  , 
	`applicable_for` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`applicable_from_int` int(11) NULL  , 
	`applicable_from_year` int(11) NULL  , 
	`applicable_from_cycle` varchar(20) COLLATE utf8mb4_unicode_ci NULL  , 
	`applicable_type` varchar(20) COLLATE utf8mb4_unicode_ci NULL  , 
	`applicable_from_id` int(11) NULL  , 
	`fee` decimal(10,2) NULL  , 
	`fee_currency` varchar(20) COLLATE utf8mb4_unicode_ci NULL  , 
	`processing_fee` decimal(10,2) NULL  , 
	`processing_fee_currency` varchar(20) COLLATE utf8mb4_unicode_ci NULL  , 
	`late_fee_applicable` tinyint(4) NULL  , 
	`late_fee` float NULL  , 
	`created_at` int(11) NULL  , 
	`updated_at` int(11) NULL  , 
	`created_by` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`updated_by` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`ip` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`updated` timestamp NOT NULL  DEFAULT CURRENT_TIMESTAMP , 
	PRIMARY KEY (`id`) , 
	KEY `programme_id`(`programme_id`,`course_id`,`category`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Create table in target */
CREATE TABLE `examination_default_configuration`(
	`id` int(10) unsigned NOT NULL  auto_increment , 
	`app_id` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL  , 
	`key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL  , 
	`value` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL  , 
	`json` varchar(1000) COLLATE utf8mb4_unicode_ci NULL  , 
	`type` varchar(20) COLLATE utf8mb4_unicode_ci NULL  , 
	`category` varchar(20) COLLATE utf8mb4_unicode_ci NULL  , 
	`description` varchar(255) COLLATE utf8mb4_unicode_ci NULL  , 
	PRIMARY KEY (`id`) , 
	UNIQUE KEY `key`(`key`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Create table in target */
CREATE TABLE `examination_fee_session_template`(
	`id` int(10) unsigned NOT NULL  auto_increment , 
	`applicable_type` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`year` int(11) NULL  , 
	`cycle` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL  , 
	`status` varchar(20) COLLATE utf8mb4_unicode_ci NULL  , 
	`created_at` int(11) NULL  , 
	`updated_at` int(11) NULL  , 
	`created_by` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`updated_by` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`ip` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`updated` timestamp NOT NULL  DEFAULT CURRENT_TIMESTAMP , 
	PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Create table in target */
CREATE TABLE `examination_fee_template_mapping`(
	`id` int(11) NOT NULL  auto_increment , 
	`programme_id` int(11) NOT NULL  , 
	`applicable_for` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL  , 
	`fee_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL  , 
	`applicable_from_id` int(11) NOT NULL  , 
	`applicable_from_int` int(11) NOT NULL  , 
	`applicable_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL  , 
	`applicable_from_year` int(11) NULL  , 
	`status` varchar(20) COLLATE utf8mb4_unicode_ci NULL  , 
	`created_at` int(11) NULL  , 
	`updated_at` int(11) NULL  , 
	`created_by` int(11) NULL  , 
	`updated_by` int(11) NULL  , 
	`ip` varchar(32) COLLATE utf8mb4_unicode_ci NULL  , 
	`updated` timestamp NOT NULL  DEFAULT CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP , 
	PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Create table in target */
CREATE TABLE `examination_hall`(
	`id` int(11) NOT NULL  auto_increment , 
	`centre_id` int(11) NULL  , 
	`hall_name` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`capacity` int(11) NULL  , 
	`status` varchar(20) COLLATE utf8mb4_unicode_ci NULL  , 
	`created_at` int(11) NULL  , 
	`updated_at` int(11) NULL  , 
	`created_by` int(11) NULL  , 
	`updated_by` int(11) NULL  , 
	`updated` timestamp NOT NULL  DEFAULT CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP , 
	`ip` varchar(32) COLLATE utf8mb4_unicode_ci NULL  , 
	PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Create table in target */
CREATE TABLE `examination_hall_session`(
	`id` int(11) NOT NULL  auto_increment , 
	`centre_id` int(11) NULL  , 
	`hall_name` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`capacity` int(11) NULL  , 
	`session_id` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`status` varchar(20) COLLATE utf8mb4_unicode_ci NULL  , 
	`created_at` int(11) NULL  , 
	`updated_at` int(11) NULL  , 
	`created_by` int(11) NULL  , 
	`updated_by` int(11) NULL  , 
	`updated` timestamp NOT NULL  DEFAULT CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP , 
	`ip` varchar(32) COLLATE utf8mb4_unicode_ci NULL  , 
	PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Create table in target */
CREATE TABLE `examination_log`(
	`id` int(11) NOT NULL  auto_increment , 
	`table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL  , 
	`previous_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL  , 
	`current_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL  , 
	`description` varchar(255) COLLATE utf8mb4_unicode_ci NULL  , 
	`created_by` int(11) NULL  , 
	`created_at` int(11) NULL  , 
	`ip` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Create table in target */
CREATE TABLE `examination_mail_format_template`(
	`code` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL  , 
	`template` longtext COLLATE utf8mb4_unicode_ci NOT NULL  , 
	`type` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`created_at` int(10) unsigned NULL  , 
	`updated_at` int(10) unsigned NULL  , 
	`created_by` int(10) unsigned NULL  , 
	`updated_by` int(10) unsigned NULL  , 
	`ip` varchar(30) COLLATE utf8mb4_unicode_ci NULL  , 
	PRIMARY KEY (`code`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Create table in target */
CREATE TABLE `examination_mail_log`(
	`id` int(11) NOT NULL  auto_increment , 
	`template_id` varchar(30) COLLATE utf8mb4_general_ci NULL  , 
	`reference_id` int(11) NULL  , 
	`session` varchar(128) COLLATE utf8mb4_general_ci NULL  , 
	`programme_id` int(11) NULL  , 
	`course_id` int(11) NULL  , 
	`teacher_type` varchar(30) COLLATE utf8mb4_general_ci NOT NULL  , 
	`teacher_id` int(11) NOT NULL  , 
	`email` varchar(128) COLLATE utf8mb4_general_ci NULL  , 
	`mail_date` datetime NULL  , 
	`reminder1` tinyint(5) NULL  , 
	`duration` int(10) NULL  , 
	`max_marks` int(4) NULL  , 
	`minimum_question` tinyint(4) NULL  , 
	`content` text COLLATE utf8mb4_general_ci NULL  , 
	`description` text COLLATE utf8mb4_general_ci NULL  , 
	`old_papers` varchar(20) COLLATE utf8mb4_general_ci NULL  , 
	`status` varchar(50) COLLATE utf8mb4_general_ci NOT NULL  , 
	`content_status` varchar(20) COLLATE utf8mb4_general_ci NULL  DEFAULT 'NOT SET' , 
	`action` varchar(50) COLLATE utf8mb4_general_ci NULL  , 
	`save` varchar(50) COLLATE utf8mb4_general_ci NULL  , 
	`syllabus` tinyint(4) NULL  , 
	`created_by` int(11) NULL  , 
	`created_at` int(11) NULL  , 
	`updated_by` int(11) NULL  , 
	`updated_at` int(11) NULL  , 
	`updated` timestamp NOT NULL  DEFAULT CURRENT_TIMESTAMP , 
	`ip` varchar(50) COLLATE utf8mb4_general_ci NULL  , 
	PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_general_ci';


/* Create table in target */
CREATE TABLE `examination_mail_log_examiner`(
	`id` int(11) NOT NULL  auto_increment , 
	`session` varchar(128) COLLATE utf8mb4_general_ci NULL  , 
	`programme_id` int(11) NULL  , 
	`course_id` int(11) NULL  , 
	`unit` varchar(128) COLLATE utf8mb4_general_ci NULL  , 
	`teacher_type` varchar(30) COLLATE utf8mb4_general_ci NOT NULL  , 
	`teacher_id` int(11) NOT NULL  , 
	`email` varchar(128) COLLATE utf8mb4_general_ci NULL  , 
	`mail_date` datetime NULL  , 
	`reminder1` tinyint(5) NULL  , 
	`duration` int(10) NULL  , 
	`max_marks` int(4) NULL  , 
	`content` text COLLATE utf8mb4_general_ci NULL  , 
	`description` text COLLATE utf8mb4_general_ci NULL  , 
	`status` varchar(50) COLLATE utf8mb4_general_ci NOT NULL  , 
	`action` varchar(50) COLLATE utf8mb4_general_ci NULL  , 
	`form` tinyint(5) NULL  , 
	`save` varchar(50) COLLATE utf8mb4_general_ci NULL  , 
	`created_by` int(11) NULL  , 
	`created_at` int(11) NULL  , 
	`updated_by` int(11) NULL  , 
	`updated_at` int(11) NULL  , 
	`updated` timestamp NOT NULL  DEFAULT CURRENT_TIMESTAMP , 
	`ip` varchar(50) COLLATE utf8mb4_general_ci NULL  , 
	PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_general_ci';


/* Create table in target */
CREATE TABLE `examination_moderation_meeting`(
	`id` int(11) NOT NULL  auto_increment , 
	`program_id` int(11) NOT NULL  , 
	`course_id` int(11) NOT NULL  , 
	`unit` int(11) NULL  , 
	`session` varchar(50) COLLATE utf8mb4_general_ci NOT NULL  , 
	`term` int(11) NOT NULL  , 
	`teacher_type` varchar(30) COLLATE utf8mb4_general_ci NOT NULL  , 
	`teacher_id` int(11) NOT NULL  , 
	`status` tinyint(5) NOT NULL  , 
	`action` varchar(50) COLLATE utf8mb4_general_ci NULL  , 
	`upload` varchar(1000) COLLATE utf8mb4_general_ci NULL  , 
	`save` varchar(50) COLLATE utf8mb4_general_ci NULL  , 
	`last_date` datetime NULL  , 
	`created_by` int(11) NULL  , 
	`created_at` int(11) NULL  , 
	`updated_by` int(11) NULL  , 
	`updated_at` int(11) NULL  , 
	`updated` timestamp NOT NULL  DEFAULT CURRENT_TIMESTAMP , 
	`ip` varchar(50) COLLATE utf8mb4_general_ci NULL  , 
	PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_general_ci';


/* Create table in target */
CREATE TABLE `examination_open_form`(
	`id` int(10) unsigned NOT NULL  auto_increment , 
	`for_year` int(11) NULL  , 
	`for_cycle` varchar(20) COLLATE utf8mb4_unicode_ci NULL  , 
	`roll_number` varchar(30) COLLATE utf8mb4_unicode_ci NULL  , 
	`ou_code` varbinary(50) NULL  , 
	`ou_id` int(11) NULL  , 
	`programme_code` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`programme_id` int(11) NULL  , 
	`student_type` varchar(30) COLLATE utf8mb4_unicode_ci NULL  , 
	`exam_scheme` varchar(30) COLLATE utf8mb4_unicode_ci NULL  , 
	`term` int(11) NULL  , 
	`term_type` varchar(30) COLLATE utf8mb4_unicode_ci NULL  , 
	`session` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`name` varchar(195) COLLATE utf8mb4_unicode_ci NULL  , 
	`email` varchar(195) COLLATE utf8mb4_unicode_ci NULL  , 
	`mobile` varchar(30) COLLATE utf8mb4_unicode_ci NULL  , 
	`father_name` varchar(195) COLLATE utf8mb4_unicode_ci NULL  , 
	`mother_name` varchar(195) COLLATE utf8mb4_unicode_ci NULL  , 
	`gender` varchar(30) COLLATE utf8mb4_unicode_ci NULL  , 
	`dob` date NULL  , 
	`category` varchar(30) COLLATE utf8mb4_unicode_ci NULL  , 
	`scribe_required` varchar(5) COLLATE utf8mb4_unicode_ci NULL  DEFAULT 'NO' , 
	`enrolment_number` varchar(30) COLLATE utf8mb4_unicode_ci NULL  , 
	`year_of_admission` int(11) NULL  , 
	`hindi_test` varchar(5) COLLATE utf8mb4_unicode_ci NULL  DEFAULT 'NO' , 
	`created_at` int(11) NULL  , 
	`updated_at` int(11) NULL  , 
	`created_by` int(11) NULL  , 
	`updated_by` int(11) NULL  , 
	`updated` timestamp NULL  on update CURRENT_TIMESTAMP , 
	`submission_time` datetime NULL  , 
	`declaration` tinyint(4) NULL  DEFAULT 0 , 
	`address` text COLLATE utf8mb4_unicode_ci NULL  , 
	`status` varchar(30) COLLATE utf8mb4_unicode_ci NULL  , 
	PRIMARY KEY (`id`) , 
	UNIQUE KEY `email`(`email`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Create table in target */
CREATE TABLE `examination_paper_examiner`(
	`id` int(11) NOT NULL  auto_increment , 
	`programme_id` int(11) NOT NULL  , 
	`course_id` int(11) NOT NULL  , 
	`unit` varchar(128) COLLATE utf8mb4_general_ci NULL  , 
	`session` varchar(50) COLLATE utf8mb4_general_ci NOT NULL  , 
	`term` int(11) NOT NULL  , 
	`teacher_type` varchar(30) COLLATE utf8mb4_general_ci NOT NULL  , 
	`teacher_id` int(11) NOT NULL  , 
	`teacher_name` varchar(128) COLLATE utf8mb4_general_ci NULL  , 
	`status` tinyint(5) NOT NULL  , 
	`action` varchar(50) COLLATE utf8mb4_general_ci NULL  , 
	`award_list` varchar(1000) COLLATE utf8mb4_general_ci NULL  , 
	`save` varchar(50) COLLATE utf8mb4_general_ci NULL  , 
	`remarks` text COLLATE utf8mb4_general_ci NULL  , 
	`reminder1` tinyint(4) NULL  , 
	`reminder2` tinyint(4) NULL  , 
	`reminder3` tinyint(4) NULL  , 
	`award_list_date` datetime NULL  , 
	`exam_date` datetime NULL  , 
	`reminder_date` datetime NULL  , 
	`reminder_day` int(5) NULL  , 
	`created_by` int(11) NULL  , 
	`created_at` int(11) NULL  , 
	`updated_by` int(11) NULL  , 
	`updated_at` int(11) NULL  , 
	`updated` timestamp NULL  DEFAULT CURRENT_TIMESTAMP , 
	`ip` varchar(50) COLLATE utf8mb4_general_ci NULL  , 
	PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_general_ci';


/* Create table in target */
CREATE TABLE `examination_paper_examiner_master`(
	`id` int(11) NOT NULL  auto_increment , 
	`program_id` int(11) NOT NULL  , 
	`course_id` int(11) NOT NULL  , 
	`unit` varchar(128) COLLATE utf8mb4_general_ci NULL  , 
	`term` int(11) NOT NULL  , 
	`teacher_type` varchar(30) COLLATE utf8mb4_general_ci NOT NULL  , 
	`teacher_id` int(11) NOT NULL  , 
	`status` tinyint(5) NOT NULL  , 
	`action` varchar(50) COLLATE utf8mb4_general_ci NULL  , 
	`save` varchar(50) COLLATE utf8mb4_general_ci NULL  , 
	`created_by` int(11) NULL  , 
	`created_at` int(11) NULL  , 
	`updated_by` int(11) NULL  , 
	`updated_at` int(11) NULL  , 
	`updated` timestamp NOT NULL  DEFAULT CURRENT_TIMESTAMP , 
	`ip` varchar(50) COLLATE utf8mb4_general_ci NULL  , 
	PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_general_ci';


/* Create table in target */
CREATE TABLE `examination_paper_setter`(
	`id` int(11) NOT NULL  auto_increment , 
	`programme_id` int(11) NOT NULL  , 
	`course_id` int(11) NOT NULL  , 
	`unit` varchar(128) COLLATE utf8mb4_general_ci NULL  , 
	`session` varchar(50) COLLATE utf8mb4_general_ci NOT NULL  , 
	`term` int(11) NOT NULL  , 
	`term_type` varchar(20) COLLATE utf8mb4_general_ci NULL  , 
	`teacher_type` varchar(30) COLLATE utf8mb4_general_ci NOT NULL  , 
	`teacher_id` int(11) NOT NULL  , 
	`teacher_name` varchar(128) COLLATE utf8mb4_general_ci NULL  , 
	`status` tinyint(5) NOT NULL  , 
	`action` varchar(50) COLLATE utf8mb4_general_ci NULL  , 
	`last_action` varchar(50) COLLATE utf8mb4_general_ci NULL  , 
	`accept` varchar(30) COLLATE utf8mb4_general_ci NULL  , 
	`accept_date` datetime NULL  , 
	`upload_status` varchar(30) COLLATE utf8mb4_general_ci NULL  , 
	`upload_date` datetime NULL  , 
	`upload1` varchar(1000) COLLATE utf8mb4_general_ci NULL  , 
	`upload2` varchar(1000) COLLATE utf8mb4_general_ci NULL  , 
	`upload3` varchar(1000) COLLATE utf8mb4_general_ci NULL  , 
	`upload4` varchar(1000) COLLATE utf8mb4_general_ci NULL  , 
	`upload5` varchar(1000) COLLATE utf8mb4_general_ci NULL  , 
	`save` varchar(50) COLLATE utf8mb4_general_ci NULL  , 
	`term_condition` tinyint(4) NULL  , 
	`last_date` datetime NULL  , 
	`created_by` int(11) NULL  , 
	`created_at` int(11) NULL  , 
	`updated_by` int(11) NULL  , 
	`updated_at` int(11) NULL  , 
	`updated` timestamp NOT NULL  DEFAULT CURRENT_TIMESTAMP , 
	`ip` varchar(50) COLLATE utf8mb4_general_ci NULL  , 
	`reminder1` tinyint(4) NULL  , 
	`reminder2` tinyint(4) NULL  , 
	`reminder3` tinyint(4) NULL  , 
	`reminder_day` tinyint(4) NULL  , 
	`reminder_date` datetime NULL  , 
	PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_general_ci';


/* Create table in target */
CREATE TABLE `examination_paper_setter_master`(
	`id` int(11) NOT NULL  auto_increment , 
	`program_id` int(11) NOT NULL  , 
	`course_id` int(11) NOT NULL  , 
	`unit` varchar(128) COLLATE utf8mb4_general_ci NULL  , 
	`term` int(11) NOT NULL  , 
	`teacher_type` varchar(30) COLLATE utf8mb4_general_ci NOT NULL  , 
	`teacher_id` int(11) NOT NULL  , 
	`status` tinyint(5) NOT NULL  , 
	`action` varchar(50) COLLATE utf8mb4_general_ci NULL  , 
	`upload` varchar(1000) COLLATE utf8mb4_general_ci NULL  , 
	`save` varchar(50) COLLATE utf8mb4_general_ci NULL  , 
	`last_date` datetime NULL  , 
	`created_by` int(11) NULL  , 
	`created_at` int(11) NULL  , 
	`updated_by` int(11) NULL  , 
	`updated_at` int(11) NULL  , 
	`updated` timestamp NOT NULL  DEFAULT CURRENT_TIMESTAMP , 
	`ip` varchar(50) COLLATE utf8mb4_general_ci NULL  , 
	PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_general_ci';


/* Create table in target */
CREATE TABLE `examination_programme_evaluation_template_mapping`(
	`id` int(11) NOT NULL  auto_increment , 
	`programme_id` int(11) NOT NULL  , 
	`evaluation_template_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL  , 
	`report_type` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL  DEFAULT 'PUBLISHED' , 
	`created_by` int(11) NULL  , 
	`updated_by` int(11) NULL  , 
	`created_at` int(11) NULL  , 
	`updated_at` int(11) NULL  , 
	`updated` timestamp NULL  DEFAULT CURRENT_TIMESTAMP , 
	`ip` varchar(30) COLLATE utf8mb4_unicode_ci NULL  , 
	PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Create table in target */
CREATE TABLE `examination_schedule`(
	`id` int(10) unsigned NOT NULL  auto_increment , 
	`session_id` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`term` int(11) NULL  , 
	`programme_id` int(10) unsigned NULL  , 
	`programme_code` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`course_id` int(11) NULL  , 
	`course_code` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`examination_date` date NOT NULL  , 
	`slot_id` int(11) NULL  , 
	`reporting_time` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL  , 
	`start_time` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL  , 
	`end_time` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL  , 
	`duration` varchar(30) COLLATE utf8mb4_unicode_ci NULL  , 
	`pre_defined_series` varchar(5) COLLATE utf8mb4_unicode_ci NULL  DEFAULT 'NO' COMMENT 'IS SERIES AVAILABLE' , 
	`series_prefix` varchar(10) COLLATE utf8mb4_unicode_ci NULL  COMMENT 'ANY PREFIX IF SERIES AVAILABLE' , 
	`start_range` int(10) unsigned NULL  COMMENT 'NUMBERIC START RANGE' , 
	`end_range` int(10) unsigned NULL  COMMENT 'NUMBER END RANGE' , 
	`total_available_range` int(10) unsigned NULL  COMMENT 'END RANGE - START RANGE' , 
	`created_at` int(10) unsigned NULL  , 
	`updated_at` int(10) unsigned NULL  , 
	`created_by` int(11) NULL  , 
	`updated_by` int(11) NULL  , 
	`ip` varchar(30) COLLATE utf8mb4_unicode_ci NULL  , 
	`status` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL  DEFAULT 'DRAFT' COMMENT 'DRAFT/PUBLISHED' , 
	`subject_code` varchar(20) COLLATE utf8mb4_unicode_ci NULL  , 
	PRIMARY KEY (`id`) , 
	UNIQUE KEY `programme_id`(`programme_id`,`course_id`,`session_id`,`examination_date`,`slot_id`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Create table in target */
CREATE TABLE `examination_schedule_hall_mapping`(
	`id` int(10) unsigned NOT NULL  auto_increment , 
	`programme_id` int(10) unsigned NOT NULL  , 
	`programme_code` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`course_id` int(11) NULL  , 
	`term_type` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`term` int(11) NULL  , 
	`course_code` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`center_id` int(11) NOT NULL  , 
	`center_code` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`hall_id` int(11) NULL  , 
	`hall_name` varchar(255) COLLATE utf8mb4_unicode_ci NULL  , 
	`schedule_id` int(11) NULL  , 
	`examination_date` varchar(255) COLLATE utf8mb4_unicode_ci NULL  , 
	`slot_id` int(11) NULL  , 
	`session_id` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`occupancy` int(11) NULL  , 
	`created_at` int(10) unsigned NULL  , 
	`updated_at` int(10) unsigned NULL  , 
	`created_by` int(11) NULL  , 
	`updated_by` int(11) NULL  , 
	`ip` varchar(30) COLLATE utf8mb4_unicode_ci NULL  , 
	`status` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL  DEFAULT 'PUBLISHED' COMMENT 'DRAFT/PUBLISHED' , 
	PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Alter table in target */
ALTER TABLE `examination_session` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first ;

/* Create table in target */
CREATE TABLE `examination_session_template`(
	`id` int(10) unsigned NOT NULL  auto_increment , 
	`applicable_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL  , 
	`year` int(11) NOT NULL  , 
	`cycle` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL  , 
	`int_value` int(11) NOT NULL  DEFAULT 0 , 
	`status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL  , 
	`created_at` int(11) NULL  , 
	`updated_at` int(11) NULL  , 
	`created_by` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`updated_by` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`ip` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`updated` timestamp NOT NULL  DEFAULT CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP , 
	PRIMARY KEY (`id`) , 
	UNIQUE KEY `applicable_type`(`applicable_type`,`year`,`cycle`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Create table in target */
CREATE TABLE `examination_slot_center_map`(
	`id` int(1) NOT NULL  auto_increment , 
	`center_id` int(11) NOT NULL  , 
	`center_name` varchar(255) COLLATE utf8mb4_unicode_ci NULL  , 
	`slot_id` int(11) NOT NULL  , 
	`exam_date` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL  , 
	`duration` varchar(30) COLLATE utf8mb4_unicode_ci NULL  , 
	`reporting_time` varchar(30) COLLATE utf8mb4_unicode_ci NULL  , 
	`start_time` varchar(30) COLLATE utf8mb4_unicode_ci NULL  , 
	`end_time` varchar(30) COLLATE utf8mb4_unicode_ci NULL  , 
	`application_id` int(11) NOT NULL  , 
	`course_id` int(11) NOT NULL  , 
	`admit_card_id` int(11) NOT NULL  , 
	`created_at` int(11) NULL  , 
	`updated_at` int(11) NULL  , 
	`created_by` int(11) NULL  , 
	`updated_by` int(11) NULL  , 
	`updated` timestamp NULL  DEFAULT CURRENT_TIMESTAMP , 
	`ip` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Create table in target */
CREATE TABLE `examination_slots`(
	`id` int(11) NOT NULL  auto_increment , 
	`session_id` varchar(20) COLLATE utf8mb4_unicode_ci NULL  , 
	`name` varchar(100) COLLATE utf8mb4_unicode_ci NULL  , 
	`reporting_time` varchar(30) COLLATE utf8mb4_unicode_ci NULL  , 
	`start_time` varchar(30) COLLATE utf8mb4_unicode_ci NULL  , 
	`end_time` varchar(30) COLLATE utf8mb4_unicode_ci NULL  , 
	`duration` varchar(30) COLLATE utf8mb4_unicode_ci NULL  , 
	`status` varchar(20) COLLATE utf8mb4_unicode_ci NULL  , 
	`created_at` int(11) NULL  , 
	`updated_at` int(11) NULL  , 
	`created_by` int(11) NULL  , 
	`updated_by` int(11) NULL  , 
	`updated` timestamp NOT NULL  DEFAULT CURRENT_TIMESTAMP , 
	`ip` varchar(32) COLLATE utf8mb4_unicode_ci NULL  , 
	PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Create table in target */
CREATE TABLE `examination_student_application`(
	`id` int(11) NOT NULL  auto_increment , 
	`student_id` int(11) NOT NULL  , 
	`enrolment_number` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL  , 
	`application_status` varchar(50) COLLATE utf8mb4_unicode_ci NULL  DEFAULT 'DRAFT' , 
	`submission_type` varchar(50) COLLATE utf8mb4_unicode_ci NULL  DEFAULT 'NEW APPLICATION' , 
	`submission_datetime` datetime NULL  , 
	`name` varchar(100) COLLATE utf8mb4_unicode_ci NULL  , 
	`email` varchar(100) COLLATE utf8mb4_unicode_ci NULL  , 
	`mobile` varchar(15) COLLATE utf8mb4_unicode_ci NULL  , 
	`adm_cycle` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`exam_year` int(11) NULL  , 
	`exam_cycle` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`exam_session_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL  , 
	`exam_roll_number` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`programme_id` int(11) NOT NULL  , 
	`programme_code` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`paystatus` varchar(50) COLLATE utf8mb4_unicode_ci NULL  DEFAULT 'UNPAID' , 
	`exam_mode` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`scribe_required` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`pay_date` date NULL  , 
	`pay_order_id` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`pay_transaction_id` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`pay_amount` decimal(11,0) NULL  , 
	`year` int(11) NULL  , 
	`cycle` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`term` int(11) NULL  , 
	`oddEven` varchar(5) COLLATE utf8mb4_unicode_ci NULL  , 
	`ou_id` int(11) NULL  , 
	`category` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`fee_exemption` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`fee_exemption_eligible` varchar(50) COLLATE utf8mb4_unicode_ci NULL  DEFAULT 'NO' , 
	`fee_exemption_claimed` varchar(50) COLLATE utf8mb4_unicode_ci NULL  DEFAULT 'NO' , 
	`exam_session_map_id` int(11) NULL  , 
	`exam_type` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`is_pwd` varchar(5) COLLATE utf8mb4_unicode_ci NULL  DEFAULT 'NO' , 
	`exam_name` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`admit_card_status` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`admit_card_downloaded` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`created_at` int(11) NULL  , 
	`updated_at` int(11) NULL  , 
	`created_by` int(11) NULL  , 
	`updated_by` int(11) NULL  , 
	`updated` timestamp NULL  DEFAULT CURRENT_TIMESTAMP , 
	`ip` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	PRIMARY KEY (`id`) , 
	UNIQUE KEY `student_id`(`student_id`,`exam_session_id`,`programme_id`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Create table in target */
CREATE TABLE `examination_student_attendance`(
	`id` int(11) unsigned NOT NULL  auto_increment , 
	`student_id` int(11) NOT NULL  , 
	`section_id` int(11) NULL  , 
	`enrolment_number` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`name` varchar(195) COLLATE utf8mb4_unicode_ci NULL  , 
	`examination_session_id` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`academic_session_id` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`academic_year` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`academic_session` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`ou_id` int(11) NULL  , 
	`class_roll_number` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`programme_id` int(11) NULL  , 
	`programme_code` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`course_id` int(11) NULL  , 
	`course_code` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`start_date` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`end_date` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`total_classes` int(11) NULL  , 
	`actual_lecture_hours` int(11) NULL  , 
	`attended_lecture_hours` int(11) NULL  , 
	`class_attended` int(11) NULL  , 
	`total_grace_attendance` int(11) NULL  , 
	`grace_reason` text COLLATE utf8mb4_unicode_ci NULL  , 
	`total_class_attended` int(11) NULL  , 
	`attendance_percentage` decimal(10,2) NULL  , 
	`attendance_marks` decimal(10,0) NULL  , 
	`grade` varchar(10) COLLATE utf8mb4_unicode_ci NULL  , 
	`created_at` int(11) NULL  , 
	`updated_at` int(11) NULL  , 
	`created_by` int(11) NULL  , 
	`updated_by` int(11) NULL  , 
	`ip` varchar(32) COLLATE utf8mb4_unicode_ci NULL  , 
	`updated` timestamp NOT NULL  DEFAULT CURRENT_TIMESTAMP , 
	PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Create table in target */
CREATE TABLE `examination_student_course_selection`(
	`id` int(11) NOT NULL  auto_increment , 
	`student_id` int(11) NOT NULL  , 
	`exam_application_id` int(11) NULL  , 
	`enrolment_number` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL  , 
	`roll_number` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`programme_id` int(11) NOT NULL  , 
	`programme_code` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`course_id` int(11) NOT NULL  , 
	`course_code` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`term` int(11) NULL  , 
	`term_type` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`course_exam_type` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`paper_term` int(11) NULL  , 
	`paper_result` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`session_id` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`exam_schedule_id` int(11) NULL  , 
	`exam_center_id` int(11) NULL  , 
	`exam_hall_id` int(11) NULL  , 
	`exam_slot_id` int(11) NULL  , 
	`exam_center_name` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`exam_hall_name` varchar(255) COLLATE utf8mb4_unicode_ci NULL  , 
	`exam_date` varchar(30) COLLATE utf8mb4_unicode_ci NULL  , 
	`exam_start_time` varchar(30) COLLATE utf8mb4_unicode_ci NULL  , 
	`exam_end_time` varchar(30) COLLATE utf8mb4_unicode_ci NULL  , 
	`exam_duration` varchar(30) COLLATE utf8mb4_unicode_ci NULL  , 
	`exam_reporting_time` varchar(30) COLLATE utf8mb4_unicode_ci NULL  , 
	`schedule_hall_mapping_id` int(11) NULL  , 
	`admit_card_template_code` varchar(50) COLLATE utf8mb4_unicode_ci NULL  DEFAULT 'DEFAULT' , 
	`admit_card_status` varchar(50) COLLATE utf8mb4_unicode_ci NULL  DEFAULT 'DRAFT' , 
	`attendance` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`status` varchar(50) COLLATE utf8mb4_unicode_ci NULL  DEFAULT 'DRAFT' , 
	`attendance_created_by` int(11) NULL  , 
	`attendance_created_at` datetime NULL  , 
	`attendance_status` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`created_at` int(11) NULL  , 
	`updated_at` int(11) NULL  , 
	`created_by` int(11) NULL  , 
	`updated_by` int(11) NULL  , 
	`updated` timestamp NULL  DEFAULT CURRENT_TIMESTAMP , 
	`ip` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	PRIMARY KEY (`id`) , 
	UNIQUE KEY `student_id`(`student_id`,`programme_id`,`course_id`,`session_id`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Create table in target */
CREATE TABLE `examination_student_course_selection_draft`(
	`id` int(11) NOT NULL  auto_increment , 
	`student_id` int(11) NOT NULL  , 
	`exam_application_id` int(11) NULL  , 
	`enrolment_number` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL  , 
	`roll_number` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`programme_id` int(11) NOT NULL  , 
	`programme_code` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`course_id` int(11) NOT NULL  , 
	`course_code` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`term` int(11) NULL  , 
	`term_type` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`course_exam_type` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`paper_term` int(11) NULL  , 
	`paper_result` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`session_id` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`created_at` int(11) NULL  , 
	`updated_at` int(11) NULL  , 
	`created_by` int(11) NULL  , 
	`updated_by` int(11) NULL  , 
	`updated` timestamp NOT NULL  DEFAULT CURRENT_TIMESTAMP , 
	`ip` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Create table in target */
CREATE TABLE `examination_student_monthly_attendance`(
	`id` int(11) unsigned NOT NULL  auto_increment , 
	`student_id` int(11) NOT NULL  , 
	`section_id` int(11) NULL  , 
	`enrolment_number` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`name` varchar(255) COLLATE utf8mb4_unicode_ci NULL  , 
	`examination_session_id` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`academic_session_id` int(11) NULL  , 
	`academic_year` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`academic_session` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`ou_id` int(11) NULL  , 
	`class_roll_number` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`programme_id` int(11) NULL  , 
	`programme_code` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`course_id` int(11) NULL  , 
	`course_code` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`month` varchar(20) COLLATE utf8mb4_unicode_ci NULL  , 
	`total_classes` int(11) NULL  , 
	`actual_lecture_hours` int(11) NULL  , 
	`attended_lecture_hours` int(11) NULL  , 
	`class_attended` int(11) NULL  , 
	`total_grace_attendance` int(11) NULL  , 
	`grace_reason` text COLLATE utf8mb4_unicode_ci NULL  , 
	`total_class_attended` int(11) NULL  , 
	`attendance_percentage` decimal(10,2) NULL  , 
	`created_at` int(11) NULL  , 
	`updated_at` int(11) NULL  , 
	`created_by` int(11) NULL  , 
	`updated_by` int(11) NULL  , 
	`ip` varchar(32) COLLATE utf8mb4_unicode_ci NULL  , 
	`updated` timestamp NOT NULL  DEFAULT CURRENT_TIMESTAMP , 
	PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Create table in target */
CREATE TABLE `examination_teacher`(
	`id` int(11) NOT NULL  auto_increment , 
	`external_id` varchar(128) COLLATE utf8mb4_general_ci NULL  , 
	`course_id` varchar(255) COLLATE utf8mb4_general_ci NULL  , 
	`type` varchar(30) COLLATE utf8mb4_general_ci NULL  , 
	`category` varchar(15) COLLATE utf8mb4_general_ci NULL  , 
	`name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL  , 
	`address1` varchar(512) COLLATE utf8mb4_general_ci NOT NULL  , 
	`address2` varchar(512) COLLATE utf8mb4_general_ci NULL  , 
	`city` varchar(128) COLLATE utf8mb4_general_ci NULL  , 
	`district` varchar(128) COLLATE utf8mb4_general_ci NULL  , 
	`state` varchar(255) COLLATE utf8mb4_general_ci NULL  , 
	`country` int(10) NULL  , 
	`pincode` int(15) NULL  , 
	`contact` varchar(255) COLLATE utf8mb4_general_ci NOT NULL  , 
	`email` varchar(128) COLLATE utf8mb4_general_ci NOT NULL  , 
	`parent_organisation` varchar(255) COLLATE utf8mb4_general_ci NULL  , 
	`dept` varchar(255) COLLATE utf8mb4_general_ci NULL  , 
	`save` varchar(50) COLLATE utf8mb4_general_ci NULL  , 
	`remarks` text COLLATE utf8mb4_general_ci NULL  , 
	`teacher_id` int(11) NULL  , 
	`status` tinyint(4) NULL  DEFAULT 1 , 
	`created_by` int(11) NULL  , 
	`created_at` int(11) NULL  , 
	`updated_by` int(11) NULL  , 
	`updated_at` int(11) NULL  , 
	`updated` timestamp NOT NULL  DEFAULT CURRENT_TIMESTAMP , 
	`ip` varchar(50) COLLATE utf8mb4_general_ci NULL  , 
	PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_general_ci';


/* Alter table in target */
ALTER TABLE `feedback_responses` 
	CHANGE `mobile` `mobile` bigint(8)   NULL after `email` , 
	CHANGE `feedback_template_id` `feedback_template_id` int(11) unsigned   NOT NULL after `programme_name` , 
	CHANGE `created_at` `created_at` int(11) unsigned   NULL after `response_other` , 
	CHANGE `created_by` `created_by` int(11) unsigned   NULL after `created_at` , 
	CHANGE `updated_at` `updated_at` int(11) unsigned   NULL after `created_by` , 
	CHANGE `updated_by` `updated_by` int(11) unsigned   NULL after `updated_at` ;

/* Create table in target */
CREATE TABLE `field_class_map`(
	`id` int(11) NOT NULL  auto_increment , 
	`field_name` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`class_path` varchar(255) COLLATE utf8mb4_unicode_ci NULL  , 
	`class_field_name` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`created_at` int(11) NULL  , 
	`updated_at` int(11) NULL  , 
	`created_by` int(11) NULL  , 
	`updated_by` int(11) NULL  , 
	`updated` timestamp NOT NULL  DEFAULT CURRENT_TIMESTAMP , 
	`ip` varchar(32) COLLATE utf8mb4_unicode_ci NULL  , 
	PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Alter table in target */
ALTER TABLE `fmts_file_type` 
	CHANGE `status` `status` tinyint(4) unsigned   NULL DEFAULT 1 after `description` , 
	CHANGE `update_disable` `update_disable` tinyint(4) unsigned   NULL DEFAULT 0 after `status` ;

/* Alter table in target */
ALTER TABLE `grievance_category` 
	CHANGE `ip` `ip` int(32)   NULL after `updated` ;

/* Alter table in target */
ALTER TABLE `grievance_committee_members` 
	CHANGE `isSameUniversity` `isSameUniversity` tinyint(5)   NOT NULL after `memberType` , 
	CHANGE `memberMobile` `memberMobile` bigint(10)   NOT NULL after `memberEmail` ;

/* Alter table in target */
ALTER TABLE `grievance_form` 
	ADD COLUMN `resolution_document` varchar(255)  COLLATE utf8mb4_unicode_ci NULL after `resolution_date` , 
	CHANGE `submitDate` `submitDate` date   NULL after `resolution_document` , 
	CHANGE `ip` `ip` int(32)   NULL after `updated` ;

/* Alter table in target */
ALTER TABLE `grievance_logs` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first ;

/* Alter table in target */
ALTER TABLE `grievance_mail` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first , 
	CHANGE `memberMobile` `memberMobile` bigint(10)   NOT NULL after `memberEmail` ;

/* Alter table in target */
ALTER TABLE `grievance_meeting` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first , 
	CHANGE `status` `status` tinyint(5)   NULL DEFAULT 1 after `attendees` ;

/* Alter table in target */
ALTER TABLE `grievance_meeting_invites` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first , 
	CHANGE `attendeeMobile` `attendeeMobile` bigint(10)   NOT NULL after `attendeeEmail` ;

/* Alter table in target */
ALTER TABLE `grievance_notes` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first ;

/* Alter table in target */
ALTER TABLE `grievance_public` 
	CHANGE `contactNo` `contactNo` bigint(12)   NOT NULL after `name` , 
	CHANGE `aadhar` `aadhar` bigint(14)   NULL after `college` , 
	ADD COLUMN `resolution_document` varchar(255)  COLLATE utf8mb4_unicode_ci NULL after `resolution_date` , 
	CHANGE `status` `status` tinyint(4)   NULL after `resolution_document` , 
	CHANGE `ip` `ip` int(32)   NULL after `updated` ;

/* Alter table in target */
ALTER TABLE `groups` 
	CHANGE `created_by` `created_by` int(30)   NULL after `description` ;

/* Alter table in target */
ALTER TABLE `health_doctor_details` 
	CHANGE `contact_details` `contact_details` bigint(11)   NULL after `name` ;

/* Alter table in target */
ALTER TABLE `health_facility` 
	CHANGE `ou_id` `ou_id` int(11) unsigned   NOT NULL after `id` , 
	CHANGE `facility_name` `facility_name` varchar(255)  COLLATE utf8mb4_general_ci NOT NULL after `ou_id` , 
	CHANGE `description` `description` text  COLLATE utf8mb4_general_ci NULL after `facility_name` , 
	CHANGE `ip` `ip` varchar(40)  COLLATE utf8mb4_general_ci NULL after `updated_by` , COLLATE ='utf8mb4_general_ci' ;

/* Alter table in target */
ALTER TABLE `health_membership` 
	CHANGE `membership_id` `membership_id` varchar(190)  COLLATE utf8mb4_general_ci NULL after `id` , 
	CHANGE `member_id` `member_id` varchar(190)  COLLATE utf8mb4_general_ci NULL after `member_type` , 
	CHANGE `ip` `ip` varchar(40)  COLLATE utf8mb4_general_ci NULL after `updated_by` , COLLATE ='utf8mb4_general_ci' ;

/* Alter table in target */
ALTER TABLE `health_membership_subscription` 
	CHANGE `membership_id` `membership_id` varchar(128)  COLLATE utf8mb4_general_ci NOT NULL after `id` , 
	CHANGE `member_id` `member_id` varchar(128)  COLLATE utf8mb4_general_ci NOT NULL after `membership_id` , 
	CHANGE `order_id` `order_id` varchar(255)  COLLATE utf8mb4_general_ci NULL after `payment_mode` , 
	CHANGE `transaction_id` `transaction_id` varchar(255)  COLLATE utf8mb4_general_ci NULL after `order_id` , 
	CHANGE `transaction_status` `transaction_status` varchar(128)  COLLATE utf8mb4_general_ci NULL after `transaction_amount` , 
	CHANGE `ip` `ip` varchar(40)  COLLATE utf8mb4_general_ci NULL after `updated_by` , COLLATE ='utf8mb4_general_ci' ;

/* Alter table in target */
ALTER TABLE `health_membership_type` 
	CHANGE `name` `name` varchar(255)  COLLATE utf8mb4_general_ci NOT NULL after `ou_id` , 
	CHANGE `description` `description` text  COLLATE utf8mb4_general_ci NULL after `member_type` , 
	CHANGE `ip` `ip` varchar(40)  COLLATE utf8mb4_general_ci NULL after `updated_by` , COLLATE ='utf8mb4_general_ci' ;

/* Alter table in target */
ALTER TABLE `health_record` 
	CHANGE `facility_avail` `facility_avail` text  COLLATE utf8mb4_unicode_ci NULL after `purpose` ;

/* Alter table in target */
ALTER TABLE `hostel_allocation` 
	CHANGE `hostel_id` `hostel_id` int(11) unsigned   NOT NULL after `building_id` ;

/* Alter table in target */
ALTER TABLE `hostel_facility` 
	CHANGE `hostel_id` `hostel_id` int(11) unsigned   NOT NULL after `id` ;

/* Alter table in target */
ALTER TABLE `hostel_leave` 
	CHANGE `student_id` `student_id` varchar(128)  COLLATE utf8mb4_general_ci NOT NULL after `id` , 
	CHANGE `reason` `reason` text  COLLATE utf8mb4_general_ci NULL after `end_date` , 
	CHANGE `ip` `ip` varchar(40)  COLLATE utf8mb4_general_ci NULL after `updated` , COLLATE ='utf8mb4_general_ci' ;

/* Alter table in target */
ALTER TABLE `hostel_rooms` 
	CHANGE `hostel_id` `hostel_id` int(11) unsigned   NOT NULL after `building_id` ;

/* Alter table in target */
ALTER TABLE `ims_budget_head` 
	CHANGE `status` `status` tinyint(5)   NULL after `updated_by` ;

/* Alter table in target */
ALTER TABLE `ims_category_type` 
	CHANGE `status` `status` tinyint(5)   NULL after `updated_by` ;

/* Alter table in target */
ALTER TABLE `ims_disposal_detail` 
	CHANGE `status` `status` tinyint(5)   NULL after `updated_by` ;

/* Create table in target */
CREATE TABLE `ims_item_serial_number`(
	`id` int(10) unsigned NOT NULL  auto_increment , 
	`stock_reference_number` varchar(197) COLLATE utf8mb4_unicode_ci NOT NULL  , 
	`serial_number` varchar(197) COLLATE utf8mb4_unicode_ci NULL  , 
	`issue_id` varchar(255) COLLATE utf8mb4_unicode_ci NULL  , 
	`status` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`created_at` int(11) NULL  , 
	`updated_at` int(11) NULL  , 
	`created_by` int(11) NULL  , 
	`updated_by` int(11) NULL  , 
	PRIMARY KEY (`id`) , 
	UNIQUE KEY `stock_reference_number`(`stock_reference_number`,`serial_number`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Alter table in target */
ALTER TABLE `ims_items_issued` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first , 
	ADD COLUMN `item_serial_number` text  COLLATE utf8mb4_unicode_ci NULL after `item_number` , 
	CHANGE `issued_to_person_type` `issued_to_person_type` varchar(50)  COLLATE utf8mb4_unicode_ci NOT NULL after `item_serial_number` , 
	CHANGE `mobile_of_the_other_person` `mobile_of_the_other_person` bigint(10)   NULL after `email_of_the_other_person` , 
	ADD COLUMN `discarded` varchar(3)  COLLATE utf8mb4_unicode_ci NULL DEFAULT 'NO' after `total_items_returned` , 
	ADD COLUMN `discard_reason` text  COLLATE utf8mb4_unicode_ci NULL after `discarded` , 
	CHANGE `created_at` `created_at` int(10) unsigned   NULL after `discard_reason` ;

/* Alter table in target */
ALTER TABLE `ims_items_stock_details` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first , 
	ADD COLUMN `currency` varchar(15)  COLLATE utf8mb4_unicode_ci NULL DEFAULT 'INR' after `available_quantity` , 
	CHANGE `unit_price` `unit_price` decimal(10,2)   NULL after `currency` , 
	CHANGE `purchase_order_no` `purchase_order_no` varchar(128)  COLLATE utf8mb4_unicode_ci NULL after `total_amount` , 
	CHANGE `status` `status` tinyint(5)   NULL COMMENT '0=> NOT AVAILABLE,1=>AVAILABLE' after `updated_by` ;

/* Alter table in target */
ALTER TABLE `ims_logs` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first ;

/* Alter table in target */
ALTER TABLE `ims_tax_detail` 
	CHANGE `tax_name` `tax_name` varchar(128)  COLLATE utf8mb4_general_ci NOT NULL after `user_id` , 
	CHANGE `status` `status` tinyint(5)   NULL after `updated_by` , 
	CHANGE `ip` `ip` varchar(32)  COLLATE utf8mb4_general_ci NULL after `status` , COLLATE ='utf8mb4_general_ci' ;

/* Alter table in target */
ALTER TABLE `ims_vendor_details` 
	CHANGE `mobile` `mobile` bigint(10)   NOT NULL after `email` ;

/* Alter table in target */
ALTER TABLE `ims_warehouse_detail` 
	CHANGE `status` `status` tinyint(5)   NULL after `updated_by` , COLLATE ='utf8mb4_general_ci' ;

/* Alter table in target */
ALTER TABLE `interview_call_letter` 
	CHANGE `cancel_remarks` `cancel_remarks` text  COLLATE utf8mb4_general_ci NULL after `canceled` , 
	CHANGE `reschedule_remarks` `reschedule_remarks` text  COLLATE utf8mb4_general_ci NULL after `rescheduled` , COLLATE ='utf8mb4_general_ci' ;

/* Alter table in target */
ALTER TABLE `itsd_agent_type` 
	CHANGE `ip` `ip` varchar(40)  COLLATE utf8mb4_general_ci NULL after `updated_by` , COLLATE ='utf8mb4_general_ci' ;

/* Alter table in target */
ALTER TABLE `itsd_form` 
	CHANGE `ticket_no` `ticket_no` varchar(128)  COLLATE utf8mb4_general_ci NOT NULL after `type` , 
	CHANGE `remarks` `remarks` text  COLLATE utf8mb4_general_ci NOT NULL after `ticket_no` , 
	CHANGE `user_type` `user_type` varchar(128)  COLLATE utf8mb4_general_ci NOT NULL after `user_id` , 
	CHANGE `email_id` `email_id` varchar(128)  COLLATE utf8mb4_general_ci NOT NULL after `user_type` , 
	CHANGE `status` `status` varchar(50)  COLLATE utf8mb4_general_ci NOT NULL after `email_id` , 
	CHANGE `ticket_status` `ticket_status` varchar(50)  COLLATE utf8mb4_general_ci NULL after `status` , 
	CHANGE `reason` `reason` text  COLLATE utf8mb4_general_ci NULL after `ticket_status` , 
	ADD COLUMN `upload` varchar(1000)  COLLATE utf8mb4_general_ci NULL after `submit` , 
	ADD COLUMN `upload_file` varchar(1000)  COLLATE utf8mb4_general_ci NULL after `upload` , 
	CHANGE `created_at` `created_at` int(11)   NULL after `upload_file` , 
	CHANGE `ip` `ip` varchar(40)  COLLATE utf8mb4_general_ci NULL after `updated_by` , COLLATE ='utf8mb4_general_ci' ;

/* Alter table in target */
ALTER TABLE `itsd_response_to_applicant` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first ;

/* Alter table in target */
ALTER TABLE `itsd_status_log` 
	CHANGE `remarks` `remarks` text  COLLATE utf8mb4_general_ci NULL after `form_id` , 
	CHANGE `status` `status` varchar(50)  COLLATE utf8mb4_general_ci NOT NULL after `remarks` , 
	CHANGE `ip` `ip` varchar(40)  COLLATE utf8mb4_general_ci NULL after `updated_by` , COLLATE ='utf8mb4_general_ci' ;

/* Alter table in target */
ALTER TABLE `itsd_type` 
	CHANGE `type_name` `type_name` varchar(128)  COLLATE utf8mb4_general_ci NOT NULL after `id` , 
	CHANGE `description` `description` varchar(128)  COLLATE utf8mb4_general_ci NULL after `type_name` , 
	CHANGE `ip` `ip` varchar(40)  COLLATE utf8mb4_general_ci NULL after `updated_by` , COLLATE ='utf8mb4_general_ci' ;

/* Alter table in target */
ALTER TABLE `knowledge_book` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first , 
	CHANGE `year` `year` smallint(6) unsigned   NULL after `publisher` ;

/* Alter table in target */
ALTER TABLE `knowledge_paper` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first , 
	CHANGE `page_no` `page_no` varchar(50)  COLLATE utf8_general_ci NULL after `impact_factor` , 
	CHANGE `volume` `volume` varchar(50)  COLLATE utf8_general_ci NULL after `page_no` ;

/* Alter table in target */
ALTER TABLE `knowledge_patent` 
	CHANGE `user_id` `user_id` int(11) unsigned   NOT NULL after `id` , 
	CHANGE `output` `output` tinyint(4) unsigned   NULL after `title` , 
	CHANGE `stage` `stage` tinyint(4) unsigned   NULL after `agency` ;

/* Alter table in target */
ALTER TABLE `lcms_address` 
	CHANGE `country` `country` mediumint(11)   NULL after `zip` ;

/* Alter table in target */
ALTER TABLE `lcms_case_status` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first , 
	CHANGE `created_at` `created_at` int(11) unsigned   NULL after `status` , 
	CHANGE `updated_at` `updated_at` int(11) unsigned   NULL after `created_at` , 
	CHANGE `created_by` `created_by` int(11) unsigned   NULL after `updated_at` , 
	CHANGE `updated_by` `updated_by` int(11) unsigned   NULL after `created_by` ;

/* Alter table in target */
ALTER TABLE `lcms_case_types` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first , 
	CHANGE `created_at` `created_at` int(11) unsigned   NULL after `status` , 
	CHANGE `updated_at` `updated_at` int(11) unsigned   NULL after `created_at` , 
	CHANGE `created_by` `created_by` int(11) unsigned   NULL after `updated_at` , 
	CHANGE `updated_by` `updated_by` int(11) unsigned   NULL after `created_by` ;

/* Alter table in target */
ALTER TABLE `lcms_courts` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first , 
	CHANGE `created_at` `created_at` int(11) unsigned   NULL after `status` , 
	CHANGE `updated_at` `updated_at` int(11) unsigned   NULL after `created_at` , 
	CHANGE `created_by` `created_by` int(11) unsigned   NULL after `updated_at` , 
	CHANGE `updated_by` `updated_by` int(11) unsigned   NULL after `created_by` ;

/* Alter table in target */
ALTER TABLE `lcms_department` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first ;

/* Alter table in target */
ALTER TABLE `lcms_departmentProfile` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first , 
	CHANGE `department_id` `department_id` int(11) unsigned   NOT NULL after `department_code` ;

/* Alter table in target */
ALTER TABLE `lcms_designation` 
	CHANGE `status` `status` tinyint(3)   NOT NULL after `weight` ;

/* Alter table in target */
ALTER TABLE `lcms_notiConfig` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first ;

/* Alter table in target */
ALTER TABLE `lcms_sysNotification` 
	CHANGE `notificationId` `notificationId` int(11) unsigned   NULL after `id` ;

/* Alter table in target */
ALTER TABLE `lcms_tableConfig` 
	CHANGE `mId` `mId` int(11) unsigned   NOT NULL after `id` ;

/* Alter table in target */
ALTER TABLE `lcms_tblCase` 
	CHANGE `court` `court` int(11) unsigned   NOT NULL after `caseNo` , 
	ADD COLUMN `employee_id` int(11)   NULL after `remarks` ;

/* Alter table in target */
ALTER TABLE `lcms_tempSysNotification` 
	CHANGE `notificationId` `notificationId` int(11) unsigned   NULL after `id` ;

/* Alter table in target */
ALTER TABLE `leave_applications` 
	CHANGE `empOrganizationUnit` `empOrganizationUnit` int(10)   NOT NULL after `empCode` , 
	CHANGE `contactDetails` `contactDetails` bigint(10)   NULL after `stationLeave` , 
	ADD COLUMN `leave_rejoin_date` date   NULL after `duties_assigned` , 
	ADD COLUMN `rejoin_remarks` text  COLLATE utf8mb4_unicode_ci NULL after `leave_rejoin_date` , 
	ADD COLUMN `rejoin_document` varchar(255)  COLLATE utf8mb4_unicode_ci NULL after `rejoin_remarks` , 
	ADD COLUMN `rejoin_approval_id` int(11)   NULL after `rejoin_document` , 
	ADD COLUMN `rejoin_approved_by` int(11)   NULL after `rejoin_approval_id` , 
	ADD COLUMN `rejoin_approved_date` date   NULL after `rejoin_approved_by` , 
	CHANGE `commuted_leave` `commuted_leave` varchar(5)  COLLATE utf8mb4_unicode_ci NULL after `rejoin_approved_date` , 
	ADD COLUMN `leave_balance` tinyint(4)   NULL after `location` , 
	ADD COLUMN `rejoin_approval_status` tinyint(4)   NULL DEFAULT 0 after `leave_balance` , 
	ADD COLUMN `rejoin_approval_remarks` varchar(255)  COLLATE utf8mb4_unicode_ci NULL after `rejoin_approval_status` ;

/* Alter table in target */
ALTER TABLE `leave_approval_designation` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first ;

/* Alter table in target */
ALTER TABLE `leave_approval_workflow` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first ;

/* Alter table in target */
ALTER TABLE `leave_authority_map` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first ;

/* Alter table in target */
ALTER TABLE `leave_commute_request` 
	CHANGE `id` `id` int(11)   NOT NULL auto_increment first , 
	ADD PRIMARY KEY(`id`) ;

/* Alter table in target */
ALTER TABLE `leave_duties_assignments` 
	CHANGE `id` `id` int(11)   NOT NULL auto_increment first , 
	ADD PRIMARY KEY(`id`) ;

/* Create table in target */
CREATE TABLE `leave_emp_weekoff`(
	`id` int(10) unsigned NOT NULL  auto_increment , 
	`weekoff_days` varchar(128) COLLATE utf8mb4_general_ci NOT NULL  , 
	`emp_id` int(11) NOT NULL  , 
	`status` varchar(45) COLLATE utf8mb4_general_ci NOT NULL  , 
	`valid_from` date NULL  , 
	`valid_upto` date NULL  , 
	`created_at` int(11) NULL  , 
	`updated_at` int(11) NULL  , 
	`created_by` int(11) NULL  , 
	`updated_by` int(11) NULL  , 
	PRIMARY KEY (`id`) , 
	UNIQUE KEY `id_UNIQUE`(`id`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_general_ci';


/* Alter table in target */
ALTER TABLE `leave_employee_mapping` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first ;

/* Alter table in target */
ALTER TABLE `leave_leaveType` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first , 
	CHANGE `carry_forward_days` `carry_forward_days` int(10)   NULL DEFAULT 0 after `carry_forward` , 
	CHANGE `minimum_at_time` `minimum_at_time` int(3)   NOT NULL DEFAULT 0 after `maximum_accumulation` , 
	CHANGE `maximum_at_time` `maximum_at_time` int(10)   NOT NULL DEFAULT 0 after `minimum_at_time` , 
	CHANGE `minimum_service_required` `minimum_service_required` int(10)   NOT NULL DEFAULT 0 after `half_day_applicable` , 
	CHANGE `oneTime` `oneTime` int(10)   NULL after `ip` ;

/* Create table in target */
CREATE TABLE `leave_ltc`(
	`id` int(11) NOT NULL  auto_increment , 
	`emp_id` int(11) NOT NULL  , 
	`count` float NULL  , 
	`upload` varchar(255) COLLATE utf8mb4_unicode_ci NULL  , 
	`upload1` varchar(255) COLLATE utf8mb4_unicode_ci NULL  , 
	`status` tinyint(4) NULL  , 
	`remarks` text COLLATE utf8mb4_unicode_ci NULL  , 
	`place` varchar(100) COLLATE utf8mb4_unicode_ci NULL  , 
	`description` text COLLATE utf8mb4_unicode_ci NULL  , 
	`from_country` varchar(190) COLLATE utf8mb4_unicode_ci NULL  , 
	`from_state` varchar(190) COLLATE utf8mb4_unicode_ci NULL  , 
	`from_city` varchar(190) COLLATE utf8mb4_unicode_ci NULL  , 
	`from_pincode` int(10) NULL  , 
	`to_country` varchar(190) COLLATE utf8mb4_unicode_ci NULL  , 
	`to_state` varchar(190) COLLATE utf8mb4_unicode_ci NULL  , 
	`to_city` varchar(190) COLLATE utf8mb4_unicode_ci NULL  , 
	`to_pincode` int(10) NULL  , 
	`from_date` varchar(100) COLLATE utf8mb4_unicode_ci NULL  , 
	`to_date` varchar(100) COLLATE utf8mb4_unicode_ci NULL  , 
	`advance_amount` int(11) NULL  , 
	`approved_date` varchar(100) COLLATE utf8mb4_unicode_ci NULL  , 
	`approved_by` int(11) NULL  , 
	`family_members` varchar(255) COLLATE utf8mb4_unicode_ci NULL  , 
	`reporting_designation` int(11) NULL  , 
	`created_at` int(11) NULL  , 
	`updated_at` int(11) NULL  , 
	`created_by` int(10) NULL  , 
	`updated_by` int(10) NULL  , 
	`ip` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`updated` timestamp NOT NULL  DEFAULT CURRENT_TIMESTAMP , 
	PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Create table in target */
CREATE TABLE `leave_ltc_travel_detail`(
	`id` int(11) NOT NULL  auto_increment , 
	`ltc_id` int(11) NULL  , 
	`discription` text COLLATE latin1_swedish_ci NULL  , 
	`amount` int(11) NULL  , 
	`upload` varchar(255) COLLATE latin1_swedish_ci NULL  , 
	`created_at` int(11) NULL  , 
	`updated_at` int(11) NULL  , 
	`created_by` int(10) NULL  , 
	`updated_by` int(10) NULL  , 
	`updated` timestamp NOT NULL  DEFAULT CURRENT_TIMESTAMP , 
	PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET='latin1' COLLATE='latin1_swedish_ci';


/* Create table in target */
CREATE TABLE `leave_stationleave`(
	`id` int(10) unsigned NOT NULL  auto_increment , 
	`emp_id` int(11) NOT NULL  , 
	`from_date` date NOT NULL  , 
	`to_date` date NOT NULL  , 
	`place` varchar(128) COLLATE utf8mb4_general_ci NOT NULL  , 
	`reason` text COLLATE utf8mb4_general_ci NULL  , 
	`status` varchar(45) COLLATE utf8mb4_general_ci NULL  , 
	`applied_on` date NULL  , 
	`approved_on` date NULL  , 
	`approved_by` int(11) NULL  , 
	`created_at` int(11) NULL  , 
	`created_by` int(11) NULL  , 
	`updated_at` int(11) NULL  , 
	`updated_by` int(11) NULL  , 
	`ip` varchar(45) COLLATE utf8mb4_general_ci NULL  , 
	PRIMARY KEY (`id`) , 
	UNIQUE KEY `id_UNIQUE`(`id`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_general_ci';


/* Alter table in target */
ALTER TABLE `leave_type` 
	CHANGE `annual_debit` `annual_debit` tinyint(11)   NULL after `days_to_earn` , 
	ADD COLUMN `rejoin_required` tinyint(4)   NULL after `notification_on_cancel` , 
	ADD COLUMN `document_req_on_rejoin` tinyint(4)   NULL after `rejoin_required` ;

/* Create table in target */
CREATE TABLE `leave_type_activity_log`(
	`id` int(11) NOT NULL  auto_increment , 
	`type` varchar(50) COLLATE latin1_swedish_ci NOT NULL  , 
	`ip` varchar(50) COLLATE latin1_swedish_ci NOT NULL  , 
	`archived_by` int(11) NOT NULL  , 
	`archive_to` int(11) NOT NULL  , 
	`old_data` text COLLATE latin1_swedish_ci NOT NULL  , 
	`new_data` text COLLATE latin1_swedish_ci NOT NULL  , 
	`modified_date` datetime NOT NULL  DEFAULT CURRENT_TIMESTAMP , 
	PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET='latin1' COLLATE='latin1_swedish_ci';


/* Create table in target */
CREATE TABLE `mark_grade_repeat_log`(
	`id` int(11) NOT NULL  auto_increment , 
	`student_evaluation_marks_component_id` int(11) NOT NULL  , 
	`enrolment_number` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL  , 
	`programme_id` int(11) NOT NULL  , 
	`course_id` int(11) NOT NULL  , 
	`assessment_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL  , 
	`action` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL  , 
	`created_at` int(11) NULL  , 
	`created_by` int(11) NULL  , 
	PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Alter table in target */
ALTER TABLE `menu` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first ;

/* Create table in target */
CREATE TABLE `migration_alumni`(
	`version` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL  , 
	`apply_time` int(11) NULL  , 
	PRIMARY KEY (`version`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Create table in target */
CREATE TABLE `migration_endowment`(
	`version` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL  , 
	`apply_time` int(11) NULL  , 
	PRIMARY KEY (`version`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Alter table in target */
ALTER TABLE `ocm_budget_advance` 
	CHANGE `ip` `ip` varchar(40)  COLLATE utf8mb4_general_ci NULL after `updated_by` ;

/* Alter table in target */
ALTER TABLE `ocm_budget_estimate` 
	CHANGE `ip` `ip` varchar(40)  COLLATE utf8mb4_general_ci NULL after `updated_by` ;

/* Alter table in target */
ALTER TABLE `ocm_budget_granted` 
	CHANGE `ip` `ip` varchar(40)  COLLATE utf8mb4_general_ci NULL after `updated_by` ;

/* Alter table in target */
ALTER TABLE `ocm_budget_head` 
	CHANGE `name` `name` varchar(128)  COLLATE utf8mb4_general_ci NOT NULL after `id` , 
	CHANGE `description` `description` varchar(190)  COLLATE utf8mb4_general_ci NULL after `code` , 
	CHANGE `ip` `ip` varchar(40)  COLLATE utf8mb4_general_ci NULL after `updated_by` ;

/* Alter table in target */
ALTER TABLE `ocm_expenditure` 
	CHANGE `quantity` `quantity` int(5)   NULL after `price` ;

/* Alter table in target */
ALTER TABLE `ocm_financial_year` 
	DROP KEY `financial_year` ;

/* Alter table in target */
ALTER TABLE `ocm_university_grant` 
	CHANGE `name` `name` varchar(128)  COLLATE utf8mb4_general_ci NOT NULL after `id` , 
	CHANGE `description` `description` varchar(190)  COLLATE utf8mb4_general_ci NULL after `name` , 
	CHANGE `ip` `ip` varchar(40)  COLLATE utf8mb4_general_ci NULL after `updated_by` ;

/* Alter table in target */
ALTER TABLE `options_country_states` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first , COLLATE ='utf8mb4_general_ci' ;

/* Alter table in target */
ALTER TABLE `otp_message` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first , 
	CHANGE `otp` `otp` int(11) unsigned   NOT NULL after `user` , 
	CHANGE `service` `service` tinyint(4) unsigned   NOT NULL after `expiry_time` , 
	CHANGE `mode` `mode` tinyint(4) unsigned   NOT NULL COMMENT '1 = MAIL, 2 => SMS' after `service` , 
	CHANGE `used` `used` tinyint(4) unsigned   NULL DEFAULT 0 after `mode` ;

/* Alter table in target */
ALTER TABLE `otp_message_copy` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first , 
	CHANGE `otp` `otp` int(11) unsigned   NOT NULL after `user` , 
	CHANGE `service` `service` tinyint(4) unsigned   NOT NULL after `expiry_time` , 
	CHANGE `mode` `mode` tinyint(4) unsigned   NOT NULL COMMENT '1 = MAIL, 2 => SMS' after `service` , 
	CHANGE `used` `used` tinyint(4) unsigned   NULL DEFAULT 0 after `mode` ;

/* Alter table in target */
ALTER TABLE `payment_gateway` 
	CHANGE `id` `id` int(10) unsigned   NOT NULL auto_increment first , 
	CHANGE `channel` `channel` varchar(45)  COLLATE utf8mb4_unicode_ci NULL after `id` , 
	ADD COLUMN `type` varchar(50)  COLLATE utf8mb4_unicode_ci NOT NULL after `channel` , 
	CHANGE `name` `name` varchar(45)  COLLATE utf8mb4_unicode_ci NOT NULL after `type` , 
	ADD COLUMN `account_name` varchar(197)  COLLATE utf8mb4_unicode_ci NULL after `name` , 
	CHANGE `mid` `mid` varchar(45)  COLLATE utf8mb4_unicode_ci NOT NULL after `account_name` , 
	CHANGE `code` `code` varchar(45)  COLLATE utf8mb4_unicode_ci NULL after `mid` , 
	CHANGE `key` `key` varchar(45)  COLLATE utf8mb4_unicode_ci NULL after `code` , 
	CHANGE `website` `website` varchar(45)  COLLATE utf8mb4_unicode_ci NULL after `key` , 
	CHANGE `transaction_url` `transaction_url` varchar(1024)  COLLATE utf8mb4_unicode_ci NULL after `website` , 
	CHANGE `status_query_url` `status_query_url` varchar(1024)  COLLATE utf8mb4_unicode_ci NULL after `transaction_url` , 
	ADD COLUMN `refund_url` varchar(1024)  COLLATE utf8mb4_unicode_ci NULL after `status_query_url` , 
	ADD COLUMN `return_url` varchar(1024)  COLLATE utf8mb4_unicode_ci NULL after `refund_url` , 
	CHANGE `industry` `industry` varchar(45)  COLLATE utf8mb4_unicode_ci NULL after `return_url` , 
	ADD COLUMN `theme` varchar(128)  COLLATE utf8mb4_unicode_ci NULL after `industry` , 
	ADD COLUMN `logo` varchar(255)  COLLATE utf8mb4_unicode_ci NULL after `theme` , 
	ADD COLUMN `currency` varchar(10)  COLLATE utf8mb4_unicode_ci NULL DEFAULT 'INR' after `logo` , 
	ADD COLUMN `portal` varchar(50)  COLLATE utf8mb4_unicode_ci NULL after `currency` , 
	ADD COLUMN `description` varchar(1000)  COLLATE utf8mb4_unicode_ci NULL after `portal` , 
	ADD COLUMN `status` varchar(20)  COLLATE utf8mb4_unicode_ci NULL DEFAULT 'DRAFT' after `description` , 
	CHANGE `visible` `visible` tinyint(4)   NULL DEFAULT 0 after `status` , 
	ADD COLUMN `class_path` varchar(1000)  COLLATE utf8mb4_unicode_ci NULL after `visible` , 
	ADD COLUMN `udf1` varchar(50)  COLLATE utf8mb4_unicode_ci NULL after `class_path` , 
	ADD COLUMN `udf2` varchar(50)  COLLATE utf8mb4_unicode_ci NULL after `udf1` , 
	CHANGE `created_at` `created_at` datetime   NULL after `udf2` , 
	ADD COLUMN `updated` timestamp   NULL DEFAULT CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP after `updated_by` , DEFAULT CHARSET='utf8mb4', COLLATE ='utf8mb4_unicode_ci' ;

/* Create table in target */
CREATE TABLE `payment_gateway_instructions`(
	`pg_id` int(10) unsigned NOT NULL  , 
	`instructions` text COLLATE utf8mb4_unicode_ci NULL  , 
	PRIMARY KEY (`pg_id`) , 
	CONSTRAINT `payment_gateway_instructions_ibfk_1` 
	FOREIGN KEY (`pg_id`) REFERENCES `payment_gateway` (`id`) ON UPDATE CASCADE 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Create table in target */
CREATE TABLE `payment_service`(
	`name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL  , 
	`description` varchar(1000) COLLATE utf8mb4_unicode_ci NULL  , 
	`status` varchar(20) COLLATE utf8mb4_unicode_ci NULL  DEFAULT 'DRAFT' , 
	`update_disbled` tinyint(4) NULL  DEFAULT 0 , 
	`udf1` varchar(100) COLLATE utf8mb4_unicode_ci NULL  , 
	`udf2` varchar(100) COLLATE utf8mb4_unicode_ci NULL  , 
	`created_at` int(11) NULL  , 
	`created_by` int(11) NULL  , 
	`updated_at` int(11) NULL  , 
	`updated_by` int(11) NULL  , 
	PRIMARY KEY (`name`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Create table in target */
CREATE TABLE `payment_service_gateway_map`(
	`id` int(10) unsigned NOT NULL  auto_increment , 
	`service_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL  , 
	`gateway_id` int(10) unsigned NOT NULL  , 
	`portal` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL  , 
	`status` varchar(20) COLLATE utf8mb4_unicode_ci NULL  DEFAULT 'DRAFT' , 
	`created_at` int(11) NULL  , 
	`updated_at` int(11) NULL  , 
	`created_by` int(11) NULL  , 
	`updated_by` int(11) NULL  , 
	`updated` timestamp NOT NULL  DEFAULT CURRENT_TIMESTAMP , 
	PRIMARY KEY (`id`) , 
	KEY `service_name`(`service_name`) , 
	KEY `gateway_id`(`gateway_id`) , 
	CONSTRAINT `payment_service_gateway_map_ibfk_1` 
	FOREIGN KEY (`service_name`) REFERENCES `payment_service` (`name`) ON UPDATE CASCADE , 
	CONSTRAINT `payment_service_gateway_map_ibfk_2` 
	FOREIGN KEY (`gateway_id`) REFERENCES `payment_gateway` (`id`) ON UPDATE CASCADE 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Alter table in target */
ALTER TABLE `payroll_bank_details` 
	CHANGE `status` `status` tinyint(4) unsigned   NULL DEFAULT 0 after `ip` ;

/* Alter table in target */
ALTER TABLE `payroll_employee_onetime_entries` 
	CHANGE `salary_head` `salary_head` int(10)   NOT NULL after `payroll_entry_type` , 
	CHANGE `year` `year` int(4)   NULL after `month` , 
	ADD KEY `employee_id`(`employee_id`,`payroll_entry_type`,`month`,`year`,`status`) , 
	ADD KEY `employee_id_2`(`employee_id`,`salary_head`,`entry_as`,`actual_value`,`month`,`year`,`status`) ;

/* Alter table in target */
ALTER TABLE `payroll_employee_salary_structure` 
	CHANGE `salary_head` `salary_head` int(10)   NOT NULL after `payroll_entry_type` , 
	CHANGE `contribution_actual_value` `contribution_actual_value` decimal(10,2)   NULL DEFAULT 0.00 after `contribution_formulae` , 
	CHANGE `year` `year` int(4)   NULL after `month` , 
	ADD KEY `employee_id`(`employee_id`,`payroll_entry_type`,`status`) , 
	ADD KEY `employee_id_2`(`employee_id`,`payroll_entry_type`,`salary_head`) , 
	ADD KEY `id`(`id`,`employee_id`) ;

/* Alter table in target */
ALTER TABLE `payroll_employee_salary_structure_history` 
	ADD KEY `employee_id`(`employee_id`) ;

/* Alter table in target */
ALTER TABLE `payroll_entry` 
	ADD KEY `entry_type`(`entry_type`,`entry_group`,`status`) , 
	ADD KEY `report_group`(`report_group`) , 
	ADD KEY `status`(`status`) ;

/* Alter table in target */
ALTER TABLE `payroll_entry_group` 
	CHANGE `created_by` `created_by` int(1)   NULL after `update_disabled` , 
	ADD KEY `entry_type`(`entry_type`,`status`) ;

/* Alter table in target */
ALTER TABLE `payroll_final_processed_salary` 
	CHANGE `emp_id` `emp_id` int(50)   NOT NULL after `id` , 
	CHANGE `month` `month` int(2)   NOT NULL after `year` , 
	CHANGE `grade_pay_id` `grade_pay_id` int(26)   NULL after `payband_id` , 
	CHANGE `basic_pay` `basic_pay` int(20)   NULL after `employee_cadre` , 
	CHANGE `processes_status` `processes_status` int(2)   NULL after `net_earning` , 
	CHANGE `emp_status` `emp_status` int(2)   NULL after `voucher_no` , 
	CHANGE `created_at` `created_at` int(20)   NULL after `emp_status` , 
	CHANGE `created_by` `created_by` int(20)   NULL after `created_at` , 
	CHANGE `updated_at` `updated_at` int(20)   NULL after `created_by` , 
	CHANGE `updated_by` `updated_by` int(20)   NULL after `updated_at` , 
	CHANGE `update_disabled` `update_disabled` tinyint(2)   NULL after `updated_by` , 
	ADD KEY `department_id`(`department_id`) , 
	ADD KEY `emp_id`(`emp_id`,`year`,`month`) , 
	ADD KEY `emp_id_2`(`emp_id`,`year`,`month`,`processes_status`) , 
	ADD KEY `emp_id_3`(`emp_id`,`year`,`month`,`nature_of_employment`,`employee_cadre`,`department_id`) , 
	ADD KEY `id`(`id`,`emp_id`) , 
	ADD KEY `month`(`month`,`nature_of_employment`,`employee_cadre`,`department_id`) , 
	ADD KEY `year`(`year`,`month`) , 
	ADD KEY `year_2`(`year`,`month`,`employee_cadre`) ;

/* Alter table in target */
ALTER TABLE `payroll_final_processed_salary_breakup` 
	CHANGE `month` `month` int(4)   NOT NULL after `employee_id` , 
	CHANGE `process_status` `process_status` int(4)   NOT NULL after `help` , 
	CHANGE `status` `status` int(10)   NULL after `hba_no` , 
	ADD KEY `employee_id`(`employee_id`,`month`,`year`,`salary_head_id`) , 
	ADD KEY `employee_id_2`(`employee_id`,`salary_head_id`) , 
	ADD KEY `month`(`month`,`year`) , 
	ADD KEY `process_id_2`(`process_id`,`employee_id`,`salary_head_id`) , 
	ADD KEY `process_id_3`(`process_id`,`salary_category_id`) ;

/* Alter table in target */
ALTER TABLE `payroll_grade_pay_scale` 
	CHANGE `status` `status` tinyint(2)   NULL DEFAULT 0 after `ip` ;

/* Alter table in target */
ALTER TABLE `payroll_income_tax_process_ext` 
	CHANGE `employee_id` `employee_id` int(50)   NOT NULL after `id` , 
	CHANGE `process_id` `process_id` int(50)   NOT NULL after `employee_id` ;

/* Alter table in target */
ALTER TABLE `payroll_pf_account` 
	CHANGE `year` `year` int(10)   NULL COMMENT 'Financial Year' after `pf_number` , 
	CHANGE `process_status` `process_status` int(4)   NULL after `closing_balance` , 
	CHANGE `status` `status` int(4)   NULL after `process_status` ;

/* Create table in target */
CREATE TABLE `payroll_pf_contribution`(
	`id` int(11) NOT NULL  auto_increment , 
	`employee_id` int(11) NULL  , 
	`pf_scheme` varchar(10) COLLATE utf8mb4_unicode_ci NULL  , 
	`pf_number` varchar(15) COLLATE utf8mb4_unicode_ci NULL  , 
	`year` varchar(10) COLLATE utf8mb4_unicode_ci NULL  , 
	`month` int(2) NULL  , 
	`entry_as` tinyint(4) NULL  , 
	`formulae_bar` varchar(190) COLLATE utf8mb4_unicode_ci NULL  , 
	`actual_value` decimal(10,2) NULL  DEFAULT 0.00 , 
	`multiplication_factor` decimal(4,2) NULL  , 
	`contribution_entry_as` tinyint(4) NULL  , 
	`contribution_formulae` varchar(190) COLLATE utf8mb4_unicode_ci NULL  , 
	`contribution_actual_value` decimal(10,2) NULL  DEFAULT 0.00 , 
	`contribution_multiplication_factor` decimal(4,2) NULL  , 
	`employee_contribution` decimal(13,2) NULL  , 
	`employer_contribution` decimal(13,2) NULL  , 
	`total_contribution` decimal(15,2) NULL  , 
	`created_at` int(11) NULL  , 
	`created_by` int(11) NULL  , 
	`updated_at` int(11) NULL  , 
	`updated_by` int(11) NULL  , 
	`ip` varchar(20) COLLATE utf8mb4_unicode_ci NULL  , 
	PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Alter table in target */
ALTER TABLE `payroll_pf_interest_rate` 
	CHANGE `status` `status` int(4)   NULL after `effective_date` ;

/* Alter table in target */
ALTER TABLE `payroll_pf_statements` 
	CHANGE `id` `id` int(15)   NOT NULL auto_increment first , 
	CHANGE `employee_id` `employee_id` int(15)   NULL after `id` , 
	CHANGE `year` `year` int(5)   NULL after `employee_id` , 
	CHANGE `month` `month` int(5)   NULL after `year` , 
	CHANGE `process_status` `process_status` int(4)   NULL after `interest_amount` , 
	CHANGE `update_disabled` `update_disabled` int(4)   NULL after `process_status` ;

/* Alter table in target */
ALTER TABLE `payroll_rules_variables` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first , 
	CHANGE `dummy_value` `dummy_value` int(4)   NULL after `name` , 
	ADD KEY `status`(`status`) , 
	ADD KEY `status_2`(`status`,`pay_commission`) ;

/* Alter table in target */
ALTER TABLE `payroll_salary_process` 
	ADD KEY `emp_id`(`emp_id`,`year`,`month`,`processes_status`) , 
	ADD KEY `id`(`id`,`processes_status`) , 
	DROP KEY `year`, ADD KEY `year`(`year`,`month`) ;

/* Alter table in target */
ALTER TABLE `payroll_salary_process_ext` 
	ADD KEY `month`(`month`,`year`) , 
	ADD KEY `process_id_2`(`process_id`,`employee_id`,`month`,`year`) ;

/* Alter table in target */
ALTER TABLE `payroll_salary_rule_config` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first , 
	ADD KEY `nature_of_employment`(`nature_of_employment`,`employee_cadre`,`pay_commission_id`,`grade_pay_id`) , 
	ADD KEY `nature_of_employment_2`(`nature_of_employment`,`employee_cadre`,`pay_commission_id`,`level`) ;

/* Alter table in target */
ALTER TABLE `payroll_salary_rules` 
	CHANGE `salary_head` `salary_head` int(10)   NOT NULL after `payroll_entry_type` , 
	CHANGE `contribution_actual_value` `contribution_actual_value` decimal(10,2)   NULL DEFAULT 0.00 after `contribution_formulae` , 
	ADD KEY `id`(`id`,`salary_rule_config_id`) , 
	ADD KEY `salary_rule_config_id`(`salary_rule_config_id`) ;

/* Alter table in target */
ALTER TABLE `payroll_system_wide_changes` 
	CHANGE `id` `id` int(6)   NOT NULL auto_increment first , 
	CHANGE `payroll_entry_id` `payroll_entry_id` int(6)   NULL COMMENT 'References from Payroll Entries' after `id` , 
	CHANGE `actual_value` `actual_value` int(5)   NULL after `formula_bar` ;

/* Alter table in target */
ALTER TABLE `payroll_tax_deposit` 
	ADD COLUMN `deposit_amount` int(11)   NULL after `employee_cadre` , 
	ADD COLUMN `cheque_rtgs` varchar(15)  COLLATE utf8mb4_unicode_ci NULL after `deposit_amount` , 
	ADD COLUMN `cheque_rtgs_number` varchar(50)  COLLATE utf8mb4_unicode_ci NULL after `cheque_rtgs` , 
	CHANGE `chalan_no` `chalan_no` varchar(50)  COLLATE utf8mb4_unicode_ci NULL after `cheque_rtgs_number` , 
	CHANGE `bsr_code` `bsr_code` varchar(10)  COLLATE utf8mb4_unicode_ci NULL after `chalan_no` , 
	ADD COLUMN `deposit_date` date   NULL after `bsr_code` , 
	CHANGE `created_at` `created_at` int(11)   NULL after `deposit_date` , 
	DROP COLUMN `emp_serial_no` , 
	DROP COLUMN `date_of_payment` , 
	DROP COLUMN `quarter` , 
	DROP COLUMN `cheque_dd_no_challan` , 
	DROP COLUMN `serial_no` , 
	DROP COLUMN `tds_challan` , 
	DROP COLUMN `cess_challan` , 
	DROP COLUMN `cess_emp` , 
	DROP COLUMN `book_entry` , 
	DROP COLUMN `surcharge_challan` , 
	DROP COLUMN `other_challan` , 
	DROP COLUMN `total_tax_deposited_challan` , 
	DROP COLUMN `date_of_deposit_challan` , 
	DROP COLUMN `interest_challan` , 
	DROP COLUMN `emp_id` , 
	DROP COLUMN `emp_code` , 
	DROP COLUMN `taxable_amount_emp` , 
	DROP COLUMN `tds_emp` , 
	DROP COLUMN `surcharge_emp` , 
	DROP COLUMN `tax_deducted_emp` , 
	DROP COLUMN `tax_deposited_emp` , 
	DROP COLUMN `date_of_deduction_emp` , 
	DROP COLUMN `date_of_deposit_emp` , 
	DROP COLUMN `reason` ;

/* Alter table in target */
ALTER TABLE `placement_apply` 
	CHANGE `applicant_mobile` `applicant_mobile` bigint(10)   NOT NULL after `ou_id` , 
	CHANGE `application_status` `application_status` tinyint(5)   NOT NULL DEFAULT 1 after `hire_package` ;

/* Alter table in target */
ALTER TABLE `placement_company_profile` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first , 
	CHANGE `companyHrContact` `companyHrContact` bigint(10)   NOT NULL after `companyHrName` ;

/* Alter table in target */
ALTER TABLE `placement_company_profile_ou` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first , 
	CHANGE `companyHrContact` `companyHrContact` bigint(10)   NOT NULL after `companyHrName` ;

/* Alter table in target */
ALTER TABLE `placement_company_requests` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first , 
	CHANGE `mobile` `mobile` bigint(10)   NOT NULL after `companyHrName` ;

/* Alter table in target */
ALTER TABLE `placement_company_season` 
	CHANGE `fee_transaction` `fee_transaction` varchar(50)  COLLATE utf8mb4_general_ci NULL after `fee_date` , 
	CHANGE `created_at` `created_at` bigint(11)   NULL after `status` , 
	CHANGE `updated_at` `updated_at` bigint(11)   NULL after `created_by` , 
	CHANGE `ip` `ip` varchar(50)  COLLATE utf8mb4_general_ci NULL after `updated_by` ;

/* Alter table in target */
ALTER TABLE `placement_ctc_breakup` 
	CHANGE `head` `head` varchar(255)  COLLATE utf8mb4_general_ci NULL after `jobId` , 
	CHANGE `remarks` `remarks` text  COLLATE utf8mb4_general_ci NULL after `amount` ;

/* Alter table in target */
ALTER TABLE `placement_info` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first , 
	CHANGE `title` `title` varchar(255)  COLLATE utf8mb4_general_ci NOT NULL COMMENT 'Job title' after `registrationId` , 
	CHANGE `description` `description` text  COLLATE utf8mb4_general_ci NOT NULL COMMENT 'Details' after `trainingPlacement` , 
	CHANGE `qualificationName` `qualificationName` text  COLLATE utf8mb4_general_ci NOT NULL after `qualificationId` , 
	CHANGE `qualificationRequired` `qualificationRequired` text  COLLATE utf8mb4_general_ci NULL COMMENT 'Qualification Required' after `qualificationName` , 
	CHANGE `desiredQualification` `desiredQualification` text  COLLATE utf8mb4_general_ci NULL after `qualificationRequired` , 
	CHANGE `eligibilty` `eligibilty` text  COLLATE utf8mb4_general_ci NOT NULL COMMENT 'Eligibility' after `desiredQualification` , 
	CHANGE `skillSet` `skillSet` text  COLLATE utf8mb4_general_ci NOT NULL COMMENT 'Skill Set' after `eligibilty` , 
	CHANGE `designation` `designation` varchar(255)  COLLATE utf8mb4_general_ci NOT NULL COMMENT 'Designation' after `skillSet` , 
	CHANGE `category` `category` varchar(255)  COLLATE utf8mb4_general_ci NULL after `incomeGroup` , 
	CHANGE `gender` `gender` varchar(50)  COLLATE utf8mb4_general_ci NULL after `category` , 
	CHANGE `termsCondition` `termsCondition` text  COLLATE utf8mb4_general_ci NULL after `gender` , 
	CHANGE `companyDoc` `companyDoc` varchar(255)  COLLATE utf8mb4_general_ci NULL after `process` , 
	CHANGE `ctc` `ctc` varchar(255)  COLLATE utf8mb4_general_ci NOT NULL COMMENT 'Salary' after `companyDoc` , 
	CHANGE `experience` `experience` tinyint(5)   NOT NULL COMMENT 'Experience' after `showPost` , 
	CHANGE `season_id` `season_id` varchar(50)  COLLATE utf8mb4_general_ci NOT NULL after `experience` , 
	CHANGE `type` `type` tinyint(5)   NOT NULL COMMENT 'Job type Full Time Part time' after `season_id` , 
	CHANGE `periods` `periods` text  COLLATE utf8mb4_general_ci NULL COMMENT 'Period of Training or Job' after `type` , 
	CHANGE `selectionCriteria` `selectionCriteria` text  COLLATE utf8mb4_general_ci NOT NULL COMMENT 'Selection Criteria' after `periods` , 
	CHANGE `interview` `interview` int(5)   NULL after `closingDate` , 
	CHANGE `writtenTest` `writtenTest` int(5)   NULL after `interview` , 
	CHANGE `mode` `mode` int(5)   NULL after `writtenTest` , 
	CHANGE `gD` `gD` int(2)   NULL after `mode` , 
	CHANGE `venue` `venue` varchar(255)  COLLATE utf8mb4_general_ci NOT NULL COMMENT 'Test/Interview Venue' after `gD` , 
	CHANGE `vacancies` `vacancies` int(5)   NOT NULL COMMENT 'No of Vacancies' after `venue` , 
	CHANGE `location` `location` varchar(255)  COLLATE utf8mb4_general_ci NOT NULL COMMENT 'Job Location' after `vacancies` , 
	CHANGE `searchKeywords` `searchKeywords` varchar(255)  COLLATE utf8mb4_general_ci NOT NULL COMMENT 'Search Tags' after `location` , 
	CHANGE `remarks` `remarks` varchar(255)  COLLATE utf8mb4_general_ci NULL after `searchKeywords` , 
	CHANGE `submitStatus` `submitStatus` tinyint(5)   NOT NULL DEFAULT 0 COMMENT 'Published Not Published' after `remarks` , 
	CHANGE `status` `status` tinyint(5)   NOT NULL DEFAULT 0 COMMENT 'Active Inactive' after `submitStatus` , 
	CHANGE `ip` `ip` varchar(20)  COLLATE utf8mb4_general_ci NULL after `updated_by` ;

/* Alter table in target */
ALTER TABLE `placement_registration` 
	CHANGE `applicant_mobile` `applicant_mobile` bigint(10)   NOT NULL after `applicant_name` , 
	CHANGE `status` `status` tinyint(5)   NULL DEFAULT 1 after `aggregate_score` ;

/* Alter table in target */
ALTER TABLE `placement_season` 
	CHANGE `code` `code` varchar(45)  COLLATE utf8mb4_general_ci NULL after `id` , 
	CHANGE `name` `name` varchar(45)  COLLATE utf8mb4_general_ci NULL after `code` , 
	CHANGE `status` `status` int(2)   NOT NULL after `fee_for_student` , 
	CHANGE `ip` `ip` varchar(50)  COLLATE utf8mb4_general_ci NULL after `updated_by` ;

/* Create table in target */
CREATE TABLE `portal_content`(
	`id` int(11) unsigned NOT NULL  auto_increment , 
	`name` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`format` varchar(20) COLLATE utf8mb4_unicode_ci NULL  , 
	`language` varchar(10) COLLATE utf8mb4_unicode_ci NULL  DEFAULT 'en' , 
	`description` varchar(198) COLLATE utf8mb4_unicode_ci NULL  , 
	`content` longtext COLLATE utf8mb4_unicode_ci NULL  , 
	`portal` varchar(20) COLLATE utf8mb4_unicode_ci NULL  , 
	`created_at` int(11) NULL  , 
	`updated_at` int(11) NULL  , 
	`created_by` int(11) NULL  , 
	`updated_by` int(11) NULL  , 
	`updated` timestamp NULL  , 
	PRIMARY KEY (`id`) , 
	UNIQUE KEY `name`(`name`,`portal`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Create table in target */
CREATE TABLE `prg_academic_year_session_map`(
	`id` int(10) unsigned NOT NULL  auto_increment , 
	`academic_year_session_id` int(11) NOT NULL  , 
	`programme_id` int(11) NOT NULL  , 
	`academic_year_id` int(11) NOT NULL  , 
	`academic_year_name` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`academic_year_session_name` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`created_at` int(11) NULL  , 
	`updated_at` int(11) NULL  , 
	`created_by` int(11) NULL  , 
	`updated_by` int(11) NULL  , 
	`update` timestamp NOT NULL  DEFAULT CURRENT_TIMESTAMP , 
	PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Create table in target */
CREATE TABLE `prg_admission_date_settings`(
	`id` int(10) unsigned NOT NULL  auto_increment , 
	`admission_portal` varchar(50) COLLATE utf8mb4_unicode_ci NULL  DEFAULT '2020-21' , 
	`programme_id` int(11) NULL  , 
	`start_date` datetime NULL  , 
	`end_date` datetime NULL  , 
	`status` varchar(50) COLLATE utf8mb4_unicode_ci NULL  DEFAULT 'DRAFT' , 
	`created_at` int(11) NULL  , 
	`updated_at` int(11) NULL  , 
	`created_by` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`updated_by` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`ip` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`updated` timestamp NOT NULL  DEFAULT CURRENT_TIMESTAMP , 
	PRIMARY KEY (`id`) , 
	KEY `admission_portal`(`admission_portal`,`start_date`,`end_date`,`status`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Alter table in target */
ALTER TABLE `prg_admission_fee` 
	ADD COLUMN `admission_portal` varchar(50)  COLLATE utf8mb4_unicode_ci NULL DEFAULT '2020-21' after `id` , 
	CHANGE `programme_id` `programme_id` int(11)   NULL after `admission_portal` , 
	CHANGE `seat` `seat` int(11) unsigned   NULL DEFAULT 0 after `fee` ;

/* Alter table in target */
ALTER TABLE `prg_batch` 
	CHANGE `id` `id` varchar(40)  COLLATE utf8mb4_general_ci NOT NULL first , 
	CHANGE `code` `code` varchar(100)  COLLATE utf8mb4_general_ci NULL after `id` , 
	CHANGE `academic_year` `academic_year` varchar(20)  COLLATE utf8mb4_general_ci NOT NULL after `programme_id` , 
	CHANGE `session` `session` varchar(50)  COLLATE utf8mb4_general_ci NULL after `academic_year` , 
	CHANGE `name` `name` varchar(198)  COLLATE utf8mb4_general_ci NULL after `ou_id` , 
	CHANGE `month` `month` varchar(10)  COLLATE utf8mb4_general_ci NULL after `year` , 
	CHANGE `description` `description` text  COLLATE utf8mb4_general_ci NULL after `sort_order` , 
	CHANGE `ip` `ip` varchar(32)  COLLATE utf8mb4_general_ci NULL after `updated` , COLLATE ='utf8mb4_general_ci' ;

/* Alter table in target */
ALTER TABLE `prg_batch_ou` 
	CHANGE `id` `id` varchar(80)  COLLATE utf8mb4_general_ci NOT NULL first , 
	CHANGE `batch_name` `batch_name` varchar(198)  COLLATE utf8mb4_general_ci NOT NULL after `id` , 
	CHANGE `programme_id` `programme_id` varchar(20)  COLLATE utf8mb4_general_ci NOT NULL after `batch_name` , 
	CHANGE `academic_ou` `academic_ou` int(11) unsigned   NOT NULL after `programme_id` , 
	CHANGE `status` `status` char(2)  COLLATE utf8mb4_general_ci NULL after `year_of_admission` , 
	CHANGE `ip` `ip` varchar(32)  COLLATE utf8mb4_general_ci NULL after `updated` , COLLATE ='utf8mb4_general_ci' ;

/* Alter table in target */
ALTER TABLE `prg_class` 
	CHANGE `id` `id` varchar(40)  COLLATE utf8mb4_general_ci NOT NULL first , 
	CHANGE `name` `name` varchar(198)  COLLATE utf8mb4_general_ci NOT NULL after `id` , 
	CHANGE `batch_id` `batch_id` varchar(40)  COLLATE utf8mb4_general_ci NOT NULL after `name` , 
	CHANGE `academic_ou` `academic_ou` int(11) unsigned   NOT NULL after `class_id` , 
	CHANGE `programme` `programme` varchar(20)  COLLATE utf8mb4_general_ci NULL after `year` , 
	CHANGE `status` `status` char(2)  COLLATE utf8mb4_general_ci NULL after `programme` , 
	CHANGE `ip` `ip` varchar(32)  COLLATE utf8mb4_general_ci NULL after `updated` , COLLATE ='utf8mb4_general_ci' ;

/* Create table in target */
CREATE TABLE `prg_course_document`(
	`id` int(10) unsigned NOT NULL  auto_increment , 
	`title` varchar(200) COLLATE utf8mb4_unicode_ci NULL  , 
	`course_id` int(11) NULL  , 
	`course_code` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`upload_type` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`upload_link` varchar(1000) COLLATE utf8mb4_unicode_ci NULL  , 
	`year` int(11) NULL  , 
	`remarks` text COLLATE utf8mb4_unicode_ci NULL  , 
	`status` varchar(20) COLLATE utf8mb4_unicode_ci NULL  , 
	`created_at` int(11) NULL  , 
	`updated_at` int(11) NULL  , 
	`created_by` int(11) NULL  , 
	`updated_by` int(11) NULL  , 
	`updated` timestamp NOT NULL  DEFAULT CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP , 
	PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Create table in target */
CREATE TABLE `prg_course_document_type`(
	`id` int(10) unsigned NOT NULL  auto_increment , 
	`upload_type` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`remarks` text COLLATE utf8mb4_unicode_ci NULL  , 
	`status` varchar(20) COLLATE utf8mb4_unicode_ci NULL  , 
	`created_at` int(11) NULL  , 
	`updated_at` int(11) NULL  , 
	`created_by` int(11) NULL  , 
	`updated_by` int(11) NULL  , 
	`updated` timestamp NOT NULL  DEFAULT CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP , 
	PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Alter table in target */
ALTER TABLE `prg_course_evaluation_component` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first , 
	CHANGE `programme_id` `programme_id` int(11) unsigned   NULL after `name` , 
	CHANGE `course_id` `course_id` int(11) unsigned   NOT NULL after `programme_id` , 
	CHANGE `maximum_marks` `maximum_marks` decimal(10,2)   NULL after `weightage` , 
	ADD COLUMN `grade_letter_group` varchar(50)  COLLATE utf8mb4_unicode_ci NULL after `max_rated_value` , 
	CHANGE `minimum_passing_marks` `minimum_passing_marks` decimal(10,2)   NULL DEFAULT 0.00 after `grade_letter_group` , 
	ADD COLUMN `type` varchar(50)  COLLATE utf8mb4_unicode_ci NULL DEFAULT 'GRADE' after `status` , 
	CHANGE `aggregate` `aggregate` varchar(3)  COLLATE utf8mb4_unicode_ci NULL DEFAULT 'NO' COMMENT 'YES/NO' after `type` , 
	CHANGE `credit_weightage` `credit_weightage` decimal(10,2)   NOT NULL DEFAULT 0.00 after `aggregate` , 
	CHANGE `required_to_pass` `required_to_pass` varchar(3)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'YES' COMMENT 'YES/NO' after `credit_weightage` , 
	CHANGE `aggregate_formula` `aggregate_formula` varchar(1000)  COLLATE utf8mb4_unicode_ci NULL after `required_to_pass` ;

/* Alter table in target */
ALTER TABLE `prg_course_evaluation_role` 
	ADD COLUMN `exam_session_id` varchar(50)  COLLATE utf8mb4_unicode_ci NULL after `id` , 
	CHANGE `programme_id` `programme_id` int(10) unsigned   NOT NULL after `exam_session_id` , 
	ADD COLUMN `unit_id` int(11)   NULL after `ou_id` , 
	ADD COLUMN `unit_code` varchar(50)  COLLATE utf8mb4_unicode_ci NULL after `unit_id` , 
	CHANGE `role` `role` varchar(50)  COLLATE utf8mb4_unicode_ci NULL after `unit_code` , 
	ADD KEY `exam_session_id`(`exam_session_id`) , 
	ADD KEY `exam_session_id_2`(`exam_session_id`,`programme_id`,`term`,`session_id`) , 
	ADD KEY `exam_session_id_3`(`exam_session_id`,`programme_id`) ;

/* Alter table in target */
ALTER TABLE `prg_course_evaluation_session` 
	ADD COLUMN `section_id` int(11)   NULL after `part` , 
	CHANGE `course_category` `course_category` varchar(30)  COLLATE utf8mb4_unicode_ci NULL after `section_id` ;

/* Create table in target */
CREATE TABLE `prg_course_evaluator_default`(
	`id` int(10) unsigned NOT NULL  auto_increment , 
	`course_id` int(11) NOT NULL  , 
	`unit_id` int(11) NULL  , 
	`evaluator_id` int(11) NULL  , 
	`evaluator_type` varchar(50) COLLATE utf8mb4_unicode_ci NULL  DEFAULT 'INTERNAL' COMMENT 'EXTERNAL/INTERNAL/GUEST' , 
	`role` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL  DEFAULT 'COORDINATOR' , 
	`status` varchar(20) COLLATE utf8mb4_unicode_ci NULL  DEFAULT 'DRAFT' , 
	`created_at` int(11) NULL  , 
	`updated_at` int(11) NULL  , 
	`created_by` int(11) NULL  , 
	`updated_by` int(11) NULL  , 
	`updated` timestamp NOT NULL  DEFAULT CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP , 
	`ip` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	PRIMARY KEY (`id`,`role`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Alter table in target */
ALTER TABLE `prg_course_group` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first , 
	ADD COLUMN `min_credit` decimal(10,2)   NULL DEFAULT 0.00 after `cbcs_category` , 
	ADD COLUMN `max_credit` decimal(10,2)   NULL DEFAULT 200.00 after `min_credit` , 
	ADD COLUMN `option_type` varchar(50)  COLLATE utf8mb4_unicode_ci NULL after `max_credit` , 
	ADD COLUMN `description` varchar(1000)  COLLATE utf8mb4_unicode_ci NULL DEFAULT '' after `option_type` , 
	CHANGE `sort_order` `sort_order` int(11)   NULL after `description` ;

/* Alter table in target */
ALTER TABLE `prg_course_list_v2` 
	CHANGE `type` `type` varchar(255)  COLLATE utf8_unicode_ci NULL after `code` , 
	CHANGE `title` `title` varchar(255)  COLLATE utf8_unicode_ci NOT NULL after `type` , 
	CHANGE `sub_category` `sub_category` varchar(20)  COLLATE utf8_unicode_ci NULL after `cbcs_category` , 
	CHANGE `parent` `parent` int(11)   NULL DEFAULT 0 after `sub_category` , 
	ADD COLUMN `examination_duration` int(11)   NULL after `examination_max_marks` , 
	ADD COLUMN `examination_minimum_question` tinyint(4)   NULL after `examination_duration` , 
	CHANGE `examination_passing_marks` `examination_passing_marks` int(11)   NULL after `examination_minimum_question` , 
	ADD COLUMN `oldcourse` varchar(50)  COLLATE utf8_unicode_ci NULL after `credit_scheme` , 
	CHANGE `session` `session` varchar(50)  COLLATE utf8_unicode_ci NULL after `oldcourse` , 
	ADD COLUMN `units_applicable` varchar(3)  COLLATE utf8_unicode_ci NULL DEFAULT 'NO' COMMENT 'YES/NO' after `in_visible_remarks` , 
	ADD COLUMN `parent_programme` int(11)   NULL after `units_applicable` , 
	CHANGE `created_at` `created_at` int(11)   NULL after `parent_programme` , 
	ADD COLUMN `is_qualifying` varchar(5)  COLLATE utf8_unicode_ci NULL DEFAULT 'NO' after `temp` ;

/* Alter table in target */
ALTER TABLE `prg_course_structure` 
	ADD COLUMN `oddEven` varchar(50)  COLLATE utf8mb4_unicode_ci NULL after `year` , 
	CHANGE `course_category` `course_category` varchar(30)  COLLATE utf8mb4_unicode_ci NULL after `oddEven` , 
	CHANGE `updated` `updated` timestamp   NOT NULL DEFAULT CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP after `updated_by` , 
	ADD KEY `programme_id_2`(`programme_id`,`term`) ;

/* Create table in target */
CREATE TABLE `prg_course_unit`(
	`id` int(10) unsigned NOT NULL  auto_increment , 
	`code` varchar(20) COLLATE utf8mb4_unicode_ci NULL  , 
	`name` varchar(255) COLLATE utf8mb4_unicode_ci NULL  , 
	`programme_id` int(11) NOT NULL  , 
	`programme_code` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`course_id` int(11) NOT NULL  , 
	`course_code` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`term_type` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`term` mediumint(9) NULL  , 
	`session` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`section` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`status` varchar(15) COLLATE utf8mb4_unicode_ci NULL  , 
	`visible` tinyint(4) NULL  , 
	`created_at` int(11) NULL  , 
	`updated_at` int(11) NULL  , 
	`created_by` int(11) NULL  , 
	`updated_by` int(11) NULL  , 
	`updated` timestamp NOT NULL  DEFAULT CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP , 
	PRIMARY KEY (`id`) , 
	UNIQUE KEY `programme_id`(`programme_id`,`course_id`,`term`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Alter table in target */
ALTER TABLE `prg_default_ou` 
	ADD COLUMN `parent_ou` int(11)   NULL after `status` , 
	CHANGE `created_at` `created_at` int(11)   NULL after `parent_ou` ;

/* Create table in target */
CREATE TABLE `prg_examination_config`(
	`id` int(11) NOT NULL  auto_increment , 
	`name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL  , 
	`type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL  , 
	`parent_id` int(11) NULL  , 
	`description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL  , 
	`status` varchar(50) COLLATE utf8mb4_unicode_ci NULL  DEFAULT 'PUBLISHED' , 
	`created_at` int(11) NULL  , 
	`updated_at` int(11) NULL  , 
	`created_by` int(11) NOT NULL  , 
	`updated_by` int(11) NULL  , 
	`updated` timestamp NOT NULL  DEFAULT CURRENT_TIMESTAMP , 
	`ip` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	PRIMARY KEY (`id`,`created_by`) , 
	UNIQUE KEY `unique`(`name`,`type`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Create table in target */
CREATE TABLE `prg_examination_course_setting`(
	`id` int(11) NOT NULL  auto_increment , 
	`programme_id` int(11) NOT NULL  , 
	`programme_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL  , 
	`course_id` int(11) NOT NULL  , 
	`course_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL  , 
	`key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL  , 
	`value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL  , 
	`status` varchar(50) COLLATE utf8mb4_unicode_ci NULL  DEFAULT 'PUBLISHED' , 
	`created_at` int(11) NULL  , 
	`updated_at` int(11) NULL  , 
	`created_by` int(11) NULL  , 
	`updated_by` int(11) NULL  , 
	`updated` timestamp NOT NULL  DEFAULT CURRENT_TIMESTAMP , 
	`ip` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Create table in target */
CREATE TABLE `prg_examination_setting`(
	`id` int(11) NOT NULL  auto_increment , 
	`programme_id` int(11) NOT NULL  , 
	`programme_code` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL  , 
	`value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL  , 
	`status` varchar(50) COLLATE utf8mb4_unicode_ci NULL  DEFAULT 'PUBLISHED' , 
	`created_at` int(11) NULL  , 
	`updated_at` int(11) NULL  , 
	`created_by` int(11) NULL  , 
	`updated_by` int(11) NULL  , 
	`updated` timestamp NOT NULL  DEFAULT CURRENT_TIMESTAMP , 
	`ip` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Alter table in target */
ALTER TABLE `prg_fee_rules_list` 
	CHANGE `fee_list_id` `fee_list_id` int(11) unsigned   NOT NULL after `id` ;

/* Alter table in target */
ALTER TABLE `prg_hostel_fee` 
	ADD COLUMN `admission_portal` varchar(50)  COLLATE utf8mb4_unicode_ci NULL DEFAULT '2020-21' after `id` , 
	CHANGE `programme_id` `programme_id` int(11)   NULL after `admission_portal` ;

/* Alter table in target */
ALTER TABLE `prg_hostel_option` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first , 
	ADD COLUMN `admission_portal` varchar(50)  COLLATE utf8mb4_unicode_ci NULL DEFAULT '2020-21' after `id` , 
	CHANGE `programme_id` `programme_id` int(11)   NULL after `admission_portal` ;

/* Create table in target */
CREATE TABLE `prg_late_fee`(
	`id` int(10) unsigned NOT NULL  auto_increment , 
	`programme_id` int(11) NULL  , 
	`term` int(11) NULL  , 
	`term_type` varchar(20) COLLATE utf8mb4_unicode_ci NULL  DEFAULT 'SEMESTER' , 
	`applicable_from_year` int(11) NULL  DEFAULT 2000 , 
	`applicable_from_cycle` varchar(20) COLLATE utf8mb4_unicode_ci NULL  DEFAULT 'JULY' , 
	`applicable_from_int` int(11) NULL  DEFAULT 200001 , 
	`late_fee_type` varchar(50) COLLATE utf8mb4_unicode_ci NULL  DEFAULT 'FIXED' COMMENT 'FIXED/DYNAMIC' , 
	`late_fee_amount` decimal(10,2) NULL  DEFAULT 0.00 , 
	`late_fee_amount_currency` varchar(5) COLLATE utf8mb4_unicode_ci NULL  DEFAULT 'INR' , 
	`created_at` int(11) NULL  , 
	`updated_at` int(11) NULL  , 
	`created_by` int(11) NULL  , 
	`updated_by` int(11) NULL  , 
	PRIMARY KEY (`id`) , 
	UNIQUE KEY `programme_id`(`programme_id`,`term`,`term_type`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Alter table in target */
ALTER TABLE `prg_registration_fee` 
	ADD COLUMN `admission_portal` varchar(50)  COLLATE utf8mb4_unicode_ci NULL DEFAULT '2020-21' after `id` , 
	CHANGE `programme_id` `programme_id` int(11)   NULL after `admission_portal` ;

/* Alter table in target */
ALTER TABLE `prg_reregistration_control` 
	CHANGE `updated` `updated` timestamp   NULL on update CURRENT_TIMESTAMP after `updated_by` ;

/* Alter table in target */
ALTER TABLE `prg_student` 
	CHANGE `year_of_enrollment` `year_of_enrollment` int(198)   NULL after `programme_level` , 
	CHANGE `current_year_sem` `current_year_sem` int(198)   NULL after `year_of_enrollment` ;

/* Alter table in target */
ALTER TABLE `prg_term_configuration` 
	CHANGE `academic_year` `academic_year` varchar(50)  COLLATE utf8mb4_unicode_ci NULL after `term` , 
	CHANGE `academic_session` `academic_session` varchar(50)  COLLATE utf8mb4_unicode_ci NULL after `academic_year` , 
	CHANGE `number_of_elective` `number_of_elective` int(11)   NULL after `examination_session` , 
	ADD COLUMN `min_passing_sgpa` decimal(10,2)   NULL DEFAULT 5.00 after `aggregate_pass` , 
	CHANGE `ia_min` `ia_min` varchar(5)  COLLATE utf8mb4_unicode_ci NULL after `min_passing_sgpa` ;

/* Alter table in target */
ALTER TABLE `prg_time_table_versions` 
	CHANGE `ou_id` `ou_id` int(11) unsigned   NULL after `programme_id` ;

/* Alter table in target */
ALTER TABLE `prg_ugc_specified_degree` 
	CHANGE `status` `status` tinyint(11)   NULL after `gazette` ;

/* Create table in target */
CREATE TABLE `programme_uploads_map`(
	`id` int(11) NOT NULL  auto_increment , 
	`programme_id` int(11) NULL  , 
	`upload_name` varchar(100) COLLATE utf8mb4_unicode_ci NULL  , 
	`status` varchar(20) COLLATE utf8mb4_unicode_ci NULL  , 
	`created_at` int(11) NULL  , 
	`updated_at` int(11) NULL  , 
	`created_by` int(11) NULL  , 
	`updated_by` int(11) NULL  , 
	`updated` timestamp NOT NULL  DEFAULT CURRENT_TIMESTAMP , 
	`ip` varchar(32) COLLATE utf8mb4_unicode_ci NULL  , 
	PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Alter table in target */
ALTER TABLE `queue` 
	CHANGE `job` `job` longblob   NOT NULL after `channel` , 
	CHANGE `priority` `priority` int(11) unsigned   NOT NULL DEFAULT 1024 after `delay` ;

/* Create table in target */
CREATE TABLE `registration`(
	`id` int(11) NOT NULL  auto_increment , 
	`enrolment_number` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`name` varchar(100) COLLATE utf8mb4_unicode_ci NULL  , 
	`dob` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`status` tinyint(4) NULL  , 
	`created_at` int(11) NULL  , 
	`updated_at` int(11) NULL  , 
	`created_by` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`updated_by` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`updated` timestamp NOT NULL  DEFAULT CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP , 
	PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Alter table in target */
ALTER TABLE `rpms_account` 
	CHANGE `status` `status` tinyint(5)   NOT NULL after `bankRemark` ;

/* Alter table in target */
ALTER TABLE `rpms_account_expenditure` 
	CHANGE `status` `status` tinyint(5)   NOT NULL after `expenditureRemark` ;

/* Alter table in target */
ALTER TABLE `rpms_approval` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first , 
	CHANGE `level` `level` tinyint(5)   NOT NULL after `id` ;

/* Alter table in target */
ALTER TABLE `rpms_budget` 
	CHANGE `status` `status` tinyint(5)   NOT NULL DEFAULT 0 after `name` , 
	CHANGE `type` `type` tinyint(5)   NOT NULL DEFAULT 1 COMMENT 'Recurring/Non-Recurring' after `status` , 
	CHANGE `created_by` `created_by` int(11) unsigned   NULL after `type` , 
	CHANGE `updated_by` `updated_by` int(11) unsigned   NULL after `created_by` , 
	CHANGE `created_at` `created_at` int(11) unsigned   NULL after `updated_by` , 
	CHANGE `updated_at` `updated_at` int(11) unsigned   NULL after `created_at` ;

/* Alter table in target */
ALTER TABLE `rpms_committee` 
	CHANGE `status` `status` tinyint(5)   NOT NULL after `shortName` ;

/* Alter table in target */
ALTER TABLE `rpms_committee_members` 
	CHANGE `isSameUniversity` `isSameUniversity` tinyint(5)   NOT NULL after `memberType` , 
	CHANGE `memberMobile` `memberMobile` bigint(10)   NOT NULL after `memberEmail` ;

/* Alter table in target */
ALTER TABLE `rpms_funding_agency` 
	CHANGE `status` `status` tinyint(5)   NOT NULL after `shortName` ;

/* Alter table in target */
ALTER TABLE `rpms_logs` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first , 
	CHANGE `uid` `uid` int(11) unsigned   NOT NULL after `id` ;

/* Alter table in target */
ALTER TABLE `rpms_meeting_invites` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first , 
	CHANGE `attendeeMobile` `attendeeMobile` bigint(10)   NOT NULL after `attendeeEmail` ;

/* Alter table in target */
ALTER TABLE `rpms_order_form` 
	CHANGE `revisedBreakup` `revisedBreakup` tinyint(5)   NOT NULL after `yearWise` ;

/* Create table in target */
CREATE TABLE `rpms_project_copi_information`(
	`id` int(11) NOT NULL  auto_increment , 
	`projectId` int(11) NULL  , 
	`isSameUniversity` varchar(255) COLLATE utf8_unicode_ci NULL  DEFAULT 'Same University' , 
	`coInvestigatorId` int(11) NULL  , 
	`coInvestigatorName` varchar(255) COLLATE utf8_unicode_ci NULL  , 
	`coInvestigatorDesignation` varchar(255) COLLATE utf8_unicode_ci NULL  , 
	`coInvestigatorDateOfBirth` date NULL  , 
	`coInvestigatorAge` varchar(255) COLLATE utf8_unicode_ci NULL  , 
	`coInvestigatorDepartment` varchar(255) COLLATE utf8_unicode_ci NULL  , 
	`coInvestigatorEmail` varchar(255) COLLATE utf8_unicode_ci NULL  , 
	`coInvestigatorMobile` bigint(20) NULL  , 
	`status` tinyint(4) NOT NULL  DEFAULT 0 , 
	`created_by` int(11) NULL  , 
	`updated_by` int(11) NULL  , 
	`created_at` int(11) NULL  , 
	`updated_at` int(11) NULL  , 
	`ip` varchar(20) COLLATE utf8_unicode_ci NULL  , 
	PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8' COLLATE='utf8_unicode_ci';


/* Alter table in target */
ALTER TABLE `rpms_project_fund` 
	CHANGE `status` `status` tinyint(5)   NOT NULL after `sanctionAmount` ;

/* Alter table in target */
ALTER TABLE `rpms_project_information` 
	CHANGE `coInvestigatorMobile` `coInvestigatorMobile` bigint(10)   NULL after `coInvestigatorEmail` , 
	CHANGE `projectType` `projectType` tinyint(5)   NOT NULL after `projectTitle` , 
	CHANGE `status` `status` tinyint(5)   NOT NULL after `remark` , 
	ADD COLUMN `project_endorsement_letter` text  COLLATE utf8_unicode_ci NULL after `projectClosureReport` , 
	CHANGE `created_by` `created_by` int(11)   NULL after `project_endorsement_letter` ;

/* Alter table in target */
ALTER TABLE `rpms_project_meeting` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first , 
	CHANGE `status` `status` tinyint(5)   NULL DEFAULT 1 after `attendees` ;

/* Alter table in target */
ALTER TABLE `rpms_project_type` COLLATE ='utf8mb4_general_ci' ;

/* Alter table in target */
ALTER TABLE `rpms_userReviews` 
	CHANGE `userLevel` `userLevel` tinyint(5)   NOT NULL after `userId` , 
	CHANGE `status` `status` tinyint(5)   NOT NULL after `remarks` , 
	CHANGE `forwardTo` `forwardTo` tinyint(5)   NULL after `status` , 
	CHANGE `forwardLevel` `forwardLevel` tinyint(5) unsigned   NULL after `forwardTo` ;

/* Alter table in target */
ALTER TABLE `rti_detail` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first , 
	CHANGE `freezeRti` `freezeRti` tinyint(5)   NULL DEFAULT 1 COMMENT 'Freeze the RTI if admin thinks that the RTI is finally submitted by the department.Once it Submit, No changes is allowed. 1=>NO,2=>Freeze' after `second_appellate_remarks` ;

/* Alter table in target */
ALTER TABLE `rti_logs` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first ;

/* Alter table in target */
ALTER TABLE `rti_Response_From_Department` 
	CHANGE `freezeRti` `freezeRti` tinyint(5)   NULL DEFAULT 1 COMMENT 'Freeze the RTI if admin thinks that the RTI is finally submitted by the department.Once it Submit, No changes is allowed. 1=>NO,2=>Freeze' after `relatedDocumentUpload` ;

/* Alter table in target */
ALTER TABLE `security_facility_ou` 
	CHANGE `facility_id` `facility_id` text  COLLATE utf8mb4_unicode_ci NOT NULL after `ou_id` ;

/* Alter table in target */
ALTER TABLE `security_helpline` 
	CHANGE `contact_no` `contact_no` bigint(12)   NULL after `helpline_no` ;

/* Alter table in target */
ALTER TABLE `security_incident_record` 
	CHANGE `reporting_contact` `reporting_contact` bigint(11)   NULL after `reporting_person` ;

/* Alter table in target */
ALTER TABLE `security_logs` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first ;

/* Alter table in target */
ALTER TABLE `session` 
	CHANGE `status` `status` tinyint(5)   NOT NULL DEFAULT 0 after `ending_year` , 
	CHANGE `verify` `verify` tinyint(3)   NULL DEFAULT 0 after `end_date` ;

/* Create table in target */
CREATE TABLE `sports_ou_subscriptions`(
	`id` int(10) unsigned NOT NULL  auto_increment , 
	`sports_ou_mapping_id` int(10) unsigned NOT NULL  , 
	`ou_id` int(10) unsigned NOT NULL  , 
	`sports_list_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL  , 
	`subscription_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL  , 
	`amount` decimal(10,2) NULL  , 
	`status` tinyint(4) NULL  , 
	`created_at` int(10) unsigned NULL  , 
	`created_by` int(10) unsigned NULL  , 
	`updated_by` int(10) unsigned NULL  , 
	`updated_at` int(10) unsigned NULL  , 
	`updated` timestamp NULL  on update CURRENT_TIMESTAMP , 
	PRIMARY KEY (`id`) , 
	UNIQUE KEY `sports_ou_mapping_id`(`sports_ou_mapping_id`,`subscription_type`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Alter table in target */
ALTER TABLE `student_course` 
	CHANGE `max_credit` `max_credit` decimal(10,2)   NULL after `course_code` , 
	ADD COLUMN `academic_year` varchar(50)  COLLATE utf8mb4_unicode_ci NULL after `cycle` , 
	ADD COLUMN `result` varchar(50)  COLLATE utf8mb4_unicode_ci NULL DEFAULT 'Appearing' after `academic_year` , 
	ADD COLUMN `passing_exam_session` varchar(50)  COLLATE utf8mb4_unicode_ci NULL after `result` , 
	ADD COLUMN `marks_obtained` decimal(10,2)   NULL DEFAULT 0.00 after `passing_exam_session` , 
	ADD COLUMN `oddEven` varchar(50)  COLLATE utf8mb4_unicode_ci NULL after `marks_obtained` , 
	CHANGE `status` `status` tinyint(4)   NULL DEFAULT 1 after `oddEven` , 
	CHANGE `updated` `updated` timestamp   NULL DEFAULT CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP after `updated_by` , 
	ADD UNIQUE KEY `student_id`(`student_id`,`enrolment_number`,`programme_id`,`course_id`) ;

/* Create table in target */
CREATE TABLE `student_course_change_log`(
	`id` bigint(20) unsigned NOT NULL  auto_increment , 
	`student_id` int(11) NULL  , 
	`programme_id` int(11) NULL  , 
	`course_id` int(11) NULL  , 
	`operation` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`data` text COLLATE utf8mb4_unicode_ci NULL  , 
	`created_at` int(11) NULL  , 
	`updated_at` timestamp NULL  DEFAULT CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP , 
	`created_by` int(11) NULL  , 
	`updated_by` int(11) NULL  , 
	PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Alter table in target */
ALTER TABLE `student_course_reregistration` 
	CHANGE `max_credit` `max_credit` decimal(10,2)   NULL DEFAULT 0.00 after `cbcs_category` , 
	CHANGE `updated` `updated` timestamp   NOT NULL DEFAULT CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP after `updated_by` ;

/* Alter table in target */
ALTER TABLE `student_evaluation_marks_component` 
	ADD COLUMN `exam_session_id` varchar(50)  COLLATE utf8mb4_unicode_ci NULL after `student_id` , 
	ADD COLUMN `carry_exam_session_id` varchar(50)  COLLATE utf8mb4_unicode_ci NULL after `exam_session_id` , 
	ADD COLUMN `type` varchar(50)  COLLATE utf8mb4_unicode_ci NULL DEFAULT 'REGULAR' after `carry_exam_session_id` , 
	CHANGE `enrolment_number` `enrolment_number` varchar(50)  COLLATE utf8mb4_unicode_ci NOT NULL after `type` , 
	CHANGE `marks_obtained` `marks_obtained` varchar(50)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0.00' after `maximum_marks` , 
	ADD COLUMN `marks_status` varchar(20)  COLLATE utf8mb4_unicode_ci NULL DEFAULT 'DRAFT' after `component_status` , 
	CHANGE `final_result` `final_result` varchar(5)  COLLATE utf8mb4_unicode_ci NULL DEFAULT 'P' COMMENT 'P=>pass/F=>failed' after `marks_status` , 
	ADD COLUMN `graded_manually` varchar(50)  COLLATE utf8mb4_unicode_ci NULL DEFAULT 'NO' after `remarks` , 
	DROP KEY `enrolment_number`, ADD UNIQUE KEY `enrolment_number`(`enrolment_number`,`course_id`,`programme_id`,`component_id`,`term`,`prg_course_evaluation_role_id`,`exam_session_id`) , 
	ADD KEY `exam_session_id`(`exam_session_id`,`term`,`programme_id`) , 
	ADD KEY `prg_course_evaluation_role_id_2`(`prg_course_evaluation_role_id`,`assessment_id`) , 
	ADD KEY `student_id_2`(`student_id`,`roll_number`,`prg_course_evaluation_role_id`,`assessment_id`) , 
	ADD KEY `student_id_3`(`student_id`,`term`,`programme_id`,`assessment_id`,`final_result`) ;

/* Alter table in target */
ALTER TABLE `student_evaluation_marks_component_history` 
	ADD COLUMN `prg_course_evaluation_role_id` int(11)   NULL after `enrolment_number` , 
	CHANGE `course_id` `course_id` int(11)   NOT NULL after `prg_course_evaluation_role_id` , 
	ADD COLUMN `term` int(11)   NULL after `programme_id` , 
	CHANGE `component_id` `component_id` varchar(20)  COLLATE utf8mb4_unicode_ci NOT NULL after `term` , 
	ADD COLUMN `component_status` varchar(50)  COLLATE utf8mb4_unicode_ci NULL after `status` , 
	CHANGE `credit_point` `credit_point` decimal(10,2)   NULL after `component_status` ;

/* Create table in target */
CREATE TABLE `student_import`(
	`id` int(10) unsigned NOT NULL  auto_increment , 
	`enrolment_number` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`first_name` varchar(128) COLLATE utf8mb4_unicode_ci NULL  , 
	`middle_name` varchar(128) COLLATE utf8mb4_unicode_ci NULL  , 
	`last_name` varchar(128) COLLATE utf8mb4_unicode_ci NULL  , 
	`name` varchar(150) COLLATE utf8mb4_unicode_ci NULL  , 
	`hindi_name` varchar(150) COLLATE utf8mb4_unicode_ci NULL  , 
	`personal_email` varchar(128) COLLATE utf8mb4_unicode_ci NULL  , 
	`mobile_number` varchar(25) COLLATE utf8mb4_unicode_ci NULL  , 
	`dob` date NULL  , 
	`gender` varchar(20) COLLATE utf8mb4_unicode_ci NULL  , 
	`category` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`is_pwd` varchar(5) COLLATE utf8mb4_unicode_ci NULL  , 
	`pwd_category_id` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`pwd_category` varchar(197) COLLATE utf8mb4_unicode_ci NULL  , 
	`is_cw` varchar(5) COLLATE utf8mb4_unicode_ci NULL  , 
	`cw_category_id` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`cw_category` varchar(197) COLLATE utf8mb4_unicode_ci NULL  , 
	`is_kashmiri_migrant` varchar(5) COLLATE utf8mb4_unicode_ci NULL  , 
	`is_single_girl_child` varchar(5) COLLATE utf8mb4_unicode_ci NULL  , 
	`is_foreign_category` varchar(5) COLLATE utf8mb4_unicode_ci NULL  , 
	`nationality` varchar(197) COLLATE utf8mb4_unicode_ci NULL  DEFAULT 'INDIAN' , 
	`visa_info` varchar(197) COLLATE utf8mb4_unicode_ci NULL  , 
	`admission_registration_number` varchar(128) COLLATE utf8mb4_unicode_ci NULL  , 
	`admission_receipt_number` varchar(128) COLLATE utf8mb4_unicode_ci NULL  , 
	`blood_group` varchar(10) COLLATE utf8mb4_unicode_ci NULL  , 
	`university_email` varchar(128) COLLATE utf8mb4_unicode_ci NULL  , 
	`alternate_email` varchar(128) COLLATE utf8mb4_unicode_ci NULL  , 
	`alternate_mobile` varchar(25) COLLATE utf8mb4_unicode_ci NULL  , 
	`phone_number` varchar(25) COLLATE utf8mb4_unicode_ci NULL  , 
	`emergency_contact_email` varchar(128) COLLATE utf8mb4_unicode_ci NULL  , 
	`emergency_contact_mobile` varchar(25) COLLATE utf8mb4_unicode_ci NULL  , 
	`emergency_contact_relation` varchar(128) COLLATE utf8mb4_unicode_ci NULL  , 
	`emergency_contact_details` varchar(128) COLLATE utf8mb4_unicode_ci NULL  , 
	`father_name` varchar(197) COLLATE utf8mb4_unicode_ci NULL  , 
	`father_email` varchar(128) COLLATE utf8mb4_unicode_ci NULL  , 
	`father_mobile` varchar(25) COLLATE utf8mb4_unicode_ci NULL  , 
	`father_occupation` varchar(128) COLLATE utf8mb4_unicode_ci NULL  , 
	`father_office_address` varchar(197) COLLATE utf8mb4_unicode_ci NULL  , 
	`father_office_contact` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`mother_name` varchar(150) COLLATE utf8mb4_unicode_ci NULL  , 
	`mother_email` varchar(128) COLLATE utf8mb4_unicode_ci NULL  , 
	`mother_mobile` varchar(25) COLLATE utf8mb4_unicode_ci NULL  , 
	`mother_occupation` varchar(128) COLLATE utf8mb4_unicode_ci NULL  , 
	`mother_office_address` varchar(197) COLLATE utf8mb4_unicode_ci NULL  , 
	`mother_office_contact` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`guardian_name` varchar(150) COLLATE utf8mb4_unicode_ci NULL  , 
	`guardian_email` varchar(128) COLLATE utf8mb4_unicode_ci NULL  , 
	`guardian_mobile` varchar(20) COLLATE utf8mb4_unicode_ci NULL  , 
	`guardian_occupation` varchar(128) COLLATE utf8mb4_unicode_ci NULL  , 
	`guardian_office_address` varchar(197) COLLATE utf8mb4_unicode_ci NULL  , 
	`guardian_office_contact` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`correspondence_address_line_1` varchar(197) COLLATE utf8mb4_unicode_ci NULL  , 
	`correspondence_address_line_2` varchar(197) COLLATE utf8mb4_unicode_ci NULL  , 
	`correspondence_address_line_3` varchar(197) COLLATE utf8mb4_unicode_ci NULL  , 
	`correspondence_state` varchar(197) COLLATE utf8mb4_unicode_ci NULL  , 
	`correspondence_district` varchar(197) COLLATE utf8mb4_unicode_ci NULL  , 
	`correspondence_country` varchar(197) COLLATE utf8mb4_unicode_ci NULL  , 
	`correspondence_pincode` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`permanent_address_line_1` varchar(197) COLLATE utf8mb4_unicode_ci NULL  , 
	`permanent_address_line_2` varchar(197) COLLATE utf8mb4_unicode_ci NULL  , 
	`permanent_address_line_3` varchar(197) COLLATE utf8mb4_unicode_ci NULL  , 
	`permanent_state` varchar(197) COLLATE utf8mb4_unicode_ci NULL  , 
	`permanent_district` varchar(197) COLLATE utf8mb4_unicode_ci NULL  , 
	`permanent_country` varchar(197) COLLATE utf8mb4_unicode_ci NULL  , 
	`permanent_pincode` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`state_of_domicile` varchar(128) COLLATE utf8mb4_unicode_ci NULL  , 
	`admission_quota` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`created_at` int(10) unsigned NULL  , 
	`updated_at` int(11) NULL  , 
	`updated` timestamp NOT NULL  DEFAULT CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP , 
	`created_by` int(10) unsigned NULL  , 
	`updated_by` int(10) unsigned NULL  , 
	`ip` varchar(32) COLLATE utf8mb4_unicode_ci NULL  , 
	`batch_id` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`session` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`ou_id` int(11) NULL  , 
	`ou_code` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`programme_code` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`programme_id` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`year_of_admission` int(11) NULL  , 
	`start_session` varchar(15) COLLATE utf8mb4_unicode_ci NULL  , 
	`admission_valid_upto` int(11) NULL  , 
	`end_session` varchar(15) COLLATE utf8mb4_unicode_ci NULL  , 
	`admission_photo` varchar(255) COLLATE utf8mb4_unicode_ci NULL  , 
	`graduation_photo` varchar(255) COLLATE utf8mb4_unicode_ci NULL  , 
	`profile_photo` varchar(255) COLLATE utf8mb4_unicode_ci NULL  , 
	`status` varchar(197) COLLATE utf8mb4_unicode_ci NULL  , 
	`profile_signature` varchar(255) COLLATE utf8mb4_unicode_ci NULL  , 
	`ext_data_1` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`ext_data_2` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`ext_data_3` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`ext_data_4` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`ext_data_5` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`verified` varchar(30) COLLATE utf8mb4_unicode_ci NULL  , 
	`mobile_number_old` varchar(20) COLLATE utf8mb4_unicode_ci NULL  , 
	`roll_number` varchar(20) COLLATE utf8mb4_unicode_ci NULL  , 
	`programme_language` varchar(100) COLLATE utf8mb4_unicode_ci NULL  , 
	`programme_language_code` varchar(20) COLLATE utf8mb4_unicode_ci NULL  , 
	`year_of_enrolment` int(11) NULL  , 
	`session_of_enrolment` varchar(100) COLLATE utf8mb4_unicode_ci NULL  , 
	`discipline_applicable` varchar(20) COLLATE utf8mb4_unicode_ci NULL  , 
	`discipline_1` varchar(100) COLLATE utf8mb4_unicode_ci NULL  , 
	`discipline_2` varchar(100) COLLATE utf8mb4_unicode_ci NULL  , 
	`discipline_3` varchar(100) COLLATE utf8mb4_unicode_ci NULL  , 
	`discipline_4` varchar(100) COLLATE utf8mb4_unicode_ci NULL  , 
	`discipline_5` varchar(100) COLLATE utf8mb4_unicode_ci NULL  , 
	`examination_roll_number` varchar(130) COLLATE utf8mb4_unicode_ci NULL  , 
	`type_of_enrolment` varchar(100) COLLATE utf8mb4_unicode_ci NULL  , 
	`level_of_programme` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`sub_classification` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`admission_category` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`external_system_id` varchar(100) COLLATE utf8mb4_unicode_ci NULL  , 
	`previous_term_object` text COLLATE utf8mb4_unicode_ci NULL  , 
	`admission_form_no` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`employement_status` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`admission_fee` decimal(10,2) NULL  , 
	`batch_code` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`is_bpl` varchar(20) COLLATE utf8mb4_unicode_ci NULL  , 
	`aadhar_number` bigint(15) NULL  , 
	`programme_section_name` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`student_sub_caste` varchar(100) COLLATE utf8mb4_unicode_ci NULL  , 
	`current_semester` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`cycle_of_admission` varchar(100) COLLATE utf8mb4_unicode_ci NULL  , 
	`other_language` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`student_name_in_other_language` varchar(100) COLLATE utf8mb4_unicode_ci NULL  , 
	`student_caste_certification_state` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`pwd_disability_percentage` int(11) NULL  , 
	`foreign_student_category` varchar(20) COLLATE utf8mb4_unicode_ci NULL  , 
	`citizen_of_country` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`passport_number` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`remarks_foreign_student` text COLLATE utf8mb4_unicode_ci NULL  , 
	`student_perental_income` varchar(20) COLLATE utf8mb4_unicode_ci NULL  , 
	`correspondence_city` varchar(100) COLLATE utf8mb4_unicode_ci NULL  , 
	`remarks` text COLLATE utf8mb4_unicode_ci NULL  , 
	`programme_study_mode` varchar(100) COLLATE utf8mb4_unicode_ci NULL  , 
	`permanent_city` varchar(100) COLLATE utf8mb4_unicode_ci NULL  , 
	`admission_valid_upto_year` int(6) NULL  , 
	`admission_valid_upto_cycle` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`enrolment_status` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`samrth_programme_system_id` int(11) NULL  , 
	`student_nad` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`student_religion` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`marital_status` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`validate_status` text COLLATE utf8mb4_unicode_ci NULL  , 
	`employment_status` varchar(30) COLLATE utf8mb4_unicode_ci NULL  , 
	PRIMARY KEY (`id`) , 
	KEY `name`(`name`) , 
	KEY `id`(`enrolment_number`,`programme_code`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Alter table in target */
ALTER TABLE `student_login` 
	CHANGE `email` `email` varchar(45)  COLLATE utf8mb4_unicode_ci NULL after `id` , 
	CHANGE `mobile` `mobile` varchar(45)  COLLATE utf8mb4_unicode_ci NULL after `email` , 
	CHANGE `student_id` `student_id` varchar(100)  COLLATE utf8mb4_unicode_ci NULL after `mobile` , 
	CHANGE `enrollment_no` `enrollment_no` varchar(195)  COLLATE utf8mb4_unicode_ci NULL after `student_id` , 
	CHANGE `username` `username` varchar(255)  COLLATE utf8mb4_unicode_ci NULL after `enrollment_no` , 
	CHANGE `name` `name` varchar(195)  COLLATE utf8mb4_unicode_ci NULL after `username` , 
	CHANGE `otp` `otp` varchar(10)  COLLATE utf8mb4_unicode_ci NULL after `name` , 
	CHANGE `auth_key` `auth_key` varchar(255)  COLLATE utf8mb4_unicode_ci NULL after `otp` , 
	CHANGE `password_hash` `password_hash` varchar(255)  COLLATE utf8mb4_unicode_ci NULL after `auth_key` , 
	CHANGE `password_reset_token` `password_reset_token` varchar(255)  COLLATE utf8mb4_unicode_ci NULL after `password_hash` , 
	CHANGE `photo_url` `photo_url` varchar(195)  COLLATE utf8mb4_unicode_ci NULL after `valid_upto` , 
	CHANGE `account_disbaled` `account_disbaled` char(1)  COLLATE utf8mb4_unicode_ci NULL DEFAULT 'N' COMMENT 'Y/N' after `account_disbaled_upto` , 
	CHANGE `ip` `ip` varchar(45)  COLLATE utf8mb4_unicode_ci NULL after `updated` , DEFAULT CHARSET='utf8mb4', COLLATE ='utf8mb4_unicode_ci' ;

/* Alter table in target */
ALTER TABLE `student_otp_message` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first , 
	CHANGE `otp` `otp` int(11) unsigned   NOT NULL after `user` , 
	CHANGE `mode` `mode` tinyint(4) unsigned   NOT NULL COMMENT '1 = MAIL, 2 => SMS' after `expiry_time` , 
	CHANGE `used` `used` tinyint(4) unsigned   NULL DEFAULT 0 after `mode` ;

/* Alter table in target */
ALTER TABLE `student_otp_message_copy` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first , 
	CHANGE `otp` `otp` int(11) unsigned   NOT NULL after `user` , 
	CHANGE `mode` `mode` tinyint(4) unsigned   NOT NULL COMMENT '1 = MAIL, 2 => SMS' after `expiry_time` , 
	CHANGE `used` `used` tinyint(4) unsigned   NULL DEFAULT 0 after `mode` ;

/* Alter table in target */
ALTER TABLE `student_portal_content` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first ;

/* Create table in target */
CREATE TABLE `student_portal_module`(
	`module_name` varchar(195) COLLATE utf8mb4_unicode_ci NOT NULL  , 
	`module_class_path` varchar(500) COLLATE utf8mb4_unicode_ci NULL  , 
	`status` varchar(20) COLLATE utf8mb4_unicode_ci NULL  DEFAULT 'DRAFT' , 
	`sort_order` int(11) NULL  DEFAULT 1000 , 
	`created_at` int(11) NULL  , 
	`created_by` int(11) NULL  , 
	`updated_at` int(11) NULL  , 
	`updated_by` int(11) NULL  , 
	`updated` timestamp NOT NULL  DEFAULT CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP , 
	PRIMARY KEY (`module_name`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Create table in target */
CREATE TABLE `student_readmission_fee_control`(
	`id` int(10) unsigned NOT NULL  auto_increment , 
	`programme_id` int(10) unsigned NOT NULL  , 
	`programme_code` varchar(20) COLLATE utf8mb4_unicode_ci NULL  , 
	`term` int(11) NULL  , 
	`term_type` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`academic_session_id` int(11) NULL  , 
	`academic_cycle` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`academic_year` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`status` varchar(20) COLLATE utf8mb4_unicode_ci NULL  , 
	`start_date_int` int(10) unsigned NULL  , 
	`end_date_int` int(10) unsigned NULL  , 
	`late_fee_date_int` int(11) NULL  , 
	`start_date_str` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`end_date_str` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`late_fee_date_str` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`programme_term_ayid` varchar(30) AS  (concat(`programme_id`,'_',`term`,'_',`academic_session_id`))  STORED , 
	`sort_order` int(11) NULL  , 
	`created_at` int(11) NULL  , 
	`updated_at` int(11) NULL  , 
	`created_by` int(11) NULL  , 
	`updated_by` int(11) NULL  , 
	`updated` timestamp NOT NULL  DEFAULT CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP , 
	PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Alter table in target */
ALTER TABLE `student_record` 
	CHANGE `current_term` `current_term` mediumint(50)   NULL after `level_of_programme` , 
	CHANGE `next_term` `next_term` mediumint(50)   NULL after `current_term` , 
	CHANGE `previous_term` `previous_term` mediumint(50)   NULL after `next_term` , 
	CHANGE `fee_term` `fee_term` mediumint(50)   NULL after `result_record` , 
	ADD COLUMN `admission_fee` decimal(10,2)   NULL after `fee_remarks` , 
	CHANGE `sub_classification` `sub_classification` varchar(50)  COLLATE utf8mb4_unicode_ci NULL COMMENT 'FSRI INDIAN' after `admission_fee` , 
	ADD COLUMN `is_pwd` varchar(5)  COLLATE utf8mb4_unicode_ci NULL after `admission_category` , 
	ADD COLUMN `admission_form_no` varchar(50)  COLLATE utf8mb4_unicode_ci NULL after `is_pwd` , 
	ADD COLUMN `employement_status` varchar(50)  COLLATE utf8mb4_unicode_ci NULL after `admission_form_no` , 
	CHANGE `mark_as_alumni` `mark_as_alumni` char(1)  COLLATE utf8mb4_unicode_ci NULL DEFAULT 'N' COMMENT 'Y/N' after `employement_status` , 
	CHANGE `updated` `updated` timestamp   NOT NULL DEFAULT CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP after `updated_by` , 
	ADD COLUMN `enrolment_status` varchar(50)  COLLATE utf8mb4_unicode_ci NULL DEFAULT 'ACTIVE' after `status` , 
	CHANGE `external_system_id` `external_system_id` varchar(100)  COLLATE utf8mb4_unicode_ci NULL after `enrolment_status` , 
	ADD COLUMN `employment_status` varchar(50)  COLLATE utf8mb4_unicode_ci NULL after `previous_term_object` ;

/* Alter table in target */
ALTER TABLE `student_record_reregistration` 
	CHANGE `current_term` `current_term` mediumint(50)   NULL after `level_of_programme` , 
	CHANGE `next_term` `next_term` mediumint(50)   NULL after `current_term` , 
	CHANGE `previous_term` `previous_term` mediumint(50)   NULL after `next_term` , 
	CHANGE `fee_term` `fee_term` mediumint(50)   NULL after `result_record` , 
	CHANGE `updated` `updated` timestamp   NULL DEFAULT CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP after `updated_by` ;

/* Alter table in target */
ALTER TABLE `student_registration` 
	CHANGE `applicant_mobile` `applicant_mobile` bigint(10)   NOT NULL after `applicant_name` , 
	CHANGE `status` `status` tinyint(5)   NULL DEFAULT 1 after `aggregate_score` ;

/* Alter table in target */
ALTER TABLE `student_section` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first , 
	CHANGE `academic_calendar` `academic_calendar` int(11) unsigned   NOT NULL after `academic_year` , 
	ADD COLUMN `term_type` varchar(50)  COLLATE utf8mb4_unicode_ci NULL DEFAULT 'SEMESTER' after `term` , 
	CHANGE `status` `status` varchar(50)  COLLATE utf8mb4_unicode_ci NULL DEFAULT 'DRAFT' after `term_type` , 
	ADD COLUMN `roll_number` varchar(50)  COLLATE utf8mb4_unicode_ci NULL after `enrolment_no` , 
	CHANGE `student_id` `student_id` bigint(20)   NULL after `roll_number` , 
	ADD COLUMN `regular_application_status` varchar(50)  COLLATE utf8mb4_unicode_ci NULL DEFAULT 'DRAFT' after `examination_status` , 
	ADD COLUMN `regular_paystatus` varchar(20)  COLLATE utf8mb4_unicode_ci NULL DEFAULT 'UNPAID' after `regular_application_status` , 
	ADD COLUMN `regular_enrolment_number` varchar(50)  COLLATE utf8mb4_unicode_ci NULL after `regular_paystatus` , 
	ADD COLUMN `supplementary_application_status` varchar(50)  COLLATE utf8mb4_unicode_ci NULL DEFAULT 'DRAFT' after `regular_enrolment_number` , 
	ADD COLUMN `supplementary_paystatus` varchar(20)  COLLATE utf8mb4_unicode_ci NULL DEFAULT 'UNPAID' after `supplementary_application_status` , 
	ADD COLUMN `supplementary_enrolment_number` varchar(50)  COLLATE utf8mb4_unicode_ci NULL after `supplementary_paystatus` , 
	ADD COLUMN `programme_term_ayid` varchar(30)   AS  (concat(`programme_id`,'_',`term`,'_',`academic_calendar`))  STORED after `supplementary_enrolment_number` , 
	ADD COLUMN `fee_status` varchar(50)  COLLATE utf8mb4_unicode_ci NULL DEFAULT 'DRAFT' after `programme_term_ayid` , 
	ADD COLUMN `fee_amount` decimal(10,2)   NULL after `fee_status` , 
	ADD COLUMN `fee_amount_currency` varchar(5)  COLLATE utf8mb4_unicode_ci NULL after `fee_amount` , 
	ADD COLUMN `fee_paid_on` datetime   NULL after `fee_amount_currency` , 
	ADD COLUMN `fee_transaction_id` varchar(200)  COLLATE utf8mb4_unicode_ci NULL after `fee_paid_on` , 
	ADD COLUMN `fee_order_id` varchar(200)  COLLATE utf8mb4_unicode_ci NULL after `fee_transaction_id` , 
	ADD COLUMN `fee_submission_type` varchar(50)  COLLATE utf8mb4_unicode_ci NULL DEFAULT 'DRAFT' after `fee_order_id` , 
	ADD COLUMN `fee_submission_mode` varchar(100)  COLLATE utf8mb4_unicode_ci NULL after `fee_submission_type` , 
	ADD COLUMN `fee_submission_date` datetime   NULL after `fee_submission_mode` , 
	ADD COLUMN `fee_verified_on` datetime   NULL after `fee_submission_date` , 
	ADD COLUMN `fee_verified_by` int(11)   NULL after `fee_verified_on` ;

/* Alter table in target */
ALTER TABLE `student_service_menu` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first ;

/* Create table in target */
CREATE TABLE `student_update_logs`(
	`id` int(11) NOT NULL  auto_increment , 
	`student_id` int(11) NOT NULL  , 
	`enrolment_number` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`fieldname` varchar(100) COLLATE utf8mb4_unicode_ci NULL  , 
	`updated_value` varchar(255) COLLATE utf8mb4_unicode_ci NULL  , 
	`remarks` varchar(255) COLLATE utf8mb4_unicode_ci NULL  , 
	`upload` varchar(255) COLLATE utf8mb4_unicode_ci NULL  , 
	`message` varchar(500) COLLATE utf8mb4_unicode_ci NULL  , 
	`data` json NULL  , 
	`created_at` int(11) NULL  , 
	`updated_at` int(11) NULL  , 
	`created_by` int(11) NULL  , 
	`updated_by` int(11) NULL  , 
	`updated` timestamp NOT NULL  DEFAULT CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP , 
	`ip` varchar(32) COLLATE utf8mb4_unicode_ci NULL  , 
	PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Create table in target */
CREATE TABLE `student_upload_master`(
	`id` int(10) unsigned NOT NULL  auto_increment , 
	`name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL  , 
	`status` varchar(20) COLLATE utf8mb4_unicode_ci NULL  , 
	`update_disabled` tinyint(4) NULL  DEFAULT 0 , 
	`created_at` int(11) NULL  , 
	`updated_at` int(11) NULL  , 
	`created_by` int(11) NULL  , 
	`updated_by` int(11) NULL  , 
	`ip` varchar(32) COLLATE utf8mb4_unicode_ci NULL  , 
	`updated` timestamp NOT NULL  DEFAULT CURRENT_TIMESTAMP , 
	PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Create table in target */
CREATE TABLE `student_uploads`(
	`id` int(11) NOT NULL  auto_increment , 
	`student_id` int(11) NOT NULL  , 
	`enrolment_number` varchar(50) COLLATE utf8_unicode_ci NULL  , 
	`PROGRAMME` varchar(50) COLLATE utf8_unicode_ci NOT NULL  , 
	`UPLOADID` varchar(50) COLLATE utf8_unicode_ci NOT NULL  , 
	`UPLOADDATA` varchar(255) COLLATE utf8_unicode_ci NOT NULL  , 
	`upload_name` varchar(200) COLLATE utf8_unicode_ci NULL  , 
	`status` varchar(20) COLLATE utf8_unicode_ci NULL  , 
	`approved_by` int(11) NULL  , 
	`approved_on` int(11) NULL  , 
	`rejected_by` int(11) NULL  , 
	`rejected_on` int(11) NULL  , 
	`created_at` int(11) NULL  , 
	`updated_at` int(11) NULL  , 
	`created_by` int(11) NULL  , 
	`updated_by` int(11) NULL  , 
	`updated` timestamp NOT NULL  DEFAULT CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP , 
	`ip` varchar(50) COLLATE utf8_unicode_ci NULL  , 
	PRIMARY KEY (`id`) , 
	KEY `formNo`(`student_id`,`PROGRAMME`,`UPLOADID`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8' COLLATE='utf8_unicode_ci';


/* Alter table in target */
ALTER TABLE `students_profile` 
	ADD COLUMN `mobile_number_old` varchar(25)  COLLATE utf8mb4_unicode_ci NULL after `mobile_number` , 
	ADD COLUMN `student_religion` varchar(50)  COLLATE utf8mb4_unicode_ci NULL after `mobile_number_old` , 
	ADD COLUMN `marital_status` varchar(50)  COLLATE utf8mb4_unicode_ci NULL after `student_religion` , 
	ADD COLUMN `aadhar_number` varchar(50)  COLLATE utf8mb4_unicode_ci NULL after `marital_status` , 
	CHANGE `dob` `dob` date   NULL after `aadhar_number` , 
	ADD COLUMN `verified` tinyint(4)   NULL DEFAULT 0 after `profile_signature` , 
	ADD COLUMN `student_relegion` varchar(50)  COLLATE utf8mb4_unicode_ci NULL after `verified` , 
	CHANGE `ext_data_1` `ext_data_1` varchar(50)  COLLATE utf8mb4_unicode_ci NULL after `student_relegion` , 
	DROP KEY `enrolment_number` , 
	DROP KEY `enrolment_number_2` , 
	DROP KEY `id` , 
	ADD UNIQUE KEY `unique_enrol`(`enrolment_number`) ;

/* Alter table in target */
ALTER TABLE `tot_company_profile` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first , 
	CHANGE `companyName` `companyName` varchar(255)  COLLATE utf8mb4_general_ci NOT NULL after `registrationId` , 
	CHANGE `companyDetails` `companyDetails` text  COLLATE utf8mb4_general_ci NOT NULL after `companyName` , 
	CHANGE `companyHeadOffice` `companyHeadOffice` text  COLLATE utf8mb4_general_ci NOT NULL after `companyDetails` , 
	CHANGE `companyWebsite` `companyWebsite` varchar(255)  COLLATE utf8mb4_general_ci NOT NULL after `companyHeadOffice` , 
	CHANGE `companyHrName` `companyHrName` varchar(255)  COLLATE utf8mb4_general_ci NOT NULL after `companyWebsite` , 
	CHANGE `companyHrContact` `companyHrContact` bigint(10)   NOT NULL after `companyHrName` , 
	CHANGE `companyHrEmail` `companyHrEmail` varchar(100)  COLLATE utf8mb4_general_ci NOT NULL after `companyHrContact` , 
	CHANGE `payDate` `payDate` varchar(30)  COLLATE utf8mb4_general_ci NULL after `payStatus` , 
	CHANGE `payOrderId` `payOrderId` varchar(30)  COLLATE utf8mb4_general_ci NULL after `payDate` , 
	CHANGE `payTransactionId` `payTransactionId` varchar(150)  COLLATE utf8mb4_general_ci NULL after `payOrderId` , 
	CHANGE `ip` `ip` varchar(20)  COLLATE utf8mb4_general_ci NULL after `updated_by` , COLLATE ='utf8mb4_general_ci' ;

/* Alter table in target */
ALTER TABLE `tot_opportunity` 
	CHANGE `topic` `topic` varchar(255)  COLLATE utf8mb4_general_ci NULL after `company_id` , 
	CHANGE `description` `description` text  COLLATE utf8mb4_general_ci NULL after `topic` , 
	CHANGE `type` `type` varchar(50)  COLLATE utf8mb4_general_ci NULL after `to_date` , 
	CHANGE `from_time` `from_time` varchar(50)  COLLATE utf8mb4_general_ci NULL after `type` , 
	CHANGE `to_time` `to_time` varchar(50)  COLLATE utf8mb4_general_ci NULL after `from_time` , 
	CHANGE `ip` `ip` varchar(50)  COLLATE utf8mb4_general_ci NULL after `updated_by` , 
	CHANGE `status` `status` varchar(50)  COLLATE utf8mb4_general_ci NULL after `ip` , COLLATE ='utf8mb4_general_ci' ;

/* Alter table in target */
ALTER TABLE `tot_participate` 
	CHANGE `user_type` `user_type` varchar(20)  COLLATE utf8mb4_general_ci NULL after `user_id` , 
	CHANGE `remarks` `remarks` text  COLLATE utf8mb4_general_ci NULL after `training_id` , 
	CHANGE `status` `status` varchar(45)  COLLATE utf8mb4_general_ci NULL after `remarks` , 
	CHANGE `attended` `attended` varchar(45)  COLLATE utf8mb4_general_ci NULL after `status` , COLLATE ='utf8mb4_general_ci' ;

/* Alter table in target */
ALTER TABLE `tot_request` 
	CHANGE `topic` `topic` varchar(255)  COLLATE utf8mb4_general_ci NULL after `user_id` , 
	CHANGE `description` `description` text  COLLATE utf8mb4_general_ci NULL after `topic` , 
	CHANGE `duration_type` `duration_type` varchar(10)  COLLATE utf8mb4_general_ci NULL after `duration` , 
	CHANGE `audience` `audience` varchar(50)  COLLATE utf8mb4_general_ci NULL after `duration_type` , 
	CHANGE `user_type` `user_type` varchar(20)  COLLATE utf8mb4_general_ci NULL after `date` , 
	CHANGE `ip` `ip` varchar(50)  COLLATE utf8mb4_general_ci NULL after `updated_by` , 
	CHANGE `status` `status` varchar(50)  COLLATE utf8mb4_general_ci NULL after `ip` , COLLATE ='utf8mb4_general_ci' ;

/* Create table in target */
CREATE TABLE `tracking_application_control`(
	`id` int(10) unsigned NOT NULL  auto_increment , 
	`app_id` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL  , 
	`key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL  , 
	`value` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL  , 
	`json` varchar(1000) COLLATE utf8mb4_unicode_ci NULL  , 
	`type` varchar(20) COLLATE utf8mb4_unicode_ci NULL  , 
	`category` varchar(20) COLLATE utf8mb4_unicode_ci NULL  , 
	`description` varchar(255) COLLATE utf8mb4_unicode_ci NULL  , 
	PRIMARY KEY (`id`) , 
	UNIQUE KEY `key`(`key`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Create table in target */
CREATE TABLE `tracking_daily`(
	`id` int(10) unsigned NOT NULL  auto_increment , 
	`module_id` int(11) NOT NULL  , 
	`date` date NOT NULL  , 
	`data_day` text COLLATE utf8mb4_unicode_ci NULL  , 
	`data_total` text COLLATE utf8mb4_unicode_ci NULL  , 
	`status` varchar(45) COLLATE utf8mb4_unicode_ci NULL  , 
	`created_at` int(11) NULL  , 
	`updated_at` int(11) NULL  , 
	`created_by` int(11) NULL  , 
	`updated_by` int(11) NULL  , 
	`ip` varchar(45) COLLATE utf8mb4_unicode_ci NULL  , 
	`type` varchar(45) COLLATE utf8mb4_unicode_ci NULL  , 
	`month` varchar(45) COLLATE utf8mb4_unicode_ci NULL  , 
	`year` int(11) NULL  , 
	`week` varchar(45) COLLATE utf8mb4_unicode_ci NULL  , 
	PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Create table in target */
CREATE TABLE `tracking_modules`(
	`id` int(10) unsigned NOT NULL  auto_increment , 
	`short_code` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL  , 
	`models_path` text COLLATE utf8mb4_unicode_ci NULL  , 
	`key_metric` text COLLATE utf8mb4_unicode_ci NULL  , 
	`name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL  , 
	`path` varchar(255) COLLATE utf8mb4_unicode_ci NULL  , 
	`status` varchar(45) COLLATE utf8mb4_unicode_ci NULL  , 
	`created_at` int(11) NULL  , 
	`updated_at` int(11) NULL  , 
	`created_by` int(11) NULL  , 
	`updated_by` int(11) NULL  , 
	`ip` varchar(45) COLLATE utf8mb4_unicode_ci NULL  , 
	`module_name` varchar(128) COLLATE utf8mb4_unicode_ci NULL  , 
	PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Alter table in target */
ALTER TABLE `training_company_season` 
	CHANGE `fee_transaction` `fee_transaction` varchar(50)  COLLATE utf8mb4_general_ci NULL after `fee_date` , 
	CHANGE `created_at` `created_at` bigint(11)   NULL after `status` , 
	CHANGE `updated_at` `updated_at` bigint(11)   NULL after `created_by` , 
	CHANGE `ip` `ip` varchar(50)  COLLATE utf8mb4_general_ci NULL after `updated_by` ;

/* Alter table in target */
ALTER TABLE `training_ctc_breakup` 
	CHANGE `head` `head` varchar(255)  COLLATE utf8mb4_general_ci NULL after `jobId` , 
	CHANGE `remarks` `remarks` text  COLLATE utf8mb4_general_ci NULL after `amount` ;

/* Alter table in target */
ALTER TABLE `training_placement_apply` 
	CHANGE `applicant_mobile` `applicant_mobile` bigint(10)   NOT NULL after `ou_id` , 
	CHANGE `application_status` `application_status` tinyint(5)   NOT NULL DEFAULT 1 after `hireMarkedBy` ;

/* Alter table in target */
ALTER TABLE `training_placement_info` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first , 
	CHANGE `title` `title` varchar(255)  COLLATE utf8mb4_general_ci NOT NULL COMMENT 'Job title' after `registrationId` , 
	CHANGE `description` `description` text  COLLATE utf8mb4_general_ci NOT NULL COMMENT 'Details' after `trainingPlacement` , 
	CHANGE `qualificationName` `qualificationName` text  COLLATE utf8mb4_general_ci NOT NULL after `qualificationId` , 
	CHANGE `qualificationRequired` `qualificationRequired` text  COLLATE utf8mb4_general_ci NULL COMMENT 'Qualification Required' after `qualificationName` , 
	CHANGE `desiredQualification` `desiredQualification` text  COLLATE utf8mb4_general_ci NULL after `qualificationRequired` , 
	CHANGE `eligibilty` `eligibilty` text  COLLATE utf8mb4_general_ci NOT NULL COMMENT 'Eligibility' after `desiredQualification` , 
	CHANGE `skillSet` `skillSet` text  COLLATE utf8mb4_general_ci NOT NULL COMMENT 'Skill Set' after `eligibilty` , 
	CHANGE `designation` `designation` varchar(255)  COLLATE utf8mb4_general_ci NOT NULL COMMENT 'Designation' after `skillSet` , 
	CHANGE `category` `category` varchar(255)  COLLATE utf8mb4_general_ci NULL after `incomeGroup` , 
	CHANGE `gender` `gender` varchar(50)  COLLATE utf8mb4_general_ci NULL after `category` , 
	CHANGE `termsCondition` `termsCondition` text  COLLATE utf8mb4_general_ci NULL after `gender` , 
	CHANGE `companyDoc` `companyDoc` varchar(255)  COLLATE utf8mb4_general_ci NULL after `process` , 
	CHANGE `ctc` `ctc` varchar(255)  COLLATE utf8mb4_general_ci NOT NULL COMMENT 'Salary' after `companyDoc` , 
	CHANGE `experience` `experience` tinyint(5)   NOT NULL COMMENT 'Experience' after `showPost` , 
	CHANGE `season_id` `season_id` varchar(50)  COLLATE utf8mb4_general_ci NOT NULL after `experience` , 
	CHANGE `type` `type` tinyint(5)   NOT NULL COMMENT 'Job type Full Time Part time' after `season_id` , 
	CHANGE `periods` `periods` text  COLLATE utf8mb4_general_ci NULL COMMENT 'Period of Training or Job' after `type` , 
	CHANGE `selectionCriteria` `selectionCriteria` text  COLLATE utf8mb4_general_ci NOT NULL COMMENT 'Selection Criteria' after `periods` , 
	CHANGE `interview` `interview` int(5)   NULL after `closingDate` , 
	CHANGE `writtenTest` `writtenTest` int(5)   NULL after `interview` , 
	CHANGE `mode` `mode` int(5)   NULL after `writtenTest` , 
	CHANGE `gD` `gD` int(2)   NULL after `mode` , 
	CHANGE `venue` `venue` varchar(255)  COLLATE utf8mb4_general_ci NOT NULL COMMENT 'Test/Interview Venue' after `gD` , 
	CHANGE `vacancies` `vacancies` int(5)   NOT NULL COMMENT 'No of Vacancies' after `venue` , 
	CHANGE `location` `location` varchar(255)  COLLATE utf8mb4_general_ci NOT NULL COMMENT 'Job Location' after `vacancies` , 
	CHANGE `searchKeywords` `searchKeywords` varchar(255)  COLLATE utf8mb4_general_ci NOT NULL COMMENT 'Search Tags' after `location` , 
	CHANGE `remarks` `remarks` varchar(255)  COLLATE utf8mb4_general_ci NULL after `searchKeywords` , 
	CHANGE `submitStatus` `submitStatus` tinyint(5)   NOT NULL DEFAULT 0 COMMENT 'Published Not Published' after `remarks` , 
	CHANGE `status` `status` tinyint(5)   NOT NULL DEFAULT 0 COMMENT 'Active Inactive' after `submitStatus` , 
	CHANGE `ip` `ip` varchar(20)  COLLATE utf8mb4_general_ci NULL after `updated_by` ;

/* Alter table in target */
ALTER TABLE `training_season` 
	CHANGE `code` `code` varchar(45)  COLLATE utf8mb4_general_ci NULL after `id` , 
	CHANGE `name` `name` varchar(45)  COLLATE utf8mb4_general_ci NULL after `code` , 
	CHANGE `status` `status` int(2)   NOT NULL after `fee_for_student` , 
	CHANGE `ip` `ip` varchar(50)  COLLATE utf8mb4_general_ci NULL after `updated_by` ;

/* Alter table in target */
ALTER TABLE `transport_daily_tracking` 
	CHANGE `driver_contact` `driver_contact` bigint(11)   NOT NULL after `driver_name` ;

/* Alter table in target */
ALTER TABLE `transport_logs` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first ;

/* Alter table in target */
ALTER TABLE `transport_vendor` 
	CHANGE `contact` `contact` bigint(11)   NOT NULL after `company_name` , 
	CHANGE `alternate_contact` `alternate_contact` bigint(12)   NULL after `contact` ;

/* Alter table in target */
ALTER TABLE `two_factor_authentication` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first , 
	CHANGE `two_factor_authentication` `two_factor_authentication` tinyint(5)   NOT NULL after `id` ;

/* Alter table in target */
ALTER TABLE `vendor_detail` 
	CHANGE `purchase_id` `purchase_id` int(11) unsigned   NOT NULL after `id` ; 

/* The foreign keys that were dropped are now re-created*/

ALTER TABLE `cfs_uploads` 
	ADD CONSTRAINT `cfs_uploads_ibfk_1` 
	FOREIGN KEY (`order_id`) REFERENCES `cfs_order_table` (`id`) ON DELETE CASCADE ON UPDATE CASCADE ;

ALTER TABLE `core_college_course_list` 
	ADD CONSTRAINT `core_college_course_list_ibfk_1` 
	FOREIGN KEY (`ou_id`) REFERENCES `core_administrative_unit` (`id`) ON UPDATE CASCADE , 
	ADD CONSTRAINT `core_college_course_list_ibfk_2` 
	FOREIGN KEY (`course_id`) REFERENCES `core_course_list` (`id`) ON UPDATE CASCADE , 
	ADD CONSTRAINT `core_college_course_list_ibfk_3` 
	FOREIGN KEY (`ou_name`) REFERENCES `core_administrative_unit` (`name`) ON UPDATE CASCADE , 
	ADD CONSTRAINT `core_college_course_list_ibfk_4` 
	FOREIGN KEY (`course_name`) REFERENCES `core_course_list` (`title`) ON UPDATE CASCADE ;

ALTER TABLE `core_college_course_seats` 
	ADD CONSTRAINT `core_college_course_seats_ibfk_1` 
	FOREIGN KEY (`ou_id`) REFERENCES `core_administrative_unit` (`id`) ON UPDATE CASCADE , 
	ADD CONSTRAINT `core_college_course_seats_ibfk_2` 
	FOREIGN KEY (`course_id`) REFERENCES `core_course_list` (`id`) ON UPDATE CASCADE ;

ALTER TABLE `core_college_program_seats` 
	ADD CONSTRAINT `core_college_program_seats_ibfk_1` 
	FOREIGN KEY (`ou_id`) REFERENCES `core_administrative_unit` (`id`) ON UPDATE CASCADE , 
	ADD CONSTRAINT `core_college_program_seats_ibfk_2` 
	FOREIGN KEY (`session_program_id`) REFERENCES `core_session_program` (`id`) ON UPDATE CASCADE ;

ALTER TABLE `core_course_list` 
	ADD CONSTRAINT `core_course_list_ibfk_1` 
	FOREIGN KEY (`course_type`) REFERENCES `core_course_type` (`id`) ON UPDATE CASCADE , 
	ADD CONSTRAINT `core_course_list_ibfk_2` 
	FOREIGN KEY (`program`) REFERENCES `core_course_program` (`id`) ON UPDATE CASCADE , 
	ADD CONSTRAINT `core_course_list_ibfk_3` 
	FOREIGN KEY (`stream`) REFERENCES `core_course_stream` (`id`) ON UPDATE CASCADE ;

ALTER TABLE `core_user_assignments` 
	ADD CONSTRAINT `core_user_assignments_ibfk_3` 
	FOREIGN KEY (`user_id`) REFERENCES `ems_profile` (`id`) ON UPDATE CASCADE ;

ALTER TABLE `feedback_responses` 
	ADD CONSTRAINT `feedback_responses_ibfk_1` 
	FOREIGN KEY (`feedback_template_id`) REFERENCES `feedback_template` (`id`) ON UPDATE CASCADE , 
	ADD CONSTRAINT `feedback_responses_ibfk_2` 
	FOREIGN KEY (`question_id`) REFERENCES `feedback_questions` (`id`) ON UPDATE CASCADE ;

ALTER TABLE `hostel_allocation` 
	ADD CONSTRAINT `hostel_id_allocation` 
	FOREIGN KEY (`hostel_id`) REFERENCES `core_administrative_unit` (`id`) ON UPDATE CASCADE , 
	ADD CONSTRAINT `room_id` 
	FOREIGN KEY (`room_id`) REFERENCES `hostel_rooms` (`id`) ON UPDATE CASCADE ;

ALTER TABLE `hostel_facility` 
	ADD CONSTRAINT `hostel_id_facility` 
	FOREIGN KEY (`hostel_id`) REFERENCES `core_administrative_unit` (`id`) ON UPDATE CASCADE ;

ALTER TABLE `hostel_rooms` 
	ADD CONSTRAINT `hostel_rooms_ibfk_1` 
	FOREIGN KEY (`hostel_id`) REFERENCES `core_administrative_unit` (`id`) ON UPDATE CASCADE ;

ALTER TABLE `ims_items_issued` 
	ADD CONSTRAINT `ims_items_issued_ibfk_1` 
	FOREIGN KEY (`item_number`) REFERENCES `ims_items_stock_details` (`reference_no`) ON UPDATE CASCADE ;

ALTER TABLE `lcms_departmentProfile` 
	ADD CONSTRAINT `departmentProfile_ibfk_1` 
	FOREIGN KEY (`department_id`) REFERENCES `lcms_department` (`id`) ON UPDATE CASCADE ;

ALTER TABLE `payroll_final_processed_salary_breakup` 
	ADD CONSTRAINT `payroll_final_processed_salary_breakup_ibfk_1` 
	FOREIGN KEY (`process_id`) REFERENCES `payroll_final_processed_salary` (`id`) ON UPDATE CASCADE ;

ALTER TABLE `prg_batch_ou` 
	ADD CONSTRAINT `prg_batch_ou_ibfk_2` 
	FOREIGN KEY (`academic_ou`) REFERENCES `core_administrative_unit_old_1` (`id`) ;

ALTER TABLE `prg_course_evaluation_component` 
	ADD CONSTRAINT `prg_course_evaluation_component_ibfk_1` 
	FOREIGN KEY (`programme_id`) REFERENCES `core_programme` (`id`) ON DELETE CASCADE ON UPDATE CASCADE , 
	ADD CONSTRAINT `prg_course_evaluation_component_ibfk_3` 
	FOREIGN KEY (`process_id`) REFERENCES `evaluation_process` (`id`) ON DELETE CASCADE ON UPDATE CASCADE , 
	ADD CONSTRAINT `prg_course_evaluation_component_ibfk_4` 
	FOREIGN KEY (`assessment_id`) REFERENCES `evaluation_assessment_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE , 
	ADD CONSTRAINT `prg_course_evaluation_component_ibfk_5` 
	FOREIGN KEY (`course_id`) REFERENCES `prg_course_list_v2` (`id`) ON DELETE CASCADE ON UPDATE CASCADE ;

ALTER TABLE `prg_course_evaluation_session` 
	ADD CONSTRAINT `prg_course_evaluation_session_ibfk_1` 
	FOREIGN KEY (`programme_id`) REFERENCES `core_programme` (`id`) ON DELETE CASCADE ON UPDATE CASCADE ;

ALTER TABLE `rti_Response_From_Department` 
	ADD CONSTRAINT `rti_Response_From_Department_ibfk_1` 
	FOREIGN KEY (`rtiNumber`) REFERENCES `rti_detail` (`rtiNumber`) ON UPDATE CASCADE ;

ALTER TABLE `vendor_detail` 
	ADD CONSTRAINT `vendor_detail_ibfk_1` 
	FOREIGN KEY (`purchase_id`) REFERENCES `vendor_purchase_order` (`id`) ON UPDATE CASCADE ;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
