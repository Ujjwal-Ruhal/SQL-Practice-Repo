-- Filter by Total SalarySELECT NAME, SUM(sal) FROM Emp
SELECT NAME, SUM(sal) FROM Emp
GROUP BY name
HAVING SUM(sal)>50000; 

-- Filter by Average Salary
SELECT age, AVG(sal) AS Average_Salary
FROM emp
GROUP BY age
HAVING AVG(sal) > 60000;

