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
	CHANGE `id` `id` INT(11) UNSIGNED   NOT NULL AUTO_INCREMENT FIRST ;

/* Alter table in target */
ALTER TABLE `academic_calendar_entries` 
	CHANGE `id` `id` INT(11) UNSIGNED   NOT NULL AUTO_INCREMENT FIRST ;

/* Alter table in target */
ALTER TABLE `academic_section` 
	CHANGE `id` `id` INT(11) UNSIGNED   NOT NULL AUTO_INCREMENT FIRST ;

/* Alter table in target */
ALTER TABLE `academic_session` 
	CHANGE `id` `id` INT(11) UNSIGNED   NOT NULL AUTO_INCREMENT FIRST ;

/* Alter table in target */
ALTER TABLE `academic_year` 
	CHANGE `year` `year` INT(4)   NOT NULL AFTER `title` , 
	CHANGE `status` `status` TINYINT(5)   NOT NULL DEFAULT 0 AFTER `cycle` , 
	CHANGE `start_date` `start_date` BIGINT(15)   NULL COMMENT 'time in unix time stamp' AFTER `start_date_time` , 
	CHANGE `end_date` `end_date` BIGINT(15)   NULL COMMENT 'time in unix time stamp' AFTER `start_date` , 
	CHANGE `verify` `verify` TINYINT(3)   NULL DEFAULT 0 AFTER `prefix` , 
	CHANGE `created_at` `created_at` INT(15)   NULL AFTER `remarks` , 
	CHANGE `updated_at` `updated_at` INT(15)   NOT NULL AFTER `created_at` ;

/* Alter table in target */
ALTER TABLE `academic_year_display_format` 
	CHANGE `id` `id` INT(10)   NOT NULL FIRST ;

/* Alter table in target */
ALTER TABLE `adm_cycle` 
	CHANGE `updated` `updated` TIMESTAMP   NULL ON UPDATE CURRENT_TIMESTAMP AFTER `updated_by` ;

/* Alter table in target */
ALTER TABLE `adm_programme_docs_map` 
	CHANGE `status` `status` TINYINT(3)   NULL DEFAULT 1 AFTER `document_id` ;

/* Alter table in target */
ALTER TABLE `adm_programme_qualification_map` 
	CHANGE `status` `status` TINYINT(3)   NULL AFTER `adm_type` ;

/* Alter table in target */
ALTER TABLE `adm_session` 
	CHANGE `year` `year` INT(4)   NOT NULL AFTER `title` , 
	CHANGE `status` `status` TINYINT(5)   NOT NULL DEFAULT 0 AFTER `cycle` , 
	CHANGE `start_date` `start_date` BIGINT(15)   NULL COMMENT 'time in unix time stamp' AFTER `start_date_time` , 
	CHANGE `end_date` `end_date` BIGINT(15)   NULL COMMENT 'time in unix time stamp' AFTER `start_date` , 
	CHANGE `verify` `verify` TINYINT(3)   NULL DEFAULT 0 AFTER `prefix` , 
	CHANGE `created_at` `created_at` INT(15)   NULL AFTER `verify` , 
	CHANGE `updated_at` `updated_at` INT(15)   NOT NULL AFTER `created_at` ;

/* Alter table in target */
ALTER TABLE `adm_state_district` 
	CHANGE `status` `status` TINYINT(3)   NULL DEFAULT 0 AFTER `state_id` ;

/* Alter table in target */
ALTER TABLE `admin_login` 
	CHANGE `id` `id` INT(11) UNSIGNED   NOT NULL AUTO_INCREMENT FIRST , 
	CHANGE `collegeId` `collegeId` INT(11) UNSIGNED   NULL AFTER `mobile` , 
	CHANGE `depId` `depId` INT(11) UNSIGNED   NULL AFTER `collegeId` ;

/* Alter table in target */
ALTER TABLE `affiliation_student_course_category` 
	CHANGE `students_male_st` `students_male_st` INT(11) UNSIGNED   NULL AFTER `students_male_sc` , 
	CHANGE `students_male_obc` `students_male_obc` INT(11) UNSIGNED   NULL AFTER `students_male_st` , 
	CHANGE `students_male_gen` `students_male_gen` INT(11) UNSIGNED   NULL AFTER `students_male_obc` , 
	CHANGE `students_female_gen` `students_female_gen` INT(11) UNSIGNED   NULL AFTER `students_male_gen` , 
	CHANGE `students_female_obc` `students_female_obc` INT(11) UNSIGNED   NULL AFTER `students_female_gen` , 
	CHANGE `students_female_sc` `students_female_sc` INT(11) UNSIGNED   NULL AFTER `students_female_obc` , 
	CHANGE `students_female_st` `students_female_st` INT(11) UNSIGNED   NULL AFTER `students_female_sc` ;

/* Alter table in target */
ALTER TABLE `alumni_communication_log` 
	CHANGE `to_email` `to_email` TEXT  COLLATE latin1_swedish_ci NOT NULL AFTER `send_choice` , 
	CHANGE `to_mobile` `to_mobile` TEXT  COLLATE latin1_swedish_ci NULL AFTER `to_email` , 
	CHANGE `subject` `subject` TEXT  COLLATE latin1_swedish_ci NOT NULL AFTER `to_mobile` , 
	CHANGE `message` `message` TEXT  COLLATE latin1_swedish_ci NOT NULL AFTER `subject` , 
	CHANGE `sms` `sms` TEXT  COLLATE latin1_swedish_ci NULL AFTER `message` , 
	CHANGE `ip` `ip` VARCHAR(25)  COLLATE latin1_swedish_ci NULL AFTER `date` , 
	CHANGE `formno` `formno` TEXT  COLLATE latin1_swedish_ci NULL AFTER `user_id` , DEFAULT CHARSET='latin1', COLLATE ='latin1_swedish_ci' ;

/* Alter table in target */
ALTER TABLE `alumni_logs_mail` 
	CHANGE `from` `from` VARCHAR(512)  COLLATE latin1_swedish_ci NULL AFTER `id` , 
	CHANGE `to` `to` TEXT  COLLATE latin1_swedish_ci NULL AFTER `from` , 
	CHANGE `subject` `subject` TEXT  COLLATE latin1_swedish_ci NULL AFTER `to` , 
	CHANGE `content` `content` TEXT  COLLATE latin1_swedish_ci NULL AFTER `subject` , 
	CHANGE `ip` `ip` VARCHAR(50)  COLLATE latin1_swedish_ci NULL AFTER `created_by` , DEFAULT CHARSET='latin1', COLLATE ='latin1_swedish_ci' ;

/* Alter table in target */
ALTER TABLE `alumni_mail_template` 
	DROP KEY `mail_UNIQUE`, ADD UNIQUE KEY `mail_UNIQUE`(`mail`) ;

/* Alter table in target */
ALTER TABLE `alumni_mail_template_master` 
	DROP KEY `mail_UNIQUE`, ADD UNIQUE KEY `mail_UNIQUE`(`mail`) ;

/* Alter table in target */
ALTER TABLE `alumni_otp_message` 
	CHANGE `id` `id` INT(11) UNSIGNED   NOT NULL AUTO_INCREMENT FIRST , 
	CHANGE `user` `user` VARCHAR(255)  COLLATE latin1_swedish_ci NOT NULL AFTER `id` , 
	CHANGE `otp` `otp` INT(11) UNSIGNED   NOT NULL AFTER `user` , 
	CHANGE `service` `service` TINYINT(4) UNSIGNED   NOT NULL AFTER `expiry_time` , 
	CHANGE `mode` `mode` TINYINT(4) UNSIGNED   NOT NULL COMMENT '1 = MAIL, 2 => SMS' AFTER `service` , 
	CHANGE `used` `used` TINYINT(4) UNSIGNED   NULL DEFAULT 0 AFTER `mode` , 
	CHANGE `request_ip` `request_ip` VARCHAR(40)  COLLATE latin1_swedish_ci NULL AFTER `used` , 
	CHANGE `response_ip` `response_ip` VARCHAR(40)  COLLATE latin1_swedish_ci NULL AFTER `request_ip` , DEFAULT CHARSET='latin1', COLLATE ='latin1_swedish_ci' ;

/* Alter table in target */
ALTER TABLE `alumni_ou_admin_mapping` 
	CHANGE `user_id` `user_id` VARCHAR(255)  COLLATE latin1_swedish_ci NOT NULL AFTER `ou_id` , 
	CHANGE `ip` `ip` VARCHAR(255)  COLLATE latin1_swedish_ci NULL AFTER `updated_by` , DEFAULT CHARSET='latin1', COLLATE ='latin1_swedish_ci' ;

/* Alter table in target */
ALTER TABLE `alumni_ou_mapping` 
	CHANGE `alumni_id` `alumni_id` VARCHAR(255)  COLLATE latin1_swedish_ci NOT NULL AFTER `ou_id` , 
	CHANGE `ip` `ip` VARCHAR(255)  COLLATE latin1_swedish_ci NULL AFTER `updated_by` , DEFAULT CHARSET='latin1', COLLATE ='latin1_swedish_ci' ;

/* Alter table in target */
ALTER TABLE `alumni_personal` 
	CHANGE `photo` `photo` TEXT  COLLATE utf8mb4_unicode_ci NULL AFTER `employer_name` , 
	CHANGE `cv` `cv` TEXT  COLLATE utf8mb4_unicode_ci NULL AFTER `photo` , 
	CHANGE `otp_email` `otp_email` VARCHAR(45)  COLLATE utf8mb4_unicode_ci NULL AFTER `firstLogin` , 
	CHANGE `otp_mobile` `otp_mobile` VARCHAR(45)  COLLATE utf8mb4_unicode_ci NULL AFTER `otp_email` ;

/* Alter table in target */
ALTER TABLE `ccs_groups` 
	CHANGE `created_by` `created_by` INT(30)   NULL AFTER `description` ;

/* Alter table in target */
ALTER TABLE `ccs_mailing_list` 
	CHANGE `created_at` `created_at` INT(11) UNSIGNED   NULL AFTER `name` , 
	CHANGE `updated_at` `updated_at` INT(11) UNSIGNED   NULL AFTER `created_at` , 
	CHANGE `created_by` `created_by` INT(11) UNSIGNED   NULL AFTER `updated_at` , 
	CHANGE `updated_by` `updated_by` INT(11) UNSIGNED   NULL AFTER `created_by` ;

/* Alter table in target */
ALTER TABLE `ccs_message_list` 
	CHANGE `created_at` `created_at` INT(11) UNSIGNED   NULL AFTER `name` , 
	CHANGE `updated_at` `updated_at` INT(11) UNSIGNED   NULL AFTER `created_at` , 
	CHANGE `created_by` `created_by` INT(11) UNSIGNED   NULL AFTER `updated_at` , 
	CHANGE `updated_by` `updated_by` INT(11) UNSIGNED   NULL AFTER `created_by` ;

/* Alter table in target */
ALTER TABLE `cfs_uploads` 
	CHANGE `order_id` `order_id` INT(11) UNSIGNED   NOT NULL AFTER `id` ;

/* Alter table in target */
ALTER TABLE `company_profile` 
	CHANGE `id` `id` INT(11) UNSIGNED   NOT NULL AUTO_INCREMENT FIRST , 
	CHANGE `companyHrContact` `companyHrContact` BIGINT(10)   NOT NULL AFTER `companyHrName` ;

/* Alter table in target */
ALTER TABLE `company_profile_archive` 
	CHANGE `id` `id` INT(11) UNSIGNED   NOT NULL AUTO_INCREMENT FIRST ;

/* Alter table in target */
ALTER TABLE `core_administrative_unit` 
	CHANGE `id` `id` INT(11) UNSIGNED   NOT NULL AUTO_INCREMENT FIRST , 
	CHANGE `pincode` `pincode` INT(15)   NULL AFTER `country` , 
	CHANGE `status` `status` TINYINT(5)   NOT NULL DEFAULT 0 AFTER `visible` , 
	CHANGE `verified` `verified` TINYINT(3)   NULL DEFAULT 0 AFTER `status` ;

/* Alter table in target */
ALTER TABLE `core_administrative_unit_alias` 
	CHANGE `id` `id` INT(11) UNSIGNED   NOT NULL AUTO_INCREMENT FIRST ;

/* Alter table in target */
ALTER TABLE `core_bank_list` 
	CHANGE `created_by` `created_by` INT(15)   NOT NULL AFTER `created_at` , 
	CHANGE `updated_by` `updated_by` INT(15)   NOT NULL AFTER `updated_at` ;

/* Alter table in target */
ALTER TABLE `core_college_course_list` 
	CHANGE `id` `id` INT(11) UNSIGNED   NOT NULL AUTO_INCREMENT FIRST , 
	CHANGE `course_type` `course_type` TINYINT(5)   NOT NULL AFTER `course_name` , 
	CHANGE `status` `status` TINYINT(5)   NOT NULL DEFAULT 1 AFTER `seat_total_all` , 
	CHANGE `created_at` `created_at` INT(11) UNSIGNED   NULL AFTER `updated_by` , 
	CHANGE `updated_at` `updated_at` INT(11) UNSIGNED   NULL AFTER `created_at` ;

/* Alter table in target */
ALTER TABLE `core_college_course_seats` 
	CHANGE `id` `id` INT(11) UNSIGNED   NOT NULL AUTO_INCREMENT FIRST , 
	CHANGE `ou_id` `ou_id` INT(11) UNSIGNED   NOT NULL AFTER `id` , 
	CHANGE `course_id` `course_id` INT(11) UNSIGNED   NOT NULL AFTER `ou_id` , 
	CHANGE `total_seats` `total_seats` INT(11) UNSIGNED   NOT NULL DEFAULT 0 AFTER `category` , 
	CHANGE `allocated_seats` `allocated_seats` INT(11) UNSIGNED   NULL DEFAULT 0 AFTER `admission_fee` , 
	CHANGE `vacant_seats` `vacant_seats` INT(11) UNSIGNED   NULL DEFAULT 0 AFTER `allocated_seats` , 
	CHANGE `seat_type` `seat_type` TINYINT(4) UNSIGNED   NOT NULL DEFAULT 0 COMMENT '1 => Supernumerary, 0 => Non-supernumerary' AFTER `percentage` ;

