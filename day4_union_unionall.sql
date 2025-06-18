
create table append1 (C1 int,C2 varchar(255),C3 int)
insert into append1 values (1,'A',7),
(2,'B',8),
(3,'C',9)


create table append2 (C1 int,C2 varchar(255),C3 int)
insert into append1 values (11,'AA',17),
(2,'B',8),
(33,'C1',91)

select * from append1
select * from append2

select * from append1
union all
select * from append2

select * from append1
union 
select * from append2

-- Numbers of columns present in the select list have to be same
-- Data Types of the columns have to be same
-- Order in which columns are written has to be the same

select c1,c2,c3 from append1 -- C1 is int, C2 is nvarchar, C3 is int
union 
select c1,c3,C2 from append2

-- Aliase names which are specified in 1st select statement will be assigned to the columns

select c1 as Column1 ,c2 as Column2, c3 as Column3
from append1
union
select c1 as Col1, c2 as Col2 ,c3 as Col3
from append2