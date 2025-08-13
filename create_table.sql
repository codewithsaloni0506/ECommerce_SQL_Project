CREATE TABLE products (
  product_id INT AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  category VARCHAR(50),
  price DECIMAL(10,2),
  stock INT,
  PRIMARY KEY (product_id)
);

CREATE TABLE orders (
  order_id INT AUTO_INCREMENT,
  product_id INT,
  quantity INT,
  order_date DATE,
  PRIMARY KEY (order_id),
  FOREIGN KEY (product_id) REFERENCES products(product_id)
);
