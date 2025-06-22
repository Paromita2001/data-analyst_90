select * from customers
select * from orders
select * from products

-- 1) Identify pairs of customers who live in the same country
select c.customername, u.customername from customers as c
inner join customers as u on
c.country=u.country
and c.customerid<>u.customerid
and c.customerid>u.customerid
-- 2) Find the customer who has spent the most on their orders
SELECT c.CustomerName, SUM(p.Price) AS TotalSpent
FROM Customers AS c
JOIN Orders AS o ON c.CustomerID = o.CustomerID
JOIN Products AS p ON o.ProductID = p.ProductID
GROUP BY c.CustomerID, c.CustomerName
ORDER BY TotalSpent DESC
LIMIT 1;

-- 3) Find customers who have ordered more than one type of products
SELECT c.CustomerName
FROM Customers AS c
JOIN Orders AS o ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID, c.CustomerName
HAVING COUNT(DISTINCT o.ProductID) > 1;

-- 4) List all products and their corresponding orders, using a RIGHT JOIN, including products that have never been ordered.
SELECT p.ProductName, o.OrderID
FROM Orders AS o
RIGHT JOIN Products AS p ON o.ProductID = p.ProductID;

-- 5) Retrieve all orders placed by customers from the USA.
SELECT o.*
FROM Orders AS o
JOIN Customers AS c ON o.CustomerID = c.CustomerID
WHERE c.Country = 'USA';

-- 6) Find the names of customers who have ordered a product priced above $500.
SELECT DISTINCT c.CustomerName
FROM Customers AS c
JOIN Orders AS o ON c.CustomerID = o.CustomerID
JOIN Products AS p ON o.ProductID = p.ProductID
WHERE p.Price > 500;

-- 7) Find customers who have ordered the same product more than once.
SELECT c.CustomerName, o.ProductID, COUNT(*) AS TimesOrdered
FROM Customers AS c
JOIN Orders AS o ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID, o.ProductID
HAVING COUNT(*) > 1;
