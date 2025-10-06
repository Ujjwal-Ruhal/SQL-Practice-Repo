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
/*
columns: Columns to retrieve in the result.
alias1: First reference (alias) of the table.
alias2: Second reference (alias) of the same table.
related_column: condition that links rows within same table (e.g., Employee.ManagerID = Manager.EmployeeID).
*/
