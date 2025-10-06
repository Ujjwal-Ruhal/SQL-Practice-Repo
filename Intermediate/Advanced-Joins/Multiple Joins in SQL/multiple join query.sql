-- Step 4: Using Multiple Joins in SQL

/*
Let us now perform a multiple join where we join the students, marks and attendance tables. We will fetch data such that we get the marks and attendance of students who have attendance greater than or equal to 75.
*/

SELECT s.id, s.name, m.marks, a.attendance
FROM students AS s
INNER JOIN marks AS m ON s.id = m.id
INNER JOIN attendance AS a ON s.id = a.id
WHERE a.attendance >= 75;

/*
Explanation:

students table is joined with marks using id.
Result is joined with attendance on id.
WHERE clause filters students with attendance ≥ 75.
*/

