-- Day 26 of SQL Challenge with MySQL Workbench
-- Get the top 10 Customers base on the total quantity of ordered

SELECT `Customer Name`, SUM(Quantity) Quantity
FROM all_sales
GROUP BY `Customer Name`
ORDER BY Quantity DESC
LIMIT 10;