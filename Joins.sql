-- Create table
CREATE TABLE DATA (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    deparment VARCHAR(50),
    salary INT
);

-- Insert values
INSERT INTO DATA (id, name, age, deparment, salary) VALUES
(2, 'DHIVA', 20, 'AIDS', 25000),
(3, 'SHIVA', 21, 'AIDS', 15000),
(4, 'LOGESH', 21, 'AIDS', 40000),
(1, 'DIVITH', 20, 'CSE', 130000),
(7, 'HITLER', 65, 'MEC', 8000),
(8, 'HITLER', 47, 'MEC', 8000),
(5, 'MONISH', 20, 'AIDS', 200000),
(6, 'TRUMP', 78, 'MEC', 6000);


-- Create table
CREATE TABLE DON (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    domain VARCHAR(50),
    project VARCHAR(50),
    salary INT
);

-- Insert values
INSERT INTO DON (id, name, age, domain, project, salary) VALUES
(1, 'DEEPAK', 21, 'IT', 'HTML', 10000),
(2, 'KAVI', 23, 'CSE', 'CSS', 20000),
(3, 'SACHIN', 21, 'EEE', 'CSS', 30000),
(4, 'DEEPA', 25, 'AD', 'PYTHON', 450000),
(5, 'DIVITH', 22, 'DS', 'SQL', 670000),
(6, 'KUMAR', 26, 'ECE', 'R', 3000);

-- INNER JOIN between DATA and DON on ID
SELECT 
    DATA.ID, 
    DATA.AGE, 
    DATA.NAME, 
    DATA.SALARY, 
    DON.ID, 
    DON.NAME, 
    DON.AGE, 
    DON.SALARY
FROM DATA
INNER JOIN DON 
ON DATA.ID = DON.ID;


-- LEFT JOIN between DATA and DON on ID
SELECT 
    DATA.ID, 
    DATA.AGE, 
    DATA.NAME, 
    DATA.SALARY, 
    DON.ID, 
    DON.NAME, 
    DON.AGE, 
    DON.SALARY
FROM DATA 
LEFT JOIN DON 
ON DATA.ID = DON.ID;


-- RIGHT JOIN between DATA and DON on ID
SELECT 
    DATA.ID, 
    DATA.AGE, 
    DATA.NAME, 
    DATA.SALARY, 
    DON.ID, 
    DON.NAME, 
    DON.AGE, 
    DON.SALARY
FROM DATA 
RIGHT JOIN DON 
ON DATA.ID = DON.ID;

-- FULL OUTER JOIN between DATA and DON on ID
SELECT 
    DATA.ID, 
    DATA.AGE, 
    DATA.NAME, 
    DATA.SALARY, 
    DON.ID, 
    DON.NAME, 
    DON.AGE, 
    DON.SALARY
FROM DATA 
FULL JOIN DON 
ON DATA.ID = DON.ID;

-- UNION query to merge common columns from DATA and DON
SELECT 
    DATA.ID,
    DATA.NAME,
    DATA.AGE,
    DATA.SALARY 
FROM DATA

UNION

SELECT 
    DON.ID,
    DON.NAME,
    DON.AGE,
    DON.SALARY 
FROM DON;

