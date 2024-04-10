-- Day 9 of SQL with MySQL workbench Challenge 
-- Get the total revenue each Chanel generated 

SELECT dc.Channel AS Channels, SUM(all_sales.Quantity * dp.ProductPrice) AS Rev
FROM all_sales
LEFT JOIN dimsubchannel AS ds 
ON all_sales.SubChannelID = ds.SubChannelID
LEFT JOIN dimchannel AS dc 
ON ds.ChannelID = dc.ChannelID
JOIN dimproduct AS dp 
ON all_sales.ProductID = dp.ProductID
GROUP BY Channels
ORDER BY Rev;