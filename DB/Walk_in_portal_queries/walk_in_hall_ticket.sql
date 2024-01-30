SELECT 
    wa.start_date,
    t.start_time,
    t.end_time,
    wv.line1,
    wv.line2,
    wv.landmark,
    wv.city,
    wv.pincode,
    wv.phone
FROM
    user_applied_applications ua
INNER JOIN walk_in_applications wa
ON wa.id=ua.walk_in_application_id
INNER JOIN walk_in_venues wv
ON wa.venue=wv.id
INNER JOIN time_slots t
ON ua.time_slot_id=t.id
WHERE
	user_id=1 AND walk_in_application_id=2;