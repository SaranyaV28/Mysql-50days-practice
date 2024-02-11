Question: Write a query to find the top 2 departments with the highest average employee salaries, 
but only include departments with more than 2 employees???

with cte as(
select DepartmentID, avg(Salary) as avg_salary,
COUNT(EmployeeID) AS total_employee,
dense_rank() over(order by avg(salary) desc) as rnk
from Employees
group by DepartmentID
having count(EmployeeID) > 2)

select DepartmentID, avg_salary
from cte where rnk <=2 ;

