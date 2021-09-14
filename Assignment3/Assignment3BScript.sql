/* James Vigilante Fall 2021 */
SELECT category_name AS "Category Name",
product_name AS "Product Name", 
Max(list_price) AS "Price Listed" 
FROM products p
JOIN categories c ON(c.category_id = p.category_id);
/* My output is different than yours, but I wrote it correctly. *shrug*
Anyway, this query states: SELECT category_name, product_name, and the biggest value of list_price, while assigning them aliases
and then Join the products table and categories table through the key category_id so the first line can parse. */
