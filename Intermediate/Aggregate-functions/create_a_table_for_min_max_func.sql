use my_sql_database;
CREATE TABLE Customer(
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    LastName VARCHAR(50),
    Country VARCHAR(50),
    Age int(2),
  Phone int(11)
);
-- Insert some sample data into the Customers table
INSERT INTO Customer (CustomerID, CustomerName, LastName, Country, Age, Phone)
VALUES (1, 'Shubham', 'Thakur', 'India','23','9145685956'),
       (2, 'Aman ', 'Chopra', 'Australia','21','9898458980'),
       (3, 'Naveen', 'Tulasi', 'Sri lanka','24','9897253254'),
       (4, 'Aditya', 'Arpan', 'Austria','21','8596785568'),
       (5, 'Nishant. Salchichas S.A.', 'Jain', 'Spain','22','9885755489');