/* Alter table in target */
ALTER TABLE `core_college_program_seats` 
	CHANGE `id` `id` INT(11) UNSIGNED   NOT NULL AUTO_INCREMENT FIRST , 
	CHANGE `ou_id` `ou_id` INT(11) UNSIGNED   NOT NULL AFTER `id` , 
	CHANGE `total_seats` `total_seats` INT(11) UNSIGNED   NOT NULL DEFAULT 0 AFTER `category` , 
	CHANGE `allocated_seats` `allocated_seats` INT(11) UNSIGNED   NULL DEFAULT 0 AFTER `admission_fee` , 
	CHANGE `vacant_seats` `vacant_seats` INT(11) UNSIGNED   NULL DEFAULT 0 AFTER `allocated_seats` , 
	CHANGE `seat_type` `seat_type` TINYINT(4) UNSIGNED   NOT NULL DEFAULT 0 COMMENT '1 => Supernumerary, 0 => Non-supernumerary' AFTER `percentage` ;

/* Alter table in target */
ALTER TABLE `core_course_list` 
	CHANGE `course_type` `course_type` TINYINT(11) UNSIGNED   NOT NULL COMMENT 'pg/ug/diploma,crtificate' AFTER `subject` , 
	CHANGE `program` `program` TINYINT(4) UNSIGNED   NOT NULL COMMENT 'Bsc(H),Bsc(Program),B.Sc(Applied),bcom,ma,msc' AFTER `course_type` , 
	CHANGE `duration_months` `duration_months` INT(11) UNSIGNED   NOT NULL COMMENT 'numbers of months' AFTER `program` , 
	CHANGE `stream` `stream` TINYINT(4) UNSIGNED   NOT NULL DEFAULT 1 COMMENT 'science,com,arts/humanities' AFTER `duration_months` , 
	CHANGE `department` `department` INT(11) UNSIGNED   NULL AFTER `stream` , 
	CHANGE `faculty` `faculty` INT(11) UNSIGNED   NULL AFTER `department` , 
	CHANGE `visible` `visible` TINYINT(4) UNSIGNED   NULL DEFAULT 1 COMMENT 'public or private' AFTER `fee_mode` , 
	CHANGE `status` `status` TINYINT(4) UNSIGNED   NULL DEFAULT 1 COMMENT 'enabled/disabled' AFTER `visible` ;

/* Alter table in target */
ALTER TABLE `core_course_type` 
	CHANGE `status` `status` TINYINT(4) UNSIGNED   NULL DEFAULT 1 AFTER `description` , 
	CHANGE `visible` `visible` TINYINT(4) UNSIGNED   NULL DEFAULT 1 AFTER `status` ;

/* Alter table in target */
ALTER TABLE `core_institutions` 
	CHANGE `status` `status` TINYINT(5)   NOT NULL AFTER `geo_coordinates` ;

/* Alter table in target */
ALTER TABLE `core_mailer` 
	CHANGE `use_file_transport` `use_file_transport` TINYINT(3)   NULL DEFAULT 0 AFTER `view_path` , 
	CHANGE `status` `status` TINYINT(3)   NULL DEFAULT 0 AFTER `use_file_transport` , 
	CHANGE `use_random` `use_random` TINYINT(3)   NULL DEFAULT 0 AFTER `status` ;

/* Alter table in target */
ALTER TABLE `core_program_list` 
	CHANGE `duration_months` `duration_months` INT(11) UNSIGNED   NOT NULL COMMENT 'numbers of months' AFTER `program_type` , 
	CHANGE `stream` `stream` TINYINT(4) UNSIGNED   NOT NULL DEFAULT 1 COMMENT 'science,com,arts/humanities' AFTER `duration_months` , 
	CHANGE `status` `status` TINYINT(4) UNSIGNED   NULL DEFAULT 1 COMMENT 'enabled/disabled' AFTER `fee_mode` ;

/* Alter table in target */
ALTER TABLE `core_program_scheme` 
	CHANGE `status` `status` TINYINT(4) UNSIGNED   NULL DEFAULT 0 AFTER `title` , 
	CHANGE `visible` `visible` TINYINT(4) UNSIGNED   NULL DEFAULT 0 AFTER `status` ;

/* Alter table in target */
ALTER TABLE `core_program_type` 
	CHANGE `status` `status` TINYINT(4) UNSIGNED   NULL DEFAULT 1 AFTER `description` , 
	CHANGE `visible` `visible` TINYINT(4) UNSIGNED   NULL DEFAULT 1 AFTER `update_disabled` ;

/* Alter table in target */
ALTER TABLE `core_programme` 
	CHANGE `max_duration` `max_duration` INT(10)   NULL AFTER `faculty` ;

/* Alter table in target */
ALTER TABLE `core_programme_detail` 
	CHANGE `programme_id` `programme_id` INT(20)   NOT NULL AFTER `id` ;

/* Alter table in target */
ALTER TABLE `core_session` 
	CHANGE `status` `status` TINYINT(5)   NOT NULL DEFAULT 0 AFTER `title` ;

/* Alter table in target */
ALTER TABLE `core_session_program` 
	CHANGE `duration_months` `duration_months` INT(11) UNSIGNED   NOT NULL COMMENT 'numbers of months' AFTER `program_type` , 
	CHANGE `stream` `stream` TINYINT(4) UNSIGNED   NOT NULL DEFAULT 1 COMMENT 'science,com,arts/humanities' AFTER `duration_months` , 
	CHANGE `status` `status` TINYINT(4) UNSIGNED   NULL DEFAULT 1 COMMENT 'enabled/disabled' AFTER `fee_mode` , 
	CHANGE `seat_total` `seat_total` INT(10)   NULL DEFAULT 0 AFTER `description` , 
	CHANGE `seat_supnum` `seat_supnum` INT(10)   NULL DEFAULT 0 AFTER `seat_total` , 
	CHANGE `seat_total_all` `seat_total_all` INT(10)   NULL DEFAULT 0 AFTER `seat_supnum` ;

/* Alter table in target */
ALTER TABLE `core_user` 
	CHANGE `id` `id` INT(11) UNSIGNED   NOT NULL AUTO_INCREMENT COMMENT 'refrence to other tables or data if required' FIRST ;

/* Alter table in target */
ALTER TABLE `core_user_assignments` 
	CHANGE `ou` `ou` INT(11) UNSIGNED   NOT NULL COMMENT 'department,faculty etc' AFTER `id` , 
	CHANGE `user_id` `user_id` INT(11) UNSIGNED   NOT NULL COMMENT 'employee unique id from employee table' AFTER `designation` ;

/* Alter table in target */
ALTER TABLE `country` 
	CHANGE `status` `status` TINYINT(3)   NULL AFTER `name` ;

/* Alter table in target */
ALTER TABLE `degreeName` 
	CHANGE `status` `status` TINYINT(5)   NOT NULL AFTER `degreeName` ;

/* Alter table in target */
ALTER TABLE `document_system` 
	CHANGE `id` `id` INT(10)   NOT NULL AUTO_INCREMENT FIRST , 
	ADD COLUMN `view_type` VARCHAR(20)  COLLATE utf8_unicode_ci NULL AFTER `embargo_reason` , 
	CHANGE `status` `status` TINYINT(4)   NULL AFTER `view_type` ;

/* Alter table in target */
ALTER TABLE `document_system_authors` 
	CHANGE `id` `id` INT(10)   NOT NULL AUTO_INCREMENT FIRST , 
	CHANGE `document_id` `document_id` INT(10)   NULL AFTER `author_name` ;

/* Alter table in target */
ALTER TABLE `document_system_report` 
	CHANGE `document_id` `document_id` INT(50)   NULL AFTER `report` ;

/* Alter table in target */
ALTER TABLE `document_type` 
	CHANGE `id` `id` INT(11) UNSIGNED   NOT NULL AUTO_INCREMENT FIRST ;

/* Alter table in target */
ALTER TABLE `ehousing_employee_record` 
	CHANGE `confirm` `confirm` TINYINT(2)   NULL AFTER `house_id` , 
	CHANGE `status` `status` TINYINT(2)   NULL AFTER `updated_at` ;

/* Alter table in target */
ALTER TABLE `ehousing_registration_form` 
	CHANGE `PayInPayMatrix` `PayInPayMatrix` INT(100)   NOT NULL AFTER `pay_level` , 
	CHANGE `years_of_service` `years_of_service` TINYINT(3)   NULL AFTER `preference` , 
	CHANGE `AlternateMobile` `AlternateMobile` BIGINT(11)   NULL AFTER `Mobile` , 
	CHANGE `allotment` `allotment` TINYINT(3)   NULL AFTER `med_certificate` , 
	CHANGE `status` `status` TINYINT(3)   NULL AFTER `application_no` ;

/* Alter table in target */
ALTER TABLE `ehousing_scheme` 
	CHANGE `docs_required` `docs_required` TINYINT(3)   NULL AFTER `no_house_preference` , 
	CHANGE `status` `status` TINYINT(3)   NULL AFTER `docs_required` ;

/* Alter table in target */
ALTER TABLE `ems_academic_details` 
	CHANGE `visible` `visible` TINYINT(5)   NULL AFTER `country` , 
	CHANGE `status` `status` TINYINT(5)   NULL AFTER `visible` , 
	CHANGE `sort` `sort` INT(10)   NULL AFTER `status` , 
	CHANGE `verified_by` `verified_by` INT(10)   NULL AFTER `verified_status` ;

/* Alter table in target */
ALTER TABLE `ems_action_options` 
	CHANGE `id` `id` INT(1)   NOT NULL AUTO_INCREMENT FIRST , 
	CHANGE `created_at` `created_at` INT(10)   NULL AFTER `employee_id` , 
	CHANGE `created_by` `created_by` INT(10)   NULL AFTER `created_at` , 
	CHANGE `updated_at` `updated_at` INT(10)   NULL AFTER `created_by` , 
	CHANGE `updated_by` `updated_by` INT(10)   NULL AFTER `updated_at` ;

/* Alter table in target */
ALTER TABLE `ems_action_options_reason` 
	CHANGE `id` `id` INT(1)   NOT NULL AUTO_INCREMENT FIRST , 
	CHANGE `created_at` `created_at` INT(10)   NULL AFTER `action_id` , 
	CHANGE `created_by` `created_by` INT(10)   NULL AFTER `created_at` , 
	CHANGE `updated_at` `updated_at` INT(10)   NULL AFTER `created_by` , 
	CHANGE `updated_by` `updated_by` INT(10)   NULL AFTER `updated_at` ;

