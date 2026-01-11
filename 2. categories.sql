USE project;
CREATE TABLE categories (
    category_id INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(50)
);
INSERT INTO categories (category_name) VALUES
('Electronics'),
('Clothing'),
('Books'),
('Home Appliances');

SELECT * FROM CATEGORIES;