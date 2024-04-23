-- Day 18 of SQL Challenge with MySQL Workbench 
-- Get the total Revenue generated by each Sales Manager and Total Quantity Ordered.

SELECT e.Manager, SUM(a.Quantity) Quantity, SUM(a.Quantity * p.ProductPrice) As Revenue
FROM all_sales a
LEFT JOIN dimproduct p
ON a.ProductID = p.ProductID
JOIN dimemployee e
ON a.SalesRepID = e.ID
GROUP BY e.Manager
ORDER BY Revenue;