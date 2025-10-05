-- Performing a LEFT JOIN
-- To perform left-join on Employee and Department Tables we will use the following SQL query:
SELECT Emp.EmpID, Emp.Name, department.
department_name, department.department_head, 
department.location 
FROM Emp
LEFT JOIN department ON Emp.department_id = department.department_id;

/*
SQL LEFT JOIN with WHERE Clause
In this example, we will add a WHERE clause that specifies to only return results where the "location" column in the department table equals 'Bangalore'.
 This will filter the results to only show employees who belong to a department located in Bangalore, and departments that have no employees will not be returned in the results. 
*/

SELECT e.EmpID, e.Name, d.department_name, d.department_head, d.location 
FROM Emp e
LEFT JOIN department d ON e.department_id = d.department_id
WHERE d.location = 'Bangalore';

/*
 SQL LEFT JOIN as Aliases
In this query, we'll use aliases "e" for the Emp table and "d" for the department table. 
The SELECT statement references these aliases for each column, making the query easier to read and type. Aliases simplify code and improve readability, especially with long or complex table names.
*/

SELECT e.EmpID, e.Name, d.department_name, 
d.department_head, d.location 
FROM Emp e
LEFT JOIN department d ON 
e.department_id = d.department_id;