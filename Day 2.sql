-- Day 2 of SQL Challenge with MySQL workbench 
-- Q1. Show all 7 tables in the Pharm_Database 
-- Q2. Get total Quantity ordered in the year 2022 from sales_20

SELECT *
FROM dimchannel;

SELECT * 
FROM dimemployee;

SELECT * 
FROM dimproduct;

SELECT *
FROM dimsubchannel;

SELECT * 
FROM sales23to25;

SELECT *
FROM sales_22;

SELECT *
FROM pharmtargets;


-- Day 2 of SQL Challenge with MySQL workbench 
-- Q1. Show all 7 tables in the Pharm_Database 
-- Q2. Get total Quantity ordered in the year 2022 from sales_20

SELECT SUM(Quantity) Total_QT_2022-- Sum all the quanty to get the total numbers of goods order in the year 2022
FROM sales_22;  -- from the 2022 sales table 