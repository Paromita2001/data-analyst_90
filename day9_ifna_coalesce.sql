CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    PhoneNumber VARCHAR(20),
    Address VARCHAR(255)
);


INSERT INTO Customer (CustomerID, FirstName, LastName, Email, PhoneNumber, Address)
VALUES
(1, 'Alice', 'Johnson', 'alice.johnson@example.com', '555-1234', '123 Elm St'),
(2, 'Bob', 'Smith', NULL, '555-5678', NULL),
(3, 'Charlie', 'Williams', 'charlie.williams@example.com', NULL, '456 Oak St'),
(4, 'Diana', 'Brown', NULL, NULL, '789 Pine St'),
(5, 'Eve', 'Davis', 'eve.davis@example.com', '555-8765', NULL);



select * from Customers

-- Ifnull
select ifnull(null,'1 st value null')


select ifnull('abx',null)

select ifnull(null,null)

select coalesce('A','B','C')

select coalesce(null,'B','C')

select coalesce(null,null,'C')

--
select * from Customer

select Customerid,email,phonenumber from Customer

select Customerid,ifnull(email,'Email NA'),ifnull(phonenumber,'Ph No NA') from Customer

select Customerid,coalesce(email,phonenumber,'Contact NA') 'Coalesce Function' from Customer
