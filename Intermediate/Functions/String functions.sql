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

/*
REPLACE()
The REPLACE() function replaces occurrences of a substring within a string with another substring. This is useful for cleaning up data, such as replacing invalid characters or formatting errors.

Query:
*/
SELECT REPLACE('Hello World', 'World', 'SQL') AS UpdatedString;
-- Output: Hello SQL

/*
SUBSTRING() / SUBSTR()
The SUBSTRING() (or SUBSTR()) function is used to extract a substring from a string, starting from a specified position. It is especially useful when we need to extract a specific part of a string, like extracting the domain from an email address.

Query:
*/
SELECT SUBSTRING('Hello World', 1, 5) AS SubStringExample;
-- Output: Hello

/*
LEFT() and RIGHT()
The LEFT() and RIGHT() functions allow you to extract a specified number of characters from the left or right side of a string, respectively. It is used for truncating strings for display.

Query:
*/
SELECT LEFT('Hello World', 5) AS LeftString;
SELECT RIGHT('Hello World', 5) AS RightString;
-- Output:

-- Hello    
-- World

/*
INSTR()
The INSTR() function is used to find the position of the first occurrence of a substring within a string. It returns the position (1-based index) of the substring. If the substring is not found, it returns 0. This function is particularly useful for locating specific characters or substrings in text data.

Query:
*/
SELECT INSTR('Hello World', 'World') AS SubstringPosition;
-- Output: 7

/*
TRIM()
The TRIM() function removes leading and trailing spaces (or other specified characters) from a string. By default, it trims spaces but can also remove specific characters using TRIM(character FROM string). This is helpful for cleaning text data, such as user inputs or database records.

Query:
*/
SELECT TRIM(' ' FROM '  Hello World  ') AS TrimmedString;
-- Output: Hello World

/*
REVERSE()
The REVERSE() function reverses the characters in a string. It’s useful in situations where we need to process data backward, such as for password validation or certain pattern matching.

Query:
*/
SELECT REVERSE('Hello') AS ReversedString;
-- Output: olleH

/*
Other String Functions
In SQL, beyond the basic string functions, there are several advanced string functions that can help you manipulate and process string data more effectively. These are the some additional SQL Functions.
*/

