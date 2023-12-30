-- ❓Display the employees who are earning the same salary in the table.
SELECT e.empno
     , e.ename
     , e.job
     , e.sal
FROM employeetable e
INNER JOIN employeetable d  
ON e.sal = d.sal 
WHERE e.empno<>d.empno and e.sal = d.sal
ORDER BY 1;
