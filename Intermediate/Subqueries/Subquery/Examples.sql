/*
Example 1: Fetching Data Using Subquery in WHERE Clause

This example demonstrates how to use a subquery inside the WHERE clause. The inner query retrieves roll numbers of students who belong to section 'A' and the outer query fetches their corresponding details (name, location and phone number) from the Student table.
*/

SELECT NAME, LOCATION, PHONE_NUMBER 
FROM Student 
WHERE ROLL_NO IN (
    SELECT ROLL_NO FROM New_Student WHERE SECTION = 'A'
);

/*
Explanation:

The subquery SELECT ROLL_NO FROM New_Student WHERE SECTION = 'A' finds roll numbers of students in section A.
The outer query then uses these roll numbers to fetch details from the Student table.
Thus, only Ravi and Raj are returned, since they are in section A.
*/
