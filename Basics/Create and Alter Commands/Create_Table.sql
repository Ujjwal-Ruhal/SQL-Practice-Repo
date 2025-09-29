use my_sql_database;

CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50),
    Age INT CHECK (Age >= 16),
    Email VARCHAR(100) UNIQUE
);