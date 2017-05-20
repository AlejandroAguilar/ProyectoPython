SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `control` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `control` ;

-- -----------------------------------------------------
-- Table `control`.`Usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `control`.`Usuarios` (
  `Id_Usuarios` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(50) NOT NULL,
  `Apellido_P` VARCHAR(50) NOT NULL,
  `Apellido_M` VARCHAR(50) NOT NULL,
  `Fecha_Nacimiento` DATE NOT NULL,
  `Id_rol_usuario` INT NOT NULL,
  `Usuario` VARCHAR(50) NOT NULL,
  `Password` VARCHAR(50) NOT NULL,
  `Matricula` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`Id_Usuarios`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `control`.`Roles`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `control`.`Roles` (
  `Id_Roles` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(50) NOT NULL,
  `Descripcion` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`Id_Roles`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `control`.`Grupo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `control`.`Grupo` (
  `Id_Grupo` INT NOT NULL AUTO_INCREMENT,
  `Clave` VARCHAR(45) NOT NULL,
  `Turno` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Id_Grupo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `control`.`Materia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `control`.`Materia` (
  `Id_Materia` INT NOT NULL AUTO_INCREMENT,
  `Clave` VARCHAR(50) NOT NULL,
  `Nombre` VARCHAR(50) NOT NULL,
  `Descripcion` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`Id_Materia`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `control`.`Usuario_grp_mat`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `control`.`Usuario_grp_mat` (
  `Id_Usuario_grp_mat` INT NOT NULL AUTO_INCREMENT,
  `Id_Usario` INT NOT NULL,
  `Id_Grupo` INT NOT NULL,
  `Id_Materia` INT NOT NULL,
  `Dias` VARCHAR(50) NOT NULL,
  `Duracion` VARCHAR(50) NOT NULL,
  `Id_Roles` INT NOT NULL,
  PRIMARY KEY (`Id_Usuario_grp_mat`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `control`.`Actividad`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `control`.`Actividad` (
  `Id_Actividad` INT NOT NULL AUTO_INCREMENT,
  `Id_tipo_actividad` INT NOT NULL,
  `Descripcion` VARCHAR(100) NOT NULL,
  `Id_Usuario_grp_mat` INT NOT NULL,
  PRIMARY KEY (`Id_Actividad`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `control`.`Detalle_Actividad`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `control`.`Detalle_Actividad` (
  `Id_Detalle_Actividad` INT NOT NULL AUTO_INCREMENT,
  `Id_Usuario` INT NOT NULL,
  `Id_Actividad` INT NOT NULL,
  `Calificacion` FLOAT NOT NULL,
  `Comentarios` VARCHAR(100) NOT NULL,
  `Fecha_Real_Entrega` DATE NOT NULL,
  PRIMARY KEY (`Id_Detalle_Actividad`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `control`.`Evaluacion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `control`.`Evaluacion` (
  `Id_Evaluacion` INT NOT NULL AUTO_INCREMENT,
  `Id_usuario` INT NOT NULL,
  `Id_Usuario_grp_mat` INT NOT NULL,
  `Promedio` FLOAT NOT NULL,
  PRIMARY KEY (`Id_Evaluacion`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `control`.`Asistencia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `control`.`Asistencia` (
  `Id_Asistencia` INT NOT NULL AUTO_INCREMENT,
  `Id_Usuario` INT NOT NULL,
  `Id_Usuario_grp_mat` INT NOT NULL,
  `Fecha` DATE NOT NULL,
  PRIMARY KEY (`Id_Asistencia`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `control`.`Tipo_Actividades`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `control`.`Tipo_Actividades` (
  `Id_Tipo_Actividades` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(50) NOT NULL,
  `Descripcion` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`Id_Tipo_Actividades`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
