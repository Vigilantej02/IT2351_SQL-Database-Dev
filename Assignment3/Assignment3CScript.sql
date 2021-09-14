/* James Vigilante Fall 2021 */
SELECT DISTINCT category_name AS "Category Name", COUNT(*) AS "# of products", SUM(quantity) AS "Orders"
FROM categories c 
JOIN products p ON (c.category_id = p.category_id)
JOIN order_items oi ON (p.product_id = oi.product_id)
GROUP BY p.category_id
ORDER BY COUNT(p.product_id) DESC;
/* phew this is an ugly one. SELECT the DISTINCT category names, Count everything that has a unique product id,
Add up the # of orders each category has, Join categories to products to order_items through their respective keys,
Group the data by the category_id key from products, and then order by the count of product_id from products, Descending */