Question: Write a query to identify employees who have been with the company for at least 2 years and 
their performance rating must be in the top 20% within their department???

Solution:   
 WITH RankedEmployees AS (
 SELECT employee_id, performance_rating, department, tenure,
  PERCENT_RANK() OVER (PARTITION BY department ORDER BY performance_rating DESC) AS percentile_rank
 FROM employee_performance
 WHERE tenure >= 2)
 
 SELECT employee_id, performance_rating, department, tenure
FROM RankedEmployees
WHERE percentile_rank <= 0.2;

