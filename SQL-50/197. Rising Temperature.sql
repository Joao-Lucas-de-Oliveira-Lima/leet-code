SELECT l.id
FROM Weather as l
LEFT JOIN Weather as r
ON l.recordDate::date = r.recordDate::date + INTERVAL 'P1D'
WHERE l.temperature > r.temperature;