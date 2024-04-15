-- Day 14 of SQL Challenge with MySQL workbench 
-- Get the total_order and total_Revenue Generate in the year 2023.


SELECT SUM(a.Quantity) AS Total_Q, SUM(a.Quantity * dp.ProductPrice) AS Total_R
FROM all_sales a
LEFT JOIN dimproduct AS dp
ON a.ProductID = dp.ProductID
WHERE 
YEAR(str_to_date(a.MonthYear, '%d-%b-%y')) = 2023;




