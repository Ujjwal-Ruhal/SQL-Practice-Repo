/*
SQL ORDER BY
The ORDER BY clause in SQL is used to sort query results based on one or more columns in either ascending (ASC) or descending (DESC) order. 
Whether you are presenting data to users or analyzing large datasets, sorting the results in a structured way is essential.

By default, it sorts in ascending order (lowest to highest).
To sort in descending order, use the DESC keyword.
Syntax:

SELECT * FROM table_name ORDER BY column_name ASC | DESC;
*/

-- Example 1 : Sort by a Single Column
-- In this example, we will fetch all data from the table Student and sort the result in descending order according to the column ROLL_NO. 
SELECT * FROM students ORDER BY ROLL_NO DESC;

/*
Example 2 : Sort by Multiple Columns
In this example, we will fetch all data from the table Student and then sort the result in descending order first according to the column age and then in ascending order according to the column name.

To sort according to multiple columns, separate the names of columns by the (,) operator. 
*/
SELECT * FROM students ORDER BY age DESC , name ASC;

/*
Sorting By Column Number
Instead of using column names, you can sort results using the position of a column in the SELECT list. 
The number must be greater than 0 and not exceed the number of selected columns.

Using column numbers in ORDER BY reduces query readability.
Referring to columns by name is clearer and easier to understand.
Changing column order in SELECT doesn’t affect ORDER BY when using names.
Prefer column names over numbers for maintainable SQL code.

Syntax:
ORDER BY Column_Number asc/desc;
*/

CREATE TABLE studentinfo
	( Roll_no INT,
	NAME VARCHAR(25),
	Address VARCHAR(20),
	CONTACTNO BIGINT NOT NULL,
	Age INT ); 

INSERT INTO studentinfo
VALUES (7,'ROHIT','GHAZIABAD',9193458625,18),
	(4,'DEEP','RAMNAGAR',9193458546,18),
	(1,'HARSH','DELHI',9193342625,18),
	(8,'NIRAJ','ALIPUR',9193678625,19),
	(5,'SAPTARHI','KOLKATA',9193789625,19),
	(2,'PRATIK','BIHAR',9193457825,19),
	(6,'DHANRAJ','BARABAJAR',9193358625,20),
	(3,'RIYANKA','SILIGURI',9193218625,20);

SELECT Roll_no, Name, Address
FROM studentinfo
ORDER BY 1

-- ORDER BY 1 means sorting values according to first column in the SELECT statement.