DELIMITER $$

USE `movie`$$

DROP PROCEDURE IF EXISTS `sp_adduser`$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_adduser`(
	$username VARCHAR(50),
	$firstname VARCHAR(50),
	$lastname VARCHAR(50)
)
IF NOT EXISTS (SELECT * FROM users WHERE username=$username) THEN 
INSERT users (username, firstname,lastname)
VALUES ($username,$firstname,$lastname)

END IF ;
