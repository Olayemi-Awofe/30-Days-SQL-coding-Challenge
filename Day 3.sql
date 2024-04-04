-- Day 3 of 30days SQL Challenge with MySQL Workbench 
-- Get the total quantity for each productClass for the year 2022 

SELECT sum(sales_22.Quantity) As T_Order, dimproduct.ProductClass
FROM sales_22
JOIN dimproduct
ON sales_22.ProductID = dimproduct.ProductID
GROUP BY dimproduct.ProductClass
ORDER BY dimproduct.ProductClass