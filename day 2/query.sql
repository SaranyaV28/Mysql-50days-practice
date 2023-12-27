Display all the employees who are getting more than the average salaries of all the employees. 
SELECT ename, job, sal
FROM(SELECT ename, 
            job,
	    sal,
	    FLOOR(AVG(sal) OVER()) as avg_sal
     FROM employeetable
     )a
WHERE sal>avg_sal
ORDER BY 1;

Display the second maximum salary in each department.
SELECT deptno, dname,sal AS Second_maximum_salary
FROM(SELECT d.deptno, d.dname,e.empno, ename,job,sal,
            DENSE_RANK() OVER(PARTITION BY e.deptno ORDER BY sal desc)AS rnk
     FROM employee_data AS e
     INNER JOIN department_data AS d
         ON e.deptno = d.deptno
     )a
WHERE a.rnk=2
GROUP BY 1;

Display all the employees who are getting some commission in the sales department where the employees have joined only on weekdays.
SELECT ename, comm, dname, day
FROM(SELECT ename, comm, d.dname,
            WEEKDAY(HireDate) AS Day
     FROM employeetable e
     INNER JOIN departmenttable d ON e.deptno = d.deptno
     WHERE d.dname IN('Sales') AND e.comm>0)a
WHERE a.Day BETWEEN 0 AND 4;

--Display only the non-matching records from the department table 
--Assumption - (matching records shouldn’t be selected)
SELECT d.deptno
    , e.job
    , d.dname
    , d.loc
FROM departmenttable AS d
LEFT JOIN employeetable AS e
    ON e.deptno = d.deptno
WHERE e.deptno IS NULL;

 
