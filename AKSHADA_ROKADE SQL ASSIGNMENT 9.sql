use classicmodels;


DELIMITER //
CREATE PROCEDURE Get_country_payments(
    IN input_year INT,
    IN input_country VARCHAR(255)
)
BEGIN
    SELECT 
        YEAR(p.paymentDate) AS payment_year, 
        c.country, concat(FORMAT(SUM(p.amount) / 1000, 0), "k") AS total_amount
    FROM Payments p
    JOIN Customers c ON p.customernumber = c.customernumber
		WHERE 
	YEAR(p.paymentDate) = input_year AND c.country = input_country
    GROUP BY payment_year, c.country;
END //
DELIMITER ;


CALL Get_country_payments(2003, 'france');
