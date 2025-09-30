CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    emp_city VARCHAR(30),
    emp_country VARCHAR(30)
);

INSERT INTO employee (emp_id, emp_name, emp_city, emp_country) VALUES
(101, 'Utkarsh Tripathi', 'Varanasi', 'India'),
(102, 'Abhinav Singh', 'Varanasi', 'India'),
(103, 'Utkarsh Raghuvanshi', 'Varanasi', 'India'),
(104, 'Utkarsh Singh', 'Allahabad', 'India'),
(105, 'Sudhanshu Yadav', 'Allahabad', 'India'),
(106, 'Ashutosh Kumar', 'Patna', 'India'),
(107, 'Rajeev Verma', 'Kanpur', 'India'),
(108, 'Nitin Gupta', 'Mumbai', 'India'),
(109, 'Priya Singh', 'Lucknow', 'India'),
(110, 'Gaurav Sharma', 'Agra', 'India'),
(111, 'Anjali Mishra', 'Jaipur', 'India'),
(112, 'Deepak Kumar', 'Delhi', 'India'),
(113, 'Pooja Yadav', 'Noida', 'India'),
(114, 'Amit Chauhan', 'Bhopal', 'India'),
(115, 'Rohit Sethi', 'Chandigarh', 'India'),
(116, 'Neha Verma', 'Gwalior', 'India');

-- AND Operator
SELECT * FROM employee WHERE emp_city = 'Allahabad' AND emp_country = 'India';

-- IN Operator
SELECT * FROM employee WHERE emp_city IN ('Allahabad', 'Patna');

--  NOT Operator
SELECT * FROM employee WHERE emp_city NOT LIKE 'A%';

-- OR Operator
SELECT * FROM employee WHERE emp_city = 'Varanasi' OR emp_country = 'India';

-- LIKE Operator
SELECT * FROM employee WHERE emp_city LIKE 'P%';

-- BETWEEN Operator
SELECT * FROM employee WHERE emp_id BETWEEN 101 AND 104;

-- ALL Operator
SELECT * FROM employee WHERE emp_id = ALL 
              (SELECT emp_id FROM employee WHERE emp_city = 'Varanasi');
              
--  ANY Operator
SELECT * FROM employee WHERE emp_id = ANY
                (SELECT emp_id FROM employee WHERE emp_city = 'Varanasi');

-- EXISTS Operator
SELECT emp_name FROM employee WHERE EXISTS
                (SELECT emp_id FROM employee WHERE emp_city = 'Patna');

-- SOME Operator
SELECT * FROM employee WHERE emp_id < SOME 
                (SELECT emp_id FROM employee WHERE emp_city = 'Patna');
                
