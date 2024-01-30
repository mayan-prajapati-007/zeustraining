-- profile_image
-- first_name
-- last_name
-- email
-- phone
-- resume
-- portfolio
-- prefered job roles
-- employee reference name
-- email_subscription
-- aggregate_percentage
-- year_of_passing
-- qualification
-- stream
-- college
-- other college
-- college location
-- applicant_type
-- years_of_experience
-- current_ctc
-- expected_ctc
-- Expert technologies
-- expert other technologies
-- Known technologies
-- known other technologies
-- onNoticePeriod?
-- notice_period_end_date
-- notice_period_duration
-- applied_earlier
INSERT INTO users (
    profile_image,
    first_name,
    last_name,
    email,
    password,
    phone,
    resume,
    portfolio,
    ref_emp_name,
    email_subscription
) VALUES (
    "https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50",
    "Rachit",
    "Modi",
    "rachit.modi@zeuslearning.com",
    "rachit123",
    "+919751464821",
    "path/to/resume",
    "path/to/portfolio",
    "Zeus Learning",
    0
);
-- user_id =
SELECT 
    id
FROM
    users
WHERE
    email = 'rachit.modi@zeuslearning.com';
-- ---------------
INSERT INTO colleges (
    name,
    location
) VALUES (
    "Delhi Institute of Technology (DIT)",
    "Delhi"
);
-- college_id = 
SELECT 
    id
FROM
    colleges
WHERE
    name = 'Delhi Institute of Technology (DIT)';
-- -----------------
INSERT INTO education_qualification (
	user_id,
    qualification_id,
    stream_id,
    college_id,
    year_of_passing,
    aggregate_percentage
) VALUES (
    1,
    1,
    2,
    2,
    2024,
    92
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
) VALUES (
    1,
    1, -- 1==FRESHER, 2==EXPERIENCED
    -- below entries null if FRESHER
    NULL, -- if yes then name of role
    0,
    750000,
    1200000,
    "2024-02-25",
    4 -- in months
);
INSERT INTO user_technologies (
    user_id,
    technology_id,
    technology_type,
    technology_category
) VALUES (
    1,
    2,
    1, -- MAIN
    2  -- EXPERT
);
INSERT INTO other_technologies (
    name
) VALUES (
    "Django"
);
-- technology_id = 
SELECT 
    id
FROM
    other_technologies
WHERE
    name = 'Django';
-- -----------------
INSERT INTO user_technologies (
    user_id,
    technology_id,
    technology_type,
    technology_category
) VALUES (
    1,
    2,
    2, -- OTHER
    2  -- EXPERT
);
INSERT INTO user_technologies (
    user_id,
    technology_id,
    technology_type,
    technology_category
) VALUES (
    1,
    2,
    1, -- MAIN
    1  -- KNOWN
);
INSERT INTO other_technologies (
    name
) VALUES (
    "Django"
);
-- technology_id = 
SELECT 
    id
FROM
    other_technologies
WHERE
    name = 'Django';
-- -----------------
INSERT INTO user_technologies (
    user_id,
    technology_id,
    technology_type,
    technology_category
) VALUES (
    1,
    2,
    2, -- OTHER
    1  -- KNOWN
);