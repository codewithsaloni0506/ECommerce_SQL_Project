-- Sample Queries
SELECT * FROM products;
SELECT * FROM orders;

SELECT p.name, SUM(o.quantity * p.price) AS total_sales
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY p.name;

SELECT * FROM products WHERE stock < 20;

UPDATE orders SET quantity = 2 WHERE order_id = 1;

DELETE FROM orders WHERE order_id = 5;
