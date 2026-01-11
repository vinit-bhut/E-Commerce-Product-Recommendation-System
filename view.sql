USE project;

-- 1. View: User Purchase History
CREATE VIEW vw_user_purchases AS
SELECT 
    o.user_id,
    oi.product_id
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id;

-- 2. View: Similar Users
CREATE VIEW vw_similar_users AS
SELECT DISTINCT 
    up1.user_id AS target_user,
    up2.user_id AS similar_user
FROM vw_user_purchases up1
JOIN vw_user_purchases up2 
    ON up1.product_id = up2.product_id
   AND up1.user_id != up2.user_id;
   
-- 3. View: Recommended Products (MAIN VIEW) 
CREATE VIEW vw_recommended_products AS
SELECT DISTINCT 
    su.target_user AS user_id,
    p.product_id,
    p.product_name
FROM vw_similar_users su
JOIN vw_user_purchases up ON su.similar_user = up.user_id
JOIN products p ON up.product_id = p.product_id
WHERE p.product_id NOT IN (
    SELECT product_id
    FROM vw_user_purchases
    WHERE user_id = su.target_user
);

-- 4. View: Category Preference per User
CREATE VIEW vw_user_category_preference AS
SELECT 
    o.user_id,
    p.category_id,
    COUNT(*) AS total_purchases
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
GROUP BY o.user_id, p.category_id;

-- 5. View: Category-Based Recommendations
CREATE VIEW vw_category_recommendations AS
SELECT DISTINCT
    ucp.user_id,
    p.product_id,
    p.product_name
FROM vw_user_category_preference ucp
JOIN products p ON ucp.category_id = p.category_id
WHERE p.product_id NOT IN (
    SELECT product_id
    FROM vw_user_purchases
    WHERE user_id = ucp.user_id
);


