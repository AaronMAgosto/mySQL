-- create candystore database;
CREATE DATABASE candystore;

-- switch to candystore database
USE candystore;

--create the customers table

CREATE TABLE customers (
    customerId INT AUTO_INCREMENT PRIMARY KEY,
    firstName VARCHAR(20) NOT NULL,
    lastName VARCHAR(20) NOT NULL,
    email VARCHAR(30),
    phone VARCHAR(20),
    createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP

);
--Add our first customer;
INSERT INTO customers (firstName, lastName, email, phone)
VALUES ('Damian', 'Montero', 'damian@bocacode.com', '976-CODE');

-- second customer 
INSERT INTO customers (firstName, lastName, email, phone)
VALUES ('Cass', 'curcio', 'cass@bocacode.com', '954-code');

--Lets get ALL of the customers:

SELECT * FROM customers; 

CREATE TABLE orders (
    orderId INT AUTO_INCREMENT PRIMARY KEY,
    customerId INT NOT NULL,
    total DECIMAL(8,2),
    TAX DECIMAL(7,2),
    createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP

);

-- now lets add an order to our order table

INSERT INTO orders(customerId, total, tax) 
VALUES (1, 19.48, 0.18), (2, 49.26, 3.44);

SELECT * FROM orders;

SELECT * FROM customers
JOIN orders ON orders.customerId = customers.customerId
WHERE firstName = 'Damian';