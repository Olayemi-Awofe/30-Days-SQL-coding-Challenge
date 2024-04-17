-- Day 17 of SQL Challenge with MySQL workbench
-- Get the total_order and total_Revenue Generate in the January of 2022, 2023, 2024,and 2025.

SELECT 'Jan 22' AS Jan, SUM(a.Quantity) AS Total_Quantity, SUM(a.Quantity * dp.ProductPrice) AS Total_Revenue
FROM all_sales a
LEFT JOIN dimproduct AS dp 
ON a.ProductID = dp.ProductID
WHERE Month(str_to_date(a.MonthYear, '%m/%d/%Y')) = 01 And Year(str_to_date(a.MonthYear, '%m/%d/%Y')) = 2022
GROUP BY Jan
UNION ALL
SELECT 'Jan 23' AS Jan, SUM(a.Quantity) AS Total_Quantity, SUM(a.Quantity * dp.ProductPrice) AS Total_Revenue
FROM all_sales a
LEFT JOIN dimproduct AS dp 
ON a.ProductID = dp.ProductID
WHERE Month(str_to_date(a.MonthYear, '%d-%b-%y')) = 01 And Year(str_to_date(a.MonthYear, '%d-%b-%y')) = 2023
GROUP BY Jan
UNION ALL
SELECT 'Jan 24' AS Jan, SUM(a.Quantity) AS Total_Quantity, SUM(a.Quantity * dp.ProductPrice) AS Total_Revenue
FROM all_sales a
LEFT JOIN dimproduct AS dp 
ON a.ProductID = dp.ProductID
WHERE Month(str_to_date(a.MonthYear, '%d-%b-%y')) = 01 And Year(str_to_date(a.MonthYear, '%d-%b-%y')) = 2024
GROUP BY Jan
UNION ALL
SELECT 'Jan 25' AS Jan, SUM(a.Quantity) AS Total_Quantity, SUM(a.Quantity * dp.ProductPrice) AS Total_Revenue
FROM all_sales a
LEFT JOIN dimproduct AS dp 
ON a.ProductID = dp.ProductID
WHERE Month(str_to_date(a.MonthYear, '%d-%b-%y')) = 01 And Year(str_to_date(a.MonthYear, '%d-%b-%y')) = 2025
GROUP BY Jan;