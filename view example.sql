USE project;

-- Get recommendations for user 1
SELECT product_name
FROM vw_recommended_products
WHERE user_id = 1;

-- Category-based suggestions
SELECT product_name
FROM vw_category_recommendations
WHERE user_id = 1;
