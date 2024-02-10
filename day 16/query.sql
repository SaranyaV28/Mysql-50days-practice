--Write a query to find the dapartment name which have 2nd highest average salary

This can solve by two methods-

-- Method 1: By using Limit offset
with avg_sal as 
(SELECT e.dept_id, avg(salary) as Avg_salary
FROM employeedetail e 
GROUP BY 1 )

SELECT dept_name
FROM avg_sal a join departmentdetail d on a.dept_id = d.dept_id
LIMIT 1,1;

-- Method 2: Using Dense_rank
with avg_sal as (
 SELECT e.dept_id, avg(salary) as Avg_salary, 
 DENSE_RANK() OVER(ORDER BY AVG(Salary) desc) as rnk
 FROM employeedetail e 
 GROUP BY 1
 )

SELECT dept_name
FROM avg_sal a join departmentdetail d on a.dept_id = d.dept_id
WHERE rnk = 2;