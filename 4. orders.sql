USE project;
CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    order_date DATE,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);
INSERT INTO orders (user_id, order_date) VALUES
(1, '2025-01-10'),
(1, '2025-02-05'),
(2, '2025-01-15'),
(3, '2025-02-10'),
(4, '2025-02-18');

SELECT * FROM ORDERS;