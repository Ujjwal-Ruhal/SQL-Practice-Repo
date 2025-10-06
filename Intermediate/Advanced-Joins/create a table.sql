/*
Example: Employees and Their Managers
We have a table GFGemployees with employee_id, employee_name and manager_id. Each employee is linked to their manager using manager_id. Our goal is to extract employees along with their respective managers’ names.

Here is the query to create the table and insert sample data:
*/

CREATE TABLE GFGemployees (
    employee_id INT PRIMARY KEY, 
    employee_name VARCHAR(50), 
    manager_id INT );

INSERT INTO GFGemployees (employee_id, employee_name, manager_id)
VALUES  (1, 'Zaid', 3),  
               (2, 'Rahul', 3),  
               (3, 'Raman', 4),  
               (4, 'Kamran', NULL),  
               (5, 'Farhan', 4);
               
/*
To retrieve the list of employees with their corresponding managers, we perform a self join on the GFGemployees table. We use two aliases: e for employees and m for managers.

By joining manager_id from the employee side with employee_id from the manager side, we establish the relationship between employees and their managers.
*/
