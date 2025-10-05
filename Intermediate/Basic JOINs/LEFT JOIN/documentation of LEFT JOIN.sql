/*
SQL LEFT JOIN
In SQL, the LEFT JOIN (also called LEFT OUTER JOIN) retrieves all records from the left table and only the matching records from the right table. 
If no match is found in the right table, the query will return NULL values for its columns.

Returns all rows from the left table.
Includes only matching rows from the right table.
Non-matching rows in the right table are represented as NULL
*/

/*
Syntax:

SELECT column_name(s) 
FROM tableA 
LEFT JOIN tableB ON tableA.column_name = tableB.column_name;
*/