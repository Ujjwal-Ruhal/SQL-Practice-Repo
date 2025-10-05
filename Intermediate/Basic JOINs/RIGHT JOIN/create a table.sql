/*
Examples of SQL RIGHT JOIN
In this example, we will consider two tables employee table containing details of the employees working in the particular department the and department table containing the details of the department
*/

-- Create Department Table
CREATE TABLE Department (
    dept_no VARCHAR(10) PRIMARY KEY,
    d_name VARCHAR(50),
    location VARCHAR(50)
);

-- Insert data into Department Table
INSERT INTO Department (dept_no, d_name, location) VALUES
('D1', 'IT', 'Delhi'),
('D2', 'HR', 'Hyderabad'),
('D3', 'Finance', 'Pune'),
('D4', 'Testing', 'Noida'),
('D5', 'Marketing', 'Mathura');


-- Create Employee Table
CREATE TABLE Employee (
    emp_no VARCHAR(10) PRIMARY KEY,
    emp_name VARCHAR(100),
    dept_no VARCHAR(10),
    FOREIGN KEY (dept_no) REFERENCES Department(dept_no)
);

-- Insert data into Employee Table
INSERT INTO Employee (emp_no, emp_name, dept_no) VALUES
('E1', 'Varun Singhal', 'D1'),
('E2', 'Amrita Aggarwal', 'D2'),
('E3', 'Ravi Anand', 'D3');
