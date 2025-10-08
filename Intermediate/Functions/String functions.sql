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

-- CHAR_LENGTH() / CHARACTER_LENGTH()
/*
The CHAR_LENGTH() or LENGTH() function returns the length of a string in characters. It’s essential for validating or manipulating text data, especially when you need to know how many characters a string contains.
*/

SELECT CHAR_LENGTH('Hello') AS StringLength;
-- Output: 5

/*
UPPER() and LOWER()
These functions convert the text to uppercase or lowercase, respectively. They are useful for normalizing the case of text in a database.

Query:
*/
SELECT UPPER('hello') AS UpperCase;
SELECT LOWER('HELLO') AS LowerCase;
-- Output:
/*
HELLO
hello
*/

/*
LENGTH()
LENGTH() returns the length of a string in bytes. This can be useful for working with multi-byte character sets.

Query:
*/
SELECT LENGTH('Hello') AS LengthInBytes;
-- Output: 5

