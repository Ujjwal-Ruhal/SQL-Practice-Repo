/*
SQL FULL JOIN

comments
The FULL JOIN (or FULL OUTER JOIN) in SQL returns all rows from both tables, combining matched rows and filling unmatched rows with NULL values. 
It is basically the combination of LEFT JOIN and RIGHT JOIN

Retrieves all rows from both tables.
Matches rows where conditions meet.
Fills NULLs where no match exists.
Combines results of LEFT JOIN + RIGHT JOIN.
Can be used sequentially for multiple tables.
*/

/*
Syntax:

SELECT columns
FROM table1
FULL JOIN table2
ON table1.column = table2.column;
*/