/*
Correlated Nested Queries
In correlated nested queries, the inner query depends on the outer query for its execution. For each row processed by the outer query, the inner query is executed. This means the inner query references columns from the outer query. The EXISTS keyword is often used with correlated queries.
*/
/*
Example 2: Using EXISTS

In this Example, we will find the names of students who are enrolled in the course with C_ID = 'C1':
*/

SELECT S_NAME FROM STUDENT S
WHERE EXISTS (
  SELECT 1 FROM STUDENT_COURSE SC
  WHERE S.S_ID = SC.S_ID AND SC.C_ID = 'C1'
);

-- Explanation: For each student, the inner query checks if they are enrolled in C1. If yes, that student’s name is returned.

