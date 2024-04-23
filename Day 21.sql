-- Day 21 of SQL Challenge with MySQL workbench.
-- Get the total quantity of order by each Distributor and return only the top 10 distributor. 

SELECT Distributor, Sum(Quantity) As Total_Quantity
FROM all_sales
GROUP BY Distributor
ORDER BY Total_Quantity DESC
LIMIT 10;
