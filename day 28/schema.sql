CREATE TABLE Products (
 id INTEGER,
 title VARCHAR(25)
 );
  
INSERT INTO Products (id, title)
VALUES 
('1', 'Sleek Widget'),
('2', 'Gizmo Deluxe'),
('3', 'Techy Gadget');

CREATE TABLE Stocks (
 product_id INTEGER,
 quantity INTEGER
 );
  
INSERT INTO Stocks (product_id, quantity)
VALUES 
('1', '80'),
('2', '56'),
('3', '13');

CREATE TABLE Returns (
 product_id INTEGER,
 dt DATETIME
 );
  
INSERT INTO Returns (product_id, dt)
VALUES 
('1', '2023-07-28 14:58:52'),
('1', '2023-07-30 09:48:25'),
('1', '2023-07-06 05:51:37'),
('1', '2023-07-26 06:44:08'),
('1', '2023-07-01 04:29:56'),
('1', '2023-07-18 00:50:04'),
('2', '2023-07-25 00:42:58'),
('2', '2023-07-02 00:51:43'),
('2', '2023-07-08 14:55:06');

  