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

