# E-Commerce SQL Project

![SQL Badge](https://img.shields.io/badge/SQL-Skills-blue)

## Description
This is a sample SQL project for tracking products and orders in an e-commerce system.  
It demonstrates the creation of tables, inserting sample data, and running queries to showcase SQL skills like **SELECT, JOIN, WHERE, GROUP BY, UPDATE, and DELETE**.

---

## Tables

### 1. `products`
| Column      | Type          | Description                     |
|------------|---------------|---------------------------------|
| product_id | INT           | Primary key, auto-increment ID  |
| name       | VARCHAR(100)  | Product name                    |
| category   | VARCHAR(50)   | Product category                |
| price      | DECIMAL(10,2) | Product price                   |
| stock      | INT           | Available quantity in stock     |

### 2. `orders`
| Column     | Type    | Description                          |
|-----------|---------|--------------------------------------|
| order_id  | INT     | Primary key, auto-increment ID       |
| product_id| INT     | Foreign key referencing `products`   |
| quantity  | INT     | Quantity of the product ordered      |
| order_date| DATE    | Date when the order was placed       |

---

SELECT * FROM products;

SELECT * FROM orders;
SELECT p.name, SUM(o.quantity * p.price) AS total_sales
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY p.name;

SELECT * FROM products
WHERE stock < 20;

UPDATE orders
SET quantity = 2
WHERE order_id = 1;

DELETE FROM orders
WHERE order_id = 5;

