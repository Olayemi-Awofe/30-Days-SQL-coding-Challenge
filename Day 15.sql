-- Day 15 of SQL Challenge with MySQL workbench 
-- Get the total_order and total_Revenue Generate in the year 2022, 2023, 2024,amd 2025, let each year be on seperate column.

SELECT 
    SUM(CASE WHEN YEAR(str_to_date(a.MonthYear, '%m/%d/%Y')) = 2022 THEN a.Quantity ELSE 0 END) AS Total_Q22,
    SUM(CASE WHEN YEAR(str_to_date(a.MonthYear, '%m/%d/%Y')) = 2022 THEN a.Quantity * dp.ProductPrice ELSE 0 END) AS Total_R22,
    SUM(CASE WHEN YEAR(str_to_date(a.MonthYear, '%d-%b-%y')) = 2023 THEN a.Quantity ELSE 0 END) AS Total_Q23,
    SUM(CASE WHEN YEAR(str_to_date(a.MonthYear, '%d-%b-%y')) = 2023 THEN a.Quantity * dp.ProductPrice ELSE 0 END) AS Total_R23,
    SUM(CASE WHEN YEAR(str_to_date(a.MonthYear, '%d-%b-%y')) = 2024 THEN a.Quantity ELSE 0 END) AS Total_Q24,
    SUM(CASE WHEN YEAR(str_to_date(a.MonthYear, '%d-%b-%y')) = 2024 THEN a.Quantity * dp.ProductPrice ELSE 0 END) AS Total_R24,
    SUM(CASE WHEN YEAR(str_to_date(a.MonthYear, '%d-%b-%y')) = 2025 THEN a.Quantity ELSE 0 END) AS Total_Q25,
    SUM(CASE WHEN YEAR(str_to_date(a.MonthYear, '%d-%b-%y')) = 2025 THEN a.Quantity * dp.ProductPrice ELSE 0 END) AS Total_R25
FROM 
    all_sales a
LEFT JOIN 
    dimproduct AS dp ON a.ProductID = dp.ProductID;
