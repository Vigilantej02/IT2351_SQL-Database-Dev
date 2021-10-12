Assignment 7 Question 1.
If you were assigned the task of deleting a customer from the customers table as a database administrator, 
explain the logic you would implement to accomplish this task via a stored program in your readme.md file.  
Include the type of stored program and the steps that would be required.

To accomplish this, I would first create an event called "yearly_delete_customer_data", scheduled to invoke every year if the customer hasn't had a transaction in that long, Starting on todays date. The logic would look something like this:
(Lets assume that we're not using the AP database, but rather one where a sales table is linked to the customer table through customer_id)
``` SQL
DO BEGIN
 			DELETE FROM customer_id, customer_first_name, customer_last_name WHERE last_transaction_date < NOW() - INTERVAL 1 YEAR;
END
```
