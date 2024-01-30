INSERT INTO user_applied_applications (
    user_id,
    walk_in_application_id,
    time_slot_id,
    resume
) VALUES (
    1,
    2,
    2,
    "path/to/file"
);

INSERT INTO application_preference_job_roles (
    user_id,
    application_id,
    job_role_id
) VALUES (
    1,
    1,
    1
);