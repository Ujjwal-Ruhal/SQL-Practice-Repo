/*
Examples of SQL LEFT JOIN
Let's look at an example of LEFT JOIN in SQL to understand it better. Consider two tables: Emp (employees) and department (departments). 
The Emp table contains employee details, while the department table holds department details.
*/

CREATE TABLE Emp (
    EmpID INT PRIMARY KEY,
    Name VARCHAR(50),
    Country VARCHAR(50),
    Age INT,
    Salary INT,
    department_id INT
);

INSERT INTO Emp (EmpID, Name, Country, Age, Salary, department_id)
VALUES (1, 'Shubham', 'India', 23, 30000, 101),
       (2, 'Aman', 'Australia', 21, 45000, 102),
       (3, 'Naveen', 'Sri Lanka', 24, 40000, 103),
       (4, 'Aditya', 'Austria', 21, 35000, 104),
       (5, 'Nishant', 'Spain', 22, 25000, 101);