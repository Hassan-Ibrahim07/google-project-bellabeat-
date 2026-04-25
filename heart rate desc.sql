SELECT MAX([Value]) AS max_val,AVG([Value]) AS avg_val, MIN([Value]) AS minimum_val
FROM [MyDatabase].[dbo].[heartrate_seconds_merged]
WHERE [Value] > 0;