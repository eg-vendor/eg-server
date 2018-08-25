
SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;

CREATE TABLE IF NOT EXISTS `egv_user` (
  `user_UUID` char(52) CHARACTER SET ascii NOT NULL,
  `user_Favourite_Colour` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

