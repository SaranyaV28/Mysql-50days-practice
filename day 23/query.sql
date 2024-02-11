Question: Write a query to calculate the activation rate for users who signed up via email and those who signed up via text message???

SELECT
 s.activation_method,
 ROUND(SUM(CASE WHEN a.activation_status = 'Confirmed' THEN 1 ELSE 0 END) / COUNT(*),2) AS activation_rate
FROM signups s
JOIN activations a ON s.user_id = a.user_id
GROUP BY s.activation_method;


