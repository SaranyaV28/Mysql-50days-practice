Question: Write a query to calculate the average number of attendees per meeting for each department. Round the result to 1 decimal place.
Assumption: Each meeting is attended only by employees from the department hosting the meeting ???

SELECT
 m.department_id,
 ROUND(AVG(m.attendees), 1) AS avg_attendees_per_meeting
FROM Meeting m
JOIN Employee e ON m.department_id = e.department_id
GROUP BY m.department_id
ORDER BY m.department_id;
