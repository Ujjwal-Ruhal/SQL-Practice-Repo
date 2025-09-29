-- SQL DELETE Statement
/*
- Removes rows based on conditions.
- Retains table schema, constraints, and indexes.
- Can delete a single row or all rows.
- Useful for cleaning or managing datasets.

Syntax: 
DELETE FROM table_name
WHERE some_condition;
*/

CREATE TABLE GFG_Employees (
   id INT PRIMARY KEY,
   name VARCHAR (20) ,
   email VARCHAR (25),
   department VARCHAR(20)
);

INSERT INTO GFG_Employees (id, name, email, department) VALUES 
(1, 'Jessie', 'jessie23@gmail.com', 'Development'),
(2, 'Praveen', 'praveen_dagger@yahoo.com', 'HR'),
(3, 'Bisa', 'dragonBall@gmail.com', 'Sales'),
(4, 'Rithvik', 'msvv@hotmail.com', 'IT'),
(5, 'Suraj', 'srjsunny@gmail.com', 'Quality Assurance'),
(6, 'Om', 'OmShukla@yahoo.com', 'IT'),
(7, 'Naruto', 'uzumaki@konoha.com', 'Development');

Select * From GFG_Employees;

-- Example 1: Deleting Single Record
DELETE FROM GFG_Employees 
WHERE NAME = 'Rithvik';  

-- Example 2: Deleting Multiple Records
DELETE FROM GFG_Employees 
WHERE department = 'Development';

-- Example 3: Delete All Records from a Table
DELETE FROM GFG_Employees;
-- Or
-- DELETE * FROM GFG_Employees; 

-- Rolling Back DELETE Operations
START TRANSACTION;
DELETE FROM GFG_Employees WHERE department = 'Development';
-- If needed, you can rollback the deletion
ROLLBACK;
