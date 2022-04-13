CREATE TABLE products (
                          id SERIAL PRIMARY KEY,
                          productName VARCHAR(30) NOT NULL,
                          manufacturer VARCHAR(20) NOT NULL,
                          productCount INTEGER DEFAULT 0,
                          price NUMERIC,
                          isDiscounted BOOL
);
INSERT INTO products  (productName, manufacturer, productCount, price,isDiscounted)
VALUES ('iPhone X', 'Apple', 2, 71000,true),
       ('iPhone 8', 'Apple', 3, 56000,false),
       ('Galaxy S9', 'Samsung', 6, 56000,false),
       ('Galaxy S8 Plus', 'Samsung', 2, 46000,true),
       ('Desire 12', 'HTC', 3, 26000,true);
--1--
SELECT productName,manufacturer,price FROM products WHERE manufacturer NOT IN ('HTC');
--2--
SELECT * FROM products WHERE manufacturer = 'Apple' AND price < 75000;
--3--
SELECT * FROM products WHERE  price>=46000;
--4--
SELECT  *  FROM products  ORDER BY price DESC LIMIT 2;
--5--
SELECT * FROM products WHERE price=(SELECT MIN(price) FROM products);
--6--
SELECT  * FROM products WHERE isDiscounted=true;
--7--
SELECT  * FROM products WHERE isDiscounted=false;
--8--
SELECT * FROM products ORDER BY  price DESC;
--9--
SELECT SUM(price) FROM products;
--10--
SELECT * FROM products WHERE productCount>=2;

