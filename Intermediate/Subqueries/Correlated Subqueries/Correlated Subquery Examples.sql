/*
Correlated Subquery Examples
Correlated subqueries are best understood through practical use cases. Below are some common scenarios where they are used to filter, update, or compare data row by row.
*/
/*
1. Fetching Data Based on Row-Specific Conditions
Correlated subqueries are often used when you need to filter data based on a condition that involves comparing values from the outer query.

 Example: Fetch Employees Who Earn More Than Their Department's Average Salary
 */
 
SELECT last_name, salary, department_id
 FROM employees outer
 WHERE salary >
                (SELECT AVG(salary)
                 FROM employees
                 WHERE department_id =
                        outer.department_id group by department_id);

/*
Explanation:

The subquery calculates the average salary for each department, and for each employee, the outer query checks if their salary is greater than the average for their department.
*/

/*
2. Using Correlated Subqueries with UPDATE
Correlated subqueries can also be used with UPDATE statements to modify data based on related information from another table.

Example: Update Employee Salary Based on Department Average
*/
UPDATE employees e
SET salary = (SELECT AVG(salary)
              FROM employees
              WHERE department_id = e.department_id)
WHERE department_id = 101;

/*
Explanation:

This query updates the salaries of employees in department 101 based on the average salary for that department. The subquery is evaluated for each row in the employees table.
*/

/*
3. Using Correlated Subqueries with DELETE
We can use a correlated subquery within a DELETE statement to remove rows from one table based on conditions in another table. 

Example: Delete Employees Who Do Not Belong to Department 101
*/
DELETE FROM table1 alias1
 WHERE column1 operator
               (SELECT expression
                FROM table2 alias2
                WHERE alias1.column = alias2.column);
                
/*
Explanation:

This query deletes employees who do not belong to the 'HR' department by using a correlated subquery in the NOT EXISTS clause.
*/

/*
4. Using EXISTS with Correlated Subqueries
The EXISTS operator is often used in correlated subqueries to test if a subquery returns any rows. It returns TRUE if the subquery has at least one row.

Example: Find Employees Who Have at Least One Person Reporting to Them
*/
SELECT employee_id, last_name, job_id, department_id
FROM employees outer
WHERE EXISTS ( SELECT ’X’
FROM employees
WHERE manager_id =
outer.employee_id);

/*
5. Using NOT EXISTS with Correlated Subqueries
The NOT EXISTS operator is used to check if a subquery does not return any rows. This is useful for finding records that do not match specific criteria.

Example: Find Departments Without Any Employees
*/
SELECT department_id, department_name
FROM departments d
WHERE NOT EXISTS (SELECT ’X’
FROM employees
WHERE department_id
= d.department_id);

/*
Explanation:

This query retrieves departments that do not have any employees assigned to them. The NOT EXISTS clause ensures that only those departments without employees are selected.
*/

/*
			Nested 						vs. 				Correlated Subqueries
Nested (Non-Correlated) Subquery.						Correlated Subquery
Executes once before the outer query.					Executes for each row of the outer query.
Independent of the outer query.							Dependent on values from the outer query.
Usually more efficient for large datasets.				Can be slower as it runs multiple times.
Example: WHERE col IN (SELECT col FROM table2);			Example: WHERE col > (SELECT AVG(col) FROM table2 WHERE table2.id = outer.id);
*/
