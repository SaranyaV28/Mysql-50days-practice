Question: Write a SQL query to fetch the user_ids which have only bought "Burger" and "Cold Drink" and no other items???
 
SELECT User_id
FROM orders
WHERE Item_ordered IN ('Burger', 'Cold Drink')
GROUP BY User_id
HAVING COUNT(DISTINCT Item_ordered) = 2;