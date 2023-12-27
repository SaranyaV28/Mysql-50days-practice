with product_cte as 
(select * ,sum(cost) over (order by cost) as running_cost
from product),
expenditure_cte as
(select c.*,p.*
from cx c left join product_cte p
on p.running_cost<=c.budget)
select cust_id,cust_name,budget, count(1) as total_item_purchase,group_concat(name) as item_list, max(running_cost) expenditure_cost
from expenditure_cte
group by cust_id,cust_name,budget