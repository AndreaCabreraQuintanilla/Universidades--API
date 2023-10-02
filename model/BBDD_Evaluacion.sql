-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema EVALUACION_MOD2_SPRINT2
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema EVALUACION_MOD2_SPRINT2
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `EVALUACION_MOD2_SPRINT2` DEFAULT CHARACTER SET utf8 ;
-- -----------------------------------------------------
-- Schema new_schema1
-- -----------------------------------------------------
USE `EVALUACION_MOD2_SPRINT2` ;

-- -----------------------------------------------------
-- Table `EVALUACION_MOD2_SPRINT2`.`paises`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `EVALUACION_MOD2_SPRINT2`.`paises` (
  `idestado` INT NOT NULL AUTO_INCREMENT,
  `nombre_pais` VARCHAR(45) NULL,
  `nombre_provincia` VARCHAR(45) NULL,
  `latitud` DECIMAL NULL,
  `longitud` DECIMAL NULL,
  PRIMARY KEY (`idestado`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `EVALUACION_MOD2_SPRINT2`.`universidades`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `EVALUACION_MOD2_SPRINT2`.`universidades` (
  `iduniversidades` INT NOT NULL AUTO_INCREMENT,
  `nombre_universidad` VARCHAR(100) NULL,
  `pagina_web` VARCHAR(100) NULL,
  `paises_idestado` INT NOT NULL,
  PRIMARY KEY (`iduniversidades`),
  INDEX `fk_universidades_paises_idx` (`paises_idestado` ASC) VISIBLE,
  CONSTRAINT `fk_universidades_paises`
    FOREIGN KEY (`paises_idestado`)
    REFERENCES `EVALUACION_MOD2_SPRINT2`.`paises` (`idestado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
