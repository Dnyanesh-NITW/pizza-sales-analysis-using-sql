/*                SQL Pizza Sales Analysis
											Author - Dnyanesh Yeole
*/

-- KPI's REQUIREMENT

-- Total Revenue

SELECT SUM(total_order_amount) AS Total_Revenue FROM orders;

-- Average Order value

SELECT AVG(total_order_amount) AS avg_order_value FROM orders;

-- Total Pizzas Sold

SELECT SUM(quantity) AS total_pizzas_sold FROM orderspizza;

-- Total orders

SELECT COUNT(*) AS total_orders FROM orders;

-- Average Pizzas per order

SELECT SUM(total_order_quantity)/COUNT(*) AS avg_pizzas_per_order FROM orders;

-- SECTOR WISE ANALYSIS
/* Before moving to the the sector wise analysis let us create a view which will help us in the anlysis */

CREATE VIEW pizza_sales_view AS
SELECT t1.order_id, t3.pizza_id, order_date, order_time, unit_price,
pizza_size, pizza_category, pizza_ingredients, pizza_name,
t1.quantity
FROM orderspizza t1
JOIN orders t2 ON t1.order_id = t2.order_id
JOIN pizza t3 ON t1.pizza_id = t3.pizza_id;

-- SALES PERFORMANCE ANALYSIS

-- What is the average unit price and revenue of pizza across different categories?

SELECT pizza_category, AVG(unit_price) AS average_unit_price,
SUM(quantity*unit_price) AS revenue_per_category
FROM pizza_sales_view
GROUP BY pizza_category
ORDER BY revenue_per_category DESC;

-- What is the average unit price and revenue of pizza across different sizes?

SELECT pizza_size, AVG(unit_price) AS average_unit_price,
SUM(quantity*unit_price) AS revenue_per_size
FROM pizza_sales_view
GROUP BY pizza_size
ORDER BY revenue_per_size DESC;

-- What is the average unit price and revenue of most sold 3 pizzas?

SELECT pizza_name, AVG(unit_price) AS average_unit_price,
SUM(quantity*unit_price) AS revenue_per_pizza
FROM pizza_sales_view
GROUP BY pizza_name
ORDER BY revenue_per_pizza DESC
LIMIT 3;


-- SEASONAL ANALYSIS

-- Which days of the week having the highest number of orders?

SELECT DATE_FORMAT(order_date, '%W') AS day_of_week, COUNT(*) AS order_count
FROM Orders
GROUP BY day_of_week
ORDER BY order_count DESC;

--  At what time most of the orders have occurred?

SELECT DATE_FORMAT(order_time, '%H:%i') AS delivery_time, COUNT(*) AS delivery_count
FROM Orders
GROUP BY delivery_time
ORDER BY delivery_count DESC
LIMIT 5;

-- Which month has highest revenue?

SELECT monthname(order_date) AS month, SUM(total_order_amount) AS revenue
FROM Orders
GROUP BY month
ORDER BY revenue DESC
LIMIT 5;

-- which season has highest revenue

SELECT
  CASE
    WHEN MONTH(order_date) IN (3, 4, 5) THEN 'Spring'
    WHEN MONTH(order_date) IN (6, 7, 8) THEN 'Summer'
    WHEN MONTH(order_date) IN (9, 10, 11) THEN 'Fall'
    ELSE 'Winter'
  END AS season,
  SUM(total_order_amount) AS season_sales
FROM orders
GROUP BY season
ORDER BY season_sales DESC;

-- CUSTOMER BEHAVIOR ANALYSIS

-- Which is the favourite pizza of customers (most ordered pizza)?

SELECT pizza_name, pizza_size, COUNT(order_id) AS count
FROM pizza_sales_view
GROUP BY pizza_name, pizza_size
ORDER BY count 
LIMIT 1;

-- Which pizza is ordered most number of times?

SELECT pizza_name, COUNT(order_id)  AS count, avg(unit_price)
FROM pizza_sales_view
GROUP BY pizza_name
ORDER BY count DESC
LIMIT 5;

-- Which pizza size is preferred by cutomers?

SELECT pizza_size, COUNT(order_id) AS count, avg(unit_price) 
FROM pizza_sales_view
GROUP BY pizza_size
ORDER BY count DESC;

-- which pizza category is preferred by customers?

SELECT pizza_category, COUNT(order_id) AS count, avg(unit_price) 
FROM pizza_sales_view
GROUP BY pizza_category
ORDER BY count DESC;

-- PIZZA ANALYSIS

-- pizza with least price
SELECT pizza_name AS lowest_priced_pizza, unit_price
FROM pizza
ORDER BY unit_price
LIMIT 1;

-- pizza with highest price
SELECT pizza_name  AS highest_priced_pizza, unit_price
FROM pizza
ORDER BY unit_price DESC
LIMIT 1;

-- number of pizzas per category

SELECT pizza_category, count(pizza_name) AS count
FROM pizza
GROUP BY pizza_category
ORDER BY count DESC;

-- Number of pizzas per pizza_size

SELECT pizza_size,count(pizza_name) AS count
FROM pizza
GROUP BY pizza_size
ORDER BY count DESC;

-- PIZZAS WITH MORE THAN ONE CATEGORY

SELECT pizza_name, COUNT(DISTINCT pizza_category) AS category_count
FROM pizza
GROUP BY pizza_name
HAVING category_count > 1;





