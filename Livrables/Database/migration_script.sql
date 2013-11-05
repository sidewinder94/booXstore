-- ----------------------------------------------------------------------------
-- MySQL Workbench Migration
-- Migrated Schemata: booXstore
-- Source Schemata: booXstore
-- Created: Tue Nov 05 13:17:43 2013
-- ----------------------------------------------------------------------------

SET FOREIGN_KEY_CHECKS = 0;;

-- ----------------------------------------------------------------------------
-- Schema booXstore
-- ----------------------------------------------------------------------------
DROP SCHEMA IF EXISTS `booXstore` ;
CREATE SCHEMA IF NOT EXISTS `booXstore` ;

-- ----------------------------------------------------------------------------
-- Table booXstore.AUTHOR
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `booXstore`.`AUTHOR` (
  `Id` INT NOT NULL,
  `FirstName` VARCHAR(510) NULL,
  `LastName` VARCHAR(510) NULL,
  PRIMARY KEY (`Id`));

-- ----------------------------------------------------------------------------
-- Table booXstore.BOOK
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `booXstore`.`BOOK` (
  `Id` INT NOT NULL,
  `Title` VARCHAR(510) NULL,
  `Id_Category` INT NULL,
  `Supply` INT NULL,
  `Threshold` INT NULL,
  `Summary` LONGTEXT NULL,
  `Release_Date` DATETIME NULL,
  `Price` INT NULL,
  `Id_Publisher` INT NULL,
  PRIMARY KEY (`Id`));

-- ----------------------------------------------------------------------------
-- Table booXstore.BOOK_AUTHOR
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `booXstore`.`BOOK_AUTHOR` (
  `Id` INT NOT NULL,
  `Id_Author` INT NULL,
  `Id_Book` INT NULL,
  PRIMARY KEY (`Id`),
  CONSTRAINT `FK_BOOK_AUTHOR_ToAUTHOR`
    FOREIGN KEY (`Id_Author`)
    REFERENCES `booXstore`.`AUTHOR` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_BOOK_AUTHOR_ToBOOK`
    FOREIGN KEY (`Id_Book`)
    REFERENCES `booXstore`.`BOOK` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

-- ----------------------------------------------------------------------------
-- Table booXstore.BOOK_ORDER
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `booXstore`.`BOOK_ORDER` (
  `Id` INT NOT NULL,
  `Id_Book` INT NULL,
  `Quantity` INT NULL,
  `Id_Order` INT NULL,
  PRIMARY KEY (`Id`),
  CONSTRAINT `FK_BOOK_ORDER_ToBOOK`
    FOREIGN KEY (`Id_Book`)
    REFERENCES `booXstore`.`BOOK` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_BOOK_ORDER_ToOrder`
    FOREIGN KEY (`Id_Order`)
    REFERENCES `booXstore`.`BOOK` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

-- ----------------------------------------------------------------------------
-- Table booXstore.CATEGORY
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `booXstore`.`CATEGORY` (
  `Id` INT NOT NULL,
  `Name` VARCHAR(510) NULL,
  PRIMARY KEY (`Id`));

-- ----------------------------------------------------------------------------
-- Table booXstore.ORDER
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `booXstore`.`ORDER` (
  `Id` INT NOT NULL,
  `Id_User` INT NOT NULL,
  PRIMARY KEY (`Id`),
  CONSTRAINT `FK_ORDER_ToUser`
    FOREIGN KEY (`Id_User`)
    REFERENCES `booXstore`.`USER` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

-- ----------------------------------------------------------------------------
-- Table booXstore.PUBLISHER
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `booXstore`.`PUBLISHER` (
  `Id` INT NOT NULL,
  `Name` VARCHAR(510) NOT NULL,
  PRIMARY KEY (`Id`));

-- ----------------------------------------------------------------------------
-- Table booXstore.SELLER
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `booXstore`.`SELLER` (
  `Id` INT NOT NULL,
  `Login` VARCHAR(510) NOT NULL,
  `Password` VARCHAR(510) NOT NULL,
  PRIMARY KEY (`Id`));

-- ----------------------------------------------------------------------------
-- Table booXstore.USER
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `booXstore`.`USER` (
  `Id` INT NOT NULL,
  `FirstName` VARCHAR(510) NULL,
  `LastName` VARCHAR(510) NULL,
  `Mail` VARCHAR(510) NULL,
  `Address` VARCHAR(510) NULL,
  `ZIP` VARCHAR(510) NULL,
  `City` VARCHAR(510) NULL,
  `Login` VARCHAR(510) NULL,
  `Password` VARCHAR(510) NULL,
  PRIMARY KEY (`Id`));
SET FOREIGN_KEY_CHECKS = 1;;
