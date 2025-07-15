-- 1. Find the customer who spent the least amount in total
SELECT 
  c.customer_id, 
  c.customer_name, 
  SUM(o.sales) AS total_amount
FROM orders o
LEFT JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.customer_id, c.customer_name
ORDER BY total_amount ASC
LIMIT 1;


-- 2. List all orders where discount is between 5% and 15%
SELECT * 
FROM orders
WHERE discount BETWEEN 5 AND 15;


-- 3. Which region has the highest average sales per order?
SELECT 
  region, 
  AVG(sales) AS avg_sale 
FROM orders
GROUP BY region
ORDER BY avg_sale DESC
LIMIT 1;


-- 4. Find the most sold product (based on quantity)
SELECT 
  product_name, 
  SUM(quantity) AS total_quantity 
FROM orders
GROUP BY product_name
ORDER BY total_quantity DESC
LIMIT 1;


-- 5. Find the country-wise average discount given
SELECT 
  c.country, 
  AVG(o.discount) AS avg_disc
FROM orders o
RIGHT JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.country;


-- 6. Count how many female customers ordered electronics
SELECT 
  o.category, 
  COUNT(c.gender) AS gender_count 
FROM orders o
LEFT JOIN customers c ON o.customer_id = c.customer_id
WHERE o.category = 'Electronics' AND c.gender = 'F'
GROUP BY o.category;


-- 7. List all orders from July where sales > ₹10,000
SELECT * 
FROM orders
WHERE order_date LIKE '2024-07%' 
  AND sales > 10000;


-- 8. Show the total quantity sold per category
SELECT 
  category, 
  SUM(quantity) AS total_quant, 
  SUM(sales) AS total_sales 
FROM orders 
GROUP BY category;


-- 9. Which customer placed the highest number of orders?
SELECT 
  c.customer_name, 
  COUNT(o.order_id) AS total_order
FROM orders o
LEFT JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.customer_id, c.customer_name
ORDER BY total_order DESC
LIMIT 1;


-- 10. Show the most frequent product purchased by customer 'Alice'
SELECT 
  o.product_name, 
  SUM(o.quantity) AS total_quantity
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
WHERE c.customer_name = 'Alice'
GROUP BY o.product_name
ORDER BY total_quantity DESC
LIMIT 1;
