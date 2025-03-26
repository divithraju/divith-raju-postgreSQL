-- Switch to the PostgreSQL superuser
sudo -i -u postgres psql

-- Create a new user in PostgreSQL
CREATE USER DEEPA;

-- Create a new database owned by DEEPA
CREATE DATABASE OOPS OWNER DEEPA;

-- Drop the database OOPS (if needed)
DROP DATABASE OOPS;

-- Drop user DEEPA (if needed)
DROP USER DEEPA;

-- Create a user named divithraju with a password
CREATE USER divithraju WITH PASSWORD 'POPCON';

-- Create a database named records
CREATE DATABASE records OWNER divithraju;

-- Connect to the records database
psql -U divithraju -d records -w

-- List all tables
\dt

-- List all databases
\l

-- List all users
\du

-- Create a table named DATA
CREATE TABLE DATA (
    ID INT PRIMARY KEY,      -- Unique identifier for each record
    NAME VARCHAR(23),        -- Name of the person (max 23 characters)
    AGE INT NOT NULL,        -- Age must be provided
    DEPARTMENT VARCHAR(30) NOT NULL, -- Department must be provided
    SALARY INT               -- Salary of the employee
);

-- Insert records into the DATA table
INSERT INTO DATA (ID, NAME, AGE, DEPARTMENT, SALARY) VALUES 
(1, 'DIVITH', 20, 'AI&DS', 2000), 
(2, 'DEEPA', 24, 'AI&DS', 3000),
(3, 'DHIVA', 19, 'CSE', 2500), 
(4, 'GOPU', 24, 'AI&DS', 7000), 
(5, 'SUNDHAR', 20, 'ECE', 500);

-- Select all records from DATA
SELECT * FROM DATA;

-- Select record where NAME is 'DIVITH'
SELECT * FROM DATA WHERE NAME = 'DIVITH';

-- Select first 2 records (corrected syntax, removed '=' from LIMIT)
SELECT * FROM DATA LIMIT 2;

-- Select specific columns
SELECT ID, NAME, AGE FROM DATA;

-- List all tables with additional details
\dt+
\d DATA

-- Aggregate functions
SELECT SUM(SALARY) AS "TOTAL SALARY" FROM DATA;
SELECT AVG(SALARY) AS "AVERAGE SALARY" FROM DATA;
SELECT MAX(SALARY) AS "MAXIMUM SALARY" FROM DATA;
SELECT MIN(SALARY) AS "MINIMUM SALARY" FROM DATA;

-- Rename the table from DATA to WORK
ALTER TABLE DATA RENAME TO WORK;

-- Add a new column GENDER to WORK table
ALTER TABLE WORK ADD COLUMN GENDER CHAR(1);

-- Update all records to have 'M' as gender
UPDATE WORK SET GENDER = 'M';

-- Select all records to verify changes
SELECT * FROM WORK;

-- Update all records to have 'F' as gender
UPDATE WORK SET GENDER = 'F';

-- Select all records to verify changes
SELECT * FROM WORK;

-- Update gender to 'M' where NAME is 'DIVITH'
UPDATE WORK SET GENDER = 'M' WHERE NAME = 'DIVITH';

-- Select all records to verify changes
SELECT * FROM WORK;

-- Set GENDER to NULL for all records
UPDATE WORK SET GENDER = NULL;

-- Select all records to verify changes
SELECT * FROM WORK;
