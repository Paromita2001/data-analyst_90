select * from Employees

create table temp3 as 
select * from employees

select * from temp3

delete from temp3
where LastName = '' or Department = '0'

create table temp4 as 
select * from Employees

select * from temp4

delete from temp4 
where employeeid=1

select * from temp4

select * from temp3

truncate table temp3

drop table temp3

--Delete - delete certain records from the table
--if we will use delete without where condition, all records from the table will be deleted, but the 
--table structure remains intact

--Truncate - delete all the records from the table but the structure of the table remains intact

--Drop - all the records will be deleted plus table structure will also be removed