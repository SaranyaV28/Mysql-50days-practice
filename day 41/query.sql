Finding n consecutive records with consecutive date value.
solution :1
SELECT
    order_id, order_date
FROM (
    SELECT
        order_id,
        order_date,
        DATEDIFF(order_date, LAG(order_date) OVER (ORDER BY order_date)) AS date_diff
    FROM orderdetails
) AS consecutive_dates
WHERE
    date_diff = 1
ORDER BY
    order_date;
    
solution :2    
WITH OrderedOrders AS (
  SELECT
    order_id, order_date,
    ROW_NUMBER() OVER (ORDER BY order_date) AS rn
   FROM orderdetails)
SELECT
  o1.order_id, o1.order_date,
  o2.order_date AS next_order_date
FROM OrderedOrders o1
JOIN
  OrderedOrders o2 ON o1.rn = o2.rn -1
WHERE
  DATEDIFF(o2.order_date, o1.order_date) = 1;

