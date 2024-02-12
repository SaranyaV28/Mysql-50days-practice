Write a SQL query to identify students who have missed more than 3 consecutive classes.

solution1:
WITH ConsecutiveMissedClasses AS (
    SELECT
        StudentID,ClassDate,Ispresent,
        ROW_NUMBER() OVER (PARTITION BY StudentID ORDER BY ClassDate) -
        ROW_NUMBER() OVER (PARTITION BY StudentID, IsPresent ORDER BY ClassDate) AS GroupNum
    FROM Attendance
)
SELECT DISTINCT StudentID FROM ConsecutiveMissedClasses
WHERE IsPresent = 0
GROUP BY studentID,groupNum
HAVING COUNT(*) >= 3;

solution 2:

select studentID from 
              ( select *, lag(classdate,1) over (partition by studentID order by ispresent asc) as dr,
             lag(classdate,2) over (partition by studentID ORDER BY ispresent asc ) dr1
             from attendance) t1
			where classdate=dr+1 and dr=dr1+1
            
            
             