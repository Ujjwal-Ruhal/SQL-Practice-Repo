/*
SQL | Numeric Functions
SQL Numeric Functions are built-in tools that allow you to perform mathematical and arithmetic operations on numeric data. They are widely used in financial, statistical, and reporting tasks to simplify calculations.

Operate on numeric data types like INT, FLOAT, DECIMAL, DOUBLE.
Perform basic arithmetic operations (addition, subtraction, multiplication, division).
Round numbers to desired precision.
Format numeric values for better readability.
Aggregate and analyze numeric data efficiently.
*/
/*
Commonly Used SQL Numeric Functions
Following are the numeric functions defined in SQL
*/
/*
ABS() – Absolute Value
The ABS() function returns the absolute value of a number, which is the number without its sign (i.e., it converts negative numbers to positive).

Syntax:

SELECT ABS(number);
Example:
*/
SELECT ABS(-25);
-- Output: 25

/*
CEIL() or CEILING() – Round Number Up
The CEIL() (or CEILING()) function rounds a number up to the nearest integer, regardless of whether the decimal part is greater than or less than 0.5.

Syntax:

SELECT CEIL(number);
Example:
*/
SELECT CEIL(12.34);
-- Output: 13

/*
FLOOR() – Round Number Down
The FLOOR() function rounds a number down to the nearest integer, ignoring the decimal part.

Syntax:

SELECT FLOOR(number);
Example:
*/
SELECT FLOOR(12.98);
-- Output: 12
