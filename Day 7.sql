-- Day 7 of SQL Challenge with MySQL workbench 
-- Get the Revenue for productID AND salesID, Distributor and,Quantity 



SELECT a.SalesID, a.Distributor,Quantity , p.ProductPrice*a.Quantity AS Revenue
FROM all_sales as a
JOIN dimproduct as p
ON a.ProductID = p.ProductID
WHERE a.SalesID IS NOT NULL;