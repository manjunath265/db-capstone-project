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
-- Table `mydb`.`Customerdetails`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Customerdetails` (
  `customer id` INT NOT NULL,
  `Customer name` VARCHAR(45) NOT NULL,
  `Contact details` INT NOT NULL,
  `Email` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`customer id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Bookings`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Bookings` (
  `booking id` INT NOT NULL,
  `Bookingdate` DATE NOT NULL,
  `table no` INT NOT NULL,
  `customer id` INT NOT NULL,
  PRIMARY KEY (`booking id`),
  INDEX `customer id_idx` (`customer id` ASC) VISIBLE,
  CONSTRAINT `customer id`
    FOREIGN KEY (`customer id`)
    REFERENCES `mydb`.`Customerdetails` (`customer id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`menuitems`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`menuitems` (
  `menuitemsid` INT NOT NULL,
  `coursename` VARCHAR(45) NOT NULL,
  `startername` VARCHAR(45) NOT NULL,
  `dessertname` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`menuitemsid`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`menu`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`menu` (
  `MenuId` INT NOT NULL,
  `menu name` VARCHAR(45) NOT NULL,
  `cuisines` VARCHAR(45) NOT NULL,
  `menuitemsid` INT NOT NULL,
  PRIMARY KEY (`MenuId`),
  INDEX `menuitemsid_idx` (`menuitemsid` ASC) VISIBLE,
  CONSTRAINT `menuitemsid`
    FOREIGN KEY (`menuitemsid`)
    REFERENCES `mydb`.`menuitems` (`menuitemsid`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Delivery`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Delivery` (
  `Delivery ID` INT NOT NULL,
  `Delivery date` DATE NOT NULL,
  `status` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Delivery ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Orders`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Orders` (
  `OrderID` INT NOT NULL,
  `OrderDate` DATE NOT NULL,
  `Quantity` INT NOT NULL,
  `Total Cost` INT NOT NULL,
  `MenuID` INT NOT NULL,
  `customer id` INT NOT NULL,
  `Delivery ID` INT NOT NULL,
  `booking id` INT NOT NULL,
  PRIMARY KEY (`OrderID`),
  INDEX `booking id_idx` (`booking id` ASC) VISIBLE,
  INDEX `MenuID_idx` (`MenuID` ASC) VISIBLE,
  INDEX `customer id_idx` (`customer id` ASC) VISIBLE,
  INDEX `Delivery ID_idx` (`Delivery ID` ASC) VISIBLE,
  CONSTRAINT `booking id`
    FOREIGN KEY (`booking id`)
    REFERENCES `mydb`.`Bookings` (`booking id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `MenuID`
    FOREIGN KEY (`MenuID`)
    REFERENCES `mydb`.`menu` (`MenuId`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_customer id`
    FOREIGN KEY (`customer id`)
    REFERENCES `mydb`.`Customerdetails` (`customer id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `Delivery ID`
    FOREIGN KEY (`Delivery ID`)
    REFERENCES `mydb`.`Delivery` (`Delivery ID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Staff Information`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Staff Information` (
  `staff id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `contact number` INT NOT NULL,
  `Email` VARCHAR(45) NOT NULL,
  `role` VARCHAR(45) NOT NULL,
  `Salary` FLOAT NOT NULL,
  `customer id` INT NOT NULL,
  PRIMARY KEY (`staff id`),
  INDEX `fk_customer id_idx` (`customer id` ASC) VISIBLE,
  CONSTRAINT `fk_staff_customer id`
    FOREIGN KEY (`customer id`)
    REFERENCES `mydb`.`Customerdetails` (`customer id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
