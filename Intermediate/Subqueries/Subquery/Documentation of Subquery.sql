/*
SQL Subquery
A subquery in SQL is a query nested inside another SQL query. It allows complex filtering, aggregation and data manipulation by using the result of one query inside another. 
They are an essential tool when we need to perform operations like:
*/
/*
Filtering: selecting rows based on conditions from another query.
Aggregating: applying functions like SUM, COUNT, AVG with dynamic conditions.
Updating: modifying data using values from other tables.
Deleting: removing rows based on criteria from another query.
*/
/*
While there is no universal syntax for subqueries, they are commonly used in SELECT statements as follows.

Syntax:

SELECT column_name
FROM table_name
WHERE column_name expression operator 
   (SELECT column_name FROM table_name WHERE ...);
*/
