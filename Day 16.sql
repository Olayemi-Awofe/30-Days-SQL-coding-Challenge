-- Day 16 of SQL Challenge with MySQL workbench
-- Get the total_order and total_Revenue Generate in the year 2022, 2023, 2024,and 2025.

SELECT '2022' AS Year, SUM(a.Quantity) AS Total_Quantity, SUM(a.Quantity * dp.ProductPrice) AS Total_Revenue
FROM all_sales a
LEFT JOIN dimproduct AS dp 
ON a.ProductID = dp.ProductID
WHERE YEAR(str_to_date(a.MonthYear, '%m/%d/%Y')) = 2022
GROUP BY Year
UNION ALL
SELECT '2023' AS Year, SUM(a.Quantity) AS Total_Quantity, SUM(a.Quantity * dp.ProductPrice) AS Total_Revenue
FROM all_sales a
LEFT JOIN dimproduct AS dp 
ON a.ProductID = dp.ProductID
WHERE YEAR(str_to_date(a.MonthYear, '%d-%b-%y')) = 2023
GROUP BY Year
UNION ALL
SELECT '2024' AS Year, SUM(a.Quantity) AS Total_Quantity, SUM(a.Quantity * dp.ProductPrice) AS Total_Revenue
FROM all_sales a
LEFT JOIN dimproduct AS dp 
ON a.ProductID = dp.ProductID
WHERE YEAR(str_to_date(a.MonthYear, '%d-%b-%y')) = 2024
GROUP BY Year
UNION ALL
SELECT '2025' AS Year, SUM(a.Quantity) AS Total_Quantity, SUM(a.Quantity * dp.ProductPrice) AS Total_Revenue
FROM all_sales a
LEFT JOIN dimproduct AS dp 
ON a.ProductID = dp.ProductID
WHERE YEAR(str_to_date(a.MonthYear, '%d-%b-%y')) = 2025
GROUP BY Year;
