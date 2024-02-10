-- CREATING TABLE
CREATE TABLE employeedetail (Emp_id int,
 Emp_Name char(100),
 salary int,
 Dept_id int);

INSERT INTO employeedetail
VALUES (1, 'John', 50000,1),
 (2, 'Sarah', 60000,2),
 (3, 'Alice', 55000,1),
 (4, 'Bob', 48000,3),
 (5, 'Emma', 52000,2),
 (6, 'Mike', 51000,3),
 (7, 'Olivia', 59000,4),
 (8, 'Ethan', 54000,4);
 
CREATE TABLE departmentdetail (Dept_id int,
 Dept_Name char(100));
INSERT INTO departmentdetail
VALUES (1, 'Sales'),
 (2, 'Marketing'),
 (3, 'Operations'),
 (4, 'Finance');
