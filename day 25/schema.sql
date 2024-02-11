CREATE TABLE employee_performance (
 employee_id INTEGER,
 performance_rating INTEGER,
 department VARCHAR(15),
 tenure INTEGER
);

INSERT INTO employee_performance
 (employee_id, performance_rating, department, tenure)
VALUES
 ('101', '85', 'Engineering', '3'),
 ('102', '90', 'Engineering', '4'),
 ('103', '75', 'Marketing', '2'),
 ('104', '88', 'Marketing', '3'),
 ('105', '82', 'Sales', '4'),
 ('106', '70', 'Sales', '3'),
 ('107', '78', 'Sales', '2'),
 ('108', '91', 'Engineering', '4');