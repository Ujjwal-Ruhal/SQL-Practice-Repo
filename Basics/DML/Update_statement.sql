CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    LastName VARCHAR(50),
    Country VARCHAR(50),
    Age INT,
    Phone VARCHAR(15)
);

-- Insert sample data
INSERT INTO Customer (CustomerID, CustomerName, LastName, Country, Age, Phone)
VALUES 
(1, 'Shubham', 'Thakur', 'India', 23, '9415536635'),
(2, 'Aman', 'Chopra', 'Australia', 21, '9812345678'),
(3, 'Naveen', 'Tulasi', 'Sri Lanka', 24, '9123456789'),
(4, 'Aditya', 'Arpan', 'Austria', 21, '9876543210'),
(5, 'Nishant', 'Jain', 'Spain', 22, '7012345678');

-- Example 1: Update Single Column Using UPDATE Statement
UPDATE Customer 
SET CustomerName  = 'Nitin' 
WHERE Age = 22;

-- Example 2: Updating Multiple Columns using UPDATE Statement
UPDATE Customer 
SET CustomerName = 'Satyam', 
Country = 'USA' 
WHERE CustomerID = 1;

-- Example 3: Omitting WHERE Clause in UPDATE Statement
UPDATE Customer 
SET CustomerName = 'Shubham';

/*
Optimizing SQL UPDATE Queries
Avoid frequent updates: Constantly updating rows can slow down performance. Batch updates or consider using a database trigger to handle automatic updates.
Index relevant columns: Ensure that columns in the WHERE clause (such as CustomerID) are indexed. This will improve the speed of the update operation.
*/