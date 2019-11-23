-- MySQL Script generated by MySQL Workbench
-- Sat Nov 23 21:19:11 2019
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `mydb` ;

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`user`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`user` ;

CREATE TABLE IF NOT EXISTS `mydb`.`user` (
  `iduser` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(16) NOT NULL,
  `password` VARCHAR(32) NOT NULL,
  `create_time` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`iduser`));


-- -----------------------------------------------------
-- Table `mydb`.`pivit`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`pivit` ;

CREATE TABLE IF NOT EXISTS `mydb`.`pivit` (
  `idpivit` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(16) NOT NULL,
  `lugarvista` VARCHAR(45) NOT NULL,
  `edad` INT NULL DEFAULT 0,
  `create_time` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idpivit`));


-- -----------------------------------------------------
-- Table `mydb`.`playlist`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`playlist` ;

CREATE TABLE IF NOT EXISTS `mydb`.`playlist` (
  `idplaylist` INT NOT NULL AUTO_INCREMENT,
  `numpivits` INT NOT NULL,
  `user_iduser` INT NOT NULL,
  PRIMARY KEY (`idplaylist`, `user_iduser`),
  INDEX `fk_playlist_user1_idx` (`user_iduser` ASC) VISIBLE,
  CONSTRAINT `fk_playlist_user1`
    FOREIGN KEY (`user_iduser`)
    REFERENCES `mydb`.`user` (`iduser`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`playlist_has_pivit`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`playlist_has_pivit` ;

CREATE TABLE IF NOT EXISTS `mydb`.`playlist_has_pivit` (
  `playlist_idplaylist` INT NOT NULL,
  `pivit_idpivit` INT NOT NULL,
  PRIMARY KEY (`playlist_idplaylist`, `pivit_idpivit`),
  INDEX `fk_playlist_has_pivit_pivit1_idx` (`pivit_idpivit` ASC) VISIBLE,
  INDEX `fk_playlist_has_pivit_playlist1_idx` (`playlist_idplaylist` ASC) VISIBLE,
  CONSTRAINT `fk_playlist_has_pivit_playlist1`
    FOREIGN KEY (`playlist_idplaylist`)
    REFERENCES `mydb`.`playlist` (`idplaylist`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_playlist_has_pivit_pivit1`
    FOREIGN KEY (`pivit_idpivit`)
    REFERENCES `mydb`.`pivit` (`idpivit`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
