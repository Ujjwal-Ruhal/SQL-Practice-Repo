CREATE DATABASE StudentDB;
USE StudentDB;

CREATE TABLE Student (
    ROLL_NO INT PRIMARY KEY,
    NAME VARCHAR(50),
    ADDRESS VARCHAR(100),
    PHONE VARCHAR(15),
    AGE INT );

INSERT INTO Student (ROLL_NO, NAME, ADDRESS, PHONE, AGE) 
VALUES  (1, 'Liam', 'New York', 'xxxxxxxxxx', 18),
		(2, 'Sophia', 'Berlin', 'xxxxxxxxxx', 18),
		(3, 'Akira', 'Tokyo', 'xxxxxxxxxx', 20),
		(4, 'Carlos', 'Tokyo', 'xxxxxxxxxx', 18);
        
INSERT INTO Student 
VALUES (5, 'Isabella', 'Rome', 'xxxxxxxxxx', 19);

-- Inserting Data into Specific Columns 
INSERT INTO Student (ROLL_NO, NAME, AGE) 
VALUES (6, 'Hiroshi', 19);

-- Inserting Multiple Rows at Once
INSERT INTO Student (ROLL_NO, NAME, ADDRESS, PHONE, AGE) 
VALUES
(7, 'Mateo Garcia', 'Madrid', 'xxxxxxxxxx', 15),
(8, 'Hana Suzuki', 'Osaka', 'xxxxxxxxxx', 18),
(9, 'Oliver Jensen', 'Copenhagen', 'xxxxxxxxxx', 17),
(10, 'Amelia Brown', 'London', 'xxxxxxxxxx', 17);

-- Inserting Data from One Table into Another Table
-- Method 1: Insert All Columns from Another Table
INSERT INTO Student
SELECT * FROM OldStudent;

-- Method 2: Insert Specific Columns from Another Table
INSERT INTO Student (Name, Age)
SELECT Name, Age
FROM OldStudent;

-- Method 3: Insert Specific Rows Based on Condition
INSERT INTO Student
SELECT * FROM OldStudent
WHERE Age > 20;

