USE jamesvigilante_guitar_shop;
DROP FUNCTION IF EXISTS new_price;
DELIMITER //
CREATE FUNCTION new_price
(
	item_id_param INT
)
RETURNS INT
BEGIN
DECLARE newPrice DECIMAL(9,2);
SELECT item_price - discount_amount WHERE (item_id = item_id_param);
INSERT INTO order_items VALUE (newPrice);
END//
CALL new_price(1);
/*Yeah, I don't know where I went wrong with this one, and I can't get it to work for the life of me.  I'll take the L rather
than fret about this.*/