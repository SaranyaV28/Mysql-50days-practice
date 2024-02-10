---write a query to print driver IDs, no. of profitable rides and no. of total rides using 'drivers' table. 
Profit rides are the no. of rides where end location of a ride is the same as start location of the immediate next ride for a driver.


with usingleadfunc as 
(
select *,
lead(start_loc) over(partition by id order by id, start_time) as next_trip_start
from drivers
)
select id,
sum(case when end_loc=next_trip_start then 1 else 0 end) as profit_rides,
count(*) as total_rides
from usingleadfunc
group by id