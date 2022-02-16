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
  `date_created` DATETIME(6) DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE=InnoDB
AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Table `full-stack-sharemedia`.`group`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `full-stack-sharemedia`.`room` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `roomid` VARCHAR(255) DEFAULT NULL,
  `title` VARCHAR(255) DEFAULT NULL,
  `room_broadcast_id` BIGINT NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_broadcast` (`room_broadcast_id`),
  CONSTRAINT `fk_broadcast` FOREIGN KEY (`room_broadcast_id`) REFERENCES `broadcast` (`id`)
) 
ENGINE=InnoDB
AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Table `full-stack-sharemedia`.`message`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `full-stack-sharemedia`.`message` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `message` VARCHAR(255) DEFAULT NULL,
  `msg_broadcast_id` BIGINT NOT NULL,
  `msg_created` DATETIME(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_msg_broadcast` (`msg_broadcast_id`),
  CONSTRAINT `fk_msg_broadcast` FOREIGN KEY (`msg_broadcast_id`) REFERENCES `broadcast` (`id`)
) 
ENGINE=InnoDB
AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Add sample data
-- -----------------------------------------------------

INSERT INTO broadcast(broadcast_name, date_created) VALUES ('shivani+23 others', NOW());
INSERT INTO broadcast(broadcast_name, date_created) VALUES ('testing group 1', NOW());

INSERT INTO room (roomid, title, room_broadcast_id)
VALUES ('Y2lzY29zcGFyazovL3VzL1JPT00vNzZiNzEwZTAtODMxYS0xMWVjLTk5ODEtZDVlMGVjZGYwMjFj', 'BirthdayBot', 1);

INSERT INTO room (roomid, title, room_broadcast_id)
VALUES ('Y2lzY29zcGFyazovL3VzL1JPT00vMmVhN2VkNjAtNWJkZC0xMWVjLWI3NDItYWZlNDY2MWIwMmE2', 'India Employee Communications', 1);

INSERT INTO room (roomid, title, room_broadcast_id)
VALUES ('Y2lzY29zcGFyazovL3VzL1JPT00vYTU1MGFmMzEtMWFmOS0xMWVjLTgxM2EtYzE3MzE2YWI3OTY5', 'My Personal Space', 1);

INSERT INTO message (message, msg_broadcast_id, msg_created)
VALUES ('Hello! Welcome to this Broadcast!', 1, NOW());

INSERT INTO message (message, msg_broadcast_id, msg_created)
VALUES ('All the information will be provided through this space.', 1, NOW());

INSERT INTO message (message, msg_broadcast_id, msg_created)
VALUES ('Hope you have great time using them.', 1, NOW());

INSERT INTO room (roomid, title, room_broadcast_id)
VALUES ('Y2lzY29zcGFyazovL3VzL1JPT00vZDU1MWFlNTAtNzMwYS0xMWVjLWJiOTItZTU1NWNjZTlhZTRi', 'IT Desktop Software Compliance', 2);

INSERT INTO room (roomid, title, room_broadcast_id)
VALUES ('Y2lzY29zcGFyazovL3VzL1JPT00vYzk2Yjk1NTAtNmY1Zi0xMWVjLWEzNDItMDM2NTBkZjMzZjNj', 'Enterprise Security', 2);

INSERT INTO message (message, msg_broadcast_id, msg_created)
VALUES ('Hello! Welcome to this Broadcast!', 2, NOW());

INSERT INTO message (message, msg_broadcast_id, msg_created)
VALUES ('All the information will be provided through this space.', 2, NOW());

INSERT INTO message (message, msg_broadcast_id, msg_created)
VALUES ('Hope you have great time using them.', 2, NOW());