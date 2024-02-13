create table patient_logs
(
  account_id int,
  date date,
  patient_id int
);

insert into patient_logs values (1,'2020-01-02', 100);
insert into patient_logs values (1,'2020-01-27', 200);
insert into patient_logs values (2,'2020-01-01', 300);
insert into patient_logs values (2,'2020-01-21', 400);
insert into patient_logs values (2,'2020-01-21', 300);
insert into patient_logs values (2,'2020-01-01', 500);
insert into patient_logs values (3,'2020-01-20', 400);
insert into patient_logs values (1,'2020-03-04', 500);
insert into patient_logs values (3,'2020-01-20', 450);

select * from patient_logs;