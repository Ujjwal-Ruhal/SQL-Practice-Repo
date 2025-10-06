/*
Step 1: Set up the Database and Tables
We will first create a database called geeks that contains three tables: students, marks and attendance and then run our queries on those tables.
*/
CREATE DATABASE hello;
USE hello;

CREATE TABLE students(id INT, name VARCHAR(50), branch VARCHAR(50));
CREATE TABLE marks(id INT, marks INT);
CREATE TABLE attendance(id INT, attendance INT);