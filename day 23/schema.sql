CREATE TABLE signups (
 User_id INTEGER,
 signup_date datetime,
 activation_method VARCHAR(15)
);

INSERT INTO signups
 (User_id, signup_date, activation_method)
VALUES
 ('1', '2022-08-01 09:00:00', 'Email'),
 ('2', '2022-08-01 09:30:00', 'Text'),
 ('3', '2022-08-01 10:00:00', 'Email'),
 ('4', '2022-08-02 08:00:00', 'Text'),
 ('5', '2022-08-02 08:30:00', 'Email');
  
 CREATE TABLE activations(
 User_id INTEGER,
 activation_status VARCHAR(15)
);

INSERT INTO activations
 (User_id, activation_status)
 VALUES
 ('1', 'Confirmed'),
 ('2', 'Not Confirmed'),
 ('2', 'Confirmed'),
 ('3', 'Not Confirmed'),
 ('4', 'Confirmed'),
 ('5', 'Not Confirmed');