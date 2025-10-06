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