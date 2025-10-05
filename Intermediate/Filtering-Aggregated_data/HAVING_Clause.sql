/*
HAVING clause filters results after applying aggregate functions. Unlike WHERE, which filters individual rows, HAVING works with aggregated results.

Its main features include:

Filters results based on aggregate functions.
Supports Boolean conditions (AND, OR).
Applied after aggregate functions in the query.
Useful for summary-level or aggregated filtering.

Syntax:

SELECT AGGREGATE_FUNCTION(column_name)
FROM table_name
HAVING condition;
*/