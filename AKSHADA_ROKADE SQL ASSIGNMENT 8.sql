use classicmodels;

create view product_category_sales as
select
pl.productLine,
sum(od.quantityOrdered * od.priceEach) as total_sales,
count(distinct o.orderNumber) as number_of_orders from ProductLines pl
join Products p on pl.productLine = p.productLine
join OrderDetails od on p.productCode = od.productCode
join Orders o on od.orderNumber = o.orderNumber
group by  pl.productLine;

select * from product_category_sales;
    
    
    