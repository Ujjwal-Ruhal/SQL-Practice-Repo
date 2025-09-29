-- WHERE Clause
/*
In SQL, the WHERE clause is used to filter rows based on specific conditions. Whether you are retrieving, updating, or deleting data, WHERE ensures 
that only relevant records are affected. Without it, your query applies to every row in the table! The WHERE clause helps you:

Filter rows that meet certain conditions
Target specific data using logical, comparison and pattern-based operators
Control SELECT, UPDATE, DELETE or even INSERT statements
Syntax:
SELECT column1, column2
FROM table_name
WHERE column_name operator value;

** Importance of WHERE Clause **
The WHERE clause is critical for several reasons:

Data Accuracy: Filters data to return only relevant rows
Performance: Reduces the amount of scanned data
Flexibility: Works with many operators and conditions
*/

CREATE TABLE Emp1 (
  EmpID INT PRIMARY KEY,
  Name VARCHAR(50),
  Country VARCHAR(50),
  Age INT,
  Mob VARCHAR(15)
);

INSERT INTO Emp1 VALUES
(1, 'Shubham',  'India', 23, '738479734'),
(2, 'Aman',     'Australia', 21, '436789555'),
(3, 'Naveen',   'Sri Lanka', 24, '34873847'),
(4, 'Aditya',   'Austria', 21, '328440934'),
(5, 'Nishant',  'Spain', 22, '73248679');

SELECT * FROM Emp1;

-- Example 1: Where Clause with Logical Operators
SELECT * FROM Emp1 WHERE Age=24;

-- Example 2: WHERE with Comparison Operators
SELECT EmpID, Name, Country FROM Emp1 WHERE Age > 21;

-- Example 3: Where Clause with BETWEEN Operator
SELECT * FROM Emp1 
WHERE Age BETWEEN 22 AND 24;

-- Example 4: Where Clause with LIKE Operator
SELECT * FROM Emp1 WHERE Name LIKE 'S%'; 
-- or : To fetch records of Employees where Name contains the pattern 'M'.
SELECT * FROM Emp1 WHERE Name LIKE '%M%';

-- Example 5: Where Clause with IN Operator
SELECT Name FROM Emp1 WHERE Age IN (21,23);

