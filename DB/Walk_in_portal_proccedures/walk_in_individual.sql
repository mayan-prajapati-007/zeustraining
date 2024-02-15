SELECT 
    wa.id,
    title,
    start_date,
    end_date,
    location,
    description AS additional_info,
    p.general_instructions,
    p.exam_instructions,
    p.min_sys_reqs,
    p.application_process
FROM
    walk_in_applications wa
        INNER JOIN
    pre_reqs_app_process p ON wa.pre_reqs = p.id
        LEFT JOIN
    walk_in_additional_info wi ON wa.additional_info = wi.id
WHERE
    wa.id = 2;

-- job roles
SELECT j.id, j.name, gross_compensation_package, role_description, role_requirements
FROM walk_in_applications_has_job_roles wj
INNER JOIN job_roles j
ON wj.job_role_id=j.id
WHERE walk_in_application_id=2;

-- time slots
SELECT t.id, start_time, end_time
FROM walk_in_applications_has_time_slots wt
INNER JOIN time_slots t
ON wt.time_slot_id=t.id
WHERE wt.walk_in_application_id=2;