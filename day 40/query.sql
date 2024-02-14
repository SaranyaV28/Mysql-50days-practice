Finding n consecutive records where temperature is below zero. And table does not have primary key.

create view vw_weather as
select city, temperature from weather;

with
	w as
		(select *, row_number() over () as id
		from vw_weather),
	t1 as
		(select *,id - row_number() over (order by id) as diff
		from w
		where w.temperature < 0),
	t2 as
		(select *,
		count(*) over (partition by diff order by diff) as cnt
		from t1)
select city, temperature, id
from t2
where t2.cnt >= 3;