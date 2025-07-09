CREATE TABLE Emp (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    hire_date DATE
);
INSERT INTO Emp (emp_id, name, department, salary, hire_date) VALUES
(1, 'Alice', 'HR', 50000, '2020-05-20'),
(2, 'Bob', 'IT', 60000, '2019-07-15'),
(3, 'Charlie', 'Finance', 55000, '2021-02-10'),
(4, 'Diana', 'IT', 62000, '2018-09-01'),
(5, 'Ethan', 'HR', 52000, '2020-11-25'),
(6, 'Frank', 'Sales', 58000, '2022-03-10');


-- View original table
SELECT * FROM Emp;

-- Step 1: Create Temporary Table
CREATE TEMPORARY TABLE temp1 AS
SELECT * FROM Emp;

SELECT * FROM temp1;

-- Example 1: Simple CTE
WITH CTE AS (
    SELECT * FROM temp1
)
SELECT * FROM CTE;

-- Example 2: CTE with WHERE condition
WITH Test_CTE AS (
    SELECT emp_id, name FROM temp1 WHERE emp_id IN (2, 4)
)
SELECT * FROM Test_CTE;

-- Example 3: Store CTE result into another temporary table
WITH Comm_Table_Expression AS (
    SELECT * FROM temp1 WHERE emp_id IN (1, 2, 3)
)
CREATE TEMPORARY TABLE temp2 AS
SELECT * FROM Comm_Table_Expression;

SELECT * FROM temp2;

-- Example 4: Update using CTE
WITH CTE_1 AS (
    SELECT * FROM temp1 WHERE emp_id IN (2, 4, 6)
)
UPDATE temp1
JOIN CTE_1 ON temp1.emp_id = CTE_1.emp_id
SET temp1.emp_id = 101;

SELECT * FROM temp1;

-- Example 5: Delete using CTE
WITH CTE_2 AS (
    SELECT * FROM temp1 WHERE emp_id = 1
)
DELETE FROM temp1
WHERE emp_id IN (SELECT emp_id FROM CTE_2);

SELECT * FROM temp1;

-- Example 6: Insert using CTE
WITH CTE_3 AS (
    SELECT * FROM temp1 WHERE emp_id = 101
)
INSERT INTO temp1
SELECT * FROM CTE_3;

SELECT * FROM temp1;
