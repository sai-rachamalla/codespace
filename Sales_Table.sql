SELECT 
       [ProductKey]
      ,[OrderDateKey]
      ,[DueDateKey]
      ,[ShipDateKey]
      ,[CustomerKey]
      ,[SalesOrderNumber]
      ,[TotalProductCost]
      ,[SalesAmount]
FROM 
    [AdventureWorksDW2019].[dbo].[FactInternetSales]
WHERE 
    LEFT (OrderDateKey, 4) >= YEAR(GETDATE()) -12   -- Ensures we bring the specfied date from extraction
ORDER BY
    OrderDateKey ASC
