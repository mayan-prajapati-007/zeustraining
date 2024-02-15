SELECT wa.id, title, start_date, end_date, location, description
FROM walk_in_applications wa
LEFT JOIN walk_in_additional_info wi
ON wa.additional_info=wi.id;

SELECT j.name
FROM walk_in_applications_has_job_roles wj
INNER JOIN job_roles j
ON wj.job_role_id=j.id
WHERE walk_in_application_id=2;