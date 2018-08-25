
SET NAMES utf8;
SET time_zone = '+00:00';


DELIMITER $$


DROP PROCEDURE IF EXISTS `egvUserDetail`$$
CREATE PROCEDURE `egvUserDetail`(
  IN        `userUUID` CHAR(52) CHARSET ascii
)
BEGIN
  SELECT
    `user_UUID` AS `uuid`
   ,`user_Favourite_Colour` AS `favouriteColour`
  FROM `egv_user`
  WHERE `user_UUID`=userUUID
  LIMIT 0,1
  ;
END$$


DELIMITER ;

