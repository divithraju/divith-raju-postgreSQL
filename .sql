-- Create Table
CREATE TABLE DATA (
    ID INT PRIMARY KEY,      
    NAME VARCHAR(23),        
    AGE INT NOT NULL,        
    DEPARTMENT VARCHAR(30) NOT NULL, 
    SALARY INT               
);

-- Insert Records
INSERT INTO DATA (ID, NAME, AGE, DEPARTMENT, SALARY) VALUES 
(1, 'DIVITH', 20, 'AI&DS', 2000), 
(2, 'DEEPA', 24, 'AI&DS', 3000),
(3, 'DHIVA', 19, 'CSE', 2500), 
(4, 'GOPU', 24, 'AI&DS', 7000), 
(5, 'SUNDHAR', 20, 'ECE', 500),
(6, 'SANDY', 23, 'ECE', 5000),
(7, 'SUNDHAR', 20, 'ECE', 900),
(8, 'SUNDHAR', 27, 'ECE', 600);

-- Select All Data
SELECT * FROM DATA;

-- Count Employees by Name
SELECT NAME, COUNT(SALARY) AS "COUNTING" FROM DATA
GROUP BY NAME;

-- Total Salary by Name
SELECT NAME, SUM(SALARY) AS "TOTAL" FROM DATA
GROUP BY NAME;

-- Minimum Salary by Name
SELECT NAME, MIN(SALARY) AS "MINIMUM" FROM DATA
GROUP BY NAME;

-- Order by Total Salary (Descending)
SELECT NAME, SUM(SALARY) AS "TOTAL" FROM DATA
GROUP BY NAME 
ORDER BY TOTAL DESC;

-- Get Top 2 Highest Salary Earners
SELECT NAME, SUM(SALARY) AS "TOTAL" FROM DATA
GROUP BY NAME 
ORDER BY TOTAL 
LIMIT 2;

-- Order by Salary (Ascending)
SELECT * FROM DATA
ORDER BY SALARY;

-- Order by Age
SELECT * FROM DATA ORDER BY AGE;

-- Find Employees with Minimum Salary
SELECT NAME, MIN(SALARY) FROM DATA 
GROUP BY NAME;

-- Find Employees with Minimum Salary and Sort by Salary
SELECT NAME, MIN(SALARY) FROM DATA 
GROUP BY NAME  
ORDER BY MIN(SALARY);

