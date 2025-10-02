-- Finding the Minimum Age
SELECT MIN(Age) AS Min_Age
FROM Customer;

-- Finding the Maximum Age
SELECT MAX(Age) AS Max_Age
FROM Customer;

-- MIN() with Other Columns
SELECT CustomerName, MIN(Age) AS min_age 
FROM Customer;

-- Using MIN() and MAX() with HAVING Clause
SELECT CustomerName, MAX(Age) AS max_age
FROM Customer
HAVING MIN(Age) > 22;

/*
Key Points to Remember
- MIN() → Finds the smallest value.
- MAX() → Finds the largest value.
- Both functions ignore NULL values.
- Can be combined with WHERE, GROUP BY, HAVING for complex queries.
- Works with numeric, string, and date columns.
*/
