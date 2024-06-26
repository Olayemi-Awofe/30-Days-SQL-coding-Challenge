-- Day 11 of SQL with MySQL workbench Challenge 
-- Get the total revenue generated by each Chanel and Subchannel for the year 2022 only.


SELECT dc.Channel AS Channels, ds.Subchannel, sum(all_sales.Quantity * dp.ProductPrice) AS Revenue
FROM all_sales
LEFT JOIN dimsubchannel AS ds 
ON all_sales.SubChannelID = ds.SubChannelID
LEFT JOIN dimchannel AS dc 
ON ds.ChannelID = dc.ChannelID
JOIN dimproduct AS dp 
ON all_sales.ProductID = dp.ProductID
WHERE 
YEAR(STR_TO_DATE(all_sales.MonthYear, '%m/%d/%Y')) = 2022  -- STR_TO_DATE function is use to convert the column value to date format.
GROUP BY Subchannel,Channel
ORDER BY Revenue;
