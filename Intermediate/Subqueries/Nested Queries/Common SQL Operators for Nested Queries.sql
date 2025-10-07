/*
1. IN Operator
The IN operator is used to check whether a column value matches any value in a list of values returned by a subquery. This operator simplifies queries by avoiding the need for multiple OR conditions.
*/
-- Example: Retrieve student names who enrolled in ‘DSA’ or ‘DBMS’:

SELECT S_NAME FROM STUDENT
WHERE S_ID IN (
  SELECT S_ID FROM STUDENT_COURSE
  WHERE C_ID IN (
    SELECT C_ID FROM COURSE WHERE C_NAME IN ('DSA', 'DBMS')
  )
);

/*
Explanation:

The innermost query fetches course IDs of ‘DSA’ and ‘DBMS’.
The middle query finds student IDs enrolled in those courses.
The outer query retrieves names of those students.
*/

/*
2. NOT IN Operator
The NOT IN operator excludes rows based on a set of values from a subquery. It is particularly useful for filtering out unwanted results. This operator helps identify records that do not match the conditions defined in the subquery.
*/
-- Example: Retrieve student IDs not enrolled in ‘DSA’ or ‘DBMS’:

SELECT S_ID FROM STUDENT
WHERE S_ID NOT IN (
  SELECT S_ID FROM STUDENT_COURSE
  WHERE C_ID IN (
    SELECT C_ID FROM COURSE WHERE C_NAME IN ('DSA', 'DBMS')
  )
);

/*
Explanation:

The inner queries first collect IDs of students enrolled in DSA or DBMS.
The outer query returns only those student IDs that are not in that list.
*/

/*
3. ANY Operator
It compares a value with any value returned by the subquery. If at least one comparison is true, the condition is satisfied.
*/
-- Example: Retrieve student names whose age is greater than at least one student from Delhi

SELECT S_NAME FROM STUDENT
WHERE S_AGE > ANY (
  SELECT S_AGE FROM STUDENT WHERE S_ADDRESS = 'DELHI'
);

/*
Explanation:

The inner query fetches ages of students living in Delhi.
The outer query checks which students have an age greater than at least one of those ages.
Returns students who satisfy that condition.
*/

/*
4. ALL Operator
It compares a value with all values returned by the subquery. The condition is satisfied only if it is true for every value.
*/
-- Example: Retrieve student names whose age is greater than all students from Delhi

SELECT S_NAME FROM STUDENT
WHERE S_AGE > ALL (
  SELECT S_AGE FROM STUDENT WHERE S_ADDRESS = 'DELHI'
);

/*
Explanation:

The inner query fetches ages of all students from Delhi.
The outer query looks for students whose age is greater than every one of those ages.
Since no student fulfills this condition, no rows are returned.
*/