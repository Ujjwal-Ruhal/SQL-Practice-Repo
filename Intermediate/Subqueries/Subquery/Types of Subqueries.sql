/*
1. Single-Row Subquery
Returns exactly one row as the result.
Commonly used with comparison operators such as =, >, <
*/
-- Example:

SELECT * FROM Employees
WHERE Salary = (SELECT MAX(Salary) FROM Employees);

-- Output: Returns the employee(s) with the highest salary.