/* Create table in target */
CREATE TABLE `ems_action_status`(
	`id` INT(11) UNSIGNED NOT NULL  AUTO_INCREMENT , 
	`emp_id` INT(11) NULL  , 
	`emp_type` VARCHAR(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`family_detail` TINYINT(4) NULL  DEFAULT 0 , 
	`profile` TINYINT(4) NULL  DEFAULT 0 , 
	`university_assignment` TINYINT(4) NULL  DEFAULT 0 , 
	`academic_details` TINYINT(4) NULL  DEFAULT 0 , 
	`career_profile` TINYINT(4) NULL  DEFAULT 0 , 
	`membership_and_association` TINYINT(4) NULL  DEFAULT 0 , 
	`documents` TINYINT(4) NULL  DEFAULT 0 , 
	`last_update` DATETIME NULL  , 
	`status_percent` FLOAT NULL  , 
	`emp_photo` TINYINT(4) NULL  , 
	`research_supervision` TINYINT(4) NULL  , 
	`research_publication_profile_1` TINYINT(4) NULL  , 
	`research_publication_profile_2` TINYINT(4) NULL  , 
	`patents_and_consultancy` TINYINT(4) NULL  , 
	`created_by` INT(11) NULL  , 
	`updated_by` INT(11) NULL  , 
	`created_at` INT(11) NULL  , 
	`updated_at` INT(11) NULL  , 
	`ip` VARCHAR(20) COLLATE utf8mb4_unicode_ci NULL  , 
	PRIMARY KEY (`id`) , 
	KEY `emp_type`(`emp_type`) , 
	KEY `emp_id`(`emp_id`) 
) ENGINE=INNODB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Alter table in target */
ALTER TABLE `ems_conference_organisation_presentation` 
	ADD COLUMN `role` VARCHAR(255)  COLLATE utf8mb4_unicode_ci NULL AFTER `end_date` , 
	ADD COLUMN `funding_agency` VARCHAR(255)  COLLATE utf8mb4_unicode_ci NULL AFTER `role` , 
	ADD COLUMN `fund_amount` INT(11)   NULL AFTER `funding_agency` , 
	CHANGE `created_at` `created_at` INT(11)   NULL AFTER `fund_amount` ;

/* Alter table in target */
ALTER TABLE `ems_document_options` 
	CHANGE `created_at` `created_at` INT(10)   NULL AFTER `status` , 
	CHANGE `created_by` `created_by` INT(10)   NULL AFTER `created_at` , 
	CHANGE `updated_at` `updated_at` INT(10)   NULL AFTER `created_by` , 
	CHANGE `updated_by` `updated_by` INT(10)   NULL AFTER `updated_at` ;

/* Alter table in target */
ALTER TABLE `ems_ltc_details` 
	CHANGE `year` `year` INT(4)   NOT NULL AFTER `type` ;

/* Alter table in target */
ALTER TABLE `ems_ltc_details_extension` 
	CHANGE `age` `age` INT(3)   NOT NULL AFTER `relationship` ;

/* Alter table in target */
ALTER TABLE `ems_mentor_to_student` 
	ADD COLUMN `roll_no` VARCHAR(255)  COLLATE utf8mb4_unicode_ci NULL AFTER `duration_of_mentoring` , 
	ADD COLUMN `extra_details` TEXT  COLLATE utf8mb4_unicode_ci NULL AFTER `roll_no` , 
	CHANGE `created_at` `created_at` INT(11)   NULL AFTER `extra_details` ;

/* Alter table in target */
ALTER TABLE `ems_nominee_detail` 
	CHANGE `created_at` `created_at` INT(10)   NULL AFTER `percentage_share_for_nominee` , 
	CHANGE `created_by` `created_by` INT(10)   NULL AFTER `created_at` , 
	CHANGE `updated_at` `updated_at` INT(10)   NULL AFTER `created_by` , 
	CHANGE `updated_by` `updated_by` INT(10)   NULL AFTER `updated_at` , 
	CHANGE `verified_by` `verified_by` INT(10)   NULL AFTER `verified_status` ;

/* Alter table in target */
ALTER TABLE `ems_nominee_service` 
	CHANGE `updated_at` `updated_at` INT(10)   NULL AFTER `created_by` , 
	CHANGE `updated_by` `updated_by` INT(10)   NULL AFTER `updated_at` ;

/* Alter table in target */
ALTER TABLE `ems_pg_details` 
	CHANGE `result_type` `result_type` TINYINT(5) UNSIGNED   NULL AFTER `year` ;

/* Alter table in target */
ALTER TABLE `ems_phd_details` 
	CHANGE `id` `id` INT(11) UNSIGNED   NOT NULL AUTO_INCREMENT FIRST ;

/* Alter table in target */
ALTER TABLE `ems_profile` 
	CHANGE `organization_unit` `organization_unit` INT(11) UNSIGNED   NULL AFTER `nature_of_employment` , 
	CHANGE `approved` `approved` TINYINT(5)   NULL DEFAULT 0 COMMENT 'Yes, No' AFTER `reason_for_change_profile` , 
	CHANGE `hometown_pincode` `hometown_pincode` INT(10)   NULL AFTER `hometown_city` , 
	CHANGE `verified_by` `verified_by` INT(10)   NULL AFTER `verified_status` ;

/* Alter table in target */
ALTER TABLE `ems_profile_history` 
	CHANGE `id` `id` INT(11) UNSIGNED   NOT NULL AUTO_INCREMENT FIRST ;

/* Alter table in target */
ALTER TABLE `ems_property_details` 
	CHANGE `acquired` `acquired` TINYINT(11)   NOT NULL AFTER `value` ;

/* Alter table in target */
ALTER TABLE `ems_travel_purpose` 
	CHANGE `id` `id` INT(1)   NOT NULL AUTO_INCREMENT FIRST , 
	CHANGE `created_at` `created_at` INT(10)   NULL AFTER `status` , 
	CHANGE `created_by` `created_by` INT(10)   NULL AFTER `created_at` , 
	CHANGE `updated_at` `updated_at` INT(10)   NULL AFTER `created_by` , 
	CHANGE `updated_by` `updated_by` INT(10)   NULL AFTER `updated_at` ;

/* Alter table in target */
ALTER TABLE `ems_travel_reason` 
	CHANGE `id` `id` INT(1)   NOT NULL AUTO_INCREMENT FIRST , 
	CHANGE `created_at` `created_at` INT(10)   NULL AFTER `status` , 
	CHANGE `created_by` `created_by` INT(10)   NULL AFTER `created_at` , 
	CHANGE `updated_at` `updated_at` INT(10)   NULL AFTER `created_by` , 
	CHANGE `updated_by` `updated_by` INT(10)   NULL AFTER `updated_at` ;

/* Alter table in target */
ALTER TABLE `ems_ug_details` 
	CHANGE `result_type` `result_type` TINYINT(5) UNSIGNED   NULL AFTER `year` , 
	CHANGE `created_by` `created_by` INT(11) UNSIGNED   NULL AFTER `updated_at` , 
	CHANGE `updated_by` `updated_by` INT(11) UNSIGNED   NULL AFTER `created_by` ;

/* Alter table in target */
ALTER TABLE `endowment_pay_trans_sent` 
	CHANGE `id` `id` INT(11) UNSIGNED   NOT NULL AUTO_INCREMENT FIRST ;

/* Alter table in target */
ALTER TABLE `endowment_zpay_trans_sent` 
	CHANGE `id` `id` INT(11) UNSIGNED   NOT NULL AUTO_INCREMENT FIRST , 
	CHANGE `updated` `updated` TIMESTAMP   NULL ON UPDATE CURRENT_TIMESTAMP AFTER `updated_by` , 
	CHANGE `draft_number` `draft_number` VARBINARY(195)   NULL AFTER `draft_date` , 
	DROP KEY `formNo`, ADD FULLTEXT KEY `formNo`(`service_reference_no`) ;

/* Alter table in target */
ALTER TABLE `essential_conference_hall` 
	CHANGE `coordination_contact` `coordination_contact` BIGINT(11)   NULL AFTER `coordinator_id` , 
	CHANGE `participants` `participants` INT(10)   NULL AFTER `date_from` ;

/* Alter table in target */
ALTER TABLE `essential_guest_house` 
	CHANGE `guest_contact` `guest_contact` BIGINT(15)   NULL AFTER `desi_add` ;

/* Alter table in target */
ALTER TABLE `essential_mail` 
	CHANGE `id` `id` INT(11) UNSIGNED   NOT NULL AUTO_INCREMENT FIRST , 
	CHANGE `memberMobile` `memberMobile` BIGINT(10)   NOT NULL AFTER `memberEmail` ;

/* Alter table in target */
ALTER TABLE `essential_transport_request` 
	CHANGE `capacity` `capacity` TINYINT(5)   NULL AFTER `vehicle_type` , 
	CHANGE `contact` `contact` BIGINT(12)   NULL AFTER `address` ;

/* Alter table in target */
ALTER TABLE `estate_app_form` 
	CHANGE `PayInPayMatrix` `PayInPayMatrix` INT(100)   NOT NULL AFTER `PayMatrix` , 
	CHANGE `AlternateMobile` `AlternateMobile` BIGINT(11)   NULL AFTER `Mobile` ;

/* Alter table in target */
ALTER TABLE `estate_building` 
	CHANGE `is_residential` `is_residential` TINYINT(3)   NOT NULL AFTER `inauguration_date` ;

/* Alter table in target */
ALTER TABLE `estate_housing` 
	CHANGE `created_by` `created_by` INT(11) UNSIGNED   NULL AFTER `description` , 
	CHANGE `updated_by` `updated_by` INT(11) UNSIGNED   NULL AFTER `created_by` ;

/* Alter table in target */
ALTER TABLE `eval_term_result` 
	ADD COLUMN `result_viewed_count` INT(11)   NULL DEFAULT 0 AFTER `updated` , 
	ADD COLUMN `result_last_viewed_on` DATETIME   NULL AFTER `result_viewed_count` , 
	ADD COLUMN `exam_session_id` VARCHAR(50)  COLLATE utf8mb4_unicode_ci NULL AFTER `result_last_viewed_on` ;

/* Create table in target */
CREATE TABLE `evaluation_log`(
	`id` INT(10) UNSIGNED NOT NULL  AUTO_INCREMENT , 
	`user_id` VARCHAR(128) COLLATE utf8mb4_unicode_ci NULL  , 
	`type` VARCHAR(128) COLLATE utf8mb4_unicode_ci NULL  , 
	`message` TEXT COLLATE utf8mb4_unicode_ci NULL  , 
	PRIMARY KEY (`id`) 
) ENGINE=INNODB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Alter table in target */
ALTER TABLE `exam_programme_map` 
	DROP COLUMN `programme_term_ayid` , 
	ADD COLUMN `programme_term_ayid` VARCHAR(30)   AS  (CONCAT(`programme_id`,'_',`term`,'_',`academic_calendar_id`))  STORED AFTER `updated` ;

/* Alter table in target */
ALTER TABLE `exam_session` 
	CHANGE `year` `year` INT(4)   NULL AFTER `adm_session_id` , 
	CHANGE `status` `status` TINYINT(5)   NULL DEFAULT 0 AFTER `exam_cycle` , 
	CHANGE `start_date` `start_date` BIGINT(15)   NULL COMMENT 'time in unix time stamp' AFTER `start_date_time` , 
	CHANGE `end_date` `end_date` BIGINT(15)   NULL COMMENT 'time in unix time stamp' AFTER `start_date` , 
	CHANGE `extended_date` `extended_date` BIGINT(15)   NULL AFTER `extended_date_str` , 
	CHANGE `admin_last_date` `admin_last_date` BIGINT(15)   NULL AFTER `extended_date` , 
	CHANGE `created_at` `created_at` INT(15)   NULL AFTER `result_type` , 
	CHANGE `updated_at` `updated_at` INT(15)   NOT NULL AFTER `created_at` ;

/* Alter table in target */
ALTER TABLE `examination_content` 
	CHANGE `id` `id` INT(11) UNSIGNED   NOT NULL AUTO_INCREMENT FIRST ;

/* Alter table in target */
ALTER TABLE `examination_mail_log` 
	CHANGE `reminder1` `reminder1` TINYINT(5)   NULL AFTER `mail_date` , 
	CHANGE `duration` `duration` INT(10)   NULL AFTER `reminder1` , 
	CHANGE `max_marks` `max_marks` INT(4)   NULL AFTER `duration` ;

/* Alter table in target */
ALTER TABLE `examination_mail_log_examiner` 
	CHANGE `reminder1` `reminder1` TINYINT(5)   NULL AFTER `mail_date` , 
	CHANGE `duration` `duration` INT(10)   NULL AFTER `reminder1` , 
	CHANGE `max_marks` `max_marks` INT(4)   NULL AFTER `duration` , 
	CHANGE `form` `form` TINYINT(5)   NULL AFTER `action` ;

/* Alter table in target */
ALTER TABLE `examination_moderation_meeting` 
	CHANGE `status` `status` TINYINT(5)   NOT NULL AFTER `teacher_id` ;

/* Alter table in target */
ALTER TABLE `examination_paper_examiner` 
	CHANGE `status` `status` TINYINT(5)   NOT NULL AFTER `teacher_name` , 
	CHANGE `reminder_day` `reminder_day` INT(5)   NULL AFTER `reminder_date` ;

/* Alter table in target */
ALTER TABLE `examination_paper_examiner_master` 
	CHANGE `status` `status` TINYINT(5)   NOT NULL AFTER `teacher_id` ;

/* Alter table in target */
ALTER TABLE `examination_paper_setter` 
	CHANGE `status` `status` TINYINT(5)   NOT NULL AFTER `teacher_name` ;

/* Alter table in target */
ALTER TABLE `examination_paper_setter_master` 
	CHANGE `status` `status` TINYINT(5)   NOT NULL AFTER `teacher_id` ;

/* Alter table in target */
ALTER TABLE `examination_session` 
	CHANGE `id` `id` INT(11) UNSIGNED   NOT NULL AUTO_INCREMENT FIRST ;

/* Alter table in target */
ALTER TABLE `examination_slot_center_map` 
	CHANGE `id` `id` INT(1)   NOT NULL AUTO_INCREMENT FIRST ;

/* Alter table in target */
ALTER TABLE `examination_student_attendance` 
	CHANGE `id` `id` INT(11) UNSIGNED   NOT NULL AUTO_INCREMENT FIRST ;

/* Alter table in target */
ALTER TABLE `examination_student_monthly_attendance` 
	CHANGE `id` `id` INT(11) UNSIGNED   NOT NULL AUTO_INCREMENT FIRST ;

/* Alter table in target */
ALTER TABLE `examination_teacher` 
	CHANGE `country` `country` INT(10)   NULL AFTER `state` , 
	CHANGE `pincode` `pincode` INT(15)   NULL AFTER `country` ;

/* Alter table in target */
ALTER TABLE `feedback_responses` 
	CHANGE `mobile` `mobile` BIGINT(8)   NULL AFTER `email` , 
	CHANGE `feedback_template_id` `feedback_template_id` INT(11) UNSIGNED   NOT NULL AFTER `programme_name` , 
	CHANGE `created_at` `created_at` INT(11) UNSIGNED   NULL AFTER `response_other` , 
	CHANGE `created_by` `created_by` INT(11) UNSIGNED   NULL AFTER `created_at` , 
	CHANGE `updated_at` `updated_at` INT(11) UNSIGNED   NULL AFTER `created_by` , 
	CHANGE `updated_by` `updated_by` INT(11) UNSIGNED   NULL AFTER `updated_at` ;

/* Alter table in target */
ALTER TABLE `fmts_file_type` 
	CHANGE `status` `status` TINYINT(4) UNSIGNED   NULL DEFAULT 1 AFTER `description` , 
	CHANGE `update_disable` `update_disable` TINYINT(4) UNSIGNED   NULL DEFAULT 0 AFTER `status` ;

/* Alter table in target */
ALTER TABLE `grievance_category` 
	CHANGE `ip` `ip` INT(32)   NULL AFTER `updated` ;

/* Alter table in target */
ALTER TABLE `grievance_committee_members` 
	CHANGE `isSameUniversity` `isSameUniversity` TINYINT(5)   NOT NULL AFTER `memberType` , 
	CHANGE `memberMobile` `memberMobile` BIGINT(10)   NOT NULL AFTER `memberEmail` ;

/* Alter table in target */
ALTER TABLE `grievance_form` 
	CHANGE `ip` `ip` INT(32)   NULL AFTER `updated` ;

/* Alter table in target */
ALTER TABLE `grievance_logs` 
	CHANGE `id` `id` INT(11) UNSIGNED   NOT NULL AUTO_INCREMENT FIRST , 
	ADD COLUMN `grievance_type` VARCHAR(10)  COLLATE utf8_unicode_ci NULL AFTER `userId` , 
	CHANGE `taskPerformed` `taskPerformed` VARCHAR(50)  COLLATE utf8_unicode_ci NOT NULL COMMENT 'Current task performed by the Admin' AFTER `grievance_type` ;

/* Alter table in target */
ALTER TABLE `grievance_mail` 
	CHANGE `id` `id` INT(11) UNSIGNED   NOT NULL AUTO_INCREMENT FIRST , 
	CHANGE `memberMobile` `memberMobile` BIGINT(10)   NOT NULL AFTER `memberEmail` ;

/* Alter table in target */
ALTER TABLE `grievance_meeting` 
	CHANGE `id` `id` INT(11) UNSIGNED   NOT NULL AUTO_INCREMENT FIRST , 
	ADD COLUMN `grievance_type` VARCHAR(10)  COLLATE utf8mb4_unicode_ci NULL AFTER `grievanceId` , 
	CHANGE `meetingType` `meetingType` VARCHAR(190)  COLLATE utf8mb4_unicode_ci NOT NULL AFTER `grievance_type` , 
	CHANGE `status` `status` TINYINT(5)   NULL DEFAULT 1 AFTER `attendees` ;

/* Alter table in target */
ALTER TABLE `grievance_meeting_invites` 
	CHANGE `id` `id` INT(11) UNSIGNED   NOT NULL AUTO_INCREMENT FIRST , 
	ADD COLUMN `grievance_type` VARCHAR(10)  COLLATE utf8mb4_unicode_ci NULL AFTER `meetingId` , 
	CHANGE `attendeeId` `attendeeId` INT(11)   NULL AFTER `grievance_type` , 
	CHANGE `attendeeMobile` `attendeeMobile` BIGINT(10)   NOT NULL AFTER `attendeeEmail` ;

/* Alter table in target */
ALTER TABLE `grievance_meeting_logs` 
	ADD COLUMN `grievance_type` VARCHAR(10)  COLLATE utf8mb4_unicode_ci NULL AFTER `grievanceId` , 
	CHANGE `meetingId` `meetingId` INT(10) UNSIGNED   NULL AFTER `grievance_type` ;

/* Alter table in target */
ALTER TABLE `grievance_notes` 
	CHANGE `id` `id` INT(11) UNSIGNED   NOT NULL AUTO_INCREMENT FIRST , 
	ADD COLUMN `grievance_type` VARCHAR(10)  COLLATE utf8mb4_unicode_ci NULL AFTER `grievanceId` , 
	CHANGE `meetingId` `meetingId` INT(11)   NULL AFTER `grievance_type` ;

/* Alter table in target */
ALTER TABLE `grievance_public` 
	CHANGE `contactNo` `contactNo` BIGINT(12)   NOT NULL AFTER `name` , 
	CHANGE `aadhar` `aadhar` BIGINT(14)   NULL AFTER `college` , 
	CHANGE `ip` `ip` INT(32)   NULL AFTER `updated` ;

/* Alter table in target */
ALTER TABLE `groups` 
	CHANGE `created_by` `created_by` INT(30)   NULL AFTER `description` ;

/* Alter table in target */
ALTER TABLE `health_doctor_details` 
	CHANGE `contact_details` `contact_details` BIGINT(11)   NULL AFTER `name` ;

/* Alter table in target */
ALTER TABLE `health_facility` 
	CHANGE `ou_id` `ou_id` INT(11) UNSIGNED   NOT NULL AFTER `id` ;

/* Alter table in target */
ALTER TABLE `health_membership` 
	ADD COLUMN `validity_type` VARCHAR(50)  COLLATE utf8mb4_general_ci NULL AFTER `membership_date` , 
	CHANGE `valid_from` `valid_from` DATE   NULL AFTER `validity_type` ;

/* Alter table in target */
ALTER TABLE `hostel_allocation` 
	CHANGE `hostel_id` `hostel_id` INT(11) UNSIGNED   NOT NULL AFTER `building_id` ;

/* Alter table in target */
ALTER TABLE `hostel_facility` 
	CHANGE `hostel_id` `hostel_id` INT(11) UNSIGNED   NOT NULL AFTER `id` ;

/* Alter table in target */
ALTER TABLE `hostel_rooms` 
	CHANGE `hostel_id` `hostel_id` INT(11) UNSIGNED   NOT NULL AFTER `building_id` ;

/* Alter table in target */
ALTER TABLE `ims_budget_head` 
	CHANGE `status` `status` TINYINT(5)   NULL AFTER `updated_by` ;

/* Alter table in target */
ALTER TABLE `ims_category_type` 
	CHANGE `status` `status` TINYINT(5)   NULL AFTER `updated_by` ;

/* Alter table in target */
ALTER TABLE `ims_disposal_detail` 
	CHANGE `status` `status` TINYINT(5)   NULL AFTER `updated_by` ;

/* Alter table in target */
ALTER TABLE `ims_items_issued` 
	CHANGE `id` `id` INT(11) UNSIGNED   NOT NULL AUTO_INCREMENT FIRST , 
	CHANGE `mobile_of_the_other_person` `mobile_of_the_other_person` BIGINT(10)   NULL AFTER `email_of_the_other_person` ;

/* Alter table in target */
ALTER TABLE `ims_items_stock_details` 
	CHANGE `id` `id` INT(11) UNSIGNED   NOT NULL AUTO_INCREMENT FIRST , 
	CHANGE `status` `status` TINYINT(5)   NULL COMMENT '0=> NOT AVAILABLE,1=>AVAILABLE' AFTER `updated_by` ;

/* Alter table in target */
ALTER TABLE `ims_logs` 
	CHANGE `id` `id` INT(11) UNSIGNED   NOT NULL AUTO_INCREMENT FIRST ;

/* Alter table in target */
ALTER TABLE `ims_tax_detail` 
	CHANGE `status` `status` TINYINT(5)   NULL AFTER `updated_by` ;

/* Alter table in target */
ALTER TABLE `ims_vendor_details` 
	CHANGE `mobile` `mobile` BIGINT(10)   NOT NULL AFTER `email` ;

/* Alter table in target */
ALTER TABLE `ims_warehouse_detail` 
	CHANGE `status` `status` TINYINT(5)   NULL AFTER `updated_by` ;

/* Alter table in target */
ALTER TABLE `itsd_response_to_applicant` 
	CHANGE `id` `id` INT(11) UNSIGNED   NOT NULL AUTO_INCREMENT FIRST ;

/* Alter table in target */
ALTER TABLE `knowledge_book` 
	CHANGE `id` `id` INT(11) UNSIGNED   NOT NULL AUTO_INCREMENT FIRST , 
	CHANGE `year` `year` SMALLINT(6) UNSIGNED   NULL AFTER `publisher` ;

/* Alter table in target */
ALTER TABLE `knowledge_paper` 
	CHANGE `id` `id` INT(11) UNSIGNED   NOT NULL AUTO_INCREMENT FIRST , 
	CHANGE `title` `title` TEXT  COLLATE utf8_general_ci NULL AFTER `pub_type` , 
	CHANGE `upload` `upload` VARCHAR(1024)  COLLATE utf8_general_ci NULL AFTER `year` ;

/* Alter table in target */
ALTER TABLE `knowledge_patent` 
	CHANGE `user_id` `user_id` INT(11) UNSIGNED   NOT NULL AFTER `id` , 
	CHANGE `output` `output` TINYINT(4) UNSIGNED   NULL AFTER `title` , 
	CHANGE `stage` `stage` TINYINT(4) UNSIGNED   NULL AFTER `agency` ;

/* Alter table in target */
ALTER TABLE `lcms_address` 
	CHANGE `country` `country` MEDIUMINT(11)   NULL AFTER `zip` ;

/* Alter table in target */
ALTER TABLE `lcms_case_status` 
	CHANGE `id` `id` INT(11) UNSIGNED   NOT NULL AUTO_INCREMENT FIRST , 
	CHANGE `created_at` `created_at` INT(11) UNSIGNED   NULL AFTER `status` , 
	CHANGE `updated_at` `updated_at` INT(11) UNSIGNED   NULL AFTER `created_at` , 
	CHANGE `created_by` `created_by` INT(11) UNSIGNED   NULL AFTER `updated_at` , 
	CHANGE `updated_by` `updated_by` INT(11) UNSIGNED   NULL AFTER `created_by` ;

/* Alter table in target */
ALTER TABLE `lcms_case_types` 
	CHANGE `id` `id` INT(11) UNSIGNED   NOT NULL AUTO_INCREMENT FIRST , 
	CHANGE `created_at` `created_at` INT(11) UNSIGNED   NULL AFTER `status` , 
	CHANGE `updated_at` `updated_at` INT(11) UNSIGNED   NULL AFTER `created_at` , 
	CHANGE `created_by` `created_by` INT(11) UNSIGNED   NULL AFTER `updated_at` , 
	CHANGE `updated_by` `updated_by` INT(11) UNSIGNED   NULL AFTER `created_by` ;

/* Alter table in target */
ALTER TABLE `lcms_courts` 
	CHANGE `id` `id` INT(11) UNSIGNED   NOT NULL AUTO_INCREMENT FIRST , 
	CHANGE `created_at` `created_at` INT(11) UNSIGNED   NULL AFTER `status` , 
	CHANGE `updated_at` `updated_at` INT(11) UNSIGNED   NULL AFTER `created_at` , 
	CHANGE `created_by` `created_by` INT(11) UNSIGNED   NULL AFTER `updated_at` , 
	CHANGE `updated_by` `updated_by` INT(11) UNSIGNED   NULL AFTER `created_by` ;

/* Alter table in target */
ALTER TABLE `lcms_department` 
	CHANGE `id` `id` INT(11) UNSIGNED   NOT NULL AUTO_INCREMENT FIRST ;

/* Alter table in target */
ALTER TABLE `lcms_departmentProfile` 
	CHANGE `id` `id` INT(11) UNSIGNED   NOT NULL AUTO_INCREMENT FIRST , 
	CHANGE `department_id` `department_id` INT(11) UNSIGNED   NOT NULL AFTER `department_code` , 
	CHANGE `update_at` `update_at` TIMESTAMP   NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP AFTER `user_by` ;

/* Alter table in target */
ALTER TABLE `lcms_designation` 
	CHANGE `status` `status` TINYINT(3)   NOT NULL AFTER `weight` ;

/* Alter table in target */
ALTER TABLE `lcms_notiConfig` 
	CHANGE `id` `id` INT(11) UNSIGNED   NOT NULL AUTO_INCREMENT FIRST ;

/* Alter table in target */
ALTER TABLE `lcms_sysNotification` 
	CHANGE `notificationId` `notificationId` INT(11) UNSIGNED   NULL AFTER `id` ;

/* Alter table in target */
ALTER TABLE `lcms_tableConfig` 
	CHANGE `mId` `mId` INT(11) UNSIGNED   NOT NULL AFTER `id` ;

/* Alter table in target */
ALTER TABLE `lcms_tblCase` 
	CHANGE `court` `court` INT(11) UNSIGNED   NOT NULL AFTER `caseNo` ;

/* Alter table in target */
ALTER TABLE `lcms_tempSysNotification` 
	CHANGE `notificationId` `notificationId` INT(11) UNSIGNED   NULL AFTER `id` ;

/* Alter table in target */
ALTER TABLE `leave_applications` 
	CHANGE `empOrganizationUnit` `empOrganizationUnit` INT(10)   NOT NULL AFTER `empCode` , 
	CHANGE `contactDetails` `contactDetails` BIGINT(10)   NULL AFTER `stationLeave` , 
	CHANGE `leave_balance` `leave_balance` FLOAT   NULL AFTER `location` , 
	CHANGE `rejoin_approval_status` `rejoin_approval_status` TINYINT(4)   NULL AFTER `leave_balance` , 
	ADD COLUMN `ltc_id` INT(10)   NULL AFTER `rejoin_approval_remarks` , 
	ADD COLUMN `leave_balance_before_sanction` FLOAT   NULL AFTER `ltc_id` , 
	ADD COLUMN `sanction_letter` TEXT  COLLATE utf8mb4_unicode_ci NULL AFTER `leave_balance_before_sanction` , 
	ADD COLUMN `rejoin_letter` TEXT  COLLATE utf8mb4_unicode_ci NULL AFTER `sanction_letter` , 
	ADD COLUMN `half_pay_leave_balance` TINYINT(4)   NULL AFTER `rejoin_letter` ;

/* Alter table in target */
ALTER TABLE `leave_approval_designation` 
	CHANGE `id` `id` INT(11) UNSIGNED   NOT NULL AUTO_INCREMENT FIRST ;

/* Alter table in target */
ALTER TABLE `leave_approval_workflow` 
	CHANGE `id` `id` INT(11) UNSIGNED   NOT NULL AUTO_INCREMENT FIRST ;

/* Alter table in target */
ALTER TABLE `leave_authority_map` 
	CHANGE `id` `id` INT(11) UNSIGNED   NOT NULL AUTO_INCREMENT FIRST ;

/* Create table in target */
CREATE TABLE `leave_el_encashment`(
	`id` INT(11) NOT NULL  AUTO_INCREMENT , 
	`ltc_id` INT(11) NULL  , 
	`emp_id` INT(11) NULL  , 
	`from_date` VARCHAR(100) COLLATE latin1_swedish_ci NULL  , 
	`to_date` VARCHAR(100) COLLATE latin1_swedish_ci NULL  , 
	`current_el_balance` VARCHAR(100) COLLATE latin1_swedish_ci NULL  , 
	`status` INT(11) NULL  , 
	`created_at` INT(10) NULL  , 
	`created_by` INT(10) NULL  , 
	`updated_at` INT(10) NULL  , 
	`updated_by` INT(10) NULL  , 
	`updated` TIMESTAMP NULL  , 
	PRIMARY KEY (`id`) 
) ENGINE=INNODB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Alter table in target */
ALTER TABLE `leave_emp_weekoff` 
	CHANGE `weekoff_days` `weekoff_days` VARCHAR(128)  COLLATE utf8mb4_unicode_ci NOT NULL AFTER `id` , 
	CHANGE `status` `status` VARCHAR(45)  COLLATE utf8mb4_unicode_ci NOT NULL AFTER `emp_id` , COLLATE ='utf8mb4_unicode_ci' ;

/* Alter table in target */
ALTER TABLE `leave_employee_mapping` 
	CHANGE `id` `id` INT(11) UNSIGNED   NOT NULL AUTO_INCREMENT FIRST ;

/* Alter table in target */
ALTER TABLE `leave_leaveType` 
	CHANGE `id` `id` INT(11) UNSIGNED   NOT NULL AUTO_INCREMENT FIRST , 
	CHANGE `carry_forward_days` `carry_forward_days` INT(10)   NULL DEFAULT 0 AFTER `carry_forward` , 
	CHANGE `minimum_at_time` `minimum_at_time` INT(3)   NOT NULL DEFAULT 0 AFTER `maximum_accumulation` , 
	CHANGE `maximum_at_time` `maximum_at_time` INT(10)   NOT NULL DEFAULT 0 AFTER `minimum_at_time` , 
	CHANGE `minimum_service_required` `minimum_service_required` INT(10)   NOT NULL DEFAULT 0 AFTER `half_day_applicable` , 
	CHANGE `oneTime` `oneTime` INT(10)   NULL AFTER `ip` ;

/* Alter table in target */
ALTER TABLE `leave_ltc` 
	CHANGE `created_at` `created_at` INT(11)   NULL AFTER `remarks` , 
	CHANGE `description` `description` TEXT  COLLATE utf8mb4_unicode_ci NULL AFTER `created_at` , 
	CHANGE `from_date` `from_date` VARCHAR(100)  COLLATE utf8mb4_unicode_ci NULL AFTER `description` , 
	CHANGE `advance_amount` `advance_amount` DECIMAL(10,2)   NULL AFTER `to_date` , 
	ADD COLUMN `advance_amount_approved_date` VARCHAR(100)  COLLATE utf8mb4_unicode_ci NULL AFTER `advance_amount` , 
	ADD COLUMN `advance_amount_approved_by` INT(11)   NULL AFTER `advance_amount_approved_date` , 
	CHANGE `family_members` `family_members` VARCHAR(255)  COLLATE utf8mb4_unicode_ci NULL AFTER `advance_amount_approved_by` , 
	ADD COLUMN `applying_for` VARCHAR(190)  COLLATE utf8mb4_unicode_ci NULL AFTER `reporting_designation` , 
	ADD COLUMN `balance_amount` DECIMAL(10,2)   NULL AFTER `applying_for` , 
	ADD COLUMN `block_period` INT(10)   NULL AFTER `balance_amount` , 
	ADD COLUMN `expense_amount` DECIMAL(10,2)   NULL AFTER `block_period` , 
	ADD COLUMN `advance_amount_sanction` DECIMAL(10,2)   NULL AFTER `expense_amount` , 
	ADD COLUMN `balance_amount_sanction` DECIMAL(10,2)   NULL AFTER `advance_amount_sanction` , 
	ADD COLUMN `submitted_on` TINYINT(4)   NULL AFTER `balance_amount_sanction` , 
	ADD COLUMN `submitted_date` VARCHAR(100)  COLLATE utf8mb4_unicode_ci NULL AFTER `submitted_on` , 
	ADD COLUMN `final_submit` TINYINT(4)   NULL AFTER `submitted_date` , 
	ADD COLUMN `advance_amount_required` TINYINT(4)   NULL AFTER `final_submit` , 
	ADD COLUMN `bank_name` VARCHAR(100)  COLLATE utf8mb4_unicode_ci NULL AFTER `advance_amount_required` , 
	ADD COLUMN `banck_account_number` VARCHAR(100)  COLLATE utf8mb4_unicode_ci NULL AFTER `bank_name` , 
	ADD COLUMN `bank_ifsc_code` VARCHAR(100)  COLLATE utf8mb4_unicode_ci NULL AFTER `banck_account_number` , 
	ADD COLUMN `bank_branch` VARCHAR(100)  COLLATE utf8mb4_unicode_ci NULL AFTER `bank_ifsc_code` , 
	ADD COLUMN `cheque_number` VARCHAR(100)  COLLATE utf8mb4_unicode_ci NULL AFTER `bank_branch` , 
	ADD COLUMN `country` VARCHAR(100)  COLLATE utf8mb4_unicode_ci NULL AFTER `cheque_number` , 
	ADD COLUMN `state` VARCHAR(100)  COLLATE utf8mb4_unicode_ci NULL AFTER `country` , 
	ADD COLUMN `city` VARCHAR(100)  COLLATE utf8mb4_unicode_ci NULL AFTER `state` , 
	ADD COLUMN `el_encashment` TINYINT(4)   NULL DEFAULT 0 AFTER `city` , 
	ADD COLUMN `leave_id` INT(11)   NULL AFTER `el_encashment` , 
	ADD COLUMN `balance_amount_approved_date` VARCHAR(100)  COLLATE utf8mb4_unicode_ci NULL AFTER `leave_id` , 
	ADD COLUMN `balance_amount_approved_by` INT(11)   NULL AFTER `balance_amount_approved_date` , 
	ADD COLUMN `reviewerStatus` TINYINT(4)   NULL AFTER `balance_amount_approved_by` , 
	ADD COLUMN `reviewedBy` INT(11)   NULL AFTER `reviewerStatus` , 
	ADD COLUMN `reviewedOn` DATETIME   NULL AFTER `reviewedBy` , 
	ADD COLUMN `review_remarks` VARCHAR(255)  COLLATE utf8mb4_unicode_ci NULL AFTER `reviewedOn` , 
	ADD COLUMN `sanctionStatus` TINYINT(4)   NULL AFTER `review_remarks` , 
	ADD COLUMN `sanction_remarks` VARCHAR(200)  COLLATE utf8mb4_unicode_ci NULL AFTER `sanctionStatus` , 
	ADD COLUMN `send_to` VARCHAR(255)  COLLATE utf8mb4_unicode_ci NULL AFTER `sanction_remarks` , 
	ADD COLUMN `sanction_id` INT(11)   NULL AFTER `send_to` , 
	ADD COLUMN `advance_amount_payment_mode` VARCHAR(100)  COLLATE utf8mb4_unicode_ci NULL AFTER `sanction_id` , 
	ADD COLUMN `transaction_id` VARCHAR(100)  COLLATE utf8mb4_unicode_ci NULL AFTER `advance_amount_payment_mode` , 
	ADD COLUMN `balance_reviewerStatus` TINYINT(4)   NULL AFTER `transaction_id` , 
	ADD COLUMN `balance_reviewedBy` INT(11)   NULL AFTER `balance_reviewerStatus` , 
	ADD COLUMN `balance_reviewedOn` DATETIME   NULL AFTER `balance_reviewedBy` , 
	ADD COLUMN `balance_review_remarks` VARCHAR(255)  COLLATE utf8mb4_unicode_ci NULL AFTER `balance_reviewedOn` , 
	ADD COLUMN `rejectedBy` INT(11)   NULL AFTER `balance_review_remarks` , 
	ADD COLUMN `rejectedOn` DATETIME   NULL AFTER `rejectedBy` , 
	ADD COLUMN `balance_amount_sanctionStatus` TINYINT(4)   NULL AFTER `rejectedOn` , 
	ADD COLUMN `balance_amount_payment_mode` VARCHAR(100)  COLLATE utf8mb4_unicode_ci NULL AFTER `balance_amount_sanctionStatus` , 
	ADD COLUMN `balance_amount_transaction_id` VARCHAR(100)  COLLATE utf8mb4_unicode_ci NULL AFTER `balance_amount_payment_mode` , 
	ADD COLUMN `balance_amount_sanction_remarks` VARCHAR(255)  COLLATE utf8mb4_unicode_ci NULL AFTER `balance_amount_transaction_id` , 
	ADD COLUMN `balance_amount_cheque_number` VARCHAR(50)  COLLATE utf8mb4_unicode_ci NULL AFTER `balance_amount_sanction_remarks` , 
	ADD COLUMN `cancelledBy` INT(11)   NULL AFTER `balance_amount_cheque_number` , 
	ADD COLUMN `cancelledOn` DATETIME   NULL AFTER `cancelledBy` , 
	ADD COLUMN `cancellation_authority` VARCHAR(200)  COLLATE utf8mb4_unicode_ci NULL AFTER `cancelledOn` , 
	ADD COLUMN `cancellationRequested` TINYINT(4)   NULL AFTER `cancellation_authority` , 
	ADD COLUMN `cancellationRequestedOn` DATETIME   NULL AFTER `cancellationRequested` , 
	ADD COLUMN `cancel_remarks` VARCHAR(250)  COLLATE utf8mb4_unicode_ci NULL AFTER `cancellationRequestedOn` , 
	ADD COLUMN `cancellationStatus` TINYINT(4)   NULL AFTER `cancel_remarks` , 
	ADD COLUMN `return_amount` DECIMAL(10,2)   NULL AFTER `cancellationStatus` , 
	ADD COLUMN `return_amount_remarks` VARCHAR(255)  COLLATE utf8mb4_unicode_ci NULL AFTER `return_amount` , 
	ADD COLUMN `return_amount_initiated_date` DATETIME   NULL AFTER `return_amount_remarks` , 
	ADD COLUMN `return_amount_initiated_by` INT(11)   NULL AFTER `return_amount_initiated_date` , 
	ADD COLUMN `return_amount_approved_by` INT(11)   NULL AFTER `return_amount_initiated_by` , 
	ADD COLUMN `return_amount_approved_date` DATETIME   NULL AFTER `return_amount_approved_by` , 
	ADD COLUMN `return_amount_approved_remarks` VARCHAR(255)  COLLATE utf8mb4_unicode_ci NULL AFTER `return_amount_approved_date` , 
	ADD COLUMN `return_amount_status` TINYINT(4)   NULL AFTER `return_amount_approved_remarks` , 
	ADD COLUMN `return_amount_payment_mode` VARCHAR(100)  COLLATE utf8mb4_unicode_ci NULL AFTER `return_amount_status` , 
	ADD COLUMN `return_amount_receipt_number` VARCHAR(100)  COLLATE utf8mb4_unicode_ci NULL AFTER `return_amount_payment_mode` , 
	CHANGE `updated_at` `updated_at` INT(11)   NULL AFTER `return_amount_receipt_number` , 
	CHANGE `created_by` `created_by` INT(10)   NULL AFTER `updated_at` , 
	CHANGE `updated_by` `updated_by` INT(10)   NULL AFTER `created_by` , 
	CHANGE `place` `place` VARCHAR(100)  COLLATE utf8mb4_unicode_ci NULL AFTER `updated` , 
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
	`id` INT(11) NOT NULL  AUTO_INCREMENT , 
	`emp_id` INT(10) NULL  , 
	`ltc_id` INT(10) NULL  , 
	`send_to` VARCHAR(200) COLLATE latin1_swedish_ci NULL  , 
	`current_status` TINYINT(4) NULL  , 
	`send_date` VARCHAR(100) COLLATE latin1_swedish_ci NULL  , 
	`amount_type` VARCHAR(100) COLLATE latin1_swedish_ci NULL  , 
	`approved_by` INT(10) NULL  , 
	`approved_date` VARCHAR(100) COLLATE latin1_swedish_ci NULL  , 
	`approved_remarks` VARCHAR(255) COLLATE latin1_swedish_ci NULL  , 
	`amount` DECIMAL(10,2) NULL  , 
	`approved_amount` DECIMAL(10,2) NULL  , 
	`created_at` INT(10) NULL  , 
	`created_by` INT(10) NULL  , 
	`updated_by` INT(10) NULL  , 
	`updated_at` INT(10) NULL  , 
	`updated` TIMESTAMP NULL  , 
	`transaction_id` VARCHAR(100) COLLATE latin1_swedish_ci NULL  , 
	`status` TINYINT(4) NULL  , 
	`cheque_number` INT(11) NULL  , 
	`payment_mode` VARCHAR(50) COLLATE latin1_swedish_ci NULL  , 
	PRIMARY KEY (`id`) 
) ENGINE=INNODB DEFAULT CHARSET='latin1' COLLATE='latin1_swedish_ci';


