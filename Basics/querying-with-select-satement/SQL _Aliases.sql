-- SQL | Aliases
/*
In SQL, aliases are temporary names given to columns or tables to make queries easier to read and write. 
They don’t change the actual names in the database and exist only for the duration of that query.

- Make long or complex names readable
- Simplify joins and subqueries
- Improve clarity in result sets
- Avoid naming conflicts in multi-table queries

** There are two types of aliases in SQL:
- Column Aliases: Temporary names for columns in the result set.
- Table Aliases: Temporary names for tables used within a query.
*/

CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    LastName VARCHAR(50),
    Country VARCHAR(50),
    Age INT,
    Phone VARCHAR(15)
);

-- Inserting sample data into the Customer table
INSERT INTO Customer (CustomerID, CustomerName, LastName, Country, Age, Phone)
VALUES 
(1, 'Shubham', 'Thakur', 'India', 23, '9876543210'),
(2, 'Aman', 'Chopra', 'Australia', 21, '9876543211'),
(3, 'Naveen', 'Tulasi', 'Sri Lanka', 24, '9876543212'),
(4, 'Aditya', 'Arpan', 'Austria', 21, '9876543213'),
(5, 'Nishant', 'Jain', 'Spain', 22, '9876543214');

/*
** Column Aliases **
A column alias is used to rename a column just for the output of a query. They are useful when:

- Displaying aggregate data
- Making results more readable
- Performing calculations

Syntax:
SELECT column_name AS alias_name
FROM table_name;
*/

-- Example 1: Column Alias for Renaming a Column
SELECT CustomerID AS id
FROM Customer;

-- Table Aliases
/*
A table alias is used when you want to give a table a temporary name for the duration of a query. Table aliases are especially helpful in JOIN operations to simplify queries, 
particularly when the same table is referenced multiple times (like in self-joins).
*/

-- Example 2: Table Alias for Joining Tables
SELECT c1.CustomerName, c1.Country
FROM Customer AS c1, Customer AS c2
WHERE c1.Age = c2.Age AND c1.Country = c2.Country;

-- Combining Column and Table Aliases
SELECT c.CustomerName AS Name, c.Country AS Location
FROM Customer AS c
WHERE c.Age >= 21;

/*
Practical Uses of SQL Aliases
- Better Readability: Makes complex names shorter and easier to understand.
- Simplifies Queries: Reduces repetition, especially in joins.
- Clear Output: Renames columns for more meaningful results.
- Avoids Conflicts: Prevents naming clashes in multi-table queries.
*/

