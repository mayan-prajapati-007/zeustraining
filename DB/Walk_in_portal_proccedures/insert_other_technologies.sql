CREATE PROCEDURE insert_other_technologies(IN techName VARCHAR(255), OUT technologyId INT) BEGIN
INSERT INTO other_technologies (name)
VALUES (techName);
SET technologyId = LAST_INSERT_ID();
END