Select * from pizza_sales;
SELECT SUM(total_price) AS total_revenue FROM pizza_sales;

SELECT SUM(quantity) as total_pizzas FROM pizza_sales;

SELECT SUM(quantity) / COUNT(DISTINCT order_id) as avg_pizzas FROM pizza_sales;

SELECT DATENAME(DW,order_date) AS order_day, COUNT( DISTINCT order_id) as Total_orders
FROM pizza_sales
GROUP BY DATENAME(DW,order_date)
ORDER BY Total_orders;


SELECT @@SERVERNAME