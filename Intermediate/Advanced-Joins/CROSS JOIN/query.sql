/*
Now, let’s perform a CROSS JOIN to see how every Customer pairs with every Order In the below example, we will use the CROSS JOIN command to match the data of the Customer and Orders table.

In general, if table A has m rows and table B has n rows, CROSS JOIN result will have m × n rows.
*/
-- Query:

SELECT * 
FROM Customer
CROSS JOIN Orders;

/*
Explanation: CROSS JOIN combines every row from the Customer table with every row from Orders table. 
Since there are 2 customers and 2 orders, result contains 2 × 2 = 4 rows.
*/