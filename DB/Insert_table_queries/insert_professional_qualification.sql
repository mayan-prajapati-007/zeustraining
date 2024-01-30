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