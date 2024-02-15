CREATE PROCEDURE insert_user_preferes_job_roles(IN 
userId INT, IN jobRoleId INT) 
BEGIN 
	INSERT INTO
	    user_preferes_job_roles (user_id, job_role_id)
	VALUES (userId, jobRoleId);
END
