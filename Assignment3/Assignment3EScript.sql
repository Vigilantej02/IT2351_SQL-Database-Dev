/* James Vigilante Fall 2021 */
SELECT DISTINCT category_name AS "Category Name", COUNT(*) AS "# of products", SUM(quantity) AS "Orders", product_name AS "Product Name"
FROM categories c
JOIN products p ON (c.category_id = p.category_id)
JOIN order_items oi ON (p.product_id = oi.product_id) WHERE product_name IS NOT null
GROUP BY product_name, p.category_id WITH ROLLUP
ORDER BY COUNT(product_name) DESC ;
/* Does the same thing as the last 2 - except I don't understand why my IS NOT NULL statement isn't working properly */