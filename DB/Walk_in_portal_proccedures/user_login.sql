CREATE DEFINER = `root` @`localhost` PROCEDURE `login`(IN email varchar(255), IN password varchar(255)) BEGIN
SELECT *
FROM users u
WHERE u.email = email
    AND u.password = password;
END