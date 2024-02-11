Question: Write a query to generate a report from an e-commerce company's database. 
The report should include the product_id, title, total stock (including incoming stock) and total returns. 
The results should be sorted by product id ???

SELECT
 P.id AS product_id,
 P.title,
 COALESCE(SUM(S.quantity), 0) AS total_stock,
 COALESCE(COUNT(R.product_id), 0) AS total_returns
FROM Products P
LEFT JOIN Stocks S ON P.id = S.product_id
LEFT JOIN Returns R ON P.id = R.product_id
GROUP BY P.id, P.title
ORDER BY P.id;