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

/*
3. Correlated Subquery
A dependent subquery: it references columns from the outer query.
Executed once for each row of the outer query, making it slower for large datasets.
*/
-- Example:
SELECT e.Name, e.Salary
FROM Employees e
WHERE e.Salary > (SELECT AVG(Salary) 
                  FROM Employees 
                  WHERE DepartmentID = e.DepartmentID);

-- Output: Returns employees earning more than the average salary of their own department.

