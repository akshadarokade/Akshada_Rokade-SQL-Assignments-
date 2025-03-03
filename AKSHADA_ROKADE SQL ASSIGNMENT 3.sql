use classicmodels;

-- QUESTION [1]
SELECT productCode, SUM(quantityOrdered) AS totalOrderQuantity FROM OrderDetails
GROUP BY productCode ORDER BY totalOrderQuantity DESC LIMIT 10;

 SELECT * FROM payments;
-- QUESTION [2]

SELECT monthname(PAYMENTDATE) AS PAYMENT_MONTH, count(*) AS NUM_PAYMENTS
FROM PAYMENTS group by PAYMENT_MONTH having NUM_PAYMENTS > 20 
ORDER BY NUM_PAYMENTS DESC;


