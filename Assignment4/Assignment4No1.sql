-- James Vigilante Fall 2021
SELECT DISTINCT	category_name
FROM categories WHERE category_id IN
(select category_id from products)
ORDER BY category_name;
/* SELECT DISTINCT category_name FROM categories c JOIN products p ON c.category_id = p.category_id ORDER BY category_name;
						testing purposes.
 This selects ever unique category name from the categories & products tables using a subquery to extract the category_id
 from products, and finally orders it alphabetically by category name
*/