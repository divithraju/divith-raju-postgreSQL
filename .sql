-- Create a table named DATA
CREATE TABLE DATA (
    ID INT PRIMARY KEY,      -- Unique identifier for each record
    NAME VARCHAR(23),        -- Name of the person (max 23 characters)
    AGE INT NOT NULL,        -- Age must be provided
    DEPARTMENT VARCHAR(30) NOT NULL, -- Department must be provided
    SALARY INT               -- Salary of the employee
);
