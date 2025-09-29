-- SQL Distinct Clause
/*
The DISTINCT keyword in SQL is used to retrieve only unique values, eliminating duplicates from query results. 
It ensures data accuracy and is often used with the SELECT statement for clean, precise reporting.

- Removes duplicate rows
- Ensures accurate, clean results
- Works on single or multiple columns

Syntax: 
SELECT DISTINCT column1, column2 
FROM table_name
*/

CREATE TABLE students (
  ROLL_NO INT,
  NAME VARCHAR(50),
  ADDRESS VARCHAR(100),
  PHONE VARCHAR(20),
  AGE INT
);

INSERT INTO students (ROLL_NO, NAME, ADDRESS, PHONE, AGE)
VALUES 
  (1, 'Shubham Kumar', '123 Main Street, Bangalore', '9876543210', 23),
  (2, 'Shreya Gupta', '456 Park Road, Mumbai', '9876543211', 23),
  (3, 'Naveen Singh', '789 Market Lane, Delhi', '9876543212', 26),
  (4, 'Aman Chopra', '246 Forest Avenue, Kolkata', '9876543213', 22),
  (5, 'Aditya Patel', '7898 Ocean Drive, Chennai', '9876543214', 27),
  (6, 'Avdeep Desai', '34 River View, Hyderabad', '9876543215', 24),
  (7, 'Shubham Kumar', '123 Main Street, Bangalore', '9876543210', 23),  -- Duplicate
  (8, 'Shreya Gupta', '456 Park Road, Mumbai', '9876543211', 23),  -- Duplicate
  (9, 'Naveen Singh', '789 Market Lane, Delhi', '9876543212', 26),  -- Duplicate
  (10, 'Aditya Patel', '7898 Ocean Drive, Chennai', '9876543214', 27),  -- Duplicate
  (11, 'Aman Chopra', '246 Forest Avenue, Kolkata', '9876543213', 22),  -- Duplicate
  (12, 'Avdeep Desai', '34 River View, Hyderabad', '9876543215', 24);  -- Duplicate
  
-- Example 1: Fetch Unique Names from the NAME Field.
SELECT DISTINCT NAME FROM students;

-- Example 2: Fetching Unique Combinations of Multiple Columns
SELECT DISTINCT NAME, AGE FROM students;

-- Example 3: Using DISTINCT with the ORDER BY Clause
SELECT DISTINCT AGE FROM students ORDER BY AGE;

-- Example 4: Using DISTINCT with Aggregate Functions (e.g., COUNT())
SELECT COUNT(DISTINCT ROLL_NO)  FROM Students ;

-- Example 5: DISTINCT with NULL Values
INSERT INTO students (ROLL_NO, NAME, ADDRESS, PHONE, AGE)
VALUES (13, 'John Doe', '123 Unknown Street', '9876543216', NULL);

SELECT DISTINCT AGE FROM students;

