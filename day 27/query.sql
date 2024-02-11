Question: Write a query to fetch the user names who have bought both Bread and Milk and represent them in the form "Bread+Milk" along with user name???
SELECT
 user_name,
 'Bread+Milk' AS products_bought
FROM snacks
WHERE product_name IN ('Bread', 'Milk')
GROUP BY user_id, user_name
HAVING COUNT(DISTINCT product_name) = 2;