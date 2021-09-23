-- James Vigilante Fall 2021
SELECT email_address AS "Email Address", LENGTH(email_address) AS "Length",
LOCATE("@", email_address, 1) AS "@",
SUBSTRING_INDEX(email_address, "@", 1) AS "Username",
SUBSTRING_INDEX(email_address, "@", -1) AS "Domain"
FROM customers;
/* Selects email_address from the customer table 5 seperate times, using differen functions. 
first one counts how long the address is, the second finds where the @ symbol is and reports its location,
the third shows everything before the @ using a substring_index function with "1" as the parameter so it reads left-to-right
and the fourth does the opposite of the third, replacing "1" with "-1" to read everything before the @ right-to-left
*/