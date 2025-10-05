/*
The HAVING clause in SQL is used to filter aggregated data after grouping. It works with aggregate functions like SUM(), COUNT(), AVG(), MIN(), MAX().

Used after GROUP BY
Filters groups, not individual rows
WHERE → filters rows before grouping
HAVING → filters results after aggregation
Ideal for totals, averages, or other summary conditions
Syntax

SELECT column_name(s) 
FROM table_name 
WHERE condition 
GROUP BY expression 
HAVING condition 
ORDER BY expression 
LIMIT value;
*/

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(45),
    product_cost FLOAT
);

INSERT INTO products VALUES 
(1001, 'Colgate Toothpaste', 2.25),
(1002, 'T-Shirt', 5),
(1003, 'Jeans', 6.5),
(1004, 'Shorts', 4.5),
(1005, 'Sneakers', 8.99),
(1006, 'Mouthwash', 3.35),
(1007, 'Denim Jeans', 8.99),
(1008, 'Synsodyne Toothpaste', 3.35);