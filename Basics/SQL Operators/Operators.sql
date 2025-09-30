CREATE DATABASE Operation;
USE Operation;

CREATE TABLE MATHS(
ROLL_NUMBER INT,
S_NAME VARCHAR(10),
MARKS INT);

INSERT INTO MATHS (id, name, marks) VALUES
(1, 'ABHI', 70),
(2, 'RAVI', 80),
(3, 'ARJUN', 90),
(4, 'SAM', 100),
(5, 'MOHAN', 50),
(6, 'ROHAN', 10),
(7, 'ROCKY', 20),
(8, 'AYUSH', 40),
(9, 'NEHA', 30),
(10, 'KRITI', 60);

SELECT * FROM MATHS;

-- Equal to (=) Operator:
SELECT * FROM MATHS WHERE MARKS=50;

-- Greater than (>) Operator:
SELECT * FROM MATHS WHERE MARKS>60;

-- Less than (<) Operator:
SELECT * FROM MATHS WHERE MARKS<40;

-- Greater than or equal to (>=) Operator:
SELECT * FROM MATHS WHERE MARKS>=80;

-- Less than or equal to (<=) Operator
SELECT * FROM MATHS WHERE MARKS<=30;

-- Not equal to (<>) Operator:
SELECT * FROM MATHS WHERE MARKS<>70;

