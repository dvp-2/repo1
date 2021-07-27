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
ALTER TABLE `academic_section` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first ;

/* Alter table in target */
ALTER TABLE `academic_session` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first ;

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
ALTER TABLE `adm_cycle` 
	CHANGE `updated` `updated` timestamp   NULL on update CURRENT_TIMESTAMP after `updated_by` ;

/* Alter table in target */
ALTER TABLE `adm_programme_docs_map` 
	CHANGE `status` `status` tinyint(3)   NULL DEFAULT 1 after `document_id` ;

/* Alter table in target */
ALTER TABLE `adm_programme_qualification_map` 
	CHANGE `status` `status` tinyint(3)   NULL after `adm_type` ;

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

/* Alter table in target */
ALTER TABLE `alumni_communication_log` 
	CHANGE `to_email` `to_email` text  COLLATE latin1_swedish_ci NOT NULL after `send_choice` , 
	CHANGE `to_mobile` `to_mobile` text  COLLATE latin1_swedish_ci NULL after `to_email` , 
	CHANGE `subject` `subject` text  COLLATE latin1_swedish_ci NOT NULL after `to_mobile` , 
	CHANGE `message` `message` text  COLLATE latin1_swedish_ci NOT NULL after `subject` , 
	CHANGE `sms` `sms` text  COLLATE latin1_swedish_ci NULL after `message` , 
	CHANGE `ip` `ip` varchar(25)  COLLATE latin1_swedish_ci NULL after `date` , 
	CHANGE `formno` `formno` text  COLLATE latin1_swedish_ci NULL after `user_id` , DEFAULT CHARSET='latin1', COLLATE ='latin1_swedish_ci' ;

/* Alter table in target */
ALTER TABLE `alumni_logs_mail` 
	CHANGE `from` `from` varchar(512)  COLLATE latin1_swedish_ci NULL after `id` , 
	CHANGE `to` `to` text  COLLATE latin1_swedish_ci NULL after `from` , 
	CHANGE `subject` `subject` text  COLLATE latin1_swedish_ci NULL after `to` , 
	CHANGE `content` `content` text  COLLATE latin1_swedish_ci NULL after `subject` , 
	CHANGE `ip` `ip` varchar(50)  COLLATE latin1_swedish_ci NULL after `created_by` , DEFAULT CHARSET='latin1', COLLATE ='latin1_swedish_ci' ;

/* Alter table in target */
ALTER TABLE `alumni_mail_template` 
	DROP KEY `mail_UNIQUE`, ADD UNIQUE KEY `mail_UNIQUE`(`mail`) ;

/* Alter table in target */
ALTER TABLE `alumni_mail_template_master` 
	DROP KEY `mail_UNIQUE`, ADD UNIQUE KEY `mail_UNIQUE`(`mail`) ;

/* Alter table in target */
ALTER TABLE `alumni_otp_message` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first , 
	CHANGE `user` `user` varchar(255)  COLLATE latin1_swedish_ci NOT NULL after `id` , 
	CHANGE `otp` `otp` int(11) unsigned   NOT NULL after `user` , 
	CHANGE `service` `service` tinyint(4) unsigned   NOT NULL after `expiry_time` , 
	CHANGE `mode` `mode` tinyint(4) unsigned   NOT NULL COMMENT '1 = MAIL, 2 => SMS' after `service` , 
	CHANGE `used` `used` tinyint(4) unsigned   NULL DEFAULT 0 after `mode` , 
	CHANGE `request_ip` `request_ip` varchar(40)  COLLATE latin1_swedish_ci NULL after `used` , 
	CHANGE `response_ip` `response_ip` varchar(40)  COLLATE latin1_swedish_ci NULL after `request_ip` , DEFAULT CHARSET='latin1', COLLATE ='latin1_swedish_ci' ;

/* Alter table in target */
ALTER TABLE `alumni_ou_admin_mapping` 
	CHANGE `user_id` `user_id` varchar(255)  COLLATE latin1_swedish_ci NOT NULL after `ou_id` , 
	CHANGE `ip` `ip` varchar(255)  COLLATE latin1_swedish_ci NULL after `updated_by` , DEFAULT CHARSET='latin1', COLLATE ='latin1_swedish_ci' ;

/* Alter table in target */
ALTER TABLE `alumni_ou_mapping` 
	CHANGE `alumni_id` `alumni_id` varchar(255)  COLLATE latin1_swedish_ci NOT NULL after `ou_id` , 
	CHANGE `ip` `ip` varchar(255)  COLLATE latin1_swedish_ci NULL after `updated_by` , DEFAULT CHARSET='latin1', COLLATE ='latin1_swedish_ci' ;

/* Alter table in target */
ALTER TABLE `alumni_personal` 
	CHANGE `photo` `photo` text  COLLATE utf8mb4_unicode_ci NULL after `employer_name` , 
	CHANGE `cv` `cv` text  COLLATE utf8mb4_unicode_ci NULL after `photo` , 
	CHANGE `otp_email` `otp_email` varchar(45)  COLLATE utf8mb4_unicode_ci NULL after `firstLogin` , 
	CHANGE `otp_mobile` `otp_mobile` varchar(45)  COLLATE utf8mb4_unicode_ci NULL after `otp_email` ;

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
ALTER TABLE `core_institutions` 
	CHANGE `status` `status` tinyint(5)   NOT NULL after `geo_coordinates` ;

/* Alter table in target */
ALTER TABLE `core_mailer` 
	CHANGE `use_file_transport` `use_file_transport` tinyint(3)   NULL DEFAULT 0 after `view_path` , 
	CHANGE `status` `status` tinyint(3)   NULL DEFAULT 0 after `use_file_transport` , 
	CHANGE `use_random` `use_random` tinyint(3)   NULL DEFAULT 0 after `status` ;

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
	CHANGE `visible` `visible` tinyint(4) unsigned   NULL DEFAULT 1 after `update_disabled` ;

/* Alter table in target */
ALTER TABLE `core_programme` 
	CHANGE `max_duration` `max_duration` int(10)   NULL after `faculty` ;

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
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment COMMENT 'refrence to other tables or data if required' first ;

/* Alter table in target */
ALTER TABLE `core_user_assignments` 
	CHANGE `ou` `ou` int(11) unsigned   NOT NULL COMMENT 'department,faculty etc' after `id` , 
	CHANGE `user_id` `user_id` int(11) unsigned   NOT NULL COMMENT 'employee unique id from employee table' after `designation` ;

/* Alter table in target */
ALTER TABLE `country` 
	CHANGE `status` `status` tinyint(3)   NULL after `name` ;

/* Alter table in target */
ALTER TABLE `degreeName` 
	CHANGE `status` `status` tinyint(5)   NOT NULL after `degreeName` ;

/* Alter table in target */
ALTER TABLE `document_system` 
	CHANGE `id` `id` int(10)   NOT NULL auto_increment first , 
	ADD COLUMN `view_type` varchar(20)  COLLATE utf8_unicode_ci NULL after `embargo_reason` , 
	CHANGE `status` `status` tinyint(4)   NULL after `view_type` ;

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
	CHANGE `PayInPayMatrix` `PayInPayMatrix` int(100)   NOT NULL after `pay_level` , 
	CHANGE `years_of_service` `years_of_service` tinyint(3)   NULL after `preference` , 
	CHANGE `AlternateMobile` `AlternateMobile` bigint(11)   NULL after `Mobile` , 
	CHANGE `allotment` `allotment` tinyint(3)   NULL after `med_certificate` , 
	CHANGE `status` `status` tinyint(3)   NULL after `application_no` ;

/* Alter table in target */
ALTER TABLE `ehousing_scheme` 
	CHANGE `docs_required` `docs_required` tinyint(3)   NULL after `no_house_preference` , 
	CHANGE `status` `status` tinyint(3)   NULL after `docs_required` ;

/* Alter table in target */
ALTER TABLE `ems_academic_details` 
	CHANGE `visible` `visible` tinyint(5)   NULL after `country` , 
	CHANGE `status` `status` tinyint(5)   NULL after `visible` , 
	CHANGE `sort` `sort` int(10)   NULL after `status` , 
	CHANGE `verified_by` `verified_by` int(10)   NULL after `verified_status` ;

