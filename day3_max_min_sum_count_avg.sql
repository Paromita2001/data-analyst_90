-- Creating a table with more columns, including a varchar column
create database dbo
CREATE TABLE dbo.Sales (
    ProductID INT,
    SaleDate DATE,
    Quantity INT,
    TotalAmount DECIMAL(10, 2),
    CustomerID INT,
    StoreID INT,
    SalespersonID INT,
    PaymentMethod VARCHAR(50)  -- New varchar column for payment method
);

-- Inserting more sample data (10 records), including NULL values
INSERT INTO dbo.Sales (ProductID, SaleDate, Quantity, TotalAmount, CustomerID, StoreID, SalespersonID, PaymentMethod)
VALUES 
(1, '2023-08-01', 10, 200.00, 101, 1, 201, 'Credit Card'),
(2, '2023-08-01', 5, 150.00, 102, 1, 202, 'Cash'),
(1, '2023-08-02', 8, 160.00, 103, 2, 203, 'Credit Card'),
(2, '2023-08-02', 7, 210.00, 104, 2, 204, 'Cash'),
(1, '2023-08-03', 6, 120.00, 105, 1, 201, NULL),              -- NULL value in PaymentMethod
(3, '2023-08-04', 12, 300.00, 106, 3, 205, 'Credit Card'),
(1, '2023-08-04', 5, 100.00, 107, 3, 206, 'Debit Card'),
(2, '2023-08-05', 9, 270.00, 108, 1, 202, NULL),              -- NULL value in PaymentMethod
(3, '2023-08-05', 15, 375.00, 109, 3, 207, 'Cash'),
(1, '2023-08-06', 7, 140.00, 110, 2, 203, 'Credit Card');


select * from dbo.Sales

select max(totalamount) as 'max amt' from dbo.Sales

select max(saledate) as 'Max SalesDate' from dbo.Sales

select max(paymentmethod) as 'Max Pay method' from dbo.Sales

-- total Quantity sold for each productID

select productid,sum(quantity) as 'total Quantity' from dbo.Sales
group by productid


-- Max Quantity sold for each productID

select productid,max(quantity) as 'total Quantity' from dbo.Sales
group by productid
select * from dbo.Sales

-- Minimum Total Amount for all distinct dates in saledate column
select saledate,min(totalamount) as 'Minimum Total Amount',
sum(totalamount) as 'sum total amt', 
count(totalamount) as 'count total amt'
from dbo.Sales
group by saledate


select * from dbo.Sales

select min(quantity) as 'Minimum Quantity' from dbo.Sales

select min(saledate)as 'Minimum Sales Date' from dbo.Sales

select min(paymentmethod) as 'Minimum Pay Method' from dbo.Sales

--Show minimum totalamount for each storeid
select storeid, min(totalamount) as 'Minimum Total Amount' from dbo.Sales
group by storeid


select * from dbo.Sales

select sum(quantity) as 'Total Quantity' from dbo.Sales

select sum(quantity) as 'Total Quantity',sum(totalamount) as'Sum of Amount' from dbo.Sales

select avg(quantity) as 'Average Quantity' from dbo.Sales

select avg(quantity) as 'Avg Quantity',avg(totalamount) as 'Avg Amount' from dbo.Sales

select * from dbo.Sales

-- Sum of Quantity, sum of totalamount, avg of quantity, avg of total amount for each distinct product

select 
ProductID,
sum(Quantity) as 'Total Quantity',
sum(TotalAmount) as 'Sum of Amount',
avg(Quantity)as 'Average Quantity Sold',
avg(TotalAmount) as 'Average Amount'
from dbo.Sales
group by ProductID

select * from dbo.Sales

-- Sum of Quantity, sum of amount, avg of quantity & avg of amount for distinct combinations of ProductID & storeid
select
productid,
storeid,
sum(Quantity) as 'Total Quantity',
sum(totalamount) as 'Sum of Amount',
avg(quantity) as 'Avg of Quantity',
avg(totalamount) as 'Avg of Amount'
from dbo.sales
group by ProductID,StoreID

select * from dbo.Sales

select count(*) as 'Number of Rows' from dbo.Sales

select count(paymentmethod) as 'No of Records' from dbo.Sales

select count(distinct productid)as 'Distinct Products' from dbo.Sales

select PaymentMethod,count(distinct paymentmethod) as'Distinct Pay Mode' from dbo.Sales
group by PaymentMethod

select PaymentMethod,count(paymentmethod) as'Pay Mode' from dbo.Sales
group by PaymentMethod

select PaymentMethod,count(*) as' Pay Mode' from dbo.Sales
group by PaymentMethod