Write a SQL query to find the top 3 products that have shown the most significant sales growth month-over-month

with SalesData as (
select 
ProductID, SaleDate,
sum(UnitsSold) as totalunitsold,
lag(SaleDate) over (partition by ProductID order by SaleDate) as pevdate,
lag(sum(UnitsSold)) over (partition by ProductID order by SaleDate) as pevmonthunitsold,
sum(UnitsSold) - lag(sum(UnitsSold)) over (partition by ProductID order by SaleDate) as growth
from ProductSales
group by 1,2
)
SELECT SD.ProductID, sum(Growth)
FROM SalesData AS SD
WHERE SD.pevmonthunitsold IS NOT NULL
group by SD.ProductID 
Order by sum(Growth) desc
Limit 3;