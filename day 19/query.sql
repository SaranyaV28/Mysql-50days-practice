---Question: Write a query to fetch products which have the decreasing revenue for all quarters. ???
WITH Revenue_Comparison AS (  
SELECT Product, quarter, revenue,
LAG(revenue) OVER (PARTITION BY product ORDER BY quarter) AS prev_revenue,
ROW_NUMBER() OVER (PARTITION BY product, quarter ORDER BY revenue DESC) AS rn
FROM ods
),
Decrease_Flag AS (
SELECT product,
(CASE WHEN revenue < prev_revenue THEN 1 ELSE 0 END) AS is_decreasing
FROM Revenue_Comparison
)
SELECT product FROM Decrease_Flag
GROUP BY product
HAVING SUM(is_decreasing) = COUNT(*) - 1 AND COUNT(*) >= 2;