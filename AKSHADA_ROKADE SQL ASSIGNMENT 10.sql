use classicmodels;



-- QUESTION (1)

SELECT c.customerName, COUNT(o.orderNumber) AS order_frequency,
RANK() OVER (ORDER BY COUNT(o.orderNumber) DESC) AS "Rank"
FROM Customers c
LEFT JOIN 
    Orders o ON c.customerNumber = o.customerNumber
GROUP BY 
    c.customerNumber, c.customerName
ORDER BY 
    order_frequency DESC;
    
    
  -- QUESTION (2)  
  
  
SELECT * FROM Orders;

WITH x AS (
    SELECT
        YEAR(OrderDate) AS year,
        MONTH(OrderDate) AS month_num,
        MONTHNAME(OrderDate) AS month_name,
        COUNT(OrderDate) AS total_orders
    FROM
        Orders
    GROUP BY
        year, month_num, month_name)

SELECT
	year,
	month_name AS month,
    total_orders AS 'Total Orders',
    CONCAT(ROUND(100 *(total_orders - LAG(total_orders) OVER (ORDER BY year, month_num)) / NULLIF(LAG(total_orders) 
    OVER (ORDER BY year, month_num), 0), 0),'%') AS 'YoY Changes'
FROM
    x
ORDER BY
    year, month_num;

