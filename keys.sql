-- Create the RECORDS table
CREATE TABLE RECORDS (
   ID INT PRIMARY KEY,                  -- Primary Key (PK)
   NAME VARCHAR(20) NOT NULL,            -- NOT NULL constraint
   GENDER CHAR(1) NOT NULL,              -- NOT NULL constraint
   ROLL_NUMBER INT UNIQUE,               -- Unique Key (UK)
   AGE INT,                               -- Normal column
   DEPARTMENT VARCHAR(20),               -- Nullable column
   DEPARTMENT_ID INT UNIQUE              -- Unique Key (UK)
);

-- Insert sample data
INSERT INTO RECORDS (ID, NAME, GENDER, ROLL_NUMBER, AGE, DEPARTMENT, DEPARTMENT_ID) VALUES
(1, 'DIVITH', 'M', 101, 20, 'AI&DS', 1001),
(2, 'DEEPA', 'F', 102, 24, 'AI&DS', 1002),
(3, 'DHIVA', 'F', 103, 19, 'CSE', 1003),
(4, 'GOPU', 'M', 104, 24, 'AI&DS', 1004),
(5, 'SUNDHAR', 'M', 105, 20, 'ECE', 1005);

-- Primary Key Operations
SELECT * FROM RECORDS WHERE ID = 1;   -- Fetch a record using PK
DELETE FROM RECORDS WHERE ID = 2;     -- Delete a record using PK

-- Unique Key Operations
SELECT * FROM RECORDS WHERE ROLL_NUMBER = 101; -- Fetch using Unique Key
UPDATE RECORDS SET ROLL_NUMBER = 106 WHERE ID = 3; -- Update Unique Key

-- Foreign Key Example: Create another table referencing RECORDS
CREATE TABLE COURSES (
    COURSE_ID INT PRIMARY KEY,
    COURSE_NAME VARCHAR(50),
    STUDENT_ID INT,
    FOREIGN KEY (STUDENT_ID) REFERENCES RECORDS(ID)  -- Foreign Key (FK)
);

-- Insert data into COURSES
INSERT INTO COURSES (COURSE_ID, COURSE_NAME, STUDENT_ID) VALUES
(1, 'Data Science', 1),
(2, 'AI & ML', 3),
(3, 'Cyber Security', 4);

-- Fetch using Foreign Key
SELECT * FROM COURSES WHERE STUDENT_ID = 1;

-- Composite Key Example: Create a table with a composite key
CREATE TABLE ENROLLMENTS (
    STUDENT_ID INT,
    COURSE_ID INT,
    PRIMARY KEY (STUDENT_ID, COURSE_ID)  -- Composite Key (PK)
);

-- Insert data into ENROLLMENTS
INSERT INTO ENROLLMENTS (STUDENT_ID, COURSE_ID) VALUES (1, 1), (3, 2), (4, 3);

-- Fetch using Composite Key
SELECT * FROM ENROLLMENTS WHERE STUDENT_ID = 1 AND COURSE_ID = 1;

-- Checking All Constraints
\d RECORDS    -- Check table structure
\dt+          -- List all tables
\du           -- List all users

-- Drop Constraints (Example)
ALTER TABLE RECORDS DROP CONSTRAINT records_pkey; -- Drop Primary Key
ALTER TABLE RECORDS DROP CONSTRAINT records_roll_number_key; -- Drop Unique Key
ALTER TABLE COURSES DROP CONSTRAINT courses_student_id_fkey; -- Drop Foreign Key
