/*
INNER JOIN
Returns only matching rows from both tables.

LEFT JOIN (LEFT OUTER JOIN)
Returns all rows from the left table, and matching rows from the right.
Fills NULL if no match from the right.

RIGHT JOIN (RIGHT OUTER JOIN)
Returns all rows from the right table, and matching rows from the left.
Fills NULL if no match from the left.

FULL OUTER JOIN
Returns all rows from both tables, matched or not.
Fills NULL where no match.
Not directly supported in MySQL — use LEFT JOIN UNION RIGHT JOIN.

LEFT ANTI JOIN
Returns rows from the left table that have no match in the right table.
Use LEFT JOIN with WHERE right_table.id IS NULL.

RIGHT ANTI JOIN
Returns rows from the right table that have no match in the left table.

Use RIGHT JOIN with WHERE left_table.id IS NULL.
*/


-- Creating Table1 & insertinting records in Table1
create table table1 (C1 int, C2 varchar(255))
insert into table1 (C1,C2)
values 
(1,'A'),
(1,'B'),
(2,'C'),
(NULL,'D'),
(3,'E'),
(7,'DA');

-- Creating Table2 & insertinting records in Table2
create table table2 (C1 int, C3 varchar(255))
insert into table2 (C1,C3)
values (1,'XA'),
(2,'MB'),
(2,'NX'),
(NULL,'MO'),
(4,'XY'),
(5,'TF');

select * from table1

select * from table2


select * from table1 
inner join table2 on table1.C1 = table2.C1

select table1.C1,table1.C2,table2.C3 from table1 
inner join table2 on table1.C1 = table2.C1

select a.C1,a.C2,b.C3 from table1 a 
inner join table2 b on
a.C1 = b.C1

select a.C1,a.C2,b.C3 from table1 a 
join table2 b on
a.C1 = b.C1


-- LEFT JOIN 
select * from table1 left join table2
on table1.C1 = table2.C1

select * from table1 left outer join table2
on table1.C1 = table2.C1

select * from table1 a left join table2 b 
on a.C1 = b.C1


select a.C1,a.C2,b.C3 from table1 a left join table2 b 
on a.C1 = b.C1

-- RIGHT JOIN
select * from table1

select * from table2

select * from table1 right join 
table2 on table1.C1 = table2.C1

select * from table1 right outer join table2
on table1.C1 = table2.C1

select a.C1,a.C2,b.C3
from table1 a right outer join table2 b
on a.C1 = b.C1

-- ANTI JOINS
select * from table1

select * from table2

-- Left Anti Join
select * from table1 left join table2 
on table1.C1 = table2.C1 
where table2.C1 is null

-- Right Anti Join
select * from table1 right join table2 
on table1.C1 = table2.C1
where table1.C2 is null

