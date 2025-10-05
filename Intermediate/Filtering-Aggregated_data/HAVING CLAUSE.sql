-- Using SUM() with HAVING Clause
SELECT product_name, product_cost  
FROM products  
GROUP BY product_name, product_cost  
HAVING SUM(product_cost) > 3.5  
ORDER BY product_cost;

-- Using MAX() and MIN() with HAVING Clause
SELECT product_name 
FROM products 
GROUP BY product_name 
HAVING MAX(product_cost) > 7;

-- or
SELECT product_name 
FROM products 
GROUP BY product_name 
HAVING MIN(product_cost) < 3;

-- Using AVG() with HAVING Clause
SELECT product_name
FROM products
GROUP BY product_name
HAVING AVG(product_cost) > (SELECT AVG(product_cost) FROM products);

-- Using COUNT() with HAVING Clause
CREATE TABLE login(signin_id int PRIMARY KEY ,customer_id int, date_login date);

INSERT INTO login values
(1, 121, '2021-10-21'), (2, 135, '2021-05-25'),  
(3, 314, '2021-03-13'), (4, 245, '2021-07-19'),  
(5, 672, '2021-09-23'), (6, 135, '2021-06-12'),  
(7,120,'2021-06-14'), (8, 121, '2021-04-24'),  
(9,135, '2021-06-15'), (10, 984, '2021-01-30');

SELECT * FROM login;

-- Display customer IDs that occurred at least 2 times
SELECT customer_id  
FROM login
GROUP BY customer_id 
HAVING COUNT(customer_id) >=2 ;