/* Alter table in target */
ALTER TABLE `ems_action_options` 
	CHANGE `id` `id` int(1)   NOT NULL auto_increment first , 
	CHANGE `created_at` `created_at` int(10)   NULL after `employee_id` , 
	CHANGE `created_by` `created_by` int(10)   NULL after `created_at` , 
	CHANGE `updated_at` `updated_at` int(10)   NULL after `created_by` , 
	CHANGE `updated_by` `updated_by` int(10)   NULL after `updated_at` ;

/* Alter table in target */
ALTER TABLE `ems_action_options_reason` 
	CHANGE `id` `id` int(1)   NOT NULL auto_increment first , 
	CHANGE `created_at` `created_at` int(10)   NULL after `action_id` , 
	CHANGE `created_by` `created_by` int(10)   NULL after `created_at` , 
	CHANGE `updated_at` `updated_at` int(10)   NULL after `created_by` , 
	CHANGE `updated_by` `updated_by` int(10)   NULL after `updated_at` ;

/* Create table in target */
CREATE TABLE `ems_action_status`(
	`id` int(11) unsigned NOT NULL  auto_increment , 
	`emp_id` int(11) NULL  , 
	`emp_type` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`family_detail` tinyint(4) NULL  DEFAULT 0 , 
	`profile` tinyint(4) NULL  DEFAULT 0 , 
	`university_assignment` tinyint(4) NULL  DEFAULT 0 , 
	`academic_details` tinyint(4) NULL  DEFAULT 0 , 
	`career_profile` tinyint(4) NULL  DEFAULT 0 , 
	`membership_and_association` tinyint(4) NULL  DEFAULT 0 , 
	`documents` tinyint(4) NULL  DEFAULT 0 , 
	`last_update` datetime NULL  , 
	`status_percent` float NULL  , 
	`emp_photo` tinyint(4) NULL  , 
	`research_supervision` tinyint(4) NULL  , 
	`research_publication_profile_1` tinyint(4) NULL  , 
	`research_publication_profile_2` tinyint(4) NULL  , 
	`patents_and_consultancy` tinyint(4) NULL  , 
	`created_by` int(11) NULL  , 
	`updated_by` int(11) NULL  , 
	`created_at` int(11) NULL  , 
	`updated_at` int(11) NULL  , 
	`ip` varchar(20) COLLATE utf8mb4_unicode_ci NULL  , 
	PRIMARY KEY (`id`) , 
	KEY `emp_type`(`emp_type`) , 
	KEY `emp_id`(`emp_id`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Alter table in target */
ALTER TABLE `ems_conference_organisation_presentation` 
	ADD COLUMN `role` varchar(255)  COLLATE utf8mb4_unicode_ci NULL after `end_date` , 
	ADD COLUMN `funding_agency` varchar(255)  COLLATE utf8mb4_unicode_ci NULL after `role` , 
	ADD COLUMN `fund_amount` int(11)   NULL after `funding_agency` , 
	CHANGE `created_at` `created_at` int(11)   NULL after `fund_amount` ;

/* Alter table in target */
ALTER TABLE `ems_document_options` 
	CHANGE `created_at` `created_at` int(10)   NULL after `status` , 
	CHANGE `created_by` `created_by` int(10)   NULL after `created_at` , 
	CHANGE `updated_at` `updated_at` int(10)   NULL after `created_by` , 
	CHANGE `updated_by` `updated_by` int(10)   NULL after `updated_at` ;

/* Alter table in target */
ALTER TABLE `ems_ltc_details` 
	CHANGE `year` `year` int(4)   NOT NULL after `type` ;

/* Alter table in target */
ALTER TABLE `ems_ltc_details_extension` 
	CHANGE `age` `age` int(3)   NOT NULL after `relationship` ;

/* Alter table in target */
ALTER TABLE `ems_mentor_to_student` 
	ADD COLUMN `roll_no` varchar(255)  COLLATE utf8mb4_unicode_ci NULL after `duration_of_mentoring` , 
	ADD COLUMN `extra_details` text  COLLATE utf8mb4_unicode_ci NULL after `roll_no` , 
	CHANGE `created_at` `created_at` int(11)   NULL after `extra_details` ;

/* Alter table in target */
ALTER TABLE `ems_nominee_detail` 
	CHANGE `created_at` `created_at` int(10)   NULL after `percentage_share_for_nominee` , 
	CHANGE `created_by` `created_by` int(10)   NULL after `created_at` , 
	CHANGE `updated_at` `updated_at` int(10)   NULL after `created_by` , 
	CHANGE `updated_by` `updated_by` int(10)   NULL after `updated_at` , 
	CHANGE `verified_by` `verified_by` int(10)   NULL after `verified_status` ;

/* Alter table in target */
ALTER TABLE `ems_nominee_service` 
	CHANGE `updated_at` `updated_at` int(10)   NULL after `created_by` , 
	CHANGE `updated_by` `updated_by` int(10)   NULL after `updated_at` ;

/* Alter table in target */
ALTER TABLE `ems_pg_details` 
	CHANGE `result_type` `result_type` tinyint(5) unsigned   NULL after `year` ;

/* Alter table in target */
ALTER TABLE `ems_phd_details` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first ;

/* Alter table in target */
ALTER TABLE `ems_profile` 
	CHANGE `organization_unit` `organization_unit` int(11) unsigned   NULL after `nature_of_employment` , 
	CHANGE `approved` `approved` tinyint(5)   NULL DEFAULT 0 COMMENT 'Yes, No' after `reason_for_change_profile` , 
	CHANGE `hometown_pincode` `hometown_pincode` int(10)   NULL after `hometown_city` , 
	CHANGE `verified_by` `verified_by` int(10)   NULL after `verified_status` ;

/* Alter table in target */
ALTER TABLE `ems_profile_history` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first ;

/* Alter table in target */
ALTER TABLE `ems_property_details` 
	CHANGE `acquired` `acquired` tinyint(11)   NOT NULL after `value` ;

/* Alter table in target */
ALTER TABLE `ems_travel_purpose` 
	CHANGE `id` `id` int(1)   NOT NULL auto_increment first , 
	CHANGE `created_at` `created_at` int(10)   NULL after `status` , 
	CHANGE `created_by` `created_by` int(10)   NULL after `created_at` , 
	CHANGE `updated_at` `updated_at` int(10)   NULL after `created_by` , 
	CHANGE `updated_by` `updated_by` int(10)   NULL after `updated_at` ;

/* Alter table in target */
ALTER TABLE `ems_travel_reason` 
	CHANGE `id` `id` int(1)   NOT NULL auto_increment first , 
	CHANGE `created_at` `created_at` int(10)   NULL after `status` , 
	CHANGE `created_by` `created_by` int(10)   NULL after `created_at` , 
	CHANGE `updated_at` `updated_at` int(10)   NULL after `created_by` , 
	CHANGE `updated_by` `updated_by` int(10)   NULL after `updated_at` ;

/* Alter table in target */
ALTER TABLE `ems_ug_details` 
	CHANGE `result_type` `result_type` tinyint(5) unsigned   NULL after `year` , 
	CHANGE `created_by` `created_by` int(11) unsigned   NULL after `updated_at` , 
	CHANGE `updated_by` `updated_by` int(11) unsigned   NULL after `created_by` ;

/* Alter table in target */
ALTER TABLE `endowment_pay_trans_sent` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first ;

/* Alter table in target */
ALTER TABLE `endowment_zpay_trans_sent` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first , 
	CHANGE `updated` `updated` timestamp   NULL on update CURRENT_TIMESTAMP after `updated_by` , 
	CHANGE `draft_number` `draft_number` varbinary(195)   NULL after `draft_date` , 
	DROP KEY `formNo`, ADD FULLTEXT KEY `formNo`(`service_reference_no`) ;

/* Alter table in target */
ALTER TABLE `essential_conference_hall` 
	CHANGE `coordination_contact` `coordination_contact` bigint(11)   NULL after `coordinator_id` , 
	CHANGE `participants` `participants` int(10)   NULL after `date_from` ;

/* Alter table in target */
ALTER TABLE `essential_guest_house` 
	CHANGE `guest_contact` `guest_contact` bigint(15)   NULL after `desi_add` ;

/* Alter table in target */
ALTER TABLE `essential_mail` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first , 
	CHANGE `memberMobile` `memberMobile` bigint(10)   NOT NULL after `memberEmail` ;

/* Alter table in target */
ALTER TABLE `essential_transport_request` 
	CHANGE `capacity` `capacity` tinyint(5)   NULL after `vehicle_type` , 
	CHANGE `contact` `contact` bigint(12)   NULL after `address` ;

/* Alter table in target */
ALTER TABLE `estate_app_form` 
	CHANGE `PayInPayMatrix` `PayInPayMatrix` int(100)   NOT NULL after `PayMatrix` , 
	CHANGE `AlternateMobile` `AlternateMobile` bigint(11)   NULL after `Mobile` ;

/* Alter table in target */
ALTER TABLE `estate_building` 
	CHANGE `is_residential` `is_residential` tinyint(3)   NOT NULL after `inauguration_date` ;

/* Alter table in target */
ALTER TABLE `estate_housing` 
	CHANGE `created_by` `created_by` int(11) unsigned   NULL after `description` , 
	CHANGE `updated_by` `updated_by` int(11) unsigned   NULL after `created_by` ;



/* Create table in target */
CREATE TABLE `evaluation_log`(
	`id` int(10) unsigned NOT NULL  auto_increment , 
	`user_id` varchar(128) COLLATE utf8mb4_unicode_ci NULL  , 
	`type` varchar(128) COLLATE utf8mb4_unicode_ci NULL  , 
	`message` text COLLATE utf8mb4_unicode_ci NULL  , 
	PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Alter table in target */
ALTER TABLE `exam_programme_map` 
	DROP COLUMN `programme_term_ayid` , 
	ADD COLUMN `programme_term_ayid` varchar(30)   AS  (concat(`programme_id`,'_',`term`,'_',`academic_calendar_id`))  STORED after `updated` ;

/* Alter table in target */
ALTER TABLE `exam_session` 
	CHANGE `year` `year` int(4)   NULL after `adm_session_id` , 
	CHANGE `status` `status` tinyint(5)   NULL DEFAULT 0 after `exam_cycle` , 
	CHANGE `start_date` `start_date` bigint(15)   NULL COMMENT 'time in unix time stamp' after `start_date_time` , 
	CHANGE `end_date` `end_date` bigint(15)   NULL COMMENT 'time in unix time stamp' after `start_date` , 
	CHANGE `extended_date` `extended_date` bigint(15)   NULL after `extended_date_str` , 
	CHANGE `admin_last_date` `admin_last_date` bigint(15)   NULL after `extended_date` , 
	CHANGE `created_at` `created_at` int(15)   NULL after `result_type` , 
	CHANGE `updated_at` `updated_at` int(15)   NOT NULL after `created_at` ;

/* Alter table in target */
ALTER TABLE `examination_content` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first ;

/* Alter table in target */
ALTER TABLE `examination_mail_log` 
	CHANGE `reminder1` `reminder1` tinyint(5)   NULL after `mail_date` , 
	CHANGE `duration` `duration` int(10)   NULL after `reminder1` , 
	CHANGE `max_marks` `max_marks` int(4)   NULL after `duration` ;

/* Alter table in target */
ALTER TABLE `examination_mail_log_examiner` 
	CHANGE `reminder1` `reminder1` tinyint(5)   NULL after `mail_date` , 
	CHANGE `duration` `duration` int(10)   NULL after `reminder1` , 
	CHANGE `max_marks` `max_marks` int(4)   NULL after `duration` , 
	CHANGE `form` `form` tinyint(5)   NULL after `action` ;

/* Alter table in target */
ALTER TABLE `examination_moderation_meeting` 
	CHANGE `status` `status` tinyint(5)   NOT NULL after `teacher_id` ;

/* Alter table in target */
ALTER TABLE `examination_paper_examiner` 
	CHANGE `status` `status` tinyint(5)   NOT NULL after `teacher_name` , 
	CHANGE `reminder_day` `reminder_day` int(5)   NULL after `reminder_date` ;

/* Alter table in target */
ALTER TABLE `examination_paper_examiner_master` 
	CHANGE `status` `status` tinyint(5)   NOT NULL after `teacher_id` ;

/* Alter table in target */
ALTER TABLE `examination_paper_setter` 
	CHANGE `status` `status` tinyint(5)   NOT NULL after `teacher_name` ;

/* Alter table in target */
ALTER TABLE `examination_paper_setter_master` 
	CHANGE `status` `status` tinyint(5)   NOT NULL after `teacher_id` ;

/* Alter table in target */
ALTER TABLE `examination_session` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first ;

/* Alter table in target */
ALTER TABLE `examination_slot_center_map` 
	CHANGE `id` `id` int(1)   NOT NULL auto_increment first ;

/* Alter table in target */
ALTER TABLE `examination_student_attendance` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first ;

/* Alter table in target */
ALTER TABLE `examination_student_monthly_attendance` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first ;

/* Alter table in target */
ALTER TABLE `examination_teacher` 
	CHANGE `country` `country` int(10)   NULL after `state` , 
	CHANGE `pincode` `pincode` int(15)   NULL after `country` ;

/* Alter table in target */
ALTER TABLE `feedback_responses` 
	CHANGE `mobile` `mobile` bigint(8)   NULL after `email` , 
	CHANGE `feedback_template_id` `feedback_template_id` int(11) unsigned   NOT NULL after `programme_name` , 
	CHANGE `created_at` `created_at` int(11) unsigned   NULL after `response_other` , 
	CHANGE `created_by` `created_by` int(11) unsigned   NULL after `created_at` , 
	CHANGE `updated_at` `updated_at` int(11) unsigned   NULL after `created_by` , 
	CHANGE `updated_by` `updated_by` int(11) unsigned   NULL after `updated_at` ;

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
	CHANGE `ip` `ip` int(32)   NULL after `updated` ;

/* Alter table in target */
ALTER TABLE `grievance_logs` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first , 
	ADD COLUMN `grievance_type` varchar(10)  COLLATE utf8_unicode_ci NULL after `userId` , 
	CHANGE `taskPerformed` `taskPerformed` varchar(50)  COLLATE utf8_unicode_ci NOT NULL COMMENT 'Current task performed by the Admin' after `grievance_type` ;

/* Alter table in target */
ALTER TABLE `grievance_mail` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first , 
	CHANGE `memberMobile` `memberMobile` bigint(10)   NOT NULL after `memberEmail` ;

/* Alter table in target */
ALTER TABLE `grievance_meeting` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first , 
	ADD COLUMN `grievance_type` varchar(10)  COLLATE utf8mb4_unicode_ci NULL after `grievanceId` , 
	CHANGE `meetingType` `meetingType` varchar(190)  COLLATE utf8mb4_unicode_ci NOT NULL after `grievance_type` , 
	CHANGE `status` `status` tinyint(5)   NULL DEFAULT 1 after `attendees` ;

/* Alter table in target */
ALTER TABLE `grievance_meeting_invites` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first , 
	ADD COLUMN `grievance_type` varchar(10)  COLLATE utf8mb4_unicode_ci NULL after `meetingId` , 
	CHANGE `attendeeId` `attendeeId` int(11)   NULL after `grievance_type` , 
	CHANGE `attendeeMobile` `attendeeMobile` bigint(10)   NOT NULL after `attendeeEmail` ;

/* Alter table in target */
ALTER TABLE `grievance_meeting_logs` 
	ADD COLUMN `grievance_type` varchar(10)  COLLATE utf8mb4_unicode_ci NULL after `grievanceId` , 
	CHANGE `meetingId` `meetingId` int(10) unsigned   NULL after `grievance_type` ;

/* Alter table in target */
ALTER TABLE `grievance_notes` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first , 
	ADD COLUMN `grievance_type` varchar(10)  COLLATE utf8mb4_unicode_ci NULL after `grievanceId` , 
	CHANGE `meetingId` `meetingId` int(11)   NULL after `grievance_type` ;

/* Alter table in target */
ALTER TABLE `grievance_public` 
	CHANGE `contactNo` `contactNo` bigint(12)   NOT NULL after `name` , 
	CHANGE `aadhar` `aadhar` bigint(14)   NULL after `college` , 
	CHANGE `ip` `ip` int(32)   NULL after `updated` ;

/* Alter table in target */
ALTER TABLE `groups` 
	CHANGE `created_by` `created_by` int(30)   NULL after `description` ;

/* Alter table in target */
ALTER TABLE `health_doctor_details` 
	CHANGE `contact_details` `contact_details` bigint(11)   NULL after `name` ;

/* Alter table in target */
ALTER TABLE `health_facility` 
	CHANGE `ou_id` `ou_id` int(11) unsigned   NOT NULL after `id` ;

/* Alter table in target */
ALTER TABLE `health_membership` 
	ADD COLUMN `validity_type` varchar(50)  COLLATE utf8mb4_general_ci NULL after `membership_date` , 
	CHANGE `valid_from` `valid_from` date   NULL after `validity_type` ;

/* Alter table in target */
ALTER TABLE `hostel_allocation` 
	CHANGE `hostel_id` `hostel_id` int(11) unsigned   NOT NULL after `building_id` ;

/* Alter table in target */
ALTER TABLE `hostel_facility` 
	CHANGE `hostel_id` `hostel_id` int(11) unsigned   NOT NULL after `id` ;

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

/* Alter table in target */
ALTER TABLE `ims_items_issued` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first , 
	CHANGE `mobile_of_the_other_person` `mobile_of_the_other_person` bigint(10)   NULL after `email_of_the_other_person` ;

/* Alter table in target */
ALTER TABLE `ims_items_stock_details` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first , 
	CHANGE `status` `status` tinyint(5)   NULL COMMENT '0=> NOT AVAILABLE,1=>AVAILABLE' after `updated_by` ;

/* Alter table in target */
ALTER TABLE `ims_logs` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first ;

/* Alter table in target */
ALTER TABLE `ims_tax_detail` 
	CHANGE `status` `status` tinyint(5)   NULL after `updated_by` ;

/* Alter table in target */
ALTER TABLE `ims_vendor_details` 
	CHANGE `mobile` `mobile` bigint(10)   NOT NULL after `email` ;

/* Alter table in target */
ALTER TABLE `ims_warehouse_detail` 
	CHANGE `status` `status` tinyint(5)   NULL after `updated_by` ;

/* Alter table in target */
ALTER TABLE `itsd_response_to_applicant` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first ;

/* Alter table in target */
ALTER TABLE `knowledge_book` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first , 
	CHANGE `year` `year` smallint(6) unsigned   NULL after `publisher` ;

/* Alter table in target */
ALTER TABLE `knowledge_paper` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first , 
	CHANGE `title` `title` text  COLLATE utf8_general_ci NULL after `pub_type` , 
	CHANGE `upload` `upload` varchar(1024)  COLLATE utf8_general_ci NULL after `year` ;

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
	CHANGE `department_id` `department_id` int(11) unsigned   NOT NULL after `department_code` , 
	CHANGE `update_at` `update_at` timestamp   NULL on update CURRENT_TIMESTAMP after `user_by` ;

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
	CHANGE `court` `court` int(11) unsigned   NOT NULL after `caseNo` ;

/* Alter table in target */
ALTER TABLE `lcms_tempSysNotification` 
	CHANGE `notificationId` `notificationId` int(11) unsigned   NULL after `id` ;

/* Alter table in target */
ALTER TABLE `leave_applications` 
	CHANGE `empOrganizationUnit` `empOrganizationUnit` int(10)   NOT NULL after `empCode` , 
	CHANGE `contactDetails` `contactDetails` bigint(10)   NULL after `stationLeave` , 
	CHANGE `leave_balance` `leave_balance` float   NULL after `location` , 
	CHANGE `rejoin_approval_status` `rejoin_approval_status` tinyint(4)   NULL after `leave_balance` , 
	ADD COLUMN `ltc_id` int(10)   NULL after `rejoin_approval_remarks` , 
	ADD COLUMN `leave_balance_before_sanction` float   NULL after `ltc_id` , 
	ADD COLUMN `sanction_letter` text  COLLATE utf8mb4_unicode_ci NULL after `leave_balance_before_sanction` , 
	ADD COLUMN `rejoin_letter` text  COLLATE utf8mb4_unicode_ci NULL after `sanction_letter` , 
	ADD COLUMN `half_pay_leave_balance` tinyint(4)   NULL after `rejoin_letter` ;

/* Alter table in target */
ALTER TABLE `leave_approval_designation` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first ;

/* Alter table in target */
ALTER TABLE `leave_approval_workflow` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first ;

/* Alter table in target */
ALTER TABLE `leave_authority_map` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first ;

/* Create table in target */
CREATE TABLE `leave_el_encashment`(
	`id` int(11) NOT NULL  auto_increment , 
	`ltc_id` int(11) NULL  , 
	`emp_id` int(11) NULL  , 
	`from_date` varchar(100) COLLATE latin1_swedish_ci NULL  , 
	`to_date` varchar(100) COLLATE latin1_swedish_ci NULL  , 
	`current_el_balance` varchar(100) COLLATE latin1_swedish_ci NULL  , 
	`status` int(11) NULL  , 
	`created_at` int(10) NULL  , 
	`created_by` int(10) NULL  , 
	`updated_at` int(10) NULL  , 
	`updated_by` int(10) NULL  , 
	`updated` timestamp NULL  , 
	PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Alter table in target */
ALTER TABLE `leave_emp_weekoff` 
	CHANGE `weekoff_days` `weekoff_days` varchar(128)  COLLATE utf8mb4_unicode_ci NOT NULL after `id` , 
	CHANGE `status` `status` varchar(45)  COLLATE utf8mb4_unicode_ci NOT NULL after `emp_id` , COLLATE ='utf8mb4_unicode_ci' ;

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

/* Alter table in target */
ALTER TABLE `leave_ltc` 
	CHANGE `created_at` `created_at` int(11)   NULL after `remarks` , 
	CHANGE `description` `description` text  COLLATE utf8mb4_unicode_ci NULL after `created_at` , 
	CHANGE `from_date` `from_date` varchar(100)  COLLATE utf8mb4_unicode_ci NULL after `description` , 
	CHANGE `advance_amount` `advance_amount` decimal(10,2)   NULL after `to_date` , 
	ADD COLUMN `advance_amount_approved_date` varchar(100)  COLLATE utf8mb4_unicode_ci NULL after `advance_amount` , 
	ADD COLUMN `advance_amount_approved_by` int(11)   NULL after `advance_amount_approved_date` , 
	CHANGE `family_members` `family_members` varchar(255)  COLLATE utf8mb4_unicode_ci NULL after `advance_amount_approved_by` , 
	ADD COLUMN `applying_for` varchar(190)  COLLATE utf8mb4_unicode_ci NULL after `reporting_designation` , 
	ADD COLUMN `balance_amount` decimal(10,2)   NULL after `applying_for` , 
	ADD COLUMN `block_period` int(10)   NULL after `balance_amount` , 
	ADD COLUMN `expense_amount` decimal(10,2)   NULL after `block_period` , 
	ADD COLUMN `advance_amount_sanction` decimal(10,2)   NULL after `expense_amount` , 
	ADD COLUMN `balance_amount_sanction` decimal(10,2)   NULL after `advance_amount_sanction` , 
	ADD COLUMN `submitted_on` tinyint(4)   NULL after `balance_amount_sanction` , 
	ADD COLUMN `submitted_date` varchar(100)  COLLATE utf8mb4_unicode_ci NULL after `submitted_on` , 
	ADD COLUMN `final_submit` tinyint(4)   NULL after `submitted_date` , 
	ADD COLUMN `advance_amount_required` tinyint(4)   NULL after `final_submit` , 
	ADD COLUMN `bank_name` varchar(100)  COLLATE utf8mb4_unicode_ci NULL after `advance_amount_required` , 
	ADD COLUMN `banck_account_number` varchar(100)  COLLATE utf8mb4_unicode_ci NULL after `bank_name` , 
	ADD COLUMN `bank_ifsc_code` varchar(100)  COLLATE utf8mb4_unicode_ci NULL after `banck_account_number` , 
	ADD COLUMN `bank_branch` varchar(100)  COLLATE utf8mb4_unicode_ci NULL after `bank_ifsc_code` , 
	ADD COLUMN `cheque_number` varchar(100)  COLLATE utf8mb4_unicode_ci NULL after `bank_branch` , 
	ADD COLUMN `country` varchar(100)  COLLATE utf8mb4_unicode_ci NULL after `cheque_number` , 
	ADD COLUMN `state` varchar(100)  COLLATE utf8mb4_unicode_ci NULL after `country` , 
	ADD COLUMN `city` varchar(100)  COLLATE utf8mb4_unicode_ci NULL after `state` , 
	ADD COLUMN `el_encashment` tinyint(4)   NULL DEFAULT 0 after `city` , 
	ADD COLUMN `leave_id` int(11)   NULL after `el_encashment` , 
	ADD COLUMN `balance_amount_approved_date` varchar(100)  COLLATE utf8mb4_unicode_ci NULL after `leave_id` , 
	ADD COLUMN `balance_amount_approved_by` int(11)   NULL after `balance_amount_approved_date` , 
	ADD COLUMN `reviewerStatus` tinyint(4)   NULL after `balance_amount_approved_by` , 
	ADD COLUMN `reviewedBy` int(11)   NULL after `reviewerStatus` , 
	ADD COLUMN `reviewedOn` datetime   NULL after `reviewedBy` , 
	ADD COLUMN `review_remarks` varchar(255)  COLLATE utf8mb4_unicode_ci NULL after `reviewedOn` , 
	ADD COLUMN `sanctionStatus` tinyint(4)   NULL after `review_remarks` , 
	ADD COLUMN `sanction_remarks` varchar(200)  COLLATE utf8mb4_unicode_ci NULL after `sanctionStatus` , 
	ADD COLUMN `send_to` varchar(255)  COLLATE utf8mb4_unicode_ci NULL after `sanction_remarks` , 
	ADD COLUMN `sanction_id` int(11)   NULL after `send_to` , 
	ADD COLUMN `advance_amount_payment_mode` varchar(100)  COLLATE utf8mb4_unicode_ci NULL after `sanction_id` , 
	ADD COLUMN `transaction_id` varchar(100)  COLLATE utf8mb4_unicode_ci NULL after `advance_amount_payment_mode` , 
	ADD COLUMN `balance_reviewerStatus` tinyint(4)   NULL after `transaction_id` , 
	ADD COLUMN `balance_reviewedBy` int(11)   NULL after `balance_reviewerStatus` , 
	ADD COLUMN `balance_reviewedOn` datetime   NULL after `balance_reviewedBy` , 
	ADD COLUMN `balance_review_remarks` varchar(255)  COLLATE utf8mb4_unicode_ci NULL after `balance_reviewedOn` , 
	ADD COLUMN `rejectedBy` int(11)   NULL after `balance_review_remarks` , 
	ADD COLUMN `rejectedOn` datetime   NULL after `rejectedBy` , 
	ADD COLUMN `balance_amount_sanctionStatus` tinyint(4)   NULL after `rejectedOn` , 
	ADD COLUMN `balance_amount_payment_mode` varchar(100)  COLLATE utf8mb4_unicode_ci NULL after `balance_amount_sanctionStatus` , 
	ADD COLUMN `balance_amount_transaction_id` varchar(100)  COLLATE utf8mb4_unicode_ci NULL after `balance_amount_payment_mode` , 
	ADD COLUMN `balance_amount_sanction_remarks` varchar(255)  COLLATE utf8mb4_unicode_ci NULL after `balance_amount_transaction_id` , 
	ADD COLUMN `balance_amount_cheque_number` varchar(50)  COLLATE utf8mb4_unicode_ci NULL after `balance_amount_sanction_remarks` , 
	ADD COLUMN `cancelledBy` int(11)   NULL after `balance_amount_cheque_number` , 
	ADD COLUMN `cancelledOn` datetime   NULL after `cancelledBy` , 
	ADD COLUMN `cancellation_authority` varchar(200)  COLLATE utf8mb4_unicode_ci NULL after `cancelledOn` , 
	ADD COLUMN `cancellationRequested` tinyint(4)   NULL after `cancellation_authority` , 
	ADD COLUMN `cancellationRequestedOn` datetime   NULL after `cancellationRequested` , 
	ADD COLUMN `cancel_remarks` varchar(250)  COLLATE utf8mb4_unicode_ci NULL after `cancellationRequestedOn` , 
	ADD COLUMN `cancellationStatus` tinyint(4)   NULL after `cancel_remarks` , 
	ADD COLUMN `return_amount` decimal(10,2)   NULL after `cancellationStatus` , 
	ADD COLUMN `return_amount_remarks` varchar(255)  COLLATE utf8mb4_unicode_ci NULL after `return_amount` , 
	ADD COLUMN `return_amount_initiated_date` datetime   NULL after `return_amount_remarks` , 
	ADD COLUMN `return_amount_initiated_by` int(11)   NULL after `return_amount_initiated_date` , 
	ADD COLUMN `return_amount_approved_by` int(11)   NULL after `return_amount_initiated_by` , 
	ADD COLUMN `return_amount_approved_date` datetime   NULL after `return_amount_approved_by` , 
	ADD COLUMN `return_amount_approved_remarks` varchar(255)  COLLATE utf8mb4_unicode_ci NULL after `return_amount_approved_date` , 
	ADD COLUMN `return_amount_status` tinyint(4)   NULL after `return_amount_approved_remarks` , 
	ADD COLUMN `return_amount_payment_mode` varchar(100)  COLLATE utf8mb4_unicode_ci NULL after `return_amount_status` , 
	ADD COLUMN `return_amount_receipt_number` varchar(100)  COLLATE utf8mb4_unicode_ci NULL after `return_amount_payment_mode` , 
	CHANGE `updated_at` `updated_at` int(11)   NULL after `return_amount_receipt_number` , 
	CHANGE `created_by` `created_by` int(10)   NULL after `updated_at` , 
	CHANGE `updated_by` `updated_by` int(10)   NULL after `created_by` , 
	CHANGE `place` `place` varchar(100)  COLLATE utf8mb4_unicode_ci NULL after `updated` , 
	DROP COLUMN `from_country` , 
	DROP COLUMN `from_state` , 
	DROP COLUMN `from_city` , 
	DROP COLUMN `from_pincode` , 
	DROP COLUMN `to_country` , 
	DROP COLUMN `to_city` , 
	DROP COLUMN `to_pincode` , 
	DROP COLUMN `approved_date` , 
	DROP COLUMN `approved_by` , 
	DROP COLUMN `to_state` ;

/* Create table in target */
CREATE TABLE `leave_ltc_amount_approval`(
	`id` int(11) NOT NULL  auto_increment , 
	`emp_id` int(10) NULL  , 
	`ltc_id` int(10) NULL  , 
	`send_to` varchar(200) COLLATE latin1_swedish_ci NULL  , 
	`current_status` tinyint(4) NULL  , 
	`send_date` varchar(100) COLLATE latin1_swedish_ci NULL  , 
	`amount_type` varchar(100) COLLATE latin1_swedish_ci NULL  , 
	`approved_by` int(10) NULL  , 
	`approved_date` varchar(100) COLLATE latin1_swedish_ci NULL  , 
	`approved_remarks` varchar(255) COLLATE latin1_swedish_ci NULL  , 
	`amount` decimal(10,2) NULL  , 
	`approved_amount` decimal(10,2) NULL  , 
	`created_at` int(10) NULL  , 
	`created_by` int(10) NULL  , 
	`updated_by` int(10) NULL  , 
	`updated_at` int(10) NULL  , 
	`updated` timestamp NULL  , 
	`transaction_id` varchar(100) COLLATE latin1_swedish_ci NULL  , 
	`status` tinyint(4) NULL  , 
	`cheque_number` int(11) NULL  , 
	`payment_mode` varchar(50) COLLATE latin1_swedish_ci NULL  , 
	PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET='latin1' COLLATE='latin1_swedish_ci';


/* Create table in target */
CREATE TABLE `leave_ltc_applicationlogs`(
	`id` int(11) NOT NULL  auto_increment , 
	`ltc_id` int(11) NOT NULL  , 
	`status` varchar(200) COLLATE utf8mb4_unicode_ci NULL  , 
	`comment` varchar(190) COLLATE utf8mb4_unicode_ci NULL  , 
	`created_at` datetime NULL  , 
	`created_by` int(11) NULL  , 
	`employee_id` int(11) NULL  , 
	`ip` varchar(20) COLLATE utf8mb4_unicode_ci NULL  , 
	PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Create table in target */
CREATE TABLE `leave_ltc_approval_settings`(
	`id` int(10) NOT NULL  auto_increment , 
	`designations` text COLLATE latin1_swedish_ci NULL  , 
	`reviewer` text COLLATE latin1_swedish_ci NULL  , 
	`notification_on_submit` varchar(255) COLLATE latin1_swedish_ci NULL  , 
	`created_at` int(10) NULL  , 
	`created_by` int(10) NULL  , 
	`updated_at` int(10) NULL  , 
	`updated_by` int(10) NULL  , 
	`updated` timestamp NULL  , 
	`_hierarchy` text COLLATE latin1_swedish_ci NULL  , 
	`sanctioning_authority` int(11) NULL  , 
	`notification_on_review` varchar(255) COLLATE latin1_swedish_ci NULL  , 
	`notification_on_sanctioned` varchar(255) COLLATE latin1_swedish_ci NULL  , 
	PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET='latin1' COLLATE='latin1_swedish_ci';


/* Create table in target */
CREATE TABLE `leave_ltc_block_period_settings`(
	`id` int(10) NOT NULL  auto_increment , 
	`designation` text COLLATE latin1_swedish_ci NULL  , 
	`block_period_for` varchar(100) COLLATE latin1_swedish_ci NULL  , 
	`status` tinyint(4) NULL  , 
	`created_at` int(10) NULL  , 
	`created_by` int(10) NULL  , 
	`updated_at` int(10) NULL  , 
	`updated_by` int(10) NULL  , 
	`updated` timestamp NULL  , 
	`start_date` varchar(100) COLLATE latin1_swedish_ci NULL  , 
	`end_date` varchar(100) COLLATE latin1_swedish_ci NULL  , 
	PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET='latin1' COLLATE='latin1_swedish_ci';


/* Alter table in target */
ALTER TABLE `leave_ltc_requests` 
	ADD COLUMN `place` varchar(100)  COLLATE utf8mb4_unicode_ci NULL after `updated` , 
	ADD COLUMN `description` text  COLLATE utf8mb4_unicode_ci NULL after `place` , 
	ADD COLUMN `from_country` varchar(190)  COLLATE utf8mb4_unicode_ci NULL after `description` , 
	ADD COLUMN `from_state` varchar(190)  COLLATE utf8mb4_unicode_ci NULL after `from_country` , 
	ADD COLUMN `from_city` varchar(190)  COLLATE utf8mb4_unicode_ci NULL after `from_state` , 
	ADD COLUMN `from_pincode` int(10)   NULL after `from_city` , 
	ADD COLUMN `to_country` varchar(190)  COLLATE utf8mb4_unicode_ci NULL after `from_pincode` , 
	ADD COLUMN `to_state` varchar(190)  COLLATE utf8mb4_unicode_ci NULL after `to_country` , 
	ADD COLUMN `to_city` varchar(190)  COLLATE utf8mb4_unicode_ci NULL after `to_state` , 
	ADD COLUMN `to_pincode` int(10)   NULL after `to_city` , 
	ADD COLUMN `from_date` varchar(100)  COLLATE utf8mb4_unicode_ci NULL after `to_pincode` , 
	ADD COLUMN `to_date` varchar(100)  COLLATE utf8mb4_unicode_ci NULL after `from_date` , 
	ADD COLUMN `advance_amount` int(11)   NULL after `to_date` , 
	ADD COLUMN `approved_date` varchar(100)  COLLATE utf8mb4_unicode_ci NULL after `advance_amount` , 
	ADD COLUMN `approved_by` int(11)   NULL after `approved_date` , 
	ADD COLUMN `family_members` varchar(255)  COLLATE utf8mb4_unicode_ci NULL after `approved_by` ;

/* Alter table in target */
ALTER TABLE `leave_ltc_travel_detail` 
	CHANGE `created_at` `created_at` int(11)   NULL after `amount` , 
	CHANGE `created_by` `created_by` int(10)   NULL after `updated_at` , 
	CHANGE `updated_by` `updated_by` int(10)   NULL after `created_by` , 
	CHANGE `upload` `upload` varchar(255)  COLLATE latin1_swedish_ci NULL after `updated` , 
	ADD COLUMN `from_place` varchar(190)  COLLATE latin1_swedish_ci NULL after `upload` , 
	ADD COLUMN `to_place` varchar(190)  COLLATE latin1_swedish_ci NULL after `from_place` , 
	ADD COLUMN `family_members` varchar(255)  COLLATE latin1_swedish_ci NULL after `to_place` , 
	ADD COLUMN `from_date` varchar(100)  COLLATE latin1_swedish_ci NULL after `family_members` , 
	ADD COLUMN `to_date` varchar(100)  COLLATE latin1_swedish_ci NULL after `from_date` , 
	ADD COLUMN `distance_in_km` int(10)   NULL after `to_date` , 
	ADD COLUMN `travel_mode` varchar(190)  COLLATE latin1_swedish_ci NULL after `distance_in_km` , 
	ADD COLUMN `emp_id` int(10)   NULL after `travel_mode` , 
	ADD COLUMN `class_of_accommodation` tinyint(4)   NULL after `emp_id` , 
	ADD COLUMN `family_member_count` int(5)   NULL after `class_of_accommodation` ;

/* Create table in target */
CREATE TABLE `leave_ltc_travel_documents`(
	`id` int(11) NOT NULL  auto_increment , 
	`title` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`image_name` varchar(100) COLLATE utf8mb4_unicode_ci NULL  , 
	`image_path` varchar(255) COLLATE utf8mb4_unicode_ci NULL  , 
	`created_at` int(10) NULL  , 
	`created_by` int(10) NULL  , 
	`updated_at` int(10) NULL  , 
	`updated_by` int(10) NULL  , 
	`file_name` varchar(100) COLLATE utf8mb4_unicode_ci NULL  , 
	`file_path` text COLLATE utf8mb4_unicode_ci NULL  , 
	`doc_type` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`user_id` int(10) NULL  , 
	`document_id` int(10) NULL  , 
	`ltc_travel_id` int(11) NULL  , 
	`UPLOADID` tinyint(4) NULL  , 
	PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Create table in target */
CREATE TABLE `leave_ltc_travel_mode`(
	`id` int(10) NOT NULL  auto_increment , 
	`name` varchar(190) COLLATE latin1_swedish_ci NULL  , 
	`created_at` int(10) NULL  , 
	`created_by` int(10) NULL  , 
	`updated_at` int(10) NULL  , 
	`updated_by` int(10) NULL  , 
	`updated` timestamp NULL  , 
	`status` tinyint(4) NULL  , 
	PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET='latin1' COLLATE='latin1_swedish_ci';


/* Create table in target */
CREATE TABLE `leave_pdf_template`(
	`id` int(11) NOT NULL  auto_increment , 
	`type` varchar(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`template_body` text COLLATE utf8mb4_unicode_ci NULL  , 
	`status` tinyint(4) NULL  , 
	`created_at` int(11) NULL  , 
	`updated_at` int(11) NULL  , 
	`created_by` varchar(32) COLLATE utf8mb4_unicode_ci NULL  , 
	`updated_by` varchar(32) COLLATE utf8mb4_unicode_ci NULL  , 
	`updated` timestamp NULL  , 
	`ip` varchar(32) COLLATE utf8mb4_unicode_ci NULL  , 
	PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Create table in target */
CREATE TABLE `leave_send_reminder_email`(
	`id` int(11) NOT NULL  auto_increment , 
	`lead_id` int(11) NULL  , 
	`status` tinyint(4) NULL  , 
	`send_date` datetime NULL  , 
	`send_by` int(11) NULL  , 
	PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET='latin1' COLLATE='latin1_swedish_ci';


/* Alter table in target */
ALTER TABLE `leave_stationleave` 
	CHANGE `place` `place` varchar(128)  COLLATE utf8mb4_unicode_ci NOT NULL after `to_date` , 
	CHANGE `reason` `reason` text  COLLATE utf8mb4_unicode_ci NULL after `place` , 
	CHANGE `status` `status` varchar(45)  COLLATE utf8mb4_unicode_ci NULL after `reason` , 
	CHANGE `ip` `ip` varchar(45)  COLLATE utf8mb4_unicode_ci NULL after `updated_by` , 
	ADD COLUMN `is_submitted` tinyint(4)   NULL after `ip` , 
	ADD COLUMN `submitted_date` datetime   NULL after `is_submitted` , COLLATE ='utf8mb4_unicode_ci' ;

/* Alter table in target */
ALTER TABLE `leave_type` 
	CHANGE `annual_debit` `annual_debit` tinyint(11)   NULL after `days_to_earn` , 
	CHANGE `document_req_on_rejoin` `document_req_on_rejoin` tinyint(4)   NULL after `notification_on_cancel` , 
	CHANGE `rejoin_required` `rejoin_required` tinyint(4)   NULL after `document_req_on_rejoin` , 
	ADD COLUMN `notification_on_rejoin` varchar(255)  COLLATE utf8mb4_unicode_ci NULL after `rejoin_required` ;

/* Alter table in target */
ALTER TABLE `leaves` 
	ADD COLUMN `ltc_applied` tinyint(4)   NULL DEFAULT 0 after `updated` , 
	ADD COLUMN `send_sanction_letter` tinyint(4)   NULL after `ltc_applied` ;

/* Alter table in target */
ALTER TABLE `menu` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first ;

/* Alter table in target */
ALTER TABLE `ocm_expenditure` 
	CHANGE `quantity` `quantity` int(5)   NULL after `price` ;

/* Alter table in target */
ALTER TABLE `options_country_states` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first ;

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
ALTER TABLE `payroll_bank_details` 
	CHANGE `status` `status` tinyint(4) unsigned   NULL DEFAULT 0 after `ip` ;

/* Alter table in target */
ALTER TABLE `payroll_employee_onetime_entries` 
	CHANGE `salary_head` `salary_head` int(10)   NOT NULL after `payroll_entry_type` , 
	CHANGE `year` `year` int(4)   NULL after `month` ;

/* Alter table in target */
ALTER TABLE `payroll_employee_salary_structure` 
	CHANGE `salary_head` `salary_head` int(10)   NOT NULL after `payroll_entry_type` , 
	CHANGE `year` `year` int(4)   NULL after `month` ;

/* Alter table in target */
ALTER TABLE `payroll_entry_group` 
	CHANGE `created_by` `created_by` int(1)   NULL after `update_disabled` ;

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
	CHANGE `update_disabled` `update_disabled` tinyint(2)   NULL after `updated_by` ;

/* Alter table in target */
ALTER TABLE `payroll_final_processed_salary_breakup` 
	CHANGE `month` `month` int(4)   NOT NULL after `employee_id` , 
	CHANGE `process_status` `process_status` int(4)   NOT NULL after `help` , 
	CHANGE `status` `status` int(10)   NULL after `hba_no` ;

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

/* Alter table in target */
ALTER TABLE `payroll_pf_contribution` 
	CHANGE `month` `month` int(2)   NULL after `year` ;

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
	CHANGE `dummy_value` `dummy_value` int(4)   NULL after `name` ;

/* Alter table in target */
ALTER TABLE `payroll_salary_rule_config` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first ;

/* Alter table in target */
ALTER TABLE `payroll_salary_rules` 
	CHANGE `salary_head` `salary_head` int(10)   NOT NULL after `payroll_entry_type` ;

/* Alter table in target */
ALTER TABLE `payroll_system_wide_changes` 
	CHANGE `id` `id` int(6)   NOT NULL auto_increment first , 
	CHANGE `payroll_entry_id` `payroll_entry_id` int(6)   NULL COMMENT 'References from Payroll Entries' after `id` , 
	CHANGE `actual_value` `actual_value` int(5)   NULL after `formula_bar` ;

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
	CHANGE `created_at` `created_at` bigint(11)   NULL after `status` , 
	CHANGE `updated_at` `updated_at` bigint(11)   NULL after `created_by` ;

/* Alter table in target */
ALTER TABLE `placement_info` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first , 
	CHANGE `experience` `experience` tinyint(5)   NOT NULL COMMENT 'Experience' after `showPost` , 
	CHANGE `type` `type` tinyint(5)   NOT NULL COMMENT 'Job type Full Time Part time' after `season_id` , 
	CHANGE `interview` `interview` int(5)   NULL after `closingDate` , 
	CHANGE `writtenTest` `writtenTest` int(5)   NULL after `interview` , 
	CHANGE `mode` `mode` int(5)   NULL after `writtenTest` , 
	CHANGE `gD` `gD` int(2)   NULL after `mode` , 
	CHANGE `vacancies` `vacancies` int(5)   NOT NULL COMMENT 'No of Vacancies' after `venue` , 
	CHANGE `submitStatus` `submitStatus` tinyint(5)   NOT NULL DEFAULT 0 COMMENT 'Published Not Published' after `remarks` , 
	CHANGE `status` `status` tinyint(5)   NOT NULL DEFAULT 0 COMMENT 'Active Inactive' after `submitStatus` ;

/* Alter table in target */
ALTER TABLE `placement_registration` 
	CHANGE `applicant_mobile` `applicant_mobile` bigint(10)   NOT NULL after `applicant_name` , 
	CHANGE `status` `status` tinyint(5)   NULL DEFAULT 1 after `aggregate_score` ;

/* Alter table in target */
ALTER TABLE `placement_season` 
	CHANGE `status` `status` int(2)   NOT NULL after `fee_for_student` ;

/* Alter table in target */
ALTER TABLE `portal_content` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first ;

/* Alter table in target */
ALTER TABLE `prg_academic_year_session_map` 
	ADD COLUMN `status` varchar(50)  COLLATE utf8mb4_unicode_ci NULL DEFAULT 'DRAFT' after `update` ;

/* Alter table in target */
ALTER TABLE `prg_admission_fee` 
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
	CHANGE `updated` `updated` timestamp   NULL on update CURRENT_TIMESTAMP after `updated_by` , 
	CHANGE `ip` `ip` varchar(32)  COLLATE utf8mb4_general_ci NULL after `updated` , COLLATE ='utf8mb4_general_ci' ;

/* Alter table in target */
ALTER TABLE `prg_batch_ou` 
	CHANGE `academic_ou` `academic_ou` int(11) unsigned   NOT NULL after `programme_id` , 
	CHANGE `updated` `updated` timestamp   NULL on update CURRENT_TIMESTAMP after `updated_by` ;

/* Alter table in target */
ALTER TABLE `prg_class` 
	CHANGE `academic_ou` `academic_ou` int(11) unsigned   NOT NULL after `class_id` ;

/* Alter table in target */
ALTER TABLE `prg_course_evaluation_component` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first , 
	CHANGE `programme_id` `programme_id` int(11) unsigned   NULL after `name` , 
	CHANGE `course_id` `course_id` int(11) unsigned   NOT NULL after `programme_id` , 
	ADD COLUMN `display_mark_in_result` varchar(5)  COLLATE utf8mb4_unicode_ci NULL DEFAULT 'YES' after `grade_letter_group` , 
	CHANGE `credit_weightage` `credit_weightage` decimal(10,2)   NOT NULL DEFAULT 0.00 after `display_mark_in_result` , 
	CHANGE `is_parent` `is_parent` tinyint(4)   NOT NULL DEFAULT 1 after `credit_weightage` , 
	CHANGE `aggregate_formula` `aggregate_formula` varchar(1000)  COLLATE utf8mb4_unicode_ci NULL after `aggregate` , 
	CHANGE `required_to_pass` `required_to_pass` varchar(3)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'YES' COMMENT 'YES/NO' after `aggregate_formula` , 
	CHANGE `minimum_passing_marks` `minimum_passing_marks` decimal(10,2)   NULL DEFAULT 0.00 after `required_to_pass` , 
	CHANGE `applicable_from_year` `applicable_from_year` int(11)   NULL after `minimum_passing_marks` ;

/* Alter table in target */
ALTER TABLE `prg_course_group` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first ;

/* Alter table in target */
ALTER TABLE `prg_course_relation` 
	ADD COLUMN `id` int(10) unsigned   NOT NULL auto_increment first , 
	CHANGE `course_id` `course_id` int(11)   NULL after `id` , 
	DROP COLUMN `int` , 
	DROP KEY `PRIMARY`, ADD PRIMARY KEY(`id`) ;

/* Alter table in target */
ALTER TABLE `prg_fee_rules_list` 
	CHANGE `fee_list_id` `fee_list_id` int(11) unsigned   NOT NULL after `id` ;

/* Alter table in target */
ALTER TABLE `prg_hostel_option` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first ;

/* Alter table in target */
ALTER TABLE `prg_student` 
	CHANGE `year_of_enrollment` `year_of_enrollment` int(198)   NULL after `programme_level` , 
	CHANGE `current_year_sem` `current_year_sem` int(198)   NULL after `year_of_enrollment` ;

/* Alter table in target */
ALTER TABLE `prg_time_table_versions` 
	CHANGE `ou_id` `ou_id` int(11) unsigned   NULL after `programme_id` ;

/* Alter table in target */
ALTER TABLE `prg_ugc_specified_degree` 
	CHANGE `status` `status` tinyint(11)   NULL after `gazette` ;

/* Alter table in target */
ALTER TABLE `queue` 
	CHANGE `priority` `priority` int(11) unsigned   NOT NULL DEFAULT 1024 after `delay` ;

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
	ADD COLUMN `update_disabled` tinyint(5)   NULL DEFAULT 0 after `type` , 
	CHANGE `created_by` `created_by` int(11) unsigned   NULL after `update_disabled` , 
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

/* Alter table in target */
ALTER TABLE `rpms_project_fund` 
	CHANGE `status` `status` tinyint(5)   NOT NULL after `sanctionAmount` ;

/* Alter table in target */
ALTER TABLE `rpms_project_information` 
	CHANGE `coInvestigatorMobile` `coInvestigatorMobile` bigint(10)   NULL after `coInvestigatorEmail` , 
	CHANGE `projectType` `projectType` tinyint(5)   NOT NULL after `projectTitle` , 
	CHANGE `status` `status` tinyint(5)   NOT NULL after `remark` ;

/* Alter table in target */
ALTER TABLE `rpms_project_meeting` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first , 
	CHANGE `status` `status` tinyint(5)   NULL DEFAULT 1 after `attendees` ;

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

/* Alter table in target */
ALTER TABLE `sports_ou_subscriptions` 
	CHANGE `updated` `updated` timestamp   NULL on update CURRENT_TIMESTAMP after `updated_at` ;

/* Alter table in target */
ALTER TABLE `student_import` 
	ADD COLUMN `admission_type` varchar(50)  COLLATE utf8mb4_unicode_ci NULL after `id` , 
	CHANGE `enrolment_number` `enrolment_number` varchar(50)  COLLATE utf8mb4_unicode_ci NULL after `admission_type` , 
	CHANGE `aadhar_number` `aadhar_number` bigint(15)   NULL after `is_bpl` , 
	CHANGE `admission_valid_upto_year` `admission_valid_upto_year` int(6)   NULL after `permanent_city` , 
	ADD COLUMN `import_status` varchar(50)  COLLATE utf8mb4_unicode_ci NULL after `employment_status` ;

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

/* Alter table in target */
ALTER TABLE `student_readmission_fee_control` 
	DROP COLUMN `programme_term_ayid` , 
	ADD COLUMN `programme_term_ayid` varchar(30)   AS  (concat(`programme_id`,'_',`term`,'_',`academic_session_id`))  STORED after `late_fee_date_str` ;

/* Alter table in target */
ALTER TABLE `student_record` 
	CHANGE `current_term` `current_term` mediumint(50)   NULL after `level_of_programme` , 
	CHANGE `next_term` `next_term` mediumint(50)   NULL after `current_term` , 
	CHANGE `previous_term` `previous_term` mediumint(50)   NULL after `next_term` , 
	CHANGE `fee_term` `fee_term` mediumint(50)   NULL after `result_record` , 
	ADD COLUMN `admission_date` date   NULL after `admission_fee` , 
	ADD COLUMN `admission_type` varchar(50)  COLLATE utf8mb4_unicode_ci NULL DEFAULT 'REGULAR' COMMENT 'REGULAR/LATERAL-ENTRY/RE-ADMISSION/EXTENSION' after `admission_date` , 
	CHANGE `sub_classification` `sub_classification` varchar(50)  COLLATE utf8mb4_unicode_ci NULL COMMENT 'FSRI INDIAN' after `admission_type` , 
	ADD COLUMN `state_of_domicile` varchar(128)  COLLATE utf8mb4_unicode_ci NULL after `employment_status` , 
	ADD COLUMN `fee_category` varchar(50)  COLLATE utf8mb4_unicode_ci NULL after `state_of_domicile` ;

/* Alter table in target */
ALTER TABLE `student_record_reregistration` 
	CHANGE `current_term` `current_term` mediumint(50)   NULL after `level_of_programme` , 
	CHANGE `next_term` `next_term` mediumint(50)   NULL after `current_term` , 
	CHANGE `previous_term` `previous_term` mediumint(50)   NULL after `next_term` , 
	CHANGE `fee_term` `fee_term` mediumint(50)   NULL after `result_record` ;

/* Alter table in target */
ALTER TABLE `student_registration` 
	CHANGE `applicant_mobile` `applicant_mobile` bigint(10)   NOT NULL after `applicant_name` , 
	CHANGE `status` `status` tinyint(5)   NULL DEFAULT 1 after `aggregate_score` ;

/* Alter table in target */
ALTER TABLE `student_section` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first , 
	CHANGE `academic_calendar` `academic_calendar` int(11) unsigned   NOT NULL after `academic_year` , 
	DROP COLUMN `programme_term_ayid` , 
	ADD COLUMN `programme_term_ayid` varchar(30)   AS  (concat(`programme_id`,'_',`term`,'_',`academic_calendar`))  STORED after `supplementary_enrolment_number` ;

/* Alter table in target */
ALTER TABLE `student_service_menu` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first ;

/* Alter table in target */
ALTER TABLE `tot_company_profile` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first , 
	CHANGE `companyHrContact` `companyHrContact` bigint(10)   NOT NULL after `companyHrName` ;

/* Alter table in target */
ALTER TABLE `training_company_season` 
	CHANGE `created_at` `created_at` bigint(11)   NULL after `status` , 
	CHANGE `updated_at` `updated_at` bigint(11)   NULL after `created_by` ;

/* Alter table in target */
ALTER TABLE `training_placement_apply` 
	CHANGE `applicant_mobile` `applicant_mobile` bigint(10)   NOT NULL after `ou_id` , 
	CHANGE `application_status` `application_status` tinyint(5)   NOT NULL DEFAULT 1 after `hireMarkedBy` ;

/* Alter table in target */
ALTER TABLE `training_placement_info` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first , 
	CHANGE `experience` `experience` tinyint(5)   NOT NULL COMMENT 'Experience' after `showPost` , 
	CHANGE `type` `type` tinyint(5)   NOT NULL COMMENT 'Job type Full Time Part time' after `season_id` , 
	CHANGE `interview` `interview` int(5)   NULL after `closingDate` , 
	CHANGE `writtenTest` `writtenTest` int(5)   NULL after `interview` , 
	CHANGE `mode` `mode` int(5)   NULL after `writtenTest` , 
	CHANGE `gD` `gD` int(2)   NULL after `mode` , 
	CHANGE `vacancies` `vacancies` int(5)   NOT NULL COMMENT 'No of Vacancies' after `venue` , 
	CHANGE `submitStatus` `submitStatus` tinyint(5)   NOT NULL DEFAULT 0 COMMENT 'Published Not Published' after `remarks` , 
	CHANGE `status` `status` tinyint(5)   NOT NULL DEFAULT 0 COMMENT 'Active Inactive' after `submitStatus` ;

/* Alter table in target */
ALTER TABLE `training_season` 
	CHANGE `status` `status` int(2)   NOT NULL after `fee_for_student` ;

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

ALTER TABLE `rti_Response_From_Department` 
	ADD CONSTRAINT `rti_Response_From_Department_ibfk_1` 
	FOREIGN KEY (`rtiNumber`) REFERENCES `rti_detail` (`rtiNumber`) ON UPDATE CASCADE ;

ALTER TABLE `vendor_detail` 
	ADD CONSTRAINT `vendor_detail_ibfk_1` 
	FOREIGN KEY (`purchase_id`) REFERENCES `vendor_purchase_order` (`id`) ON UPDATE CASCADE ;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
