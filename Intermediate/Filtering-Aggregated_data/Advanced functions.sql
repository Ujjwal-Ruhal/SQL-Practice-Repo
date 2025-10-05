-- Advanced Functions
/*
Aggregate Functions
Aggregate functions perform calculations on multiple rows and return a single value.

SUM(): Calculates the sum of values in a column.
AVG(): Computes the average of values in a column.
COUNT(): Returns the number of rows or non-null values in a column.
MIN(): Finds the minimum value in a column.
MAX(): Retrieves the maximum value in a column.
*/

SELECT COUNT(*), AVG(Salary), SUM(Salary), MIN(Salary), MAX(Salary) 
FROM Employees;

/* 
Conditional Functions
Conditional functions help apply logic inside SQL queries.

CASE WHEN: Allows conditional logic to be applied in the SELECT statement.
COALESCE(): Returns the first non-null value in a list.
NULLIF(): Compares two expressions and returns null if they are equal; otherwise, returns the first expression.
*/
-- Example
SELECT Name, 
       CASE WHEN Salary > 5000 THEN 'High' 
            ELSE 'Low' END AS Salary_Level
FROM Employees;

/* 
Mathematical Functions
Mathematical functions are used for numeric calculations. Some commonly used mathematical functions are given below:

ABS(): Returns the absolute value of a number.
ROUND(): Rounds a number to a specified number of decimal places.
POWER(): Raises a number to a specified power.
SQRT(): Calculates the square root of a number.
Example
*/

SELECT ABS(-15), ROUND(25.678, 2), POWER(2, 3), SQRT(49);

/*
Advanced Functions in SQL
Beyond aggregates and math, SQL offers system and utility functions for deeper insights.
*/

-- BIN() : Convert decimal to binary
SELECT BIN(18);

-- BINARY() : Convert to binary string
SELECT BINARY "HelloUjjwal";

-- COALESCE() : Returns the first non-null expression in a list
SELECT COALESCE(NULL,NULL,'hello',NULL,'hi');

-- CONNECTION_ID() : Returns the unique connection ID for the current connection
SELECT CONNECTION_ID();

-- CURRENT_USER() : Returns the user name and hostname for the MySQL account used by the server.
SELECT CURRENT_USER();