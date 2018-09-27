
SET NAMES utf8;
SET time_zone = '+00:00';


DELIMITER $$


DROP PROCEDURE IF EXISTS `egvUserDetail`$$
CREATE PROCEDURE `egvUserDetail`(
  IN        `userID` INT(11) UNSIGNED
)
BEGIN
  SELECT
    `id` AS `id`
   ,`favourite_colour` AS `favouriteColour`
  FROM `egv_user`
  WHERE `id`=userID
  LIMIT 0,1
  ;
END$$


DELIMITER ;

