-- Day 20 of SQL challenge with MySQL 
-- Get the Top 10 Sales person by the nnumbers of orders.

SELECT e.Name, Count(a.SalesID) AS Total_order
FROM all_sales a
LEFT JOIN dimemployee e
ON a.SalesRepID = e.ID
GROUP BY e.Name 
ORDER BY Total_order DESC
LIMIT 10;