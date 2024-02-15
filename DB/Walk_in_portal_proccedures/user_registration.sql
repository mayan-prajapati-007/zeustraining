CREATE PROCEDURE user_registration(
    IN userEmail VARCHAR(255),
    IN userPassword VARCHAR(255),
    IN userRole INT,
    IN profileImage VARCHAR(255),
    IN firstName VARCHAR(255),
    IN lastName VARCHAR(255),
    IN userPhone VARCHAR(255),
    IN userResume VARCHAR(255),
    IN userPortfolio VARCHAR(255),
    IN refEmpName VARCHAR(255),
    IN emailSubscription BOOLEAN,
    IN collegeId INT,
    IN collegeName VARCHAR(255),
    IN collegeLocation VARCHAR(255),
    IN qualificationId INT,
    IN streamId INT,
    IN yearOfPassing DECIMAL(4, 0),
    IN aggregatePercentage DECIMAL(2, 0),
    IN applicantType INT,
    IN appliedEarlier VARCHAR(255),
    IN yearsOfExperience INT,
    IN currentCtc INT,
    IN expectedCtc INT,
    IN noticePeriodEndDate DATE,
    IN noticePeriodDuration INT,
    IN mainExpertTechnologies VARCHAR(255),
    IN otherExpertTechnologies VARCHAR(255),
    IN mainKnownTechnologies VARCHAR(255),
    IN otherKnownTechnologies VARCHAR(255),
    OUT userId INT
) BEGIN
INSERT INTO users (
        email,
        password,
        role
    )
VALUES (
        userEmail,
        userPassword,
        userRole
    );
SET userId = LAST_INSERT_ID();
INSERT INTO users_personal_info (
        user_id,
        profile_image,
        first_name,
        last_name,
        email,
        phone,
        resume,
        portfolio,
        ref_emp_name,
        email_subscription
    )
VALUES (
        userId,
        profileImage,
        firstName,
        lastName,
        userEmail,
        userPhone,
        userResume,
        userPortfolio,
        refEmpName,
        emailSubscription
    );
IF collegeId = 0 THEN
INSERT INTO colleges (name, location)
VALUES (
        collegeName,
        collegeLocation
    );
SET collegeId = LAST_INSERT_ID();
END IF;
INSERT INTO education_qualification (
        user_id,
        qualification_id,
        stream_id,
        college_id,
        year_of_passing,
        aggregate_percentage
    )
VALUES (
        userId,
        qualificationId,
        streamId,
        collegeId,
        yearOfPassing,
        aggregatePercentage
    );
INSERT INTO professional_qualification (
        user_id,
        applicant_type,
        applied_earlier,
        years_of_experience,
        current_ctc,
        expected_ctc,
        notice_period_end_date,
        notice_period_duration
    )
VALUES (
        userId,
        applicantType,
        appliedEarlier,
        yearsOfExperience,
        currentCtc,
        expectedCtc,
        noticePeriodEndDate,
        noticePeriodDuration
    );
END