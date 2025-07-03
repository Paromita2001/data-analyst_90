CREATE TABLE employee_orders (
    employee_id INT PRIMARY KEY,
    firstname VARCHAR(50),
    lastname VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    order_name VARCHAR(100),
    orderid INT
);

INSERT INTO employee_orders (employee_id, firstname, lastname, department, salary, order_name, orderid) VALUES
(101, 'Raj', 'Mehera', 'Sales', 55000.00, 'Laptop', 2001),
(102, 'Anjali', 'Sharma', 'Marketing', 60000.00, 'Smartphone', 2002),
(103, 'Amit', 'Das', 'Support', 47000.00, NULL, NULL),
(104, 'Sneha', 'Patil', 'HR', 52000.75, 'Monitor', 2004),
(105, 'Rohit', 'Sinha', 'Finance', 61000.90, 'Keyboard', 2005),
(106, 'Priya', 'Verma', 'Sales', 48000.00, NULL, NULL),
(107, 'Kunal', 'Rao', 'Logistics', 45500.40, 'Mouse', 2007),
(108, 'Neha', 'Joshi', 'Support', NULL, 'Speaker', 2008),
(109, 'Arjun', 'Kapoor', 'IT', 70000.00, 'Laptop', 2009),
(110, 'Divya', 'Nair', 'Marketing', 55000.60, 'Smartwatch', 2010);

CREATE TABLE orders (
    orderid INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total DECIMAL(10,2)
);

INSERT INTO orders (orderid, customer_id, order_date, total) VALUES
(2001, 1, '2024-01-10', 50000.00),
(2002, 2, '2024-01-15', 45000.00),
(2004, 4, '2024-02-20', 60000.00),
(2005, 5, '2024-03-01', 30000.00),
(2007, 7, '2024-03-10', 25000.00),
(2008, 8, '2024-03-18', 40000.00),
(2009, 9, '2024-04-01', 70000.00),
(2010, 10, '2024-04-05', 47000.00);

-- 1 Retrieve all columns for employees who earn more than 50,000.
select * from employee_orders 
where salary>50000.00

-- 2 Display all unique departments from the employee_orders table.
select distinct(department) from employee_orders 


-- 3 Show the top 3 employees with the highest salary.
select * from employee_orders 
order by salary desc
limit 3

-- 4 Select first and last names of employees who work in the Sales or Marketing department.
select firstname,lastname from employee_orders 
where department= 'sales' or department='Marketing'

-- 5 Retrieve employees whose salary falls between 45,000 and 60,000.
select * from employee_orders 
where salary between 45000.00 and 60000.00

-- 6 Insert a new employee record: (111, 'Tina', 'Roy', 'Design', 58000, 'Tablet', 2011).
INSERT INTO employee_orders (employee_id, firstname, lastname, department, salary, order_name, orderid)
VALUES (111, 'Tina', 'Roy', 'Design', 58000, 'Tablet', 2011);


-- 7 Change the salary to 51000 for the employee with ID 106.
update employee_orders 
set salary=51000.00
where employee_id=106


-- 8 Remove all employees in the Support department who don’t have a salary.
DELETE FROM employee_orders
WHERE department = 'Support' AND salary IS NULL;


-- 9 List all employees who do not have a salary value recorded.
SELECT *
FROM employee_orders
WHERE salary IS NULL;


-- 10 Find all employees whose department is not one of Support or Logistics
select * from employee_orders 
where department not in ('support' or 'logistics')
