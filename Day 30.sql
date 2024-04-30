-- Day 30 of 30 Day of SQL Coding with MySQL Workbench
-- Get the total Revenue generated by Channel and their Subchannels for Month of Febuary 2022.


SELECT dc.Channel AS Channels, ds.Subchannel, sum(all_sales.Quantity * dp.ProductPrice) AS Feb_Revenue22
FROM all_sales
LEFT JOIN dimsubchannel AS ds 
ON all_sales.SubChannelID = ds.SubChannelID
LEFT JOIN dimchannel AS dc 
ON ds.ChannelID = dc.ChannelID
JOIN dimproduct AS dp 
ON all_sales.ProductID = dp.ProductID
WHERE 
Year(STR_TO_DATE(all_sales.MonthYear, '%m/%d/%Y')) = 2022  And Month(STR_TO_DATE(all_sales.MonthYear, '%m/%d/%Y')) = 2 -- STR_TO_DATE function is use to convert the column value to date format.
GROUP BY Subchannel,Channel
ORDER BY Feb_Revenue22;