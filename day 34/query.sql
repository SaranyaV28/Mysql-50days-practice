Write a SQL query to display only the details of employees who either earn the highest salary
or the lowest salary in each department from the employee table.

SOLUTION 1:
select x.*
from employee e
join (select *,
max(salary) over (partition by dept_name) as max_salary,
min(salary) over (partition by dept_name) as min_salary
from employee) x
on e.emp_id = x.emp_id
and (e.salary = x.max_salary or e.salary = x.min_salary)
order by x.dept_name, x.salary

SOLUTION 2:
WITH RankedSalaries AS (
    SELECT emp_ID, emp_NAME, DEPT_NAME, SALARY,
        DENSE_RANK() OVER (PARTITION BY DEPT_NAME ORDER BY SALARY ASC) AS SalaryRankAsc,
        DENSE_RANK() OVER (PARTITION BY DEPT_NAME ORDER BY SALARY DESC) AS SalaryRankDesc
    FROM employee
)
SELECT emp_ID, emp_NAME, DEPT_NAME, SALARY
FROM RankedSalaries
WHERE
    SalaryRankAsc = 1 OR SalaryRankDesc = 1;
