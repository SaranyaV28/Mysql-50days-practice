CREATE TABLE snacks (
 user_id INTEGER,
 user_name VARCHAR(15),
 product_name VARCHAR(15)
);

INSERT INTO snacks
 (user_id, user_name, product_name)
VALUES
 ('1', 'Alice', 'Bread'),
 ('1', 'Alice', 'Milk'),
 ('1', 'Alice', 'Eggs'),
 ('2', 'Bob', 'Bread'),
 ('2', 'Bob', 'Juice'),
 ('3', 'Charlie', 'Milk'),
 ('3', 'Charlie', 'Cheese'),
 ('4', 'David', 'Bread'),
 ('4', 'David', 'Milk'),
 ('4', 'David', 'Butter');  