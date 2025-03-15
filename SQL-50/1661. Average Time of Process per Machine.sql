SELECT l.machine_id, ROUND(AVG(ABS(l.timestamp - r.timestamp))::NUMERIC, 3) AS processing_time
FROM Activity AS l
LEFT JOIN Activity AS r
ON l.machine_id = r.machine_id
WHERE l.process_id = r.process_id 
AND l.activity_type != r.activity_type
GROUP BY l.machine_id;