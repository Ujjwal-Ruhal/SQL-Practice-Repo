CREATE TABLE Employee (
  EmployeeId int,
  Name varchar(50),
  Gender varchar(10),
  Salary int,
  Department varchar(20),
  Experience int );

INSERT INTO Employee (EmployeeId, Name, Gender, Salary, Department, Experience)
VALUES  (1, 'Emily Johnson', 'Female', 45000, 'IT', 2),
               (2, 'Michael Smith', 'Male', 65000, 'Sales', 5),
               (3, 'Olivia Brown', 'Female', 55000, 'Marketing', 4),
               (4, 'James Davis', 'Male', 75000, 'Finance', 7),
               (5, 'Sophia Wilson', 'Female', 50000, 'IT', 3);

SELECT * FROM Employee;