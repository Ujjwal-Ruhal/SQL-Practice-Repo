/*
1. Single-Row Subquery
Returns exactly one row as the result.
Commonly used with comparison operators such as =, >, <
*/
-- Example:

SELECT * FROM Employees
WHERE Salary = (SELECT MAX(Salary) FROM Employees);

-- Output: Returns the employee(s) with the highest salary.

/*
2. Multi-Row Subquery
Returns multiple rows as the result.
Requires operators that can handle multiple values, such as IN, ANY or ALL
*/
-- Example:
SELECT * FROM Employees
WHERE DepartmentID IN (SELECT DepartmentID FROM Departments WHERE Location = 'New York');

-- Output: Fetches employees working in all New York departments.