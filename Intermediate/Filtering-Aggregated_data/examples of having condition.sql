--  Filter Total Salary
SELECT SUM(Salary) AS Total_Salary
FROM Employee
HAVING SUM(Salary) >= 250000;

-- Filter Average Salary
SELECT AVG(Salary) AS Average_Salary
FROM Employee
HAVING AVG(Salary) > 55000;

-- Filter Maximum Salary
SELECT MAX(Salary) AS Max_Salary
FROM Employee
HAVING MAX(Salary) > 70000;

-- Filter Minimum Experience
SELECT MIN(Experience) AS Min_Experience
FROM Employee
HAVING MIN(Experience) < 3;

-- Multiple Conditions
SELECT SUM(Salary) AS Total_Salary, AVG(Salary) AS Average_Salary
FROM Employee
HAVING SUM(Salary) >= 250000 AND AVG(Salary) > 55000;