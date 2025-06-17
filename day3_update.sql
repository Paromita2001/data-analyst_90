
select * from Employees

CREATE TABLE temp AS
SELECT * FROM employees;


select * from temp

update temp
set Department = 'HR'
where Department is null

select * from temp

update temp
set Salary = 89000,HireDate = '2023-01-01'
where EmployeeID = 7

select * from temp

select * from temp where EmployeeID = 7

create table temp2 as
select * from employees

select * from temp2

update temp2
set Department = 'Finance'
where employeeid =7

select * from temp2
