CREATE TABLE employee (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    salary INT
);

INSERT INTO employee (employee_id, employee_name, salary) VALUES
(1, 'Alex', 25000),
(2, 'RR', 55000),
(3, 'JPM', 52000),
(4, 'GGSHMR', 12312),
(5, 'Vikas', 36000),
(6, 'Shivani', 41000),
(7, 'Arjun', 28000),
(8, 'Priya', 67000),
(9, 'Anil', 54000),
(10, 'Sneha', 48000);

-- Addition (+)
SELECT employee_id, employee_name, salary, 
       salary + 100 AS "salary + 100"
FROM addition;
-- or
SELECT employee_id, employee_name, salary, 
       salary + employee_id AS "salary + employee_id"
FROM addition;

-- Subtraction (-)
SELECT employee_id, employee_name, salary, 
       salary - 100 AS "salary - 100"
FROM subtraction;
-- or
SELECT employee_id, employee_name, salary, 
       salary - employee_id AS "salary - employee_id"
FROM subtraction;

-- Multiplication (*)'
SELECT employee_id, employee_name, salary, 
       salary * 100 AS "salary * 100"
FROM addition;
-- or
SELECT employee_id, employee_name, salary, 
       salary * employee_id AS "salary * employee_id"
FROM addition;

-- Division (/)
SELECT employee_id, employee_name, salary, 
       salary / 100 AS "salary / 100"
FROM addition;

-- Modulus (%)
SELECT employee_id, employee_name, salary, 
       salary % 25000 AS "salary % 25000"
FROM addition;

-- for example
-- Arithmetic Operations with NULL : important note
-- When any arithmetic operation is performed on a NULL value, the result is always NULL.
-- for example in table : type = NULL 
SELECT employee_id, employee_name, salary, type, 
       type + 100 AS "type + 100"
FROM addition;

/*
- NULL means unknown/unavailable
- It is not the same as 0 or empty string
- Any operation with NULL results in NULL
*/
