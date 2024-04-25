-- Day 24 of SQL Challenge with MySQL workbench
-- Get the the total numbers of Product 

SELECT COUNT(DISTINCT ProductID) AS Count_product
FROM dimproduct
WHERE ProductID IS NOT NULL;