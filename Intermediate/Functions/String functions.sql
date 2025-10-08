-- String functions
/*
SQL String Functions are powerful tools that allow us to manipulate, format, and extract specific parts of text data in our database. These functions are essential for tasks like cleaning up data, comparing strings, and combining text fields. Whether we are working with names, addresses, or any form of textual data, mastering SQL string functions is crucial for efficient data handling and analysis.
*/

/*
Common SQL String Functions
String functions are used to perform an operation on input string and return an output string. Below are some of the most commonly used SQL string functions:
*/

/*
1. CONCAT()
The CONCAT() function is used to concatenate (combine) two or more strings into one string. It is useful when we want to merge fields like first and last names into a full name.

Query:
*/
SELECT CONCAT('John', ' ', 'Doe') AS FullName;
-- Output: John Doe

