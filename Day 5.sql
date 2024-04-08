-- Day 5 Create a new table for Sales 22 and sales 23 to 25
-- Show the New table 
-- Confirm if the data is complete and there is no duplicate,

CREATE TABLE All_sales AS
SELECT *
FROM sales_22
UNION ALL
SELECT *
FROM sales23to25;


SELECT *
FROM all_sales;

SELECT count(*)
FROM all_sales;
