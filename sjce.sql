/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

USE `teqip_prod`; 

/* Foreign Keys must be dropped in the target to ensure that requires changes can be done*/

ALTER TABLE `prg_course_evaluation_component` 
	DROP FOREIGN KEY `prg_course_evaluation_component_ibfk_1`  , 
	DROP FOREIGN KEY `prg_course_evaluation_component_ibfk_3`  , 
	DROP FOREIGN KEY `prg_course_evaluation_component_ibfk_4`  , 
	DROP FOREIGN KEY `prg_course_evaluation_component_ibfk_5`  ;


/* Alter table in target */
ALTER TABLE `adm_cycle` 
	CHANGE `updated` `updated` timestamp   NULL on update CURRENT_TIMESTAMP after `updated_by` ;

/* Alter table in target */
ALTER TABLE `alumni_communication_log` 
	CHANGE `to_email` `to_email` text  COLLATE latin1_swedish_ci NOT NULL after `send_choice` , 
	CHANGE `to_mobile` `to_mobile` text  COLLATE latin1_swedish_ci NULL after `to_email` , 
	CHANGE `subject` `subject` text  COLLATE latin1_swedish_ci NOT NULL after `to_mobile` , 
	CHANGE `message` `message` text  COLLATE latin1_swedish_ci NOT NULL after `subject` , 
	CHANGE `sms` `sms` text  COLLATE latin1_swedish_ci NULL after `message` , 
	CHANGE `date` `date` timestamp   NULL after `sms` , 
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
	CHANGE `service` `service` tinyint(4) unsigned   NOT NULL after `expiry_time` , 
	CHANGE `mode` `mode` tinyint(4) unsigned   NOT NULL COMMENT '1 = MAIL, 2 => SMS' after `service` , 
	CHANGE `used` `used` tinyint(4) unsigned   NULL DEFAULT 0 after `mode` , 
	CHANGE `request_ip` `request_ip` varchar(40)  COLLATE latin1_swedish_ci NULL after `used` , 
	CHANGE `response_ip` `response_ip` varchar(40)  COLLATE latin1_swedish_ci NULL after `request_ip` , DEFAULT CHARSET='latin1', COLLATE ='latin1_swedish_ci' ;

/* Alter table in target */
ALTER TABLE `alumni_ou_admin_mapping` 
	CHANGE `user_id` `user_id` varchar(255)  COLLATE latin1_swedish_ci NOT NULL after `ou_id` , 
	CHANGE `status` `status` tinyint(4)   NULL after `user_id` , 
	CHANGE `ip` `ip` varchar(255)  COLLATE latin1_swedish_ci NULL after `updated_by` , DEFAULT CHARSET='latin1', COLLATE ='latin1_swedish_ci' ;

/* Alter table in target */
ALTER TABLE `alumni_ou_mapping` 
	CHANGE `alumni_id` `alumni_id` varchar(255)  COLLATE latin1_swedish_ci NOT NULL after `ou_id` , 
	CHANGE `status` `status` tinyint(4)   NULL after `alumni_id` , 
	CHANGE `ip` `ip` varchar(255)  COLLATE latin1_swedish_ci NULL after `updated_by` , DEFAULT CHARSET='latin1', COLLATE ='latin1_swedish_ci' ;

/* Alter table in target */
ALTER TABLE `alumni_personal` 
	CHANGE `photo` `photo` text  COLLATE utf8mb4_unicode_ci NULL after `employer_name` , 
	CHANGE `cv` `cv` text  COLLATE utf8mb4_unicode_ci NULL after `photo` , 
	CHANGE `account_created` `account_created` tinyint(4)   NULL DEFAULT 0 after `updated` , 
	CHANGE `firstLogin` `firstLogin` tinyint(4)   NULL after `account_created_at` , 
	CHANGE `otp_email` `otp_email` varchar(45)  COLLATE utf8mb4_unicode_ci NULL after `firstLogin` , 
	CHANGE `otp_mobile` `otp_mobile` varchar(45)  COLLATE utf8mb4_unicode_ci NULL after `otp_email` ;

/* Alter table in target */
ALTER TABLE `document_system` 
	ADD COLUMN `view_type` varchar(20)  COLLATE utf8_unicode_ci NULL after `embargo_reason` , 
	CHANGE `status` `status` tinyint(4)   NULL after `view_type` ;

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
ALTER TABLE `ems_mentor_to_student` 
	ADD COLUMN `roll_no` varchar(255)  COLLATE utf8mb4_unicode_ci NULL after `duration_of_mentoring` , 
	ADD COLUMN `extra_details` text  COLLATE utf8mb4_unicode_ci NULL after `roll_no` , 
	CHANGE `created_at` `created_at` int(11)   NULL after `extra_details` ;

