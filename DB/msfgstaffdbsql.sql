-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema msfgstaffdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `msfgstaffdb` ;

-- -----------------------------------------------------
-- Schema msfgstaffdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `msfgstaffdb` DEFAULT CHARACTER SET utf8 ;
USE `msfgstaffdb` ;

-- -----------------------------------------------------
-- Table `staff`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `staff` ;

CREATE TABLE IF NOT EXISTS `staff` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(50) NOT NULL,
  `last_name` VARCHAR(50) NOT NULL,
  `birth_date` DATE NULL,
  `email` VARCHAR(100) NULL,
  `phone` VARCHAR(20) NULL,
  `start_date` DATE NULL,
  `end_date` DATE NULL,
  `active` TINYINT NULL,
  `job_title` VARCHAR(50) NULL,
  `employment_type` VARCHAR(50) NULL,
  `nmls` VARCHAR(20) NULL,
  `headshot` VARCHAR(100) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS vonzink@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'vonzink'@'localhost' IDENTIFIED BY 'vonzink';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'vonzink'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `staff`
-- -----------------------------------------------------
START TRANSACTION;
USE `msfgstaffdb`;
INSERT INTO `staff` (`id`, `first_name`, `last_name`, `birth_date`, `email`, `phone`, `start_date`, `end_date`, `active`, `job_title`, `employment_type`, `nmls`, `headshot`) VALUES (1, 'Robert', 'Hoff', '1977-11-01', 'robert.hoff@msfg.us', '720-838-6372', '2015-11-03', NULL, 1, 'President', 'Exempt', '1234567', NULL);
INSERT INTO `staff` (`id`, `first_name`, `last_name`, `birth_date`, `email`, `phone`, `start_date`, `end_date`, `active`, `job_title`, `employment_type`, `nmls`, `headshot`) VALUES (2, 'Seth', 'Angell', '1977-11-16', 'seth.angell@msfg.us', '303-803-8519', '2016-01-01', NULL, 1, 'Executive VP', 'Exempt', '2345678', NULL);
INSERT INTO `staff` (`id`, `first_name`, `last_name`, `birth_date`, `email`, `phone`, `start_date`, `end_date`, `active`, `job_title`, `employment_type`, `nmls`, `headshot`) VALUES (3, 'Zachary', 'Zink', '1975-11-13', 'zachary.zink@msfg.us', '303-870-6518', '2017-04-07', NULL, 1, 'IT/LO', 'Exempt', '451924', NULL);
INSERT INTO `staff` (`id`, `first_name`, `last_name`, `birth_date`, `email`, `phone`, `start_date`, `end_date`, `active`, `job_title`, `employment_type`, `nmls`, `headshot`) VALUES (4, 'Tanya', 'Long', '1973-07-25', 'tanya.long@msfg.us', '701-471-1687', '2017-07-31', NULL, 1, 'Sr LO', 'Exempt', '1345124', NULL);
INSERT INTO `staff` (`id`, `first_name`, `last_name`, `birth_date`, `email`, `phone`, `start_date`, `end_date`, `active`, `job_title`, `employment_type`, `nmls`, `headshot`) VALUES (5, 'Kray', 'Olson', '1977-08-11', 'kray.olson@compasshl.us', '701-425-2223', '2019-11-05', NULL, 1, 'Sr LO', 'Exempt', '6541274', NULL);
INSERT INTO `staff` (`id`, `first_name`, `last_name`, `birth_date`, `email`, `phone`, `start_date`, `end_date`, `active`, `job_title`, `employment_type`, `nmls`, `headshot`) VALUES (6, 'Mike', 'Wilson', '1963-08-10', 'michael.wilson@msfg.us', '303-550-7730', '2016-07-11', NULL, 1, 'Office Manager', 'Non-Exempt', NULL, NULL);
INSERT INTO `staff` (`id`, `first_name`, `last_name`, `birth_date`, `email`, `phone`, `start_date`, `end_date`, `active`, `job_title`, `employment_type`, `nmls`, `headshot`) VALUES (7, 'Ashley', 'Iversion', NULL, NULL, NULL, NULL, NULL, NULL, 'Processor', NULL, NULL, NULL);
INSERT INTO `staff` (`id`, `first_name`, `last_name`, `birth_date`, `email`, `phone`, `start_date`, `end_date`, `active`, `job_title`, `employment_type`, `nmls`, `headshot`) VALUES (8, 'Kimberly', 'Thomas', NULL, NULL, NULL, NULL, NULL, NULL, 'Loan Liason', NULL, NULL, NULL);
INSERT INTO `staff` (`id`, `first_name`, `last_name`, `birth_date`, `email`, `phone`, `start_date`, `end_date`, `active`, `job_title`, `employment_type`, `nmls`, `headshot`) VALUES (9, 'Tracy', 'Roberts', NULL, NULL, NULL, NULL, NULL, NULL, 'LO 2', NULL, NULL, NULL);
INSERT INTO `staff` (`id`, `first_name`, `last_name`, `birth_date`, `email`, `phone`, `start_date`, `end_date`, `active`, `job_title`, `employment_type`, `nmls`, `headshot`) VALUES (10, 'Laura', 'Schloer', NULL, NULL, NULL, NULL, NULL, NULL, 'LO 2', NULL, NULL, NULL);
INSERT INTO `staff` (`id`, `first_name`, `last_name`, `birth_date`, `email`, `phone`, `start_date`, `end_date`, `active`, `job_title`, `employment_type`, `nmls`, `headshot`) VALUES (11, 'Josh', 'Sourial', NULL, NULL, NULL, NULL, NULL, NULL, 'LO 2', NULL, NULL, NULL);
INSERT INTO `staff` (`id`, `first_name`, `last_name`, `birth_date`, `email`, `phone`, `start_date`, `end_date`, `active`, `job_title`, `employment_type`, `nmls`, `headshot`) VALUES (12, 'Kimberly', 'Kainz', NULL, NULL, NULL, NULL, NULL, NULL, 'Processor', NULL, NULL, NULL);
INSERT INTO `staff` (`id`, `first_name`, `last_name`, `birth_date`, `email`, `phone`, `start_date`, `end_date`, `active`, `job_title`, `employment_type`, `nmls`, `headshot`) VALUES (13, 'Sandra', 'Semental', NULL, NULL, NULL, NULL, NULL, NULL, 'LO 1', NULL, NULL, NULL);
INSERT INTO `staff` (`id`, `first_name`, `last_name`, `birth_date`, `email`, `phone`, `start_date`, `end_date`, `active`, `job_title`, `employment_type`, `nmls`, `headshot`) VALUES (14, 'Noah', 'Youngs', NULL, NULL, NULL, NULL, NULL, NULL, 'LO 1', NULL, NULL, NULL);
INSERT INTO `staff` (`id`, `first_name`, `last_name`, `birth_date`, `email`, `phone`, `start_date`, `end_date`, `active`, `job_title`, `employment_type`, `nmls`, `headshot`) VALUES (15, 'Michael', 'Grensteiner', NULL, NULL, NULL, NULL, NULL, NULL, 'LO2', NULL, NULL, NULL);

COMMIT;

