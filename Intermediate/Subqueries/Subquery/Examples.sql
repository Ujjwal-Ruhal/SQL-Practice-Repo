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

/*
Example 2: Using Subquery with INSERT

Here we demonstrate how a subquery can be used with INSERT. Instead of manually entering data, we copy data from another table (Temp_Students) into the main Student table.
*/
-- Temp_Students

INSERT INTO Student 
SELECT * FROM Temp_Students;

/*
Explanation:

The subquery SELECT * FROM Temp_Students selects all rows from the helper table.
The INSERT INTO Student adds these rows into the main Student table.
Thus, Ajay and Meena are successfully added.
*/

/*
Example 3: Using Subquery with DELETE

In this example, we use a subquery with DELETE to remove certain rows from the Student table. Instead of hardcoding roll numbers, the subquery finds them based on conditions.
*/

DELETE FROM Student
WHERE ROLL_NO IN (
    SELECT ROLL_NO FROM Student WHERE ROLL_NO <= 101 OR ROLL_NO = 201
);

/*
Explanation:

The subquery selects roll numbers 101 and 201.
The outer query deletes students having those roll numbers.
As a result, Ram (101) and Ajay (201) are removed.
*/

/*
Example 4: Using Subquery with UPDATE

Subqueries can also be used with UPDATE. In this example, we update student names to "Geeks" if their location matches the result of a subquery.
*/

UPDATE Student
SET NAME = 'Ujjwal'
WHERE LOCATION IN (
    SELECT LOCATION FROM Student WHERE LOCATION IN ('Salem', 'Delhi')
);

/*
Explanation:

The subquery selects locations 'Salem' and 'Delhi'.
The outer query updates the NAME field for students whose location matches those values.
Thus, Ravi and Meena are renamed to "Ujjwal".
*/

/*
Example 5: Simple Subquery in the FROM Clause

This example demonstrates using a subquery inside the FROM clause, where the subquery acts as a temporary (derived) table.
*/

SELECT NAME, PHONE_NUMBER
FROM (
    SELECT NAME, PHONE_NUMBER, LOCATION 
    FROM Student 
    WHERE LOCATION LIKE 'C%'
) AS subquery_table;

/*
Explanation:

The subquery (SELECT NAME, PHONE_NUMBER, LOCATION FROM Student WHERE LOCATION LIKE 'C%') fetches students whose location starts with "C" (Coimbatore, Chennai, etc.).
The outer query then selects only NAME and PHONE_NUMBER from this derived table.
Only Raj qualifies because his location is Coimbatore.
*/

/*
Example 6: Subquery with JOIN

We can also use subqueries along with JOIN to connect data across tables.
*/

SELECT s.NAME, s.LOCATION, ns.SECTION
FROM Student s
INNER JOIN (
    SELECT ROLL_NO, SECTION 
    FROM New_Student WHERE SECTION = 'A'
) ns
ON s.ROLL_NO = ns.ROLL_NO;

/*
Explanation: The subquery extracts roll numbers of students in section A. Joining this with the Student table on ROLL_NO returns Ravi and Raj along with their locations and section.
*/
