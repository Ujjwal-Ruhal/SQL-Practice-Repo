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

/*
ROUND() – Round a Number to a Specified Decimal Place
The ROUND() function rounds a number to a specified number of decimal places. It is very useful for financial calculations or whenever precise rounding is necessary.

Syntax:

SELECT ROUND(number, decimal_places);
Example:
*/
SELECT ROUND(15.6789, 2);
-- Output: 15.68

/*
TRUNCATE() – Remove Decimal Places
The TRUNCATE() function is used to remove the decimal portion of a number without rounding. It truncates the number to the specified number of decimal places.

Syntax:

SELECT TRUNCATE(number, decimal_places);
Example:
*/
SELECT TRUNCATE(12.98765, 2);
-- Output: 12.98

/*
MOD() – Modulo or Remainder
The MOD() function returns the remainder of a division operation (i.e., it computes the modulus). This function is useful for tasks like determining even/odd numbers or finding remainders in mathematical operations.

Syntax:

SELECT MOD(dividend, divisor);
Example:
*/
SELECT MOD(10, 3);
-- Output: 1