/* Create table in target */
CREATE TABLE `leave_ltc_applicationlogs`(
	`id` INT(11) NOT NULL  AUTO_INCREMENT , 
	`ltc_id` INT(11) NOT NULL  , 
	`status` VARCHAR(200) COLLATE utf8mb4_unicode_ci NULL  , 
	`comment` VARCHAR(190) COLLATE utf8mb4_unicode_ci NULL  , 
	`created_at` DATETIME NULL  , 
	`created_by` INT(11) NULL  , 
	`employee_id` INT(11) NULL  , 
	`ip` VARCHAR(20) COLLATE utf8mb4_unicode_ci NULL  , 
	PRIMARY KEY (`id`) 
) ENGINE=INNODB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Create table in target */
CREATE TABLE `leave_ltc_approval_settings`(
	`id` INT(10) NOT NULL  AUTO_INCREMENT , 
	`designations` TEXT COLLATE latin1_swedish_ci NULL  , 
	`reviewer` TEXT COLLATE latin1_swedish_ci NULL  , 
	`notification_on_submit` VARCHAR(255) COLLATE latin1_swedish_ci NULL  , 
	`created_at` INT(10) NULL  , 
	`created_by` INT(10) NULL  , 
	`updated_at` INT(10) NULL  , 
	`updated_by` INT(10) NULL  , 
	`updated` TIMESTAMP NULL  , 
	`_hierarchy` TEXT COLLATE latin1_swedish_ci NULL  , 
	`sanctioning_authority` INT(11) NULL  , 
	`notification_on_review` VARCHAR(255) COLLATE latin1_swedish_ci NULL  , 
	`notification_on_sanctioned` VARCHAR(255) COLLATE latin1_swedish_ci NULL  , 
	PRIMARY KEY (`id`) 
) ENGINE=INNODB DEFAULT CHARSET='latin1' COLLATE='latin1_swedish_ci';


