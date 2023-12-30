-- ❓ Write an SQL query to find all dates and IDs with higher temperatures compared to their previous dates (yesterday).
WITH temperature AS
(
  SELECT id
       , recordDate
       , temperature
       , COALESCE(LAG(temperature) OVER(ORDER BY recordDate),temperature) AS previous_temperature
  FROM wth
)

SELECT id, recordDate
FROM temperature
WHERE temperature > previous_temperature;