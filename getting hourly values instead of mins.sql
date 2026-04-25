SELECT CAST(Id AS NVARCHAR(MAX)) AS [ID_Clean]
      ,FORMAT([Time],'yyyy-MM-dd HH:00:00') AS daily_hours
      ,SUM([Value]) AS hourly_total
FROM [MyDatabase].[dbo].[heartrate_seconds_merged]
GROUP BY  CAST(id AS NVARCHAR(MAX)),FORMAT([Time], 'yyyy-MM-dd HH:00:00')
ORDER BY hourly_total DESC;