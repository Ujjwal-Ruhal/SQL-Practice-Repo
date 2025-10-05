SELECT emp_no , emp_name ,d_name, location 
FROM employee 
RIGHT  JOIN dept 
ON employee.dept_no = department.dept_no;

-- or

SELECT 
    e.emp_no,
    e.emp_name,
    d.dept_no,
    d.d_name,
    d.location
FROM Employee e
RIGHT JOIN Department d
ON e.dept_no = d.dept_no;