/* Create table in target */
CREATE TABLE `leave_ltc_block_period_settings`(
	`id` INT(10) NOT NULL  AUTO_INCREMENT , 
	`designation` TEXT COLLATE latin1_swedish_ci NULL  , 
	`block_period_for` VARCHAR(100) COLLATE latin1_swedish_ci NULL  , 
	`status` TINYINT(4) NULL  , 
	`created_at` INT(10) NULL  , 
	`created_by` INT(10) NULL  , 
	`updated_at` INT(10) NULL  , 
	`updated_by` INT(10) NULL  , 
	`updated` TIMESTAMP NULL  , 
	`start_date` VARCHAR(100) COLLATE latin1_swedish_ci NULL  , 
	`end_date` VARCHAR(100) COLLATE latin1_swedish_ci NULL  , 
	PRIMARY KEY (`id`) 
) ENGINE=INNODB DEFAULT CHARSET='latin1' COLLATE='latin1_swedish_ci';


/* Alter table in target */
ALTER TABLE `leave_ltc_requests` 
	ADD COLUMN `place` VARCHAR(100)  COLLATE utf8mb4_unicode_ci NULL AFTER `updated` , 
	ADD COLUMN `description` TEXT  COLLATE utf8mb4_unicode_ci NULL AFTER `place` , 
	ADD COLUMN `from_country` VARCHAR(190)  COLLATE utf8mb4_unicode_ci NULL AFTER `description` , 
	ADD COLUMN `from_state` VARCHAR(190)  COLLATE utf8mb4_unicode_ci NULL AFTER `from_country` , 
	ADD COLUMN `from_city` VARCHAR(190)  COLLATE utf8mb4_unicode_ci NULL AFTER `from_state` , 
	ADD COLUMN `from_pincode` INT(10)   NULL AFTER `from_city` , 
	ADD COLUMN `to_country` VARCHAR(190)  COLLATE utf8mb4_unicode_ci NULL AFTER `from_pincode` , 
	ADD COLUMN `to_state` VARCHAR(190)  COLLATE utf8mb4_unicode_ci NULL AFTER `to_country` , 
	ADD COLUMN `to_city` VARCHAR(190)  COLLATE utf8mb4_unicode_ci NULL AFTER `to_state` , 
	ADD COLUMN `to_pincode` INT(10)   NULL AFTER `to_city` , 
	ADD COLUMN `from_date` VARCHAR(100)  COLLATE utf8mb4_unicode_ci NULL AFTER `to_pincode` , 
	ADD COLUMN `to_date` VARCHAR(100)  COLLATE utf8mb4_unicode_ci NULL AFTER `from_date` , 
	ADD COLUMN `advance_amount` INT(11)   NULL AFTER `to_date` , 
	ADD COLUMN `approved_date` VARCHAR(100)  COLLATE utf8mb4_unicode_ci NULL AFTER `advance_amount` , 
	ADD COLUMN `approved_by` INT(11)   NULL AFTER `approved_date` , 
	ADD COLUMN `family_members` VARCHAR(255)  COLLATE utf8mb4_unicode_ci NULL AFTER `approved_by` ;

