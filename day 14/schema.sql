 CREATE TABLE drivers (
 id VARCHAR(255),
 start_time TIME, 
 end_time TIME,
 start_loc VARCHAR(255),
 end_loc VARCHAR(255)
);

INSERT INTO drivers VALUES 
 ('dri_1', '00:00:00', '00:30:00', 'a', 'b'),
 ('dri_1', '00:40:00', '01:00:00', 'b', 'c'), 
 ('dri_1', '01:00:00', '01:25:00', 'd', 'e'),
 ('dri_1', '01:30:00', '02:00:00', 'f', 'g'),
 ('dri_1', '02:00:00', '02:30:00', 'c', 'h'),
 ('dri_1', '02:45:00', '03:00:00', 'h', 'b'),
 ('dri_2', '00:00:00', '00:30:00', 'f', 'g'),
 ('dri_2', '00:30:00', '01:00:00', 'c', 'h'),
 ('dri_2', '01:05:00', '01:30:00', 'h', 'c');

