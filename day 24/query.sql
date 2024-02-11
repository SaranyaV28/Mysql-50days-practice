Question: Write a query to calculate the running total of revenue date-wise and product-wise???

select date,product_id,revenue,
sum(revenue) OVER(partition by product_id ORDER BY DATE ASC) AS RUNNINGTOTAL 
FROM ORDERDETAILS;


 