Question: Write a query that fetches the cumulative sum of the amount for each product, 
where the total amount for each product is greater than the average amount of all products???

WITH ProductAverage AS (  
 SELECT ProductID, AVG(Amount) AS AvgAmount
 FROM Salesdetails
 GROUP BY ProductID
),
CumulativeAmount AS ( 
 SELECT SaleID,ProductID,Amount,
  SUM(Amount) OVER (PARTITION BY ProductID ORDER BY SaleDate) AS CumulativeSum
 FROM Salesdetails
)
SELECT c.ProductID, c.SaleID, c.Amount, c.CumulativeSum
FROM CumulativeAmount c
JOIN ProductAverage pa ON c.ProductID = pa.ProductID
WHERE pa.AvgAmount < c.CumulativeSum;
