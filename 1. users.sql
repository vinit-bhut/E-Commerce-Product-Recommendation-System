USE project;
CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    email VARCHAR(100) UNIQUE
);
INSERT INTO users (name, email) VALUES
('Amit Sharma', 'amit@gmail.com'),
('Rohit Verma', 'rohit@gmail.com'),
('Neha Patel', 'neha@gmail.com'),
('Priya Singh', 'priya@gmail.com');

SELECT * FROM users;


