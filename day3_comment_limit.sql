-- We are learning SQL. And this is a single line comment

/* 
Hi
we 
are
learning 
SQL
*/

select * from employees
limit 2;

select * from employees
order by salary
 desc limit 3;
 
select * from employees
where Department= 'IT'
 order by salary
 desc limit 2
 
 select employeeid,salary 
 from employees
 limit 2

select firstname,lastname 
from employees
limit 3