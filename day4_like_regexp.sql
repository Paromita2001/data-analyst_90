-- Wild cards
-- 1.  % it may represents 0,  1 or multiple character
-- 2. _ It exactly represents only one character

-- Create Employees_us table
CREATE TABLE Employees_US (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50)
);

-- Insert sample data into Employees table
INSERT INTO Employees_us (EmployeeID, FirstName, LastName, Department) VALUES
(1, 'Alice', 'Smith', 'Finance'),
(2, 'Bob', 'Johnson', 'Engineering'),
(3, 'Charlie', 'Williams', 'Marketing'),
(4, 'Diana', 'Brown', 'Finance'),
(5, 'Edward', 'Jones', 'Engineering'),
(6, 'Fiona', 'Garcia', 'Marketing'),
(7, 'George', 'Miller', 'Finance'),
(8, 'Hannah', 'Wilson', 'Engineering');


-- 1. Retrieve employees whose last names start with the letter 'S'.
select * from employees_us where lastname like 's%'


-- 2. Retrieve employees whose first names end with the letter 'a'.
select * from employees_us where firstname like '%a'

-- 3. Retrieve employees who work in departments that contain the substring 'Eng'.
select * from employees_us where department like '%eng%'

-- 4. Retrieve employees whose last names are exactly 5 characters long.
select * from employees_us where lastname like '_____'

-- 5. Retrieve employees whose first names start with either 'C' or 'D'.
SELECT * FROM employees_us 
WHERE firstname LIKE 'C%' OR firstname LIKE 'D%';

-- 6.Retrieve employees whose last names contain the substring 'son'.
SELECT * FROM employees_us 
WHERE lastname LIKE '%son%' 

-- 7.Retrieve employees whose first names have 'i' as the second character.
SELECT * FROM employees_us 
WHERE firstname LIKE '_i%' 

-- 8.Retrieve employees whose last names start with any letter from 'A' to 'L'.
SELECT * FROM employees_us 
WHERE lastname regexp '^[A-La-l]' 

-- 9.Retrieve employees whose first names do not contain the letter 'o'.
SELECT * FROM employees_us 
WHERE firstname NOT LIKE '%O%' 

-- 10.Retrieve employees whose last names are exactly 5 characters long and end with 'a'.
SELECT * FROM employees_us 
WHERE lastname LIKE '____a' 

-- 11.Retrieve employees who work in departments that start with 'Mar' and end with 'ing'.
SELECT * FROM employees_us 
WHERE department LIKE 'mar%ing' 

-- 12.Retrieve employees whose first names have 'a' as the third character.
SELECT * FROM employees_us 
WHERE firstname LIKE '__a%' 

-- 13.Retrieve employees whose last names start with 'Br' or 'Bl'.
SELECT * FROM employees_us 
WHERE lastname LIKE 'br%' or lastname like 'bl%'
 
-- 14. Retrieve employees whose first names start with a vowel.
SELECT * FROM employees_us 
WHERE firstname regexp '^[aeiouAEIOU]'

-- 15.Retrieve employees whose first names do not start with a vowel.
SELECT * FROM employees_us 
WHERE firstname not REGEXP '^[aeiouAEIOU]'

SELECT * FROM employees_us 
WHERE firstname regexp '^[a-zA-Z]' 