/* Alter table in target */
ALTER TABLE `leave_ltc_travel_detail` 
	CHANGE `created_at` `created_at` INT(11)   NULL AFTER `amount` , 
	CHANGE `created_by` `created_by` INT(10)   NULL AFTER `updated_at` , 
	CHANGE `updated_by` `updated_by` INT(10)   NULL AFTER `created_by` , 
	CHANGE `upload` `upload` VARCHAR(255)  COLLATE latin1_swedish_ci NULL AFTER `updated` , 
	ADD COLUMN `from_place` VARCHAR(190)  COLLATE latin1_swedish_ci NULL AFTER `upload` , 
	ADD COLUMN `to_place` VARCHAR(190)  COLLATE latin1_swedish_ci NULL AFTER `from_place` , 
	ADD COLUMN `family_members` VARCHAR(255)  COLLATE latin1_swedish_ci NULL AFTER `to_place` , 
	ADD COLUMN `from_date` VARCHAR(100)  COLLATE latin1_swedish_ci NULL AFTER `family_members` , 
	ADD COLUMN `to_date` VARCHAR(100)  COLLATE latin1_swedish_ci NULL AFTER `from_date` , 
	ADD COLUMN `distance_in_km` INT(10)   NULL AFTER `to_date` , 
	ADD COLUMN `travel_mode` VARCHAR(190)  COLLATE latin1_swedish_ci NULL AFTER `distance_in_km` , 
	ADD COLUMN `emp_id` INT(10)   NULL AFTER `travel_mode` , 
	ADD COLUMN `class_of_accommodation` TINYINT(4)   NULL AFTER `emp_id` , 
	ADD COLUMN `family_member_count` INT(5)   NULL AFTER `class_of_accommodation` ;

