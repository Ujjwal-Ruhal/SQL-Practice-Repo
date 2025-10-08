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

/*
 ASCII()
The ASCII() function returns the ASCII value of a single character. This is helpful when we need to find the numeric code corresponding to a character, often used in encoding and decoding text.

Syntax:
*/
SELECT ascii('t');
-- Output: 116

/*
CONCAT_WS()
CONCAT_WS() stands for "Concatenate With Separator." It allows us to join multiple strings with a specific separator between them. This is ideal when we need to merge columns like first name and last name with a custom separator.

Syntax:
*/
SELECT CONCAT_WS('_', 'hello', 'ujjwal', 'hi');
-- Output: hello_ujjwal_hi

/*
FIND_IN_SET()
The FIND_IN_SET() function returns the position of a value within a comma-separated list. This is especially useful for finding out where an element exists in a string of values (e.g., tags, categories).

Syntax:
*/
SELECT FIND_IN_SET('b', 'a, b, c, d, e, f');
-- Output: 2

/*
FORMAT()
The FORMAT() function is used to format a number as a string in a specific way, often with commas for thousands or with a specific number of decimal places. It is handy when you need to display numbers in a user-friendly format.

Syntax:
*/
SELECT FORMAT(0.981 * 100, 'N2') + '%' AS PercentageOutput;
-- Output: ‘98.10%’

/*
INSTR()
The INSTR() function returns the position of the first occurrence of a substring within a string. If the substring is not found, it returns 0. It is useful for finding where specific text appears in a larger string.

Syntax:
*/
SELECT INSTR('hello for ujjwal', 'e');
-- Output: 2 

/*
LCASE()
The LCASE() function converts all characters in a string to lowercase. It helps standardize text data, especially when comparing strings in a case-insensitive way.
*/

/*
LOCATE()
LOCATE() allows you to find the nth occurrence of a substring in a string. This is especially useful when you need to locate a specific substring based on its position.

Syntax:
*/
SELECT LOCATE('for', 'helloforujjwal', 1);
-- Output: 6

/*
LPAD()
LPAD() is used to pad a string to a certain length by adding characters to the left side of the original string. It is useful when you need to format data to a fixed length.

Syntax:
*/
SELECT LPAD('hello', 8, '0');
-- Output: 000hello

/*
MID()
MID() extracts a substring starting from a given position in a string and for a specified length. It is useful when you want to extract a specific portion of a string.

Syntax:
*/
SELECT Mid ("helloforujjjwal", 6, 2);
-- Output: for

/*
POSITION()
The POSITION() function finds the position of the first occurrence of a specified character in a string.

Syntax:
*/
SELECT POSITION('e' IN 'helloforujjjwal');
-- Output: 2

/*
REPEAT()
The REPEAT() function repeats a string a specified number of times. It's useful when you need to duplicate a string or pattern for certain operations.

Syntax:

SELECT REPEAT('ILoveYou', 3);
Output: ILoveYouILoveYouILoveYou

