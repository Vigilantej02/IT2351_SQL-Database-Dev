CREATE VIEW items_ordered AS SELECT quantity, product_name, list_price FROM order_items oi 
JOIN products p ON (oi.product_id = p.product_id);