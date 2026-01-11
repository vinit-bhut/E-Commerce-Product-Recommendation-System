USE project;
CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100),
    category_id INT,
    price DECIMAL(10,2),
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);
INSERT INTO products (product_name, category_id, price) VALUES
('Smartphone', 1, 15000),
('Laptop', 1, 55000),
('Headphones', 1, 2000),
('T-Shirt', 2, 800),
('Jeans', 2, 2000),
('Java Programming Book', 3, 600),
('SQL Mastery Book', 3, 700),
('Mixer Grinder', 4, 3500),
('Microwave Oven', 4, 9000);

SELECT * FROM PRODUCTS;


