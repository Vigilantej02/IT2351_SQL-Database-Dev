/* James Vigilante Fall 2021 */
SELECT COUNT(order_id) AS "Total # of orders", SUM(ship_amount) AS "Total Amount from All Orders" FROM orders;
/* This query states:
Select and count the number of orders based on order_id, then add up all the values in the ship_amount column
(assigning them both aliases as it goes) from the table orders.