/* Alter table in target */
ALTER TABLE `endowment_zpay_trans_sent` 
	CHANGE `id` `id` int(11) unsigned   NOT NULL auto_increment first , 
	CHANGE `paid` `paid` tinyint(4)   NULL DEFAULT 0 after `response_sub_state` , 
	CHANGE `type` `type` tinyint(4)   NULL DEFAULT 0 COMMENT 'payment 9 or refund=1' after `amount_received_currency` , 
	CHANGE `updated` `updated` timestamp   NULL on update CURRENT_TIMESTAMP after `updated_by` , 
	CHANGE `draft_number` `draft_number` varbinary(195)   NULL after `draft_date` , 
	CHANGE `verified` `verified` tinyint(4)   NULL DEFAULT 0 after `extra2` , 
	CHANGE `double_payment` `double_payment` tinyint(4)   NULL DEFAULT 0 after `verified_mode` , 
	CHANGE `refund_initiated` `refund_initiated` tinyint(4)   NULL DEFAULT 0 COMMENT 'yes/no' after `double_payment` , 
	DROP KEY `formNo`, ADD FULLTEXT KEY `formNo`(`service_reference_no`) ;


/* Create table in target */
CREATE TABLE `evaluation_log`(
	`id` int(10) unsigned NOT NULL  auto_increment , 
	`user_id` varchar(128) COLLATE utf8mb4_unicode_ci NULL  , 
	`type` varchar(128) COLLATE utf8mb4_unicode_ci NULL  , 
	`message` text COLLATE utf8mb4_unicode_ci NULL  , 
	PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET='utf8mb4' COLLATE='utf8mb4_unicode_ci';


/* Alter table in target */
ALTER TABLE `grievance_logs` 
	ADD COLUMN `grievance_type` varchar(10)  COLLATE utf8_unicode_ci NULL after `userId` , 
	CHANGE `taskPerformed` `taskPerformed` varchar(50)  COLLATE utf8_unicode_ci NOT NULL COMMENT 'Current task performed by the Admin' after `grievance_type` ;

/* Alter table in target */
ALTER TABLE `grievance_meeting` 
	ADD COLUMN `grievance_type` varchar(10)  COLLATE utf8mb4_unicode_ci NULL after `grievanceId` , 
	CHANGE `meetingType` `meetingType` varchar(190)  COLLATE utf8mb4_unicode_ci NOT NULL after `grievance_type` ;

/* Alter table in target */
ALTER TABLE `grievance_meeting_invites` 
	ADD COLUMN `grievance_type` varchar(10)  COLLATE utf8mb4_unicode_ci NULL after `meetingId` , 
	CHANGE `attendeeId` `attendeeId` int(11)   NULL after `grievance_type` ;

/* Alter table in target */
ALTER TABLE `grievance_meeting_logs` 
	ADD COLUMN `grievance_type` varchar(10)  COLLATE utf8mb4_unicode_ci NULL after `grievanceId` , 
	CHANGE `meetingId` `meetingId` int(10) unsigned   NULL after `grievance_type` ;

/* Alter table in target */
ALTER TABLE `grievance_notes` 
	ADD COLUMN `grievance_type` varchar(10)  COLLATE utf8mb4_unicode_ci NULL after `grievanceId` , 
	CHANGE `meetingId` `meetingId` int(11)   NULL after `grievance_type` ;

/* Alter table in target */
ALTER TABLE `health_membership` 
	ADD COLUMN `validity_type` varchar(50)  COLLATE utf8mb4_general_ci NULL after `membership_date` , 
	CHANGE `valid_from` `valid_from` date   NULL after `validity_type` ;

/* Alter table in target */
ALTER TABLE `knowledge_paper` 
	CHANGE `title` `title` text  COLLATE utf8_general_ci NULL after `pub_type` , 
	CHANGE `upload` `upload` varchar(1024)  COLLATE utf8_general_ci NULL after `year` ;

/* Alter table in target */
ALTER TABLE `leave_applications` 
	CHANGE `leave_balance` `leave_balance` float   NULL after `location` , 
	CHANGE `rejoin_approval_status` `rejoin_approval_status` tinyint(4)   NULL after `leave_balance` , 
	ADD COLUMN `ltc_id` int(10)   NULL after `rejoin_approval_remarks` , 
	ADD COLUMN `leave_balance_before_sanction` float   NULL after `ltc_id` , 
	ADD COLUMN `sanction_letter` text  COLLATE utf8mb4_unicode_ci NULL after `leave_balance_before_sanction` , 
	ADD COLUMN `rejoin_letter` text  COLLATE utf8mb4_unicode_ci NULL after `sanction_letter` , 
	ADD COLUMN `half_pay_leave_balance` tinyint(4)   NULL after `rejoin_letter` ;

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
	CHANGE `document_req_on_rejoin` `document_req_on_rejoin` tinyint(4)   NULL after `notification_on_cancel` , 
	CHANGE `rejoin_required` `rejoin_required` tinyint(4)   NULL after `document_req_on_rejoin` , 
	ADD COLUMN `notification_on_rejoin` varchar(255)  COLLATE utf8mb4_unicode_ci NULL after `rejoin_required` ;

/* Alter table in target */
ALTER TABLE `leaves` 
	ADD COLUMN `ltc_applied` tinyint(4)   NULL DEFAULT 0 after `updated` , 
	ADD COLUMN `send_sanction_letter` tinyint(4)   NULL after `ltc_applied` ;

/* Alter table in target */
ALTER TABLE `migration_alumni` 
	CHANGE `version` `version` varchar(180)  COLLATE utf8mb4_unicode_ci NOT NULL first , COLLATE ='utf8mb4_unicode_ci' ;

/* Alter table in target */
ALTER TABLE `migration_endowment` 
	CHANGE `version` `version` varchar(180)  COLLATE utf8mb4_unicode_ci NOT NULL first , COLLATE ='utf8mb4_unicode_ci' ;

/* Alter table in target */
ALTER TABLE `prg_academic_year_session_map` 
	ADD COLUMN `status` varchar(50)  COLLATE utf8mb4_unicode_ci NULL DEFAULT 'DRAFT' after `update` ;

/* Alter table in target */
ALTER TABLE `prg_course_evaluation_component` 
	ADD COLUMN `display_mark_in_result` varchar(5)  COLLATE utf8mb4_unicode_ci NULL DEFAULT 'YES' after `grade_letter_group` , 
	CHANGE `credit_weightage` `credit_weightage` decimal(10,2)   NOT NULL DEFAULT 0.00 after `display_mark_in_result` , 
	CHANGE `is_parent` `is_parent` tinyint(4)   NOT NULL DEFAULT 1 after `credit_weightage` , 
	CHANGE `aggregate_formula` `aggregate_formula` varchar(1000)  COLLATE utf8mb4_unicode_ci NULL after `aggregate` , 
	CHANGE `required_to_pass` `required_to_pass` varchar(3)  COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'YES' COMMENT 'YES/NO' after `aggregate_formula` , 
	CHANGE `minimum_passing_marks` `minimum_passing_marks` decimal(10,2)   NULL DEFAULT 0.00 after `required_to_pass` , 
	CHANGE `applicable_from_year` `applicable_from_year` int(11)   NULL after `minimum_passing_marks` ;

/* Alter table in target */
ALTER TABLE `prg_course_relation` 
	ADD COLUMN `id` int(10) unsigned   NOT NULL auto_increment first , 
	CHANGE `course_id` `course_id` int(11)   NULL after `id` , 
	DROP COLUMN `int` , 
	DROP KEY `PRIMARY`, ADD PRIMARY KEY(`id`) ;

/* Alter table in target */
ALTER TABLE `rpms_budget` 
	ADD COLUMN `update_disabled` tinyint(5)   NULL DEFAULT 0 after `type` , 
	CHANGE `created_by` `created_by` int(11) unsigned   NULL after `update_disabled` ;

/* Alter table in target */
ALTER TABLE `sports_ou_subscriptions` 
	CHANGE `updated` `updated` timestamp   NULL on update CURRENT_TIMESTAMP after `updated_at` ;

/* Alter table in target */
ALTER TABLE `student_import` 
	ADD COLUMN `admission_type` varchar(50)  COLLATE utf8mb4_unicode_ci NULL after `id` , 
	CHANGE `enrolment_number` `enrolment_number` varchar(50)  COLLATE utf8mb4_unicode_ci NULL after `admission_type` , 
	ADD COLUMN `import_status` varchar(50)  COLLATE utf8mb4_unicode_ci NULL after `employment_status` ;

/* Alter table in target */
ALTER TABLE `student_record` 
	ADD COLUMN `admission_date` date   NULL after `admission_fee` , 
	ADD COLUMN `admission_type` varchar(50)  COLLATE utf8mb4_unicode_ci NULL DEFAULT 'REGULAR' COMMENT 'REGULAR/LATERAL-ENTRY/RE-ADMISSION/EXTENSION' after `admission_date` , 
	CHANGE `sub_classification` `sub_classification` varchar(50)  COLLATE utf8mb4_unicode_ci NULL COMMENT 'FSRI INDIAN' after `admission_type` , 
	ADD COLUMN `state_of_domicile` varchar(128)  COLLATE utf8mb4_unicode_ci NULL after `employment_status` , 
	ADD COLUMN `fee_category` varchar(50)  COLLATE utf8mb4_unicode_ci NULL after `state_of_domicile` ; 

/* The foreign keys that were dropped are now re-created*/

ALTER TABLE `prg_course_evaluation_component` 
	ADD CONSTRAINT `prg_course_evaluation_component_ibfk_1` 
	FOREIGN KEY (`programme_id`) REFERENCES `core_programme` (`id`) ON DELETE CASCADE ON UPDATE CASCADE , 
	ADD CONSTRAINT `prg_course_evaluation_component_ibfk_3` 
	FOREIGN KEY (`process_id`) REFERENCES `evaluation_process` (`id`) ON DELETE CASCADE ON UPDATE CASCADE , 
	ADD CONSTRAINT `prg_course_evaluation_component_ibfk_4` 
	FOREIGN KEY (`assessment_id`) REFERENCES `evaluation_assessment_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE , 
	ADD CONSTRAINT `prg_course_evaluation_component_ibfk_5` 
	FOREIGN KEY (`course_id`) REFERENCES `prg_course_list_v2` (`id`) ON DELETE CASCADE ON UPDATE CASCADE ;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
