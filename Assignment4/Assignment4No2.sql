-- James Vigilante
SELECT product_name from products p, list_price
WHERE (product_id in
(SELECT product_id from order_items), AVG(list_price) < list_price);
/* This is supposed to take the product name from the products table, join thru subquery with the key product id from the order items table
and only show the items whose list price is above the average list price.
It doesn't though. It says list price doesnt exist.
Which is frustrating. I'll take half credit over stressing and getting stuck on one problem though. */