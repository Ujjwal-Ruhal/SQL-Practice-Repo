-- SQL SELECT Query
/*
SQL SELECT is used to retrieve data from one or more tables, either all records or specific results based on conditions. 
It returns output in a tabular format of rows and columns.

- Extracts data from tables.
- Targets specific or all columns (*).
- Supports filtering, sorting, grouping, and joins.
- Results are stored in a result set.

Syntax
SELECT column1,column2.... FROM table_name;
*/

CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    LastName VARCHAR(50),
    Country VARCHAR(50),
    Age INT(2),
    Phone VARCHAR(10) );

INSERT INTO Customer (CustomerID, CustomerName, LastName, Country, Age, Phone)
VALUES   (1, 'Liam', 'Smith', 'USA', 23, 'xxxxxxxxxx'),
		 (2, 'Sophia', 'Miller', 'USA', 21, 'xxxxxxxxxx'),
		 (3, 'Akira', 'Tanaka', 'Japan', 24, 'xxxxxxxxxx'),
		 (4, 'Carlos', 'Hernandez', 'USA', 21, 'xxxxxxxxxx'),
		 (5, 'Isabella', 'Rossi', 'Italy', 22, 'xxxxxxxxxx');
                
-- Example 1: Select Specific Columns
SELECT CustomerName, LastName 
FROM Customer;

-- Example 2: Select All Columns
SELECT * FROM Customer;

-- Example 3: SELECT Statement with WHERE Clause
SELECT CustomerName 
FROM Customer 
where Age = '21'; 

-- Example 4: SELECT with GROUP BY Clause
SELECT Country, COUNT(*) AS customer_count
FROM Customer
GROUP BY Country;

-- Example 5: SELECT with DISTINCT Clause
SELECT DISTINCT Country
FROM Customer;

-- Example 6: SELECT Statement with HAVING Clause
SELECT Country, COUNT(*) AS customer_count
FROM Customer
GROUP BY Country
HAVING COUNT(*) >= 2;

-- Example 7: SELECT Statement with ORDER BY clause
SELECT * FROM Customer ORDER BY Age DESC;  


	