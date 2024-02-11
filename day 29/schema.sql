CREATE TABLE Employee (
 employee_id INTEGER,
 department_id INTEGER,
 name VARCHAR(25),
 role VARCHAR(25)
 );
  
INSERT INTO Employee (employee_id, department_id, name, role)
VALUES 
('1', '101', 'Alice', 'Engineer'),
('2', '102', 'Bob', 'Manager'),
('3', '101', 'Charlie', 'Designer'),
('4', '103', 'Dana', 'HR Specialist');

CREATE TABLE Meeting (
 meeting_id INTEGER,
 department_id INTEGER,
 meeting_date DATETIME,
 attendees INTEGER
 );
  
INSERT INTO Meeting (meeting_id, department_id, meeting_date, attendees)
VALUES 
('1', '101', '2022-07-04 09:00:00', '5'),
('2', '102', '2022-07-05 10:30:00', '3'),
('3', '101', '2022-07-06 14:15:00', '6'),
('4', '103', '2022-07-07 11:00:00', '4');