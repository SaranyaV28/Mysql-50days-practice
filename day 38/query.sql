From the following 3 tables (event_category, physician_speciality, patient_treatment),
write a SQL query to get the histogram of specialities of the unique physicians
who have done the procedures but never did prescribe anything.

select * from event_category;
select * from physician_speciality;
select * from patient_treatment;

select ps.speciality, count(1) as speciality_count
from patient_treatment pt
join event_category ec on ec.event_name = pt.event_name
join physician_speciality ps on ps.physician_id = pt.physician_id
where ec.category = 'Procedure'
and pt.physician_id not in (select pt2.physician_id
							from patient_treatment pt2
							join event_category ec on ec.event_name = pt2.event_name
							where ec.category in ('Prescription'))
group by ps.speciality;