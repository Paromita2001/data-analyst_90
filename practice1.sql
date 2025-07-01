CREATE TABLE eord (
    employee_id INT PRIMARY KEY,
    firstname VARCHAR(50),
    lastname VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    order_name VARCHAR(100),
    orderid INT UNIQUE);


INSERT INTO eord 
(employee_id, firstname, lastname, department, salary, order_name, orderid) 
VALUES
(101, 'Raj', 'Mehera', 'Sales', 55000.00, 'Laptop', 2001),
(102, 'Anjali', 'Sharma', 'Marketing', 60000.00, 'Smartphone', 2002),
(103, 'Amit', 'Das', 'Support', 47000.00, 'Headphones', 2003),
(104, 'Sneha', 'Patil', 'HR', 52000.75, 'Monitor', 2004),
(105, 'Rohit', 'Sinha', 'Finance', 61000.90, 'Keyboard', 2005),
(106, 'Priya', 'Verma', 'Sales', 48000.00, 'Tablet', 2006),
(107, 'Kunal', 'Rao', 'Logistics', 45500.40, 'Mouse', 2007),
(108, 'Neha', 'Joshi', 'Support', 41000.25, 'Speaker', 2008),
(109, 'Arjun', 'Kapoor', 'IT', 70000.00, 'Laptop', 2009),
(110, 'Divya', 'Nair', 'Marketing', 55000.60, 'Smartwatch', 2010);



-- 1 Write an SQL query to display all records from the employee_orders table.
select * from eord

-- 2 How do you retrieve only firstname, lastname, and salary for all employees?
select firstname,lastname, salary from eord

-- 3 Write a query to find all employees who work in the "Sales" department.
select * from eord 
where department='Sales'

-- 4 How can you find employees with a salary greater than 50,000?
select * from eord 
where salary>50000.00

-- 5.Write a query to sort employees by salary in descending order.
select * from eord 
order by salary desc

-- 6 How would you count the total number of orders handled by the employees?
SELECT COUNT(orderid) AS total_orders
FROM eord;

-- 7 Write a query to find the maximum salary from the eord table.
select max(salary)as 'max salary' from eord 

-- 8 Retrieve all records where the order_name is 'Laptop'.
select * from eord 
where order_name='Laptop'

-- 9 Write a query to get a list of unique departments in the table.
select department from eord 
group by department 

-- 10 Update the salary to 60,000 for the employee with employee_id = 102.
update eord 
set salary=60000.00
where employee_id=102

SELECT * FROM eord
WHERE employee_id = 102;
