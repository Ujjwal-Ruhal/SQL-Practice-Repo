/*
Examples of SQL CROSS JOIN
Before diving into queries, let’s create two sample tables: Customer and Orders. These tables will help us understand how CROSS JOIN combines data into multiple combinations.
*/
-- Table 1- Customer
CREATE TABLE Customer (
   ID INT,
   NAME VARCHAR(50),
   AGE INT,
   PHONE VARCHAR(10) );

INSERT INTO Customer (ID, NAME, AGE, PHONE) VALUES
(1, 'AMIT JAIN', 21, 98474),
(2, 'JATIN VERMA', 47, 63996);

-- Table 2- Orders
CREATE TABLE Orders (
   ORDER_ID INT,
   AMOUNT INT,
   PLACED_ON DATE );

INSERT INTO Orders (ORDER_ID, AMOUNT, PLACED_ON) VALUES
(101, 999, '2023-04-19'),
(102, 4999, '2023-04-20');
