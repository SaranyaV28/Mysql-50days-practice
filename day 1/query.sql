--Tables required to solve the question -
-- 1. Sales 2. Menu

-- What was the first item from the menu purchased by each customer?
SELECT customer_id, order_date, product_name as ordered_item
FROM(SELECT s.customer_id,s.order_date, m.product_name,
            DENSE_RANK() OVER( PARTITION BY customer_id ORDER BY order_date, product_name ASC) AS rnk
     FROM sales s
     JOIN menu m ON m.product_id = s.product_id)a
WHERE a.rnk=1
GROUP BY 1;

-- What is the most purchased item on the menu and how many times was it purchased by all customers?
SELECT product_name, COUNT(product_id)AS purchased_count
FROM(SELECT s.customer_id,
            s.product_id,
            m.product_name,
            s.order_date,
            DENSE_RANK() over(PARTITION BY customer_id 
            ORDER BY  product_id DESC) AS rnk
      FROM sales s
      JOIN menu m ON s.product_id = m.product_id)a
WHERE a.rnk=1;