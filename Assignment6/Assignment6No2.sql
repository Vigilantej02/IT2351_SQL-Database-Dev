-- James Vigilante Fall 2021
USE jamesvigilante_guitar_shop;
DROP PROCEDURE IF EXISTS InsertCategory;
DELIMITER //
CREATE PROCEDURE InsertCategory
(
	category_id_param INT,
    category_name_param VARCHAR(255)
)
BEGIN
-- A wise man once said: Code once, Paste forever.
-- It's me, im the wise man.
DECLARE duplicate_entry_for_key TINYINT DEFAULT FALSE;
DECLARE CONTINUE HANDLER FOR 1062 SET duplicate_entry_for_key = true;
INSERT INTO categories VALUE (category_id_param, category_name_param);
IF duplicate_entry_for_key = TRUE THEN
		SELECT 'Row was not inserted - duplicate key encountered.' AS message;
	ELSE 
		SELECT '1 row was inserted.' AS message;
	END IF;
END//
CALL InsertCategory(5, "Winds");
/* This ones real simple. The procedure takes 2 params, an id and a name. It inserts this data into
the table. I reused the code from task 2 for my exception handler and logic to display the messages. */