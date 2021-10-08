-- James Vigilante Fall 2021
USE jamesvigilante_guitar_shop;
DROP PROCEDURE IF EXISTS ProductCount;
DELIMITER //
CREATE PROCEDURE ProductCount
(
)
DETERMINISTIC READS SQL DATA
BEGIN
DECLARE productCount INT;
SELECT Count(product_id) INTO productCount FROM products;
IF productCount >= 18 THEN
SELECT ' ' AS "Product Count more than 18";
ELSE 
SELECT ' ' AS "Product Count less than 18";
END IF;
END//

CALL ProductCount();
/*This one took me a bit. It does the normal procedure stuff: uses the right database, drops yadda yadda yada
then it creates the procedure ProductCount that takes no parameters. It uses productCount as an INT variable, then counts
the amount of product_ids in the products table, put that data into the variable
then it uses an if-then-else statement to show the message whether or not there are less or more than 18 products.
Then it calls the procedure. */