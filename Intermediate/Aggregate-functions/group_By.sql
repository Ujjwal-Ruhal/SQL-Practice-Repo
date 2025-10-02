-- Group By Single Column
SELECT subject, COUNT(*) AS Student_Count
FROM Student
GROUP BY subject;

-- Group By Multiple Columns
SELECT subject, year, COUNT(*)
FROM Student
GROUP BY subject, year;

