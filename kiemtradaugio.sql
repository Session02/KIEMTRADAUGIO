CREATE DATABASE test;
USE test;

CREATE TABLE categories (
	category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR (100) NOT NULL
);

CREATE TABLE products (
	product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR (100) NOT NULL,
    price DECIMAL (10,2) DEFAULT 10000,
    category_id INT,
    stock INT,
    FOREIGN KEY (category_id) REFERENCES categories (category_id)
);

INSERT INTO products
VALUE (1, 'iphone 15', 25000000, 1, 10),
(2, 'Samsung A23', 20000000, 1, 5),
(3, 'Áo sơ mi nam', 500000 , 2, 50),
(4, 'Giày thể thao', 1200000 , 2, 20);

INSERT INTO products
VALUE (5, 'iphone 13', 25000000, 1, 35),
(6, 'Samsung A73', 20000000, 1, 20);

SET SQL_SAFE_UPDATES = 0;
UPDATE products
SET price = 26000000
WHERE product_name = 'iphone 15';

UPDATE products
SET stock = stock + 10
WHERE category_id = 1;

DELETE FROM products
WHERE product_id = 4;

DELETE FROM products
WHERE price < 1000000; 

SELECT * FROM products;

SELECT * FROM products
WHERE stock > 15;