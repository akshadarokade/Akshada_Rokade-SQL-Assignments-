use classicmodels ;

-- QUESTION [1]
select employeenumber, firstname, lastname from employees
where jobtitle = "sales rep" and reportsTo = "1102";
-- -------------------------------------------------------------------------------------------

-- QUESTION [2]

SELECT distinct productline products from products 
where productline like "%cars";

