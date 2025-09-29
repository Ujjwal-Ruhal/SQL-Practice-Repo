/* Creating a table is one of the first and most important steps in building a database. 
The CREATE TABLE command in SQL defines how your data will be stored, including the table name, column names, data types, and rules (constraints) 
such as NOT NULL, PRIMARY KEY, and CHECK. */

/*
Syntax:

CREATE table table_name
(
Column1 datatype (size),
column2 datatype (size),
.
.
columnN datatype(size)
);
*/

use my_sql_database;

CREATE TABLE Customer(
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    LastName VARCHAR(50),
    Country VARCHAR(50),
    Age INT CHECK (Age >= 0 AND Age <= 99),
    Phone int(10)
);

/*
Explanation:
- CustomerID is an integer and serves as the PRIMARY KEY, ensuring each record is unique.
- CustomerName, LastName, and Country are VARCHAR fields to store variable-length text.
- Age has a CHECK constraint, ensuring it’s within the range of 0 to 99.
- Phone is an integer field, although in real scenarios, a VARCHAR would often be used for storing phone numbers to allow for leading zeros and formatting.
*/

/*
Inserting Data into the Table
After creating the table, you can use INSERT INTO command to add data into it. Here is how to add some sample records into the Customer table:
*/

INSERT INTO Customer (CustomerID, CustomerName, LastName, Country, Age, Phone)
VALUES (1, 'Shubham', 'Thakur', 'India','23',996325897),
       (2, 'Aman ', 'Chopra', 'Australia','21',458965875),
       (3, 'Naveen', 'Tulasi', 'Sri lanka','24',785985626),
       (4, 'Aditya', 'Arpan', 'Austria','21',565655566),
       (5, 'Nishant. Salchichas S.A.', 'Jain', 'Spain','22',787885000);
       
-- see the final table
SELECT * FROM Customer;
       
/*
Create Table from Existing Table
We can also create a new table based on the structure (and optionally the data) of an existing table. The CREATE TABLE AS SELECT command allows us to duplicate an entire table or select specific columns to form a new one. 
The following query creates a new table called SubTable that contains CustomerID and CustomerName from the existing Customer table.

Syntax:

CREATE TABLE new_table_name AS
SELECT column1, column2, ...
FROM existing_table_name
WHERE ...;
*/

CREATE TABLE SubTable AS
SELECT CustomerID, CustomerName
FROM customer;

-- see the final table
SELECT * FROM SubTable;

/*
Key Tips for Using CREATE TABLE in SQL
To ensure the smooth creation and management of your tables, keep these points in mind:

1. The CREATE TABLE statement can also define constraints like NOT NULL, UNIQUE, and DEFAULT.

2. If you attempt to create a table that already exists, SQL will throw an error. To avoid this, you can use the IF NOT EXISTS clause.

CREATE TABLE IF NOT EXISTS Customer (...);
3. Always define appropriate data types for each column (e.g., VARCHAR(50) for names and INT for IDs) to optimize performance and storage.

4. After creating a table, use the following command to view the structure of your table:

DESC table_name;
5. If you need to change the table’s structure after creation (e.g., renaming a column, adding a new column), use the ALTER TABLE statement.
*/