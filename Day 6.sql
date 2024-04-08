-- Day 6 of SQL challenge with MySQL Workbench
-- Get the total Quantity ordered by Channel and Subchannel for 2022 and 2023_2025, let the quantity for all year  be on same column


ALTER TABLE dimsubchannel
CHANGE COLUMN `Sub-channel` Subchannel VARCHAR(255); -- To change the Column title to Subchannel

SELECT ds1.Subchannel, dc.Channel, sum(all_sales.Quantity)as Quantity
FROM dimsubchannel ds1
INNER JOIN dimchannel dc 
    ON dc.ChannelID = ds1.ChannelID
LEFT JOIN all_sales
    ON all_sales.SubChannelID = ds1.SubChannelID   
GROUP BY ds1.Subchannel
ORDER BY dc.Channel;
