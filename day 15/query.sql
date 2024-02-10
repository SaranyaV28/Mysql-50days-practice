-- Write a SQL query to find the most common leave type for each employee. In case of a tie, return all tied leave types. 
-- The result should be ordered by employee_id

WITH leave_type_count AS 
 (
 SELECT employee_id, leave_type, COUNT(leave_type),
 dense_rank() over (PARTITION BY employee_id ORDER BY 
 COUNT(leave_type) DESC) AS RNK 
 FROM Leave_Record
 GROUP BY 1,2
 ORDER BY RNK
 )
 SELECT employee_id, leave_type
 FROM leave_type_count
 WHERE RNK =1
 ORDER BY 1;