USE CLASSICMODELS ;

SELECT c.country, COUNT(o.orderNumber) AS orderCount FROM Customers c
JOIN Orders o ON c.customerNumber = o.customerNumber
GROUP BY c.country ORDER BY orderCount DESC LIMIT 5;
