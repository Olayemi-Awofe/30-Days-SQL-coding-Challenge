-- Day 4 of SQL challenge with MySQL Workbench 
-- Get the total quantity ordered for each Sales Person, the Team they belong, and their Manager.
-- Top 10 sales person base on Quantity ordered for the year 2023 to 2025 



SELECT emp.Name, emp.Manager, emp.Team, Sum(sales.Quantity) T_Quantity
FROM dimemployee emp
LEFT JOIN sales23to25 sales
ON emp.ID = sales.SalesRepID
GROUP BY Name
Order by T_Quantity DESC
LIMIT 10