CREATE TABLE product (
id INTEGER PRIMARY KEY AUTOINCREMENT, 
name, 
price
);

CREATE TABLE customer (
id INTEGER PRIMARY KEY AUTOINCREMENT, 
first_name, 
last_name
);

CREATE TABLE bill_line(
id INTEGER PRIMARY KEY AUTOINCREMENT, 
bill_id INTEGER REFERENCES bill(id),
product_id, 
quantity
);

CREATE TABLE bill (
id INTEGER PRIMARY KEY AUTOINCREMENT, 
purchase_datetime DATE, 
cashier_id, 
customer_id INTEGER REFERENCES customer(id)
);

INSERT INTO product(name, price)
VALUES ('Tomato', 1),
('Cucumber', 1),
('Bread', 2),
('Olive oil', 5), 
('Tuna', 3), 
('Beef', 8);

INSERT INTO customer(first_name, last_name)
VALUES('Lebron', 'James'),
('Barak', 'Obama'), 
('Marshall', 'Mathers'), 
('Gitanas', 'Nauseda'), 
('Elie', 'Assaf');

INSERT INTO bill(customer_id,cashier_id, purchase_datetime)
VALUES(1, 2,"2024-04-04");

SELECT bill.id,first_name, last_name, cashier_id, purchase_datetime FROM bill
JOIN customer ON customer_id = customer.id;

INSERT INTO bill_line (bill_id, product_id, quantity)
VALUES(1, 2, 2), (1, 3, 4), (1, 5, 2)

SELECT name, price, quantity, price * quantity as product_total FROM bill
JOIN bill_line on bill_id = bill.id
JOIN product on product_id = product.id
JOIN customer ON customer_id = customer.id
WHERE customer.id = 1;


SELECT cashier_id, purchase_datetime, first_name, last_name,SUM(quantity * price) as total FROM bill
JOIN bill_line on bill_id = bill.id
JOIN product on product_id = product.id
JOIN customer ON customer_id = customer.id;

SELECT * FROM bill