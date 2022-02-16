-- -----------------------------------------------------
-- Schema full-stack-sharemedia
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `full-stack-sharemedia`;

CREATE SCHEMA `full-stack-sharemedia`;
USE `full-stack-sharemedia` ;

-- -----------------------------------------------------
-- Table `full-stack-sharemedia`.`broadcast`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `full-stack-sharemedia`.`broadcast` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `broadcast_name` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE=InnoDB
AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Table `full-stack-sharemedia`.`group`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `full-stack-sharemedia`.`group` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `roomid` VARCHAR(255) DEFAULT NULL,
  `broadcast_id` BIGINT NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_broadcast` (`broadcast_id`),
  CONSTRAINT `fk_broadcast` FOREIGN KEY (`broadcast_id`) REFERENCES `broadcast` (`id`)
) 
ENGINE=InnoDB
AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Table `full-stack-sharemedia`.`message`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `full-stack-sharemedia`.`message` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `message` VARCHAR(255) DEFAULT NULL,
  `broadcast_id` BIGINT NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_msg_broadcast` (`broadcast_id`),
  CONSTRAINT `fk_msg_broadcast` FOREIGN KEY (`broadcast_id`) REFERENCES `broadcast` (`id`)
) 
ENGINE=InnoDB
AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Add sample data
-- -----------------------------------------------------
