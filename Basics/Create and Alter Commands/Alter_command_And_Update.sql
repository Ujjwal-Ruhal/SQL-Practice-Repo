ALTER TABLE Student
ADD Department VARCHAR(50);

-- Update Department values
UPDATE Student
SET Department = 'Computer Science'
WHERE StudentID = 1;

UPDATE Student
SET Department = 'Electronics'
WHERE StudentID = 2;

UPDATE Student
SET Department = 'Mechanical'
WHERE StudentID = 3;

