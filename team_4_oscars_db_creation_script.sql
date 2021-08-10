-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema team_4_oscars_db
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema team_4_oscars_db
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `team_4_oscars_db` DEFAULT CHARACTER SET utf8 ;
USE `team_4_oscars_db` ;

-- -----------------------------------------------------
-- Table `team_4_oscars_db`.`genres`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `team_4_oscars_db`.`genres` ;

CREATE TABLE IF NOT EXISTS `team_4_oscars_db`.`genres` (
  `genre_id` INT NOT NULL AUTO_INCREMENT,
  `genre_title` VARCHAR(45) NULL,
  PRIMARY KEY (`genre_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `team_4_oscars_db`.`cameraman`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `team_4_oscars_db`.`cameraman` ;

CREATE TABLE IF NOT EXISTS `team_4_oscars_db`.`cameraman` (
  `dp_id` INT NOT NULL AUTO_INCREMENT,
  `dp_first_name` VARCHAR(45) NULL,
  `dp_last_name` VARCHAR(45) NULL,
  PRIMARY KEY (`dp_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `team_4_oscars_db`.`film_production`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `team_4_oscars_db`.`film_production` ;

CREATE TABLE IF NOT EXISTS `team_4_oscars_db`.`film_production` (
  `prod_id` INT NOT NULL AUTO_INCREMENT,
  `prod_name` VARCHAR(45) NULL,
  PRIMARY KEY (`prod_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `team_4_oscars_db`.`rating`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `team_4_oscars_db`.`rating` ;

CREATE TABLE IF NOT EXISTS `team_4_oscars_db`.`rating` (
  `rating_id` INT NOT NULL AUTO_INCREMENT,
  `imdb_rating` DECIMAL(2,1) NULL,
  `rotten_tomatoes_score` INT NULL,
  PRIMARY KEY (`rating_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `team_4_oscars_db`.`movie_oscars`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `team_4_oscars_db`.`movie_oscars` ;

CREATE TABLE IF NOT EXISTS `team_4_oscars_db`.`movie_oscars` (
  `movie_id` INT NOT NULL AUTO_INCREMENT,
  `oscar_title` VARCHAR(45) NULL,
  `oscar_year` DATETIME NULL,
  `oscar_bestpicture_winner` VARCHAR(45) NULL,
  `movie_runtime` INT NULL,
  `movie_country` VARCHAR(45) NULL,
  `genre_id` INT NOT NULL,
  `dp_id` INT NOT NULL,
  `prod_id` INT NOT NULL,
  `rating_id` INT NOT NULL,
  PRIMARY KEY (`movie_id`),
  INDEX `fk_movie_oscars_genres_idx` (`genre_id` ASC) VISIBLE,
  INDEX `fk_movie_oscars_cameraman1_idx` (`dp_id` ASC) VISIBLE,
  INDEX `fk_movie_oscars_film_production1_idx` (`prod_id` ASC) VISIBLE,
  INDEX `fk_movie_oscars_rating1_idx` (`rating_id` ASC) VISIBLE,
  CONSTRAINT `fk_movie_oscars_genres`
    FOREIGN KEY (`genre_id`)
    REFERENCES `team_4_oscars_db`.`genres` (`genre_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_movie_oscars_cameraman1`
    FOREIGN KEY (`dp_id`)
    REFERENCES `team_4_oscars_db`.`cameraman` (`dp_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_movie_oscars_film_production1`
    FOREIGN KEY (`prod_id`)
    REFERENCES `team_4_oscars_db`.`film_production` (`prod_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_movie_oscars_rating1`
    FOREIGN KEY (`rating_id`)
    REFERENCES `team_4_oscars_db`.`rating` (`rating_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `team_4_oscars_db`.`director`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `team_4_oscars_db`.`director` ;

CREATE TABLE IF NOT EXISTS `team_4_oscars_db`.`director` (
  `director_id` INT NOT NULL AUTO_INCREMENT,
  `director_first_name` VARCHAR(45) NULL,
  `director_last_name` VARCHAR(45) NULL,
  PRIMARY KEY (`director_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `team_4_oscars_db`.`writer`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `team_4_oscars_db`.`writer` ;

CREATE TABLE IF NOT EXISTS `team_4_oscars_db`.`writer` (
  `writer_id` INT NOT NULL AUTO_INCREMENT,
  `writer_first_name` VARCHAR(45) NULL,
  `writer_last_name` VARCHAR(45) NULL,
  PRIMARY KEY (`writer_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `team_4_oscars_db`.`linking_writer`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `team_4_oscars_db`.`linking_writer` ;

CREATE TABLE IF NOT EXISTS `team_4_oscars_db`.`linking_writer` (
  `movie_oscars_movie_id` INT NOT NULL,
  `writer_writer_id` INT NOT NULL,
  PRIMARY KEY (`movie_oscars_movie_id`, `writer_writer_id`),
  INDEX `fk_movie_oscars_has_writer_writer1_idx` (`writer_writer_id` ASC) VISIBLE,
  INDEX `fk_movie_oscars_has_writer_movie_oscars1_idx` (`movie_oscars_movie_id` ASC) VISIBLE,
  CONSTRAINT `fk_movie_oscars_has_writer_movie_oscars1`
    FOREIGN KEY (`movie_oscars_movie_id`)
    REFERENCES `team_4_oscars_db`.`movie_oscars` (`movie_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_movie_oscars_has_writer_writer1`
    FOREIGN KEY (`writer_writer_id`)
    REFERENCES `team_4_oscars_db`.`writer` (`writer_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `team_4_oscars_db`.`linking_director`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `team_4_oscars_db`.`linking_director` ;

CREATE TABLE IF NOT EXISTS `team_4_oscars_db`.`linking_director` (
  `movie_oscars_movie_id` INT NOT NULL,
  `director_director_id` INT NOT NULL,
  PRIMARY KEY (`movie_oscars_movie_id`, `director_director_id`),
  INDEX `fk_movie_oscars_has_director_director1_idx` (`director_director_id` ASC) VISIBLE,
  INDEX `fk_movie_oscars_has_director_movie_oscars1_idx` (`movie_oscars_movie_id` ASC) VISIBLE,
  CONSTRAINT `fk_movie_oscars_has_director_movie_oscars1`
    FOREIGN KEY (`movie_oscars_movie_id`)
    REFERENCES `team_4_oscars_db`.`movie_oscars` (`movie_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_movie_oscars_has_director_director1`
    FOREIGN KEY (`director_director_id`)
    REFERENCES `team_4_oscars_db`.`director` (`director_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
