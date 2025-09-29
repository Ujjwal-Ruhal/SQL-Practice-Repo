create database my_sql_database;

use my_sql_database;

CREATE TABLE Student_information (
    StudentID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(30) NOT NULL,
    LastName VARCHAR(30),
    EmailID VARCHAR(50) UNIQUE NOT NULL,
    PhoneNumber VARCHAR(15) UNIQUE NOT NULL
);
