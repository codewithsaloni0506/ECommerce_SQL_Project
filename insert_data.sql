INSERT INTO products (name, category, price, stock)
VALUES
('Laptop', 'Electronics', 55000, 10),
('Headphones', 'Electronics', 1500, 50),
('T-shirt', 'Clothing', 400, 100),
('Shoes', 'Footwear', 1200, 40),
('Smartphone', 'Electronics', 35000, 25);

INSERT INTO orders (product_id, quantity, order_date)
VALUES
(1, 1, '2025-08-10'),
(2, 2, '2025-08-11'),
(3, 5, '2025-08-12'),
(5, 1, '2025-08-13'),
(4, 3, '2025-08-14');
