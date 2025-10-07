/*
 Independent Nested Queries
In an independent nested query, the execution of the inner query is independent of the outer query. The inner query runs first and its result is used directly by the outer query. Operators like IN, NOT IN, ANY and ALL are commonly used with independent nested query.
*/
/*
Example 1: Using IN

In this Example we will find the S_IDs of students who are enrolled in the courses ‘DSA’ or ‘DBMS’. We can break the query into two parts:

Step 1: Find the C_IDs of the courses:

This query retrieves the IDs of the courses named 'DSA' or 'DBMS' from the COURSE table.
*/

SELECT C_ID FROM COURSE WHERE C_NAME IN ('DSA', 'DBMS');

/*
Step 2: Use the result of Step 1 to find the corresponding S_IDs:

The inner query finds the course IDs and the outer query retrieves the student IDs associated with those courses from the STUDENT_COURSE table
*/

SELECT S_ID FROM STUDENT_COURSE 
WHERE C_ID IN (
  SELECT C_ID FROM COURSE WHERE C_NAME IN ('DSA', 'DBMS')
);

-- Explanation: The inner query finds the course IDs of DSA and DBMS. The outer query then retrieves the student IDs enrolled in those courses.

