create database Student

create table student_details (
Student_Name varchar(256),
Gender char(1),
Age tinyint,
event_date date,
distance decimal(5,2))


select * from student_details

INSERT INTO student_details (Student_Name, Gender, Age, event_date, distance)
VALUES ('Raj Mehera', 'M', 25, '2024-08-03', 123.11);

INSERT INTO student_details (Student_Name, Gender, Age, event_date, distance)
VALUES ('Nitin Singh', 'M', 32, '2023-12-06', 119.09);


select * from student_details

insert into student_details
values ('Mayank','M',18,'2024-02-02',115.35),
('Mahesh','M',34,'2023-11-08',324.66)

select * from INFORMATION_SCHEMA.COLUMNS where TABLE_NAME like 'student_details'

insert into student_details (Student_Name,Gender)
values ('Priya','F')

select * from student_details

insert into student_details(Age,event_date)
values (34,'2023-10-04'),(43,'2019-01-01'),(19,'2022-08-08')

select * from student_details

-- Datatype of column age is tinyint (0 to 255)

select * from INFORMATION_SCHEMA.COLUMNS where TABLE_NAME like 'student_details'

insert into student_details (Age)
values (256)