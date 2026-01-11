USE project;

-- Products bought by User 1 (Amit)
SELECT p.product_name
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
WHERE o.user_id = 1;

-- Recommended Products for User 1
SELECT product_name
FROM vw_recommended_products
WHERE user_id = 1;

-- Most Popular Products
SELECT p.product_name, COUNT(*) AS times_bought
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY times_bought DESC;

