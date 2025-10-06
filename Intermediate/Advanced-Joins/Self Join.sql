/*
SQL Self Join
A Self Join is a regular join where a table is joined with itself. It is particularly useful when comparing rows within the same table, such as retrieving employee-manager relationships from an employee table.

Note: A self join is not a new join type. It simply means joining the same table twice with aliases.
*/

/*
Syntax:
SELECT columns
FROM table AS alias1
JOIN table AS alias2 
ON alias1.column = alias2.related_column;
*/
