-- MySQL Script generated by MySQL Workbench
-- Mon Oct 28 09:03:00 2019
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`employee`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`employee` (
  `emp_num` INT NOT NULL AUTO_INCREMENT,
  `emp_ln` VARCHAR(255) NULL,
  `emp_mn` VARCHAR(255) NULL,
  `emp_fn` VARCHAR(255) NULL,
  `emp_emercon` VARCHAR(255) NULL,
  `emp_emernum` VARCHAR(255) NULL,
  `emp_type` VARCHAR(255) NULL,
  PRIMARY KEY (`emp_num`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`bid`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`bid` (
  `bid_num` INT NOT NULL AUTO_INCREMENT,
  `bid_refid` VARCHAR(45) NULL,
  `bid_orgname` VARCHAR(45) NULL,
  `bid_conam` VARCHAR(45) NULL,
  `employee_emp_num` INT NOT NULL,
  PRIMARY KEY (`bid_num`, `employee_emp_num`),
  INDEX `fk_bid_employee_idx` (`employee_emp_num` ASC)  ,
  CONSTRAINT `fk_bid_employee`
    FOREIGN KEY (`employee_emp_num`)
    REFERENCES `mydb`.`employee` (`emp_num`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`project`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`project` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `proj_name` VARCHAR(45) NULL,
  `project_loc` VARCHAR(45) NULL,
  `proj_head` VARCHAR(45) NULL,
  `proj_docs` VARCHAR(45) NULL,
  `proj_type` VARCHAR(45) NULL,
  `employee_emp_num` INT NOT NULL,
  PRIMARY KEY (`id`, `employee_emp_num`),
  INDEX `fk_project_employee1_idx` (`employee_emp_num` ASC)  ,
  CONSTRAINT `fk_project_employee1`
    FOREIGN KEY (`employee_emp_num`)
    REFERENCES `mydb`.`employee` (`emp_num`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`worker`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`worker` (
  `wker_num` INT NOT NULL AUTO_INCREMENT,
  `wker_ln` VARCHAR(45) NULL,
  `wker_mn` VARCHAR(45) NULL,
  `wker_fn` VARCHAR(45) NULL,
  `wker_emercon` VARCHAR(45) NULL,
  `wker_emernum` VARCHAR(45) NULL,
  `wker_pay` VARCHAR(45) NULL,
  `wker_att` VARCHAR(45) NULL,
  `wker_type` VARCHAR(45) NULL,
  `employee_emp_num` INT NOT NULL,
  PRIMARY KEY (`wker_num`, `employee_emp_num`),
  INDEX `fk_worker_employee1_idx` (`employee_emp_num` ASC)  ,
  CONSTRAINT `fk_worker_employee1`
    FOREIGN KEY (`employee_emp_num`)
    REFERENCES `mydb`.`employee` (`emp_num`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`suppliers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`suppliers` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `supl_prod` VARCHAR(45) NULL,
  `supl_comp` VARCHAR(45) NULL,
  `supl_loc` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`project_has_suppliers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`project_has_suppliers` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `project_id` INT NOT NULL,
  `suppliers_id` INT NOT NULL,
  INDEX `fk_project_has_suppliers_suppliers1_idx` (`suppliers_id` ASC)  ,
  INDEX `fk_project_has_suppliers_project1_idx` (`project_id` ASC)  ,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_project_has_suppliers_project1`
    FOREIGN KEY (`project_id`)
    REFERENCES `mydb`.`project` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_project_has_suppliers_suppliers1`
    FOREIGN KEY (`suppliers_id`)
    REFERENCES `mydb`.`suppliers` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;