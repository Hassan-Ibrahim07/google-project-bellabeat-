SELECT CAST(Id AS NVARCHAR(MAX)) AS [ID_Clean]
      ,FORMAT([ActivityMinute],'yyyy-MM-dd HH:00:00') AS daily_hours
      ,SUM([METs]) AS hourly_total
FROM [MyDatabase].[dbo].[minuteMETsNarrow_merged]
GROUP BY  CAST(id AS NVARCHAR(MAX)),FORMAT([ActivityMinute], 'yyyy-MM-dd HH:00:00')
ORDER BY hourly_total DESC;