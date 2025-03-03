WITH AverageBuyPrice AS (
    SELECT AVG(buyPrice) AS avg_price
    FROM Products)

SELECT 
    productLine,
    COUNT(*) AS product_count
FROM Products
WHERE buyPrice > (SELECT avg_price FROM AverageBuyPrice)
GROUP BY productLine;
