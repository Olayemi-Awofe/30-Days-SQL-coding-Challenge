-- Day 25 of SQL Challenge with MySQL workbench
-- Get the list of product name with their price more than 300.

SELECT distinct ProductName, SUM(ProductPrice) price
FROM dimproduct
GROUP BY ProductName
Having price > 300
ORDER BY price DESC;