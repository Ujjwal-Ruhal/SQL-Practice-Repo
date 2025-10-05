/*
Example of SQL INNER JOIN
To understand how INNER JOIN works, let’s first create two tables:

A professor table that stores details about professors.
A teacher table that contains information about courses taught by these professors.
Both tables are linked through a common column, ID in the professor table and prof_id in the teacher table.
*/

CREATE TABLE professor (
    ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Salary INT );

INSERT INTO professor (ID, Name, Salary) VALUES
(1, Rohan Kumar, 57000),
(2, Hiroshi Tanaka, 45000),
(3, Maria Fernandez, 60000),
(4, Ahmed Hassan, 50000),
(5, Elena Petrova, 55000);

SELECT * FROM professor;