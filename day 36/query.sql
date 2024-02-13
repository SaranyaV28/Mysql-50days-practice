From the login_details table, fetch the users who logged in consecutively 3 or more times.

select * from login_details;

select login_id,user_name from 
  ( select *, lag(login_date,1) over (partition by user_name order by login_date) dr,
              lag (login_date,2) over ( partition by user_name order by login_date) dr1 
	from login_details) t
where login_date=dr+1 and  dr=dr1+1

