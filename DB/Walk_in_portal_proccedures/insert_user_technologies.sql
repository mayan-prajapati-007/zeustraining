CREATE DEFINER = `root` @`localhost` PROCEDURE `insert_user_technologies`(
    IN userId INT,
    IN technologyId INT,
    IN technologyType INT,
    IN technologyCategory INT
) BEGIN
INSERT INTO user_technologies (
        user_id,
        technology_id,
        technology_type,
        technology_category
    )
VALUES (
        userId,
        technologyId,
        technologyType,
        technologyCategory
    );
END