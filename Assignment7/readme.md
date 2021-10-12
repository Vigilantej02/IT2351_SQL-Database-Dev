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

Assignment 7 Question 3
Imagine you have a bakery business.  Describe a situation where an event scheduler would be helpful in 
your business. +5 outline the code required for this event. 

A situation where an event scheduler could be handy would be in a sale event. Say every year, for the anniversary week of the business opening, all items are 10% off. We could program an event scheduler to start on MM/DD to MM/DD, which would then reduce the prices in the products table by 10% off list_price. 
