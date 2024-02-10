CREATE TABLE Building_visits (
 visit_date_time DATETIME,
 visitors_name VARCHAR(25),
 visited_floor INTEGER
);

INSERT INTO Building_visits
 (visit_date_time, visitors_name, visited_floor)
VALUES
 ('2023-12-28 09:00', 'Arjun Patel', '5'),
 ('2023-12-28 10:30', 'Priya Gupta', '8'),
 ('2023-12-28 11:15', 'Arjun Patel', '10'),
 ('2023-12-28 14:00', 'Ananya Singh', '3'),
 ('2023-12-28 15:45', 'Priya Gupta', '8'),
 ('2023-12-28 16:30', 'Arjun Patel', '5'),
 ('2023-12-28 17:20', 'Ananya Singh', '2'),
 ('2023-12-28 18:10', 'Priya Gupta', '6'),
 ('2023-12-28 18:45', 'Arjun Patel', '1'),
 ('2023-12-28 19:30', 'Ananya Singh', '2');
