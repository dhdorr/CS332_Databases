-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Company
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Company
-- -----------------------------------------------------
CREATE SCHEMA `mycompany` DEFAULT CHARACTER SET utf8 ;
USE `mycompany` ;

-- -----------------------------------------------------
-- Table `Company`.`EMPLOYEE`
-- -----------------------------------------------------
CREATE TABLE `mycompany`.`EMPLOYEE` (
  `Fname` VARCHAR(15) NOT NULL,
  `Minit` CHAR,
  `Lname` VARCHAR(15) NOT NULL,
  `Ssn` CHAR(9) NOT NULL,
  `Bdate` DATE,
  `Address` VARCHAR(30),
  `Sex` CHAR NULL,
  `Salary` DECIMAL(10,2),
  `Super_ssn` CHAR(9),
  `Dno` INT,
  PRIMARY KEY (`Ssn`));


-- -----------------------------------------------------
-- Table `Company`.`DEPARTMENT`
-- -----------------------------------------------------
CREATE TABLE `mycompany`.`DEPARTMENT` (
  `Dname` VARCHAR(15) NOT NULL,
  `Dnumber` INT NOT NULL,
  `Mgr_ssn` CHAR(9) NOT NULL,
  `Mgr_start_date` DATE,
  PRIMARY KEY (`Dnumber`),
  UNIQUE (`Dname`),
  FOREIGN KEY (`Mgr_ssn`) REFERENCES `EMPLOYEE`(`Ssn`));


-- -----------------------------------------------------
-- Table `Company`.`DEPT_LOCATIONS`
-- -----------------------------------------------------
CREATE TABLE `mycompany`.`DEPT_LOCATIONS` (
  `Dnumber` INT NOT NULL,
  `Dlocation` VARCHAR(15) NOT NULL,
  PRIMARY KEY (`Dnumber`, `Dlocation`),
  FOREIGN KEY (`Dnumber`) REFERENCES `DEPARTMENT`(`Dnumber`));


-- -----------------------------------------------------
-- Table `Company`.`PROJECT`
-- -----------------------------------------------------
CREATE TABLE `mycompany`.`PROJECT` (
  `Pname` VARCHAR(15) NOT NULL,
  `Pnumber` INT NOT NULL,
  `Plocation` VARCHAR(15),
  `Dnum` INT NOT NULL,
  PRIMARY KEY (`Pnumber`),
  UNIQUE (`Pname`),
  FOREIGN KEY (`Dnum`) REFERENCES `DEPARTMENT`(`Dnumber`));


-- -----------------------------------------------------
-- Table `Company`.`WORKS_ON`
-- -----------------------------------------------------
CREATE TABLE `mycompany`.`WORKS_ON` (
  `Essn` CHAR(9) NOT NULL,
  `Pno` INT NOT NULL,
  `Hours` DECIMAL(3,1),
  PRIMARY KEY (`Essn`, `Pno`),
  FOREIGN KEY (`Essn`) REFERENCES `EMPLOYEE`(`Ssn`),
  FOREIGN KEY (`Pno`) REFERENCES `PROJECT`(`Pnumber`));


-- -----------------------------------------------------
-- Table `Company`.`DEPENDENT`
-- -----------------------------------------------------
CREATE TABLE `mycompany`.`DEPENDENT` (
  `Essn` CHAR(9) NOT NULL,
  `Dependent_name` VARCHAR(15) NOT NULL,
  `Sex` CHAR,
  `Bdate` DATE,
  `Relationship` VARCHAR(8),
  PRIMARY KEY (`Essn`, `Dependent_name`),
  FOREIGN KEY(`Essn`) REFERENCES `EMPLOYEE`(`Ssn`));


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
