-- Create products table
CREATE TABLE products (
  product_id INT AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  category VARCHAR(50),
  price DECIMAL(10,2),
  stock INT,
  PRIMARY KEY (product_id)
);

-- Create orders table
CREATE TABLE orders (
  order_id INT AUTO_INCREMENT,
  product_id INT,
  quantity INT,
  order_date DATE,
  PRIMARY KEY (order_id),
  FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Insert products
INSERT INTO products (name, category, price, stock)
VALUES
('Laptop', 'Electronics', 55000, 10),
('Headphones', 'Electronics', 1500, 50),
('T-shirt', 'Clothing', 400, 100),
('Shoes', 'Footwear', 1200, 40),
('Smartphone', 'Electronics', 35000, 25);

-- Insert orders
INSERT INTO orders (product_id, quantity, order_date)
VALUES
(1, 1, '2025-08-10'),
(2, 2, '2025-08-11'),
(3, 5, '2025-08-12'),
(5, 1, '2025-08-13'),
(4, 3, '2025-08-14');

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


