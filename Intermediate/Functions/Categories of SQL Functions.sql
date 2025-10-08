/*
Categories of SQL Functions
SQL functions are powerful tools that help streamline queries, perform operations, and manipulate data efficiently. They are essential for handling various tasks within SQL queries and database management.
*/
/*
Categories of Functions
Some of these categories of SQL functions are explained below:
*/
/*
1. Single Row Function
Single-row functions are those functions that return a single result row for each row of the queried table or view. This function exists in Select lists, WHERE clause, START WITH, CONNECT BY clause, and HAVING clause. 

Numeric Functions
Character Function
Data Mining Function
Datetime Functions
Conversion Function
Collection Function
XML Function

Now let's understand this with the help of example:
*/

SELECT
    -- Character Function to format the name
    INITCAP(first_name || ' ' || last_name) AS full_name,

    -- Numeric Function to round the income for readability
    ROUND(annual_income, -3) AS rounded_income,

    -- Data Mining Function to get the default probability
    PREDICTION_PROBABILITY(loan_default_model, 'YES' USING *) AS default_probability
FROM
    customers
WHERE
    annual_income > 100000
ORDER BY
    default_probability DESC
FETCH FIRST 5 ROWS ONLY;

