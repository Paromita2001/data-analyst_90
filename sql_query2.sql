-- View current data
SELECT * FROM orders;

-- 1: Add region column
ALTER TABLE orders
ADD region VARCHAR(50);

-- 2: Update region values
UPDATE orders SET region = 'East' WHERE order_id = 101;
UPDATE orders SET region = 'South' WHERE order_id = 102;
UPDATE orders SET region = 'South' WHERE order_id = 103;
UPDATE orders SET region = 'North' WHERE order_id = 104;
UPDATE orders SET region = 'West' WHERE order_id = 105;
UPDATE orders SET region = 'Northeast' WHERE order_id = 106;
UPDATE orders SET region = 'Northwest' WHERE order_id = 107;

-- 3: Add sales column
ALTER TABLE orders
ADD sales FLOAT;

-- 4: Calculate and update sales (after discount)
UPDATE orders
SET sales = unit_price * quantity * (1 - discount / 100);

-- 5: Total sales by region
SELECT region, SUM(sales) AS total_sales
FROM orders
GROUP BY region;

-- 6: Top 3 customers by total quantity ordered
SELECT customer_id, SUM(quantity) AS total_quantity
FROM orders
GROUP BY customer_id
ORDER BY total_quantity DESC
LIMIT 3;

-- 7: Region-wise average order value
SELECT region, AVG(sales) AS avg_order
FROM orders
GROUP BY region;

-- 8: Orders where quantity > 2
SELECT * FROM orders
WHERE quantity > 2;

-- 9: Total sales per category
SELECT category, SUM(sales) AS cat_wise_sales
FROM orders
GROUP BY category;

-- 10: Most ordered product (by quantity)
SELECT product_name, SUM(quantity) AS total_quantity
FROM orders
GROUP BY product_name
ORDER BY total_quantity DESC
LIMIT 1;

-- 11: Product with highest total sales
SELECT product_name, SUM(sales) AS total_sales
FROM orders
GROUP BY product_name
ORDER BY total_sales DESC
LIMIT 1;

-- 12: Sales trend by month (YYYY-MM)
SELECT 
  DATE_FORMAT(order_date, '%Y-%m') AS month,
  SUM(sales) AS total_sales
FROM orders
GROUP BY month
ORDER BY month;

-- 13: Customer with highest total sales
SELECT customer_id, SUM(sales) AS highest_sales
FROM orders
GROUP BY customer_id
ORDER BY highest_sales DESC
LIMIT 1;

-- 14: Count of unique products
SELECT COUNT(DISTINCT product_name) AS unique_product_count
FROM orders;
