-- Day 22 of SQL Challenge with MySQL workbench.
-- Get the total quantity of order by each Distributor and return only the Bellow 5 distributor. 

SELECT Distributor, Sum(Quantity) As Total_Quantity
FROM all_sales
GROUP BY Distributor
ORDER BY Total_Quantity ASC
LIMIT 5;