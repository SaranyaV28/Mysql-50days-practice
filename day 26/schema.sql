CREATE TABLE employees (
 employeeID INTEGER,
 Name VARCHAR(15),
 Salary DECIMAL(10,0),
 DepartmentID INTEGER
);

INSERT INTO employees
 (employeeID, Name, Salary, DepartmentID)
VALUES
 ('1', 'Aditya', '70000', '101'),
 ('2', 'Bhavna', '48000', '102'),
 ('3', 'Chetan', '50000', '101'),
 ('4', 'Deepika', '55000', '103'),
 ('5', 'Esha', '60000', '101'),
 ('6', 'Faisal', '52000', '103'),
 ('7', 'Gaurav', '58000', '102');
  
  
 CREATE TABLE Departments (
 DepartmentID INTEGER,
  DepartmentName VARCHAR(25)
);

INSERT INTO Departments
 (DepartmentID, DepartmentName)
VALUES
 ('101', 'Human Resources'),
 ('102', 'Marketing'),
 ('103', 'Sales');
  