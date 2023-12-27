-- Which item was the most popular for each customer?
SELECT customer_id, 
       group_concat(product_name) as MOST_POPULAR_PRODUCT
FROM(SELECT s.customer_id
          , m.product_name
          , COUNT(s.product_id) as highest_ordered_product
          , DENSE_RANK() OVER(PARTITION BY customer_id ORDER BY COUNT(s.product_id) DESC) as rnk
     FROM sales s
     INNER JOIN menu m 
        ON s.product_id = m.product_id
     GROUP BY 1,2
     )a
WHERE rnk=1
GROUP BY 1;


-- Which item was purchased first by the customer after they became a member?
-- ASSUMPTION - A customer can order the item on the joining date as well, assuming the order took place after becoming a member.
SELECT a.customer_id
     , a.product_name
FROM(SELECT m.customer_id
          , mn.product_name
          , MIN(s.order_date) AS Order_date
     FROM members m
     JOIN sales s ON m.customer_id = s.customer_id
     JOIN menu mn ON s.product_id = mn.product_id 
     WHERE s.order_date>=m.join_date
     GROUP BY customer_id
     )a
ORDER BY a.customer_id;



--Which item was purchased just before the customer became a member?
--ASSUMPTION - A customer can order more than one item just before becoming a member.
WITH ordered_food AS
(
    SELECT s.customer_id
        , s.order_date
        , mn.product_name
        , m.join_date
        , DENSE_RANK() OVER(PARTITION BY m.customer_id ORDER BY s.order_date DESC) AS d_rnk
    FROM sales s 
    INNER JOIN members m 
      ON m.customer_id = s.customer_id
    INNER JOIN menu mn 
      ON mn.product_id = s.product_id
    WHERE s.order_date< m.join_date
)
SELECT customer_id
     ,GROUP_CONCAT(product_name) AS Ordered_food
FROM ordered_food
WHERE d_rnk=1
GROUP BY 1;


