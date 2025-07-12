-- 1. Create customers table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    country VARCHAR(50)
);

-- 2. Insert into customers
INSERT INTO customers (customer_id, customer_name, age, gender, country)
VALUES 
(1, 'Alice', 28, 'F', 'India'),
(2, 'Bob', 34, 'M', 'India'),
(3, 'Charlie', 22, 'M', 'USA'),
(4, 'David', 41, 'M', 'UK'),
(5, 'Eva', 36, 'F', 'India'),
(6, 'Farhan', 30, 'M', 'Germany'),
(7, 'Grace', 25, 'F', 'Canada');

-- 3. Drop and re-create orders table
DROP TABLE IF EXISTS orders;

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    product_name VARCHAR(50),
    category VARCHAR(50),
    quantity INT,
    unit_price FLOAT,
    discount FLOAT,
    region VARCHAR(50),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- 4. Insert into orders
INSERT INTO orders (order_id, customer_id, order_date, product_name, category, quantity, unit_price, discount, region)
VALUES 
(201, 1, '2024-07-01', 'Pen', 'Stationery', 3, 10.0, 0, 'North'),
(202, 2, '2024-07-02', 'Notebook', 'Stationery', 5, 50.0, 5, 'South'),
(203, 3, '2024-07-03', 'Headphones', 'Electronics', 1, 1500.0, 10, 'East'),
(204, 4, '2024-07-04', 'Shoes', 'Apparel', 2, 1200.0, 15, 'West'),
(205, 5, '2024-07-05', 'Smartphone', 'Electronics', 1, 20000.0, 5, 'South'),
(206, 6, '2024-07-06', 'PC', 'Electronics', 2, 15000.0, 10, 'North'),
(207, 7, '2024-07-07', 'Chair', 'Furniture', 1, 3000.0, 0, 'West'),
(208, 4, '2024-07-08', 'Shoes', 'Apparel', 2, 1200.0, 15, 'North'),
(209, 1, '2024-07-09', 'Tablet', 'Electronics', 1, 20000.0, 5, 'East'),
(210, 1, '2024-07-10', 'Tablet', 'Electronics', 1, 15000.0, 10, 'North'),
(211, 7, '2024-07-11', 'Table', 'Furniture', 2, 3000.0, 5, 'South'),
(212, 2, '2024-07-12', 'Shoes', 'Apparel', 2, 1200.0, 15, 'North'),
(213, 1, '2024-07-13', 'Smartphone', 'Electronics', 3, 20000.0, 10, 'West');

-- 5. Add sales column and update it
ALTER TABLE orders ADD sales FLOAT;
UPDATE orders
SET sales = unit_price * quantity * (1 - discount / 100);

-- 6. Total sales per product
SELECT product_name, SUM(sales) AS Total_sales
FROM orders
GROUP BY product_name;

-- 7. Join orders with customer names
SELECT o.order_id, o.order_date, o.product_name, o.category, o.quantity,
       o.unit_price, o.discount, o.region, c.customer_name, c.gender, c.country
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id;

-- 8. Region-wise sales
SELECT region, SUM(sales) AS sales_by_region
FROM orders
GROUP BY region;

-- 9. Top 2 highest paying customers
SELECT o.customer_id, c.customer_name, SUM(o.sales) AS highest_paying
FROM orders o
LEFT JOIN customers c ON o.customer_id = c.customer_id
GROUP BY o.customer_id, c.customer_name
ORDER BY highest_paying DESC
LIMIT 2;

-- 10. Product with highest discount
SELECT product_name, discount
FROM orders
WHERE discount = (SELECT MAX(discount) FROM orders);

-- 11. Gender-wise total quantity ordered
SELECT c.gender, SUM(o.quantity) AS total_quantity
FROM orders o
LEFT JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.gender;

-- 12. Customer with max orders (by quantity)
SELECT c.customer_id, c.customer_name, SUM(o.quantity) AS total_quantity
FROM orders o
LEFT JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.customer_id
ORDER BY total_quantity DESC
LIMIT 1;

-- 13. Category contributing most to revenue
SELECT category, SUM(sales) AS cat_revenue
FROM orders
GROUP BY category
ORDER BY cat_revenue DESC;

-- 14. Orders with total price > ₹5000
SELECT *
FROM orders 
WHERE sales > 5000;

-- 15. Country-wise revenue
SELECT c.customer_id, c.country, SUM(o.sales) AS revenue
FROM orders o
RIGHT JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.customer_id, c.country;

