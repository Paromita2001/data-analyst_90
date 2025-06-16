select * from employeerecords;

## print all data where employee id is 2
select * from employeerecords
where EmployeeID=2

## print all data where employee salary is greater than or equal to 75k
select  * from employeerecords 
where salary>=75000.00

## print employee id and first name where id is 2
select employeeid , firstname from employeerecords 
where employeeid=2

## print all data except id where salary is less than 75k
select firstname, lastname, department, salary from employeerecords
where salary<75000.00 

# print unique firstname lastname and department where  salary is less than 75k
select distinct firstname, lastname, department, salary 
from employeerecords 
where salary<75000.00