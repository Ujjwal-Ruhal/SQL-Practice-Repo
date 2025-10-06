-- Types of Multiple Joins in SQL
 /*
 1. Multiple INNER JOINS
When you use multiple INNER JOINs, the query will return only the rows where there is a match in all the joined tables.

For example, query below retrieves data only for students who have records in both the marks and attendance tables and filters for attendance ≥ 80:
*/

SELECT s.id, s.name, m.marks, a.attendance
FROM students AS s
INNER JOIN marks AS m ON s.id = m.id
INNER JOIN attendance AS a ON s.id = a.id
WHERE a.attendance >= 80;

/*
2. LEFT JOIN ( LEFT OUTER JOIN) with Multiple Tables
LEFT JOINs return all rows from the left table and the matching rows from the other tables. If there is no match, columns from the non-matching tables will show NULL.

For example, this query retrieves all students, including those without matching records in marks or attendance tables:
*/

SELECT s.id, s.name, m.marks, a.attendance
FROM students AS s
LEFT JOIN marks AS m ON s.id = m.id AND m.marks > 70
LEFT JOIN attendance AS a ON s.id = a.id;

/*
3. RIGHT JOIN (RIGHT OUTER JOIN) with Multiples Tables
A RIGHT JOIN returns all rows from the right table and the matching rows from the left table. If no match exists, columns from the left table will show NULL.

For example, this query retrieves all marks and attendance records for CSE students, including cases where student details may be missing in the main students table
*/

SELECT s.id, s.name, m.marks, a.attendance
FROM students AS s
RIGHT JOIN marks AS m ON s.id = m.id AND s.branch='CSE'
RIGHT JOIN attendance AS a ON s.id = a.id;

/*
4. FULL OUTER JOIN with Multiple Tables
A FULL OUTER JOIN combines the effects of LEFT and RIGHT JOIN. It returns all rows from both tables, with NULL values where no match exists.

For example, this query retrieves all students along with their marks and attendance, including those who either scored above 80 marks or have attendance of 80% or more, ensuring no matching records are left out.
*/

SELECT s.id, s.name, m.marks, a.attendance
FROM students AS s
FULL OUTER JOIN marks AS m ON s.id = m.id AND m.marks > 80
FULL OUTER JOIN attendance AS a ON s.id = a.id AND a.attendance >= 80;

/*
Use Case of Multiple Joins
Multiple joins are commonly used in reporting and analytics. For example:

Generating student performance reports combining marks, attendance and personal details.
Summarizing sales data by joining customers, orders and payment tables.
HR analytics by joining employee, department and payroll tables.
This allows retrieving all related information in a single query, reducing computation time and improving efficiency.
*/
