-- James Vigilante
SELECT list_price AS "List Price", FORMAT(list_price, 1) AS "1 digit to the right", 
CONVERT(list_price, SIGNED) AS "Signed Integer", CAST(list_price AS SIGNED) AS "Casted Integer"
FROM products;
/* Selects list price 4 times, once normally, once using a FORMAT function, once using a CONVERT function,
and another using a CAST function from the table products. */