USE jamesvigilante_guitar_shop;
DROP TRIGGER IF EXISTS products_before_update;
DELIMITER //
CREATE TRIGGER products_before_update
			   BEFORE UPDATE ON products
               FOR EACH ROW
BEGIN
	DECLARE new_list_price DECIMAL(10,2);
    SELECT list_price 
    INTO new_list_price
    FROM products
    WHERE product_id = NEW.product_id;
    IF new_list_price > 1200 OR new_list_price < 100 THEN
    SIGNAL SQLSTATE 'HY000'
    SET MESSAGE_TEXT = 'New listed price outside specified parameters';
    END IF;
END//

UPDATE products
SET list_price = 120005555
WHERE product_id = 1;