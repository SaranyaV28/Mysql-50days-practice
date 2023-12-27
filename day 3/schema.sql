-- Table Script

CREATE TABLE Online_Activity
(
    DATE DATE ,
    Activity_Code varchar(20),
    Value int
);

INSERT INTO Online_Activity VALUES
        ('2021-10-01', 'Impressions', 23),
	    ('2021-10-02', 'Impressions', 2000),
        ('2021-10-03', 'Impressions', 3000),
        ('2021-10-04', 'Impressions', 2390),
        ('2021-10-05', 'Impressions', 2322),
        ('2021-10-06', 'Impressions', 232),
        ('2021-10-07', 'Impressions', 111),
        ('2021-10-08', 'Impressions', 4343),
        ('2021-10-09', 'Impressions', 5554),
        ('2021-10-10', 'Impressions', 65767),
        ('2021-10-01', 'Clicks', 1),
        ('2021-10-02', 'Clicks', 20),
        ('2021-10-03', 'Clicks', 40),
        ('2021-10-04', 'Clicks', 27),
        ('2021-10-05', 'Clicks', 30),
	    ('2021-10-06', 'Clicks', 44),
        ('2021-10-07', 'Clicks', 33),
	    ('2021-10-08', 'Clicks', 12),
        ('2021-10-09', 'Clicks', 56),
	    ('2021-10-10', 'Clicks', 10);