write a SQL query to fetch all the duplicate records from a table.
select * from users;

solution 1:
select user_name,count(*) as cnt from users
group by user_name
having count(*) >1

solution 2:
select user_name from 
(select user_name, email, row_number() over (partition by user_name, email) as rnk
from users) d
where rnk <>1
group by user_name, email

solution 3:
select user_name, email, max(user_id) from users
group by user_name, email
having count(*) > 1

solution 4:
select u2.* from users u1 join users u2 
on u1.user_name=u2.user_name and u1.email=u2.email
where u1.user_id < u2.user_id