/* Create table in target */
CREATE TABLE `leave_ltc_travel_documents`(
	`id` INT(11) NOT NULL  AUTO_INCREMENT , 
	`title` VARCHAR(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`image_name` VARCHAR(100) COLLATE utf8mb4_unicode_ci NULL  , 
	`image_path` VARCHAR(255) COLLATE utf8mb4_unicode_ci NULL  , 
	`created_at` INT(10) NULL  , 
	`created_by` INT(10) NULL  , 
	`updated_at` INT(10) NULL  , 
	`updated_by` INT(10) NULL  , 
	`file_name` VARCHAR(100) COLLATE utf8mb4_unicode_ci NULL  , 
	`file_path` TEXT COLLATE utf8mb4_unicode_ci NULL  , 
	`doc_type` VARCHAR(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`user_id` INT(10) NULL  , 
	`document_id` INT(10) NULL  , 
	`ltc_travel_id` INT(11) NULL  , 
	`UPLOADID` TINYINT(4) NULL  , 
	PRIMARY KEY (`id`) 
) ENGINE=INNODB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Create table in target */
CREATE TABLE `leave_ltc_travel_mode`(
	`id` INT(10) NOT NULL  AUTO_INCREMENT , 
	`name` VARCHAR(190) COLLATE latin1_swedish_ci NULL  , 
	`created_at` INT(10) NULL  , 
	`created_by` INT(10) NULL  , 
	`updated_at` INT(10) NULL  , 
	`updated_by` INT(10) NULL  , 
	`updated` TIMESTAMP NULL  , 
	`status` TINYINT(4) NULL  , 
	PRIMARY KEY (`id`) 
) ENGINE=INNODB DEFAULT CHARSET='latin1' COLLATE='latin1_swedish_ci';


/* Create table in target */
CREATE TABLE `leave_pdf_template`(
	`id` INT(11) NOT NULL  AUTO_INCREMENT , 
	`type` VARCHAR(50) COLLATE utf8mb4_unicode_ci NULL  , 
	`template_body` TEXT COLLATE utf8mb4_unicode_ci NULL  , 
	`status` TINYINT(4) NULL  , 
	`created_at` INT(11) NULL  , 
	`updated_at` INT(11) NULL  , 
	`created_by` VARCHAR(32) COLLATE utf8mb4_unicode_ci NULL  , 
	`updated_by` VARCHAR(32) COLLATE utf8mb4_unicode_ci NULL  , 
	`updated` TIMESTAMP NULL  , 
	`ip` VARCHAR(32) COLLATE utf8mb4_unicode_ci NULL  , 
	PRIMARY KEY (`id`) 
) ENGINE=INNODB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Create table in target */
CREATE TABLE `leave_send_reminder_email`(
	`id` INT(11) NOT NULL  AUTO_INCREMENT , 
	`lead_id` INT(11) NULL  , 
	`status` TINYINT(4) NULL  , 
	`send_date` DATETIME NULL  , 
	`send_by` INT(11) NULL  , 
	PRIMARY KEY (`id`) 
) ENGINE=INNODB DEFAULT CHARSET='latin1' COLLATE='latin1_swedish_ci';


/* Alter table in target */
ALTER TABLE `leave_stationleave` 
	CHANGE `place` `place` VARCHAR(128)  COLLATE utf8mb4_unicode_ci NOT NULL AFTER `to_date` , 
	CHANGE `reason` `reason` TEXT  COLLATE utf8mb4_unicode_ci NULL AFTER `place` , 
	CHANGE `status` `status` VARCHAR(45)  COLLATE utf8mb4_unicode_ci NULL AFTER `reason` , 
	CHANGE `ip` `ip` VARCHAR(45)  COLLATE utf8mb4_unicode_ci NULL AFTER `updated_by` , 
	ADD COLUMN `is_submitted` TINYINT(4)   NULL AFTER `ip` , 
	ADD COLUMN `submitted_date` DATETIME   NULL AFTER `is_submitted` , COLLATE ='utf8mb4_unicode_ci' ;

/* Alter table in target */
ALTER TABLE `leave_type` 
	CHANGE `annual_debit` `annual_debit` TINYINT(11)   NULL AFTER `days_to_earn` , 
	CHANGE `document_req_on_rejoin` `document_req_on_rejoin` TINYINT(4)   NULL AFTER `notification_on_cancel` , 
	CHANGE `rejoin_required` `rejoin_required` TINYINT(4)   NULL AFTER `document_req_on_rejoin` , 
	ADD COLUMN `notification_on_rejoin` VARCHAR(255)  COLLATE utf8mb4_unicode_ci NULL AFTER `rejoin_required` ;

/* Alter table in target */
ALTER TABLE `leaves` 
	ADD COLUMN `ltc_applied` TINYINT(4)   NULL DEFAULT 0 AFTER `updated` , 
	ADD COLUMN `send_sanction_letter` TINYINT(4)   NULL AFTER `ltc_applied` ;

/* Alter table in target */
ALTER TABLE `menu` 
	CHANGE `id` `id` INT(11) UNSIGNED   NOT NULL AUTO_INCREMENT FIRST ;

/* Alter table in target */
ALTER TABLE `ocm_expenditure` 
	CHANGE `quantity` `quantity` INT(5)   NULL AFTER `price` ;

/* Alter table in target */
ALTER TABLE `options_country_states` 
	CHANGE `id` `id` INT(11) UNSIGNED   NOT NULL AUTO_INCREMENT FIRST ;

/* Alter table in target */
ALTER TABLE `otp_message` 
	CHANGE `id` `id` INT(11) UNSIGNED   NOT NULL AUTO_INCREMENT FIRST , 
	CHANGE `otp` `otp` INT(11) UNSIGNED   NOT NULL AFTER `user` , 
	CHANGE `service` `service` TINYINT(4) UNSIGNED   NOT NULL AFTER `expiry_time` , 
	CHANGE `mode` `mode` TINYINT(4) UNSIGNED   NOT NULL COMMENT '1 = MAIL, 2 => SMS' AFTER `service` , 
	CHANGE `used` `used` TINYINT(4) UNSIGNED   NULL DEFAULT 0 AFTER `mode` ;

/* Alter table in target */
ALTER TABLE `otp_message_copy` 
	CHANGE `id` `id` INT(11) UNSIGNED   NOT NULL AUTO_INCREMENT FIRST , 
	CHANGE `otp` `otp` INT(11) UNSIGNED   NOT NULL AFTER `user` , 
	CHANGE `service` `service` TINYINT(4) UNSIGNED   NOT NULL AFTER `expiry_time` , 
	CHANGE `mode` `mode` TINYINT(4) UNSIGNED   NOT NULL COMMENT '1 = MAIL, 2 => SMS' AFTER `service` , 
	CHANGE `used` `used` TINYINT(4) UNSIGNED   NULL DEFAULT 0 AFTER `mode` ;

/* Alter table in target */
ALTER TABLE `payroll_bank_details` 
	CHANGE `status` `status` TINYINT(4) UNSIGNED   NULL DEFAULT 0 AFTER `ip` ;

/* Alter table in target */
ALTER TABLE `payroll_employee_onetime_entries` 
	CHANGE `salary_head` `salary_head` INT(10)   NOT NULL AFTER `payroll_entry_type` , 
	CHANGE `year` `year` INT(4)   NULL AFTER `month` ;

/* Alter table in target */
ALTER TABLE `payroll_employee_salary_structure` 
	CHANGE `salary_head` `salary_head` INT(10)   NOT NULL AFTER `payroll_entry_type` , 
	CHANGE `year` `year` INT(4)   NULL AFTER `month` ;

/* Alter table in target */
ALTER TABLE `payroll_entry_group` 
	CHANGE `created_by` `created_by` INT(1)   NULL AFTER `update_disabled` ;

/* Alter table in target */
ALTER TABLE `payroll_final_processed_salary` 
	CHANGE `emp_id` `emp_id` INT(50)   NOT NULL AFTER `id` , 
	CHANGE `month` `month` INT(2)   NOT NULL AFTER `year` , 
	CHANGE `grade_pay_id` `grade_pay_id` INT(26)   NULL AFTER `payband_id` , 
	CHANGE `basic_pay` `basic_pay` INT(20)   NULL AFTER `employee_cadre` , 
	CHANGE `processes_status` `processes_status` INT(2)   NULL AFTER `net_earning` , 
	CHANGE `emp_status` `emp_status` INT(2)   NULL AFTER `voucher_no` , 
	CHANGE `created_at` `created_at` INT(20)   NULL AFTER `emp_status` , 
	CHANGE `created_by` `created_by` INT(20)   NULL AFTER `created_at` , 
	CHANGE `updated_at` `updated_at` INT(20)   NULL AFTER `created_by` , 
	CHANGE `updated_by` `updated_by` INT(20)   NULL AFTER `updated_at` , 
	CHANGE `update_disabled` `update_disabled` TINYINT(2)   NULL AFTER `updated_by` ;

/* Alter table in target */
ALTER TABLE `payroll_final_processed_salary_breakup` 
	CHANGE `month` `month` INT(4)   NOT NULL AFTER `employee_id` , 
	CHANGE `process_status` `process_status` INT(4)   NOT NULL AFTER `help` , 
	CHANGE `status` `status` INT(10)   NULL AFTER `hba_no` ;

/* Alter table in target */
ALTER TABLE `payroll_grade_pay_scale` 
	CHANGE `status` `status` TINYINT(2)   NULL DEFAULT 0 AFTER `ip` ;

/* Alter table in target */
ALTER TABLE `payroll_income_tax_process_ext` 
	CHANGE `employee_id` `employee_id` INT(50)   NOT NULL AFTER `id` , 
	CHANGE `process_id` `process_id` INT(50)   NOT NULL AFTER `employee_id` ;

/* Alter table in target */
ALTER TABLE `payroll_pf_account` 
	CHANGE `year` `year` INT(10)   NULL COMMENT 'Financial Year' AFTER `pf_number` , 
	CHANGE `process_status` `process_status` INT(4)   NULL AFTER `closing_balance` , 
	CHANGE `status` `status` INT(4)   NULL AFTER `process_status` ;

/* Alter table in target */
ALTER TABLE `payroll_pf_contribution` 
	CHANGE `month` `month` INT(2)   NULL AFTER `year` ;

/* Alter table in target */
ALTER TABLE `payroll_pf_interest_rate` 
	CHANGE `status` `status` INT(4)   NULL AFTER `effective_date` ;

/* Alter table in target */
ALTER TABLE `payroll_pf_statements` 
	CHANGE `id` `id` INT(15)   NOT NULL AUTO_INCREMENT FIRST , 
	CHANGE `employee_id` `employee_id` INT(15)   NULL AFTER `id` , 
	CHANGE `year` `year` INT(5)   NULL AFTER `employee_id` , 
	CHANGE `month` `month` INT(5)   NULL AFTER `year` , 
	CHANGE `process_status` `process_status` INT(4)   NULL AFTER `interest_amount` , 
	CHANGE `update_disabled` `update_disabled` INT(4)   NULL AFTER `process_status` ;

/* Alter table in target */
ALTER TABLE `payroll_rules_variables` 
	CHANGE `id` `id` INT(11) UNSIGNED   NOT NULL AUTO_INCREMENT FIRST , 
	CHANGE `dummy_value` `dummy_value` INT(4)   NULL AFTER `name` ;

/* Alter table in target */
ALTER TABLE `payroll_salary_rule_config` 
	CHANGE `id` `id` INT(11) UNSIGNED   NOT NULL AUTO_INCREMENT FIRST ;

/* Alter table in target */
ALTER TABLE `payroll_salary_rules` 
	CHANGE `salary_head` `salary_head` INT(10)   NOT NULL AFTER `payroll_entry_type` ;

/* Alter table in target */
ALTER TABLE `payroll_system_wide_changes` 
	CHANGE `id` `id` INT(6)   NOT NULL AUTO_INCREMENT FIRST , 
	CHANGE `payroll_entry_id` `payroll_entry_id` INT(6)   NULL COMMENT 'References from Payroll Entries' AFTER `id` , 
	CHANGE `actual_value` `actual_value` INT(5)   NULL AFTER `formula_bar` ;

/* Alter table in target */
ALTER TABLE `placement_apply` 
	CHANGE `applicant_mobile` `applicant_mobile` BIGINT(10)   NOT NULL AFTER `ou_id` , 
	CHANGE `application_status` `application_status` TINYINT(5)   NOT NULL DEFAULT 1 AFTER `hire_package` ;

/* Alter table in target */
ALTER TABLE `placement_company_profile` 
	CHANGE `id` `id` INT(11) UNSIGNED   NOT NULL AUTO_INCREMENT FIRST , 
	CHANGE `companyHrContact` `companyHrContact` BIGINT(10)   NOT NULL AFTER `companyHrName` ;

/* Alter table in target */
ALTER TABLE `placement_company_profile_ou` 
	CHANGE `id` `id` INT(11) UNSIGNED   NOT NULL AUTO_INCREMENT FIRST , 
	CHANGE `companyHrContact` `companyHrContact` BIGINT(10)   NOT NULL AFTER `companyHrName` ;

/* Alter table in target */
ALTER TABLE `placement_company_requests` 
	CHANGE `id` `id` INT(11) UNSIGNED   NOT NULL AUTO_INCREMENT FIRST , 
	CHANGE `mobile` `mobile` BIGINT(10)   NOT NULL AFTER `companyHrName` ;

/* Alter table in target */
ALTER TABLE `placement_company_season` 
	CHANGE `created_at` `created_at` BIGINT(11)   NULL AFTER `status` , 
	CHANGE `updated_at` `updated_at` BIGINT(11)   NULL AFTER `created_by` ;

/* Alter table in target */
ALTER TABLE `placement_info` 
	CHANGE `id` `id` INT(11) UNSIGNED   NOT NULL AUTO_INCREMENT FIRST , 
	CHANGE `experience` `experience` TINYINT(5)   NOT NULL COMMENT 'Experience' AFTER `showPost` , 
	CHANGE `type` `type` TINYINT(5)   NOT NULL COMMENT 'Job type Full Time Part time' AFTER `season_id` , 
	CHANGE `interview` `interview` INT(5)   NULL AFTER `closingDate` , 
	CHANGE `writtenTest` `writtenTest` INT(5)   NULL AFTER `interview` , 
	CHANGE `mode` `mode` INT(5)   NULL AFTER `writtenTest` , 
	CHANGE `gD` `gD` INT(2)   NULL AFTER `mode` , 
	CHANGE `vacancies` `vacancies` INT(5)   NOT NULL COMMENT 'No of Vacancies' AFTER `venue` , 
	CHANGE `submitStatus` `submitStatus` TINYINT(5)   NOT NULL DEFAULT 0 COMMENT 'Published Not Published' AFTER `remarks` , 
	CHANGE `status` `status` TINYINT(5)   NOT NULL DEFAULT 0 COMMENT 'Active Inactive' AFTER `submitStatus` ;

/* Alter table in target */
ALTER TABLE `placement_registration` 
	CHANGE `applicant_mobile` `applicant_mobile` BIGINT(10)   NOT NULL AFTER `applicant_name` , 
	CHANGE `status` `status` TINYINT(5)   NULL DEFAULT 1 AFTER `aggregate_score` ;

/* Alter table in target */
ALTER TABLE `placement_season` 
	CHANGE `status` `status` INT(2)   NOT NULL AFTER `fee_for_student` ;

/* Alter table in target */
ALTER TABLE `portal_content` 
	CHANGE `id` `id` INT(11) UNSIGNED   NOT NULL AUTO_INCREMENT FIRST ;

/* Alter table in target */
ALTER TABLE `prg_academic_year_session_map` 
	ADD COLUMN `status` VARCHAR(50)  COLLATE utf8mb4_unicode_ci NULL DEFAULT 'DRAFT' AFTER `update` ;

/* Alter table in target */
ALTER TABLE `prg_admission_fee` 
	CHANGE `seat` `seat` INT(11) UNSIGNED   NULL DEFAULT 0 AFTER `fee` ;

/* Alter table in target */
ALTER TABLE `prg_batch` 
	CHANGE `id` `id` VARCHAR(40)  COLLATE utf8mb4_general_ci NOT NULL FIRST , 
	CHANGE `code` `code` VARCHAR(100)  COLLATE utf8mb4_general_ci NULL AFTER `id` , 
	CHANGE `academic_year` `academic_year` VARCHAR(20)  COLLATE utf8mb4_general_ci NOT NULL AFTER `programme_id` , 
	CHANGE `session` `session` VARCHAR(50)  COLLATE utf8mb4_general_ci NULL AFTER `academic_year` , 
	CHANGE `name` `name` VARCHAR(198)  COLLATE utf8mb4_general_ci NULL AFTER `ou_id` , 
	CHANGE `month` `month` VARCHAR(10)  COLLATE utf8mb4_general_ci NULL AFTER `year` , 
	CHANGE `description` `description` TEXT  COLLATE utf8mb4_general_ci NULL AFTER `sort_order` , 
	CHANGE `updated` `updated` TIMESTAMP   NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP AFTER `updated_by` , 
	CHANGE `ip` `ip` VARCHAR(32)  COLLATE utf8mb4_general_ci NULL AFTER `updated` , COLLATE ='utf8mb4_general_ci' ;

/* Alter table in target */
ALTER TABLE `prg_batch_ou` 
	CHANGE `academic_ou` `academic_ou` INT(11) UNSIGNED   NOT NULL AFTER `programme_id` , 
	CHANGE `updated` `updated` TIMESTAMP   NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP AFTER `updated_by` ;

/* Alter table in target */
ALTER TABLE `prg_class` 
	CHANGE `academic_ou` `academic_ou` INT(11) UNSIGNED   NOT NULL AFTER `class_id` ;

/* Alter table in target */
ALTER TABLE `prg_course_evaluation_component` 
	CHANGE `id` `id` INT(11) UNSIGNED   NOT NULL AUTO_INCREMENT FIRST , 
	CHANGE `programme_id` `programme_id` INT(11) UNSIGNED   NULL AFTER `name` , 
	CHANGE `course_id` `course_id` INT(11) UNSIGNED   NOT NULL AFTER `programme_id` , 
	ADD COLUMN `display_mark_in_result` VARCHAR(5)  COLLATE utf8mb4_unicode_ci NULL DEFAULT 'YES' AFTER `grade_letter_group` , 
	CHANGE `credit_weightage` `credit_weightage` DECIMAL(10,2)   NOT NULL DEFAULT 0.00 AFTER `display_mark_in_result` , 
	CHANGE `is_parent` `is_parent` TINYINT(4)   NOT NULL DEFAULT 1 AFTER `credit_weightage` , 
	CHANGE `aggregate_formula` `aggregate_formula` VARCHAR(1000)  COLLATE utf8mb4_unicode_ci NULL AFTER `aggregate` , 
	CHANGE `required_to_pass` `required_to_pass` VARCHAR(3)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'YES' COMMENT 'YES/NO' AFTER `aggregate_formula` , 
	CHANGE `minimum_passing_marks` `minimum_passing_marks` DECIMAL(10,2)   NULL DEFAULT 0.00 AFTER `required_to_pass` , 
	CHANGE `applicable_from_year` `applicable_from_year` INT(11)   NULL AFTER `minimum_passing_marks` ;

/* Alter table in target */
ALTER TABLE `prg_course_group` 
	CHANGE `id` `id` INT(11) UNSIGNED   NOT NULL AUTO_INCREMENT FIRST ;

/* Alter table in target */
ALTER TABLE `prg_course_relation` 
	ADD COLUMN `id` INT(10) UNSIGNED   NOT NULL AUTO_INCREMENT FIRST , 
	CHANGE `course_id` `course_id` INT(11)   NULL AFTER `id` , 
	DROP COLUMN `int` , 
	DROP KEY `PRIMARY`, ADD PRIMARY KEY(`id`) ;

/* Alter table in target */
ALTER TABLE `prg_fee_rules_list` 
	CHANGE `fee_list_id` `fee_list_id` INT(11) UNSIGNED   NOT NULL AFTER `id` ;

/* Alter table in target */
ALTER TABLE `prg_hostel_option` 
	CHANGE `id` `id` INT(11) UNSIGNED   NOT NULL AUTO_INCREMENT FIRST ;

/* Alter table in target */
ALTER TABLE `prg_student` 
	CHANGE `year_of_enrollment` `year_of_enrollment` INT(198)   NULL AFTER `programme_level` , 
	CHANGE `current_year_sem` `current_year_sem` INT(198)   NULL AFTER `year_of_enrollment` ;

/* Alter table in target */
ALTER TABLE `prg_time_table_versions` 
	CHANGE `ou_id` `ou_id` INT(11) UNSIGNED   NULL AFTER `programme_id` ;

/* Alter table in target */
ALTER TABLE `prg_ugc_specified_degree` 
	CHANGE `status` `status` TINYINT(11)   NULL AFTER `gazette` ;

/* Alter table in target */
ALTER TABLE `queue` 
	CHANGE `priority` `priority` INT(11) UNSIGNED   NOT NULL DEFAULT 1024 AFTER `delay` ;

/* Alter table in target */
ALTER TABLE `rpms_account` 
	CHANGE `status` `status` TINYINT(5)   NOT NULL AFTER `bankRemark` ;

/* Alter table in target */
ALTER TABLE `rpms_account_expenditure` 
	CHANGE `status` `status` TINYINT(5)   NOT NULL AFTER `expenditureRemark` ;

/* Alter table in target */
ALTER TABLE `rpms_approval` 
	CHANGE `id` `id` INT(11) UNSIGNED   NOT NULL AUTO_INCREMENT FIRST , 
	CHANGE `level` `level` TINYINT(5)   NOT NULL AFTER `id` ;

/* Alter table in target */
ALTER TABLE `rpms_budget` 
	CHANGE `status` `status` TINYINT(5)   NOT NULL DEFAULT 0 AFTER `name` , 
	CHANGE `type` `type` TINYINT(5)   NOT NULL DEFAULT 1 COMMENT 'Recurring/Non-Recurring' AFTER `status` , 
	ADD COLUMN `update_disabled` TINYINT(5)   NULL DEFAULT 0 AFTER `type` , 
	CHANGE `created_by` `created_by` INT(11) UNSIGNED   NULL AFTER `update_disabled` , 
	CHANGE `updated_by` `updated_by` INT(11) UNSIGNED   NULL AFTER `created_by` , 
	CHANGE `created_at` `created_at` INT(11) UNSIGNED   NULL AFTER `updated_by` , 
	CHANGE `updated_at` `updated_at` INT(11) UNSIGNED   NULL AFTER `created_at` ;

/* Alter table in target */
ALTER TABLE `rpms_committee` 
	CHANGE `status` `status` TINYINT(5)   NOT NULL AFTER `shortName` ;

/* Alter table in target */
ALTER TABLE `rpms_committee_members` 
	CHANGE `isSameUniversity` `isSameUniversity` TINYINT(5)   NOT NULL AFTER `memberType` , 
	CHANGE `memberMobile` `memberMobile` BIGINT(10)   NOT NULL AFTER `memberEmail` ;

/* Alter table in target */
ALTER TABLE `rpms_funding_agency` 
	CHANGE `status` `status` TINYINT(5)   NOT NULL AFTER `shortName` ;

/* Alter table in target */
ALTER TABLE `rpms_logs` 
	CHANGE `id` `id` INT(11) UNSIGNED   NOT NULL AUTO_INCREMENT FIRST , 
	CHANGE `uid` `uid` INT(11) UNSIGNED   NOT NULL AFTER `id` ;

/* Alter table in target */
ALTER TABLE `rpms_meeting_invites` 
	CHANGE `id` `id` INT(11) UNSIGNED   NOT NULL AUTO_INCREMENT FIRST , 
	CHANGE `attendeeMobile` `attendeeMobile` BIGINT(10)   NOT NULL AFTER `attendeeEmail` ;

/* Alter table in target */
ALTER TABLE `rpms_order_form` 
	CHANGE `revisedBreakup` `revisedBreakup` TINYINT(5)   NOT NULL AFTER `yearWise` ;

/* Alter table in target */
ALTER TABLE `rpms_project_fund` 
	CHANGE `status` `status` TINYINT(5)   NOT NULL AFTER `sanctionAmount` ;

/* Alter table in target */
ALTER TABLE `rpms_project_information` 
	CHANGE `coInvestigatorMobile` `coInvestigatorMobile` BIGINT(10)   NULL AFTER `coInvestigatorEmail` , 
	CHANGE `projectType` `projectType` TINYINT(5)   NOT NULL AFTER `projectTitle` , 
	CHANGE `status` `status` TINYINT(5)   NOT NULL AFTER `remark` ;

/* Alter table in target */
ALTER TABLE `rpms_project_meeting` 
	CHANGE `id` `id` INT(11) UNSIGNED   NOT NULL AUTO_INCREMENT FIRST , 
	CHANGE `status` `status` TINYINT(5)   NULL DEFAULT 1 AFTER `attendees` ;

/* Alter table in target */
ALTER TABLE `rpms_userReviews` 
	CHANGE `userLevel` `userLevel` TINYINT(5)   NOT NULL AFTER `userId` , 
	CHANGE `status` `status` TINYINT(5)   NOT NULL AFTER `remarks` , 
	CHANGE `forwardTo` `forwardTo` TINYINT(5)   NULL AFTER `status` , 
	CHANGE `forwardLevel` `forwardLevel` TINYINT(5) UNSIGNED   NULL AFTER `forwardTo` ;

/* Alter table in target */
ALTER TABLE `rti_detail` 
	CHANGE `id` `id` INT(11) UNSIGNED   NOT NULL AUTO_INCREMENT FIRST , 
	CHANGE `freezeRti` `freezeRti` TINYINT(5)   NULL DEFAULT 1 COMMENT 'Freeze the RTI if admin thinks that the RTI is finally submitted by the department.Once it Submit, No changes is allowed. 1=>NO,2=>Freeze' AFTER `second_appellate_remarks` ;

/* Alter table in target */
ALTER TABLE `rti_logs` 
	CHANGE `id` `id` INT(11) UNSIGNED   NOT NULL AUTO_INCREMENT FIRST ;

/* Alter table in target */
ALTER TABLE `rti_Response_From_Department` 
	CHANGE `freezeRti` `freezeRti` TINYINT(5)   NULL DEFAULT 1 COMMENT 'Freeze the RTI if admin thinks that the RTI is finally submitted by the department.Once it Submit, No changes is allowed. 1=>NO,2=>Freeze' AFTER `relatedDocumentUpload` ;

/* Alter table in target */
ALTER TABLE `security_helpline` 
	CHANGE `contact_no` `contact_no` BIGINT(12)   NULL AFTER `helpline_no` ;

/* Alter table in target */
ALTER TABLE `security_incident_record` 
	CHANGE `reporting_contact` `reporting_contact` BIGINT(11)   NULL AFTER `reporting_person` ;

/* Alter table in target */
ALTER TABLE `security_logs` 
	CHANGE `id` `id` INT(11) UNSIGNED   NOT NULL AUTO_INCREMENT FIRST ;

/* Alter table in target */
ALTER TABLE `session` 
	CHANGE `status` `status` TINYINT(5)   NOT NULL DEFAULT 0 AFTER `ending_year` , 
	CHANGE `verify` `verify` TINYINT(3)   NULL DEFAULT 0 AFTER `end_date` ;

/* Alter table in target */
ALTER TABLE `sports_ou_subscriptions` 
	CHANGE `updated` `updated` TIMESTAMP   NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP AFTER `updated_at` ;

/* Alter table in target */
ALTER TABLE `student_import` 
	ADD COLUMN `admission_type` VARCHAR(50)  COLLATE utf8mb4_unicode_ci NULL AFTER `id` , 
	CHANGE `enrolment_number` `enrolment_number` VARCHAR(50)  COLLATE utf8mb4_unicode_ci NULL AFTER `admission_type` , 
	CHANGE `aadhar_number` `aadhar_number` BIGINT(15)   NULL AFTER `is_bpl` , 
	CHANGE `admission_valid_upto_year` `admission_valid_upto_year` INT(6)   NULL AFTER `permanent_city` , 
	ADD COLUMN `import_status` VARCHAR(50)  COLLATE utf8mb4_unicode_ci NULL AFTER `employment_status` ;

/* Alter table in target */
ALTER TABLE `student_otp_message` 
	CHANGE `id` `id` INT(11) UNSIGNED   NOT NULL AUTO_INCREMENT FIRST , 
	CHANGE `otp` `otp` INT(11) UNSIGNED   NOT NULL AFTER `user` , 
	CHANGE `mode` `mode` TINYINT(4) UNSIGNED   NOT NULL COMMENT '1 = MAIL, 2 => SMS' AFTER `expiry_time` , 
	CHANGE `used` `used` TINYINT(4) UNSIGNED   NULL DEFAULT 0 AFTER `mode` ;

/* Alter table in target */
ALTER TABLE `student_otp_message_copy` 
	CHANGE `id` `id` INT(11) UNSIGNED   NOT NULL AUTO_INCREMENT FIRST , 
	CHANGE `otp` `otp` INT(11) UNSIGNED   NOT NULL AFTER `user` , 
	CHANGE `mode` `mode` TINYINT(4) UNSIGNED   NOT NULL COMMENT '1 = MAIL, 2 => SMS' AFTER `expiry_time` , 
	CHANGE `used` `used` TINYINT(4) UNSIGNED   NULL DEFAULT 0 AFTER `mode` ;

/* Alter table in target */
ALTER TABLE `student_portal_content` 
	CHANGE `id` `id` INT(11) UNSIGNED   NOT NULL AUTO_INCREMENT FIRST ;

/* Alter table in target */
ALTER TABLE `student_readmission_fee_control` 
	DROP COLUMN `programme_term_ayid` , 
	ADD COLUMN `programme_term_ayid` VARCHAR(30)   AS  (CONCAT(`programme_id`,'_',`term`,'_',`academic_session_id`))  STORED AFTER `late_fee_date_str` ;

/* Alter table in target */
ALTER TABLE `student_record` 
	CHANGE `current_term` `current_term` MEDIUMINT(50)   NULL AFTER `level_of_programme` , 
	CHANGE `next_term` `next_term` MEDIUMINT(50)   NULL AFTER `current_term` , 
	CHANGE `previous_term` `previous_term` MEDIUMINT(50)   NULL AFTER `next_term` , 
	CHANGE `fee_term` `fee_term` MEDIUMINT(50)   NULL AFTER `result_record` , 
	ADD COLUMN `admission_date` DATE   NULL AFTER `admission_fee` , 
	ADD COLUMN `admission_type` VARCHAR(50)  COLLATE utf8mb4_unicode_ci NULL DEFAULT 'REGULAR' COMMENT 'REGULAR/LATERAL-ENTRY/RE-ADMISSION/EXTENSION' AFTER `admission_date` , 
	CHANGE `sub_classification` `sub_classification` VARCHAR(50)  COLLATE utf8mb4_unicode_ci NULL COMMENT 'FSRI INDIAN' AFTER `admission_type` , 
	ADD COLUMN `state_of_domicile` VARCHAR(128)  COLLATE utf8mb4_unicode_ci NULL AFTER `employment_status` , 
	ADD COLUMN `fee_category` VARCHAR(50)  COLLATE utf8mb4_unicode_ci NULL AFTER `state_of_domicile` ;

/* Alter table in target */
ALTER TABLE `student_record_reregistration` 
	CHANGE `current_term` `current_term` MEDIUMINT(50)   NULL AFTER `level_of_programme` , 
	CHANGE `next_term` `next_term` MEDIUMINT(50)   NULL AFTER `current_term` , 
	CHANGE `previous_term` `previous_term` MEDIUMINT(50)   NULL AFTER `next_term` , 
	CHANGE `fee_term` `fee_term` MEDIUMINT(50)   NULL AFTER `result_record` ;

/* Alter table in target */
ALTER TABLE `student_registration` 
	CHANGE `applicant_mobile` `applicant_mobile` BIGINT(10)   NOT NULL AFTER `applicant_name` , 
	CHANGE `status` `status` TINYINT(5)   NULL DEFAULT 1 AFTER `aggregate_score` ;

/* Alter table in target */
ALTER TABLE `student_section` 
	CHANGE `id` `id` INT(11) UNSIGNED   NOT NULL AUTO_INCREMENT FIRST , 
	CHANGE `academic_calendar` `academic_calendar` INT(11) UNSIGNED   NOT NULL AFTER `academic_year` , 
	DROP COLUMN `programme_term_ayid` , 
	ADD COLUMN `programme_term_ayid` VARCHAR(30)   AS  (CONCAT(`programme_id`,'_',`term`,'_',`academic_calendar`))  STORED AFTER `supplementary_enrolment_number` ;

/* Alter table in target */
ALTER TABLE `student_service_menu` 
	CHANGE `id` `id` INT(11) UNSIGNED   NOT NULL AUTO_INCREMENT FIRST ;

/* Alter table in target */
ALTER TABLE `tot_company_profile` 
	CHANGE `id` `id` INT(11) UNSIGNED   NOT NULL AUTO_INCREMENT FIRST , 
	CHANGE `companyHrContact` `companyHrContact` BIGINT(10)   NOT NULL AFTER `companyHrName` ;

/* Alter table in target */
ALTER TABLE `training_company_season` 
	CHANGE `created_at` `created_at` BIGINT(11)   NULL AFTER `status` , 
	CHANGE `updated_at` `updated_at` BIGINT(11)   NULL AFTER `created_by` ;

/* Alter table in target */
ALTER TABLE `training_placement_apply` 
	CHANGE `applicant_mobile` `applicant_mobile` BIGINT(10)   NOT NULL AFTER `ou_id` , 
	CHANGE `application_status` `application_status` TINYINT(5)   NOT NULL DEFAULT 1 AFTER `hireMarkedBy` ;

/* Alter table in target */
ALTER TABLE `training_placement_info` 
	CHANGE `id` `id` INT(11) UNSIGNED   NOT NULL AUTO_INCREMENT FIRST , 
	CHANGE `experience` `experience` TINYINT(5)   NOT NULL COMMENT 'Experience' AFTER `showPost` , 
	CHANGE `type` `type` TINYINT(5)   NOT NULL COMMENT 'Job type Full Time Part time' AFTER `season_id` , 
	CHANGE `interview` `interview` INT(5)   NULL AFTER `closingDate` , 
	CHANGE `writtenTest` `writtenTest` INT(5)   NULL AFTER `interview` , 
	CHANGE `mode` `mode` INT(5)   NULL AFTER `writtenTest` , 
	CHANGE `gD` `gD` INT(2)   NULL AFTER `mode` , 
	CHANGE `vacancies` `vacancies` INT(5)   NOT NULL COMMENT 'No of Vacancies' AFTER `venue` , 
	CHANGE `submitStatus` `submitStatus` TINYINT(5)   NOT NULL DEFAULT 0 COMMENT 'Published Not Published' AFTER `remarks` , 
	CHANGE `status` `status` TINYINT(5)   NOT NULL DEFAULT 0 COMMENT 'Active Inactive' AFTER `submitStatus` ;

/* Alter table in target */
ALTER TABLE `training_season` 
	CHANGE `status` `status` INT(2)   NOT NULL AFTER `fee_for_student` ;

/* Alter table in target */
ALTER TABLE `transport_daily_tracking` 
	CHANGE `driver_contact` `driver_contact` BIGINT(11)   NOT NULL AFTER `driver_name` ;

/* Alter table in target */
ALTER TABLE `transport_logs` 
	CHANGE `id` `id` INT(11) UNSIGNED   NOT NULL AUTO_INCREMENT FIRST ;

/* Alter table in target */
ALTER TABLE `transport_vendor` 
	CHANGE `contact` `contact` BIGINT(11)   NOT NULL AFTER `company_name` , 
	CHANGE `alternate_contact` `alternate_contact` BIGINT(12)   NULL AFTER `contact` ;

/* Alter table in target */
ALTER TABLE `two_factor_authentication` 
	CHANGE `id` `id` INT(11) UNSIGNED   NOT NULL AUTO_INCREMENT FIRST , 
	CHANGE `two_factor_authentication` `two_factor_authentication` TINYINT(5)   NOT NULL AFTER `id` ;

/* Alter table in target */
ALTER TABLE `vendor_detail` 
	CHANGE `purchase_id` `purchase_id` INT(11) UNSIGNED   NOT NULL AFTER `id` ; 

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
