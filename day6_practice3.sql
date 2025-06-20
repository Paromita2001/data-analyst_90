
use sbq
-- Create the Customers table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    Country VARCHAR(50)
);

-- Insert data into Customers table
INSERT INTO Customers (CustomerID, CustomerName, Country)
VALUES 
(1, 'Alice', 'USA'),
(2, 'Bob', 'UK'),
(3, 'Charlie', 'Canada'),
(4, 'David', 'USA'),
(5, 'Eve', 'Australia');

-- Create the Orders table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    ProductID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- Insert data into Orders table
INSERT INTO Orders (OrderID, CustomerID, OrderDate, ProductID)
VALUES 
(101, 1, '2024-08-01', 1001),
(102, 1, '2024-08-03', 1002),
(103, 2, '2024-08-04', 1001),
(104, 3, '2024-08-05', 1003),
(105, 5, '2024-08-06', 1004);

-- Create the Products table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Price DECIMAL(10, 2)
);

-- Insert data into Products table
INSERT INTO Products (ProductID, ProductName, Price)
VALUES 
(1001, 'Laptop', 1000),
(1002, 'Smartphone', 700),
(1003, 'Tablet', 500),
(1004, 'Headphones', 200),
(1005, 'Smartwatch', 300);

-- 1 How do you write an SQL query to find the names of customers who have placed an order?
select distinct CustomerName from customers c 
inner join Orders o on o.CustomerID = c.CustomerID
 
-- 2 How do you find the list of customers who have not placed any orders?
select * from customers as c left join Orders o on o.CustomerID = c.CustomerID
where o.orderid is null

-- 3 How do you list all orders along with the product name and price?
select distinct productname, price from products as p
join orders as o on p.productid=o.productid

select * from products
select * from orders

-- 4 How do you find the names of all customers and their orders, including customers who haven’t 
-- placed any orders?
select distinct customername from customers as c
left join orders as o on c.customerid=o.customerid

-- 5 How do you retrieve a list of products that have never been ordered?

select distinct p.ProductID,ProductName 
from Products p left join Orders o 
on p.ProductID = o.ProductID 
where o.OrderDate is null

-- 6 How do you find the total number of orders placed by each customer?
select count(customerid) , customername from customers as c
left join orders as o
on c.customerid=o.customerid
group by customerid

select * from customers
select * from products
select * from orders
-- 7 How do you display customers, the products they’ve ordered, 
-- and the order date,
-- including customers who haven’t placed any orders?
select distinct CustomerName,p.ProductID,ProductName,OrderDate
from Customers c left join Orders o 
on c.CustomerID = o.CustomerID left join Products p
on o.ProductID = p.ProductID