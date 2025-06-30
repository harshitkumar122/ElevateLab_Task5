CREATE DATABASE IF NOT EXISTS EcommerceDB;
USE EcommerceDB;
SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS Orders;
DROP TABLE IF EXISTS Customers;
SET FOREIGN_KEY_CHECKS = 1;

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100)
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

INSERT INTO Customers (customer_id, name, email) VALUES
(1, 'Amit Sharma', 'amit.sharma@gmail.com'),
(2, 'Beena Verma', 'beena.v@gmail.com'),
(3, 'Chetan Rao', 'chetan.rao@gmail.com');

INSERT INTO Orders (order_id, customer_id, order_date, amount) VALUES
(201, 1, '2025-05-10', 3200.00),
(202, 1, '2025-05-12', 450.00),
(203, 2, '2025-05-15', 990.00);

-- INNER JOIN
SELECT Customers.name, Orders.order_id, Orders.amount
FROM Customers
INNER JOIN Orders ON Customers.customer_id = Orders.customer_id;

-- LEFT JOIN
SELECT Customers.name, Orders.order_id, Orders.amount
FROM Customers
LEFT JOIN Orders ON Customers.customer_id = Orders.customer_id;

-- RIGHT JOIN
SELECT Customers.name, Orders.order_id, Orders.amount
FROM Customers
RIGHT JOIN Orders ON Customers.customer_id = Orders.customer_id;

-- FULL OUTER JOIN
SELECT Customers.name, Orders.order_id, Orders.amount
FROM Customers
LEFT JOIN Orders ON Customers.customer_id = Orders.customer_id
UNION
SELECT Customers.name, Orders.order_id, Orders.amount
FROM Customers
RIGHT JOIN Orders ON Customers.customer_id = Orders.customer_id;
