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

/*
2. Aggregate Function
Aggregate functions return a single value from a group of rows. Used with SELECT, GROUP BY, HAVING, and ORDER BY, they ignore NULLs (except COUNT(*)). Use NVL to handle NULLs. Nesting is also supported by aggregate functions.

Now let's understand this with the help of example:

*/

SELECT AVG(max_salary)
FROM (
    SELECT MAX(salary) AS max_salary
    FROM employees
    GROUP BY department_id
) dept_max_salaries;

/*
In this example:

Inner query: Gets the MAX(salary) for each department_id
Outer query: Takes the AVG() of those max salaries
Note: Most frequently used Aggregate functions are AVG, COUNT, DENSE_RANK, MAX, MIN, RANK, SUM.
*/

/*
3. Analytic Function
Analytic functions perform calculations over a window of rows and return a value for each row (unlike aggregate functions, which return one row per group). They are evaluated after all other clauses except the final ORDER BY.

Now let's understand this with the help of example:

*/

SELECT
  employee_id,
  department_id,
  salary,
  AVG(salary) OVER (PARTITION BY department_id) AS avg_dept_salary
FROM
  employees;
  
/*
In this example:

This query calculates a running average of salaries within each department, ordered by salary.
It returns the average salary up to the current row without collapsing rows.
Note: Analytic functions use the analytic_clause, which includes PARTITION BY, ORDER BY, and optional windowing with ROWS or RANGE.
*/

/*
4. Model Function

Model functions are used inside the MODEL clause of a SELECT statement to perform spreadsheet-like calculations on rows and columns. They help reference current, previous, or conditional values dynamically during rule evaluation and iteration.

Now we understand this with the help of example:
*/

SELECT month, sales
FROM sales_data
MODEL
  DIMENSION BY (month)
  MEASURES (sales)
  RULES ITERATE(2) (
    sales['Mar'] = NVL(sales['Mar'], sales['Feb'] * 1.10),
    sales['Apr'] = NVL(sales['Apr'], sales['Mar'] * 1.10)
  );
  
  /*
  In this example:

The query forecasts sales for March and April using previous month values.
NVL() ensures only missing values are calculated.
The MODEL clause performs cell-based calculations, similar to Excel.
Functions like CV(), Previous, and Iteration_Number help in dynamic and iterative rule definitions.
Note: Key Model Functions includes CV() ,Iteration_Number , PresentV,  PresentNNV, Previous.
*/

/*
5. User Defined Function
User Defined Functions (UDFs) are custom functions created using PL/SQL or Java to extend SQL's capabilities. They provide functionality not available through built-in SQL functions and can be used anywhere an expression is allowed. 

Now let's understand this with the help of an example:
*/

SELECT
  employee_id,
  salary,
  get_annual_salary(salary) AS annual_salary
FROM
  employees;
  
  /*
  In this example:

The user-defined function get_annual_salary multiplies the monthly salary by 12.
It's used in the SELECT list just like a built-in SQL function.
Note: User Defined Functions can be used in SELECT list, WHERE, ORDER BY,  GROUP BY, CONNECT BY, START WITH clauses, VALUES clause of INSERT, SET clause of UPDATE.
*/

/*
6. Scalar Function
Scalar functions return a single value based on the input. They operate on individual data items and can be used wherever expressions are allowed in SQL queries.

Now let's understand this with the help of an example:
*/

SELECT UPPER('geeksforgeeks') AS result FROM dual;

