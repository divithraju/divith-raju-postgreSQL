
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


-- window_function_rank.sql
-- RANK employees within each department based on salary in descending order

SELECT 
    ID, 
    NAME, 
    AGE, 
    DEPARMENT, 
    SALARY,
    RANK() OVER (
        PARTITION BY DEPARMENT 
        ORDER BY SALARY DESC
    ) AS rank
FROM 
    DATA;

-- window_function_row_number.sql
-- Assigns a unique row number to each employee within their department based on salary descending

SELECT 
    NAME, 
    AGE, 
    ID, 
    DEPARMENT, 
    SALARY, 
    ROW_NUMBER() OVER (
        PARTITION BY DEPARMENT 
        ORDER BY SALARY DESC
    ) AS row_number
FROM 
    DATA;

-- window_function_dense_rank.sql
-- Assigns a dense rank to each employee within their department based on salary descending
-- Employees with same salary get the same rank, and the next rank is not skipped

SELECT 
    NAME, 
    AGE, 
    ID, 
    DEPARMENT, 
    SALARY, 
    DENSE_RANK() OVER (
        PARTITION BY DEPARMENT 
        ORDER BY SALARY DESC
    ) AS dense_rank
FROM 
    DATA;


-- FIRST_VALUE query
SELECT NAME, AGE, DEPARMENT, SALARY,
  FIRST_VALUE(SALARY) OVER (
    PARTITION BY DEPARMENT ORDER BY SALARY DESC
  ) AS first_salary
FROM DATA;

--OPTION 
SELECT *, RANK() OVER (PARTITION BY DEPARMENT ORDER BY SALARY DESC ) FROM DATA ;
SELECT *, DENSE_RANK() OVER (PARTITION BY DEPARMENT ORDER BY SALARY DESC ) FROM DATA ;
SELECT *, ROW_NUMBER() OVER (PARTITION BY DEPARMENT ORDER BY SALARY DESC ) FROM DATA ;
SELECT *, FIRST_VALUE() OVER (PARTITION BY DEPARMENT ORDER BY SALARY DESC ) FROM DATA ;


-- Add more window function examples below...
SELECT *, MAX() OVER (PARTITION BY DEPARMENT ORDER BY SALARY DESC ) FROM DATA ;
SELECT *, MIN() OVER (PARTITION BY DEPARMENT ORDER BY SALARY DESC ) FROM DATA ;
SELECT *, AVG() OVER (PARTITION BY DEPARMENT ORDER BY SALARY DESC ) FROM DATA ;
SELECT *, SUM() OVER (PARTITION BY DEPARMENT ORDER BY SALARY DESC ) FROM DATA ;
SELECT *, COUNT() OVER (PARTITION BY DEPARMENT ORDER BY SALARY DESC ) FROM DATA ;





