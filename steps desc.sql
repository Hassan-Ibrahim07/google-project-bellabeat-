SELECT MAX([Steps]) AS max_steps,AVG([Steps]) AS avg_steps, MIN([Steps]) AS minimum_steps
FROM [MyDatabase].[dbo].[minuteStepsNarrow_merged]
WHERE [Steps] > 0;