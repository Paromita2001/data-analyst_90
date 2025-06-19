CREATE TABLE EmployeeSalaries (
    EmployeeID INT,
    EmployeeName VARCHAR(50),
    Salary INT,
    Department VARCHAR(50)
);


INSERT INTO EmployeeSalaries (EmployeeID, EmployeeName, Salary, Department)
VALUES
(1, 'Alice', 50000, 'HR'),
(2, 'Bob', 60000, 'HR'),
(3, 'Charlie', 55000, 'HR'),
(4, 'David', 75000, 'Finance'),
(5, 'Eve', 80000, 'Finance'),
(6, 'Frank', 72000, 'Finance'),
(7, 'Grace', 90000, 'IT'),
(8, 'Heidi', 95000, 'IT'),
(9, 'Ivan', 87000, 'IT');

-- Order Of Execution

select * from EmployeeSalaries

-- Correct Query
select distinct Department,AVG(Salary) as 'Avg Salary'
from EmployeeSalaries
where Salary>50000
group by Department
having AVG(Salary)>55000
order by Department desc limit 1


-- From & Joins
-- where
-- group by
-- having
-- select
-- distinct
-- order by
-- limit

-- Incorrect Query
select distinct top 1 Department,AVG(Salary) as'Avg Salary'
from EmployeeSalaries
where Salary>50000
group by Department
having 
'Avg Salary' >55000
order by Department 