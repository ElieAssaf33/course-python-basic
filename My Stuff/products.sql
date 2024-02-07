CREATE TABLE products(
id INTEGER PRIMARY KEY AUTOINCREMENT,
name VARCHAR(100)
);

INSERT INTO products(name)
VALUES('food');

INSERT INTO products(name)
VALUES('alsofood');

INSERT INTO products(name)
VALUES('maybefood');

INSERT INTO products(name)
VALUES('notfood');

CREATE TABLE category(
id INTEGER PRIMARY KEY AUTOINCREMENT,
name VARCHAR(100)
);

INSERT INTO category(name)
VALUES('REAL');

INSERT INTO category(name)
VALUES('FAKE');

CREATE TABLE category_products(
id INTEGER PRIMARY KEY AUTOINCREMENT,
product_id INTEGER REFERENCES products(id),
category_id INTEGER REFERENCES category(id)
);

INSERT INTO category_products(product_id, category_id)
VALUES(1, 2);

INSERT INTO category_products(product_id, category_id)
VALUES(2, 2);

SELECT products.name, category.name FROM category_products
    JOIN products ON product_id = products.id
    JOIN category ON category_id = category.id;