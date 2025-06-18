-- Copying Data From existing table to the New table

-- Case 1 : The New table simply doesn't exist
-- Case 2: The New table structure/New Table exists

-- CASE 1 :
select * from dbo.Sales 

-- All columns were copied from existing table
-- This statement will result in the creation of New_Table_1 which will be having structure & records both
-- same as that of dbo.sales table
create table New_Table_1 as 
select * from dbo.Sales

-- Certain Columns to be copied
drop table New_Table_1

create table new_table_1 as 
select productid, quantity from dbo.Sales

select * from new_table_1


-- CASE 2 : New table structure/table already exists

CREATE TABLE new_table_2 AS
SELECT * FROM Sales WHERE 1 = 0; 
-- WHERE 1 = 0
-- This means:
-- Do not select any rows, because 1 = 0 is always false.



select * from new_table_2

INSERT INTO new_table_2 
SELECT * FROM Sales;


-- Copying Certain Columns

-- 1. Create new table with structure only
CREATE TABLE new_table_3 AS
SELECT ProductID, SaleDate FROM Sales WHERE 1 = 0;

select * from new_table_3

-- 2. Insert data into selected columns
INSERT INTO new_table_3 (ProductID, SaleDate)
SELECT ProductID, SaleDate FROM Sales;
