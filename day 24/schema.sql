CREATE TABLE Orderdetails (
 Date DATE,
 product_id INTEGER, 
 revenue decimal(10,1)
);

INSERT INTO Orderdetails
 (Date, product_id, revenue)
VALUES
 ('2024-01-01', '1', '100.0'),
 ('2024-01-01', '2', '150.0'),
 ('2024-01-02', '1', '200.0'),
 ('2024-01-02', '2', '100.0'),
 ('2024-01-03', '1', '150.0'),
 ('2024-01-03', '3', '300.0');
  