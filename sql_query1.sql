create database practice

create table orders(
order_id varchar(50)primary key,
customer_id int,
order_date date,
product_name text,
category text,
quantity int,
unit_price float,
discount float,
country text);

select * from orders

insert into 
orders(order_id, customer_id, order_date, product_name,
 category, quantity, unit_price, discount, country)
 values(101, 1, '2024-06-01', 'Wireless Mouse', 'Electronics', 2, 500.0, 10, 'India'),
(102, 2, '2024-06-03', 'Yoga Mat', 'Sports', 1, 700.0, 0, 'USA'),
(103, 3, '2024-06-04', 'Bluetooth Speaker', 'Electronics', 1, 1500.0, 5, 'India'),
(104, 1, '2024-06-07', 'Notebook', 'Stationery', 3, 100.0, 0, 'UK'),
(105, 4, '2024-06-10', 'Running Shoes', 'Sports', 1, 2500.0, 15, 'Germany'),
(106, 5, '2024-06-12', 'Desk Lamp', 'Home Decor', 2, 800.0, 0, 'Canada'),
(107, 3, '2024-06-15', 'Wireless Mouse', 'Electronics', 1, 500.0, 10, 'India');

select * from orders

--  1. Total sales by category
SELECT category, SUM(unit_price * quantity) AS sales_by_category
FROM orders
GROUP BY category;

--  2. Total sales by country
SELECT country, SUM(unit_price * quantity) AS sales_by_country
FROM orders
GROUP BY country;

--  3. Top 3 selling products (by total sales)
SELECT product_name, 
       SUM(unit_price * quantity) AS total_sales
FROM orders
GROUP BY product_name
ORDER BY total_sales DESC
LIMIT 3;

--  4. Total sales per customer
SELECT customer_id, 
       SUM(unit_price * quantity) AS total_sales
FROM orders
GROUP BY customer_id
ORDER BY customer_id;

--  5. Electronics or Home Decor sales data
SELECT * FROM orders
WHERE category IN ('Electronics', 'Home Decor');

--  6. Least 3 selling countries
SELECT country,
       SUM(unit_price * quantity) AS total_sales_by_country
FROM orders
GROUP BY country
ORDER BY total_sales_by_country
LIMIT 3;


--  7. Customers who got more than 10% discount
SELECT * FROM orders 
WHERE discount > 10;
