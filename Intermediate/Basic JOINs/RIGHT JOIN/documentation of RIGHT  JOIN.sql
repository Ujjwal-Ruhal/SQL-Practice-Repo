/*
SQL RIGHT JOIN
In SQL, the RIGHT JOIN (also called RIGHT OUTER JOIN) is used to combine rows from two tables based on a related column. 
It returns all records from the right table and only the matching records from the left table. If there is no match in the left table, the result will show NULL values for the left table’s columns.

Returns all rows from the right table.
Includes only matching rows from the left table.
Non-matching rows from the left table appear as NULL
*/

/*
Syntax:

SELECT column_name(s)
FROM tableA 
RIGHT JOIN tableB 
ON tableA.column_name = tableB.column_name;
*/