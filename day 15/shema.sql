-- CREATING TABLE
CREATE TABLE Leave_Record
(employee_id int,
 leave_date date,
 leave_type char(100));

INSERT INTO Leave_Record 
VALUES (1, '2022-01-10', 'Sick'),
 (1, '2022-01-12', 'Personal'),
 (1, '2022-01-15', 'Sick'),
 (2, '2022-01-11', 'Vacation'),
 (2, '2022-01-13', 'Sick'),
 (2, '2022-01-14', 'Vacation');