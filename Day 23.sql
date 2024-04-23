-- Day 23 of SQL Challenge with MySQL workbench.
-- Get the total Numbers of Distributor and Customer each on their seperate column. 

SELECT COUNT(DISTINCT Distributor) AS Distributors, COUNT(DISTINCT `Customer Name`) AS Customers
FROM all_sales
WHERE SalesID IS NOT NULL;