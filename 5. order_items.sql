USE project;
CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);
INSERT INTO order_items (order_id, product_id, quantity) VALUES
-- Amit
(1, 1, 1),   -- Smartphone
(1, 3, 1),   -- Headphones
(2, 6, 1),   -- Java Book

-- Rohit
(3, 1, 1),   -- Smartphone
(3, 2, 1),   -- Laptop

-- Neha
(4, 3, 1),   -- Headphones
(4, 7, 1),   -- SQL Book

-- Priya
(5, 4, 2),   -- T-Shirts
(5, 5, 1);   -- Jeans

SELECT * FROM ORDER_ITEMS;