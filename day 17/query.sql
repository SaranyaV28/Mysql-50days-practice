Question: Count of rows??
Select count(*) as cnt_rows from A Left/Right/Inner/Outer Join B
ON A.ID<>B.ID

-- INNER JOIN
SELECT COUNT(*) AS rows_count
FROM A INNER JOIN B ON A.ID <> B.ID;
--Ans- 55 records

-- LEFT JOIN
SELECT COUNT(*) AS rows_count
FROM A LEFT JOIN B ON A.ID <> B.ID;
--Ans- 58 records

-- RIGHT JOIN
SELECT COUNT(*) AS rows_count
FROM A RIGHT JOIN B ON A.ID <> B.ID;
--Ans- 58 records

-- FULL OUTER JOIN
SELECT COUNT(*) AS rows_count
FROM A FULL JOIN B ON A.ID <> B.ID;
--Ans- 61 records