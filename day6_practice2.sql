-- 1 How do you select employees who work in the 'IT' department and have a salary greater than 75,000?
select * from employees 
where department=' IT' and salary>75000.00

-- 2 How do you find employees who work in the 'HR' department or have a salary less than 60,000?
select * from employees 
where department in ('HR') OR salary<60000.00

-- 3 How do you select employees who do not work in the 'Finance' department?
select * from employees 
where department not in ('HR')

-- 4 How do you find employees whose salary is between 60,000 and 70,000 and who work in the 'Finance' department?
select * from employees 
where department='Finance' and salary between 60000.00 and 70000.00

-- 5 How do you find employees who work in the 'Finance' department and do not have a salary greater than 80,000?
select * from employees 
where department='Finance' and salary<80000.00

-- 6 How do you find employees who work in the 'HR' or 'Finance' departments and have a salary greater than 65,000?
select * from employees 
where department= 'HR' or department='Finance' and salary>65000.00

-- 7 How do you select employees whose last name starts with 'D' and do not work in the 'HR' department?
select * from employees 
where not department='HR'
and lastname like 'D%'

-- 8 How do you find employees who do not work in the 'IT' department and have a salary greater than 70,000?
select * from employees 
where department not in ('it') and salary>70000.00

-- 9 How do you select employees who work in the 'IT' department and either have a salary greater than 75,000 or have the first name 'Laura'?
select * from employees 
where department='it' and salary>75000.00 or firstname like 'Laura'

-- 10 How do you find employees who do not work in the 'HR' or 'IT' departments?
select * from employees 
where department not in ('HR','IT')

select * from employees