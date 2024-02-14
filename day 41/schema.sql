create table orderdetails
  (
    order_id  varchar(20) primary key,
    order_date  date  not null
);

insert into orderdetails values
  ('ORD1001', '2021-01-01'),
  ('ORD1002', '2021-02-01'),
  ('ORD1003', '2021-02-02'),
  ('ORD1004', '2021-02-03'),
  ('ORD1005', '2021-03-01'),
  ('ORD1006', '2021-06-01'),
  ('ORD1007', '2021-12-25'),
  ('ORD1008', '2021-12-26' );
  