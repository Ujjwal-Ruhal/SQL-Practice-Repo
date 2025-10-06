/*
SQL CROSS JOIN
CROSS JOIN in SQL generates the Cartesian product of two tables, meaning each row from the first table is paired with every row from the second. 
This is useful when you want all possible combinations of records. Since result grows as rows_in_table1 × rows_in_table2, it can get very large, 
so it’s best used with smaller tables or alongside a WHERE clause to filter results into meaningful pairs.
*/
/*
Syntax:

SELECT * FROM table1
CROSS JOIN table2;
*/
