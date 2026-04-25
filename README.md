# Google capstone project
## intro
in this project we are trying to anlyze the data of fitbit health care devices using all the toals i have learnt to improve our company(bella beat) marketing strategy.
this project was really useful for me as it wasn't really easy like other small projects or assignments i have done through this course or other items and it actually took me some time to finish this project, estimadely it took me like from 11 to 13 hours to finish because by looking at this data it is all numeric all data looks like meta data nothing is organized nothing is grouped no qualitative data that's why it took me more time to understand the data more than analyzing it, so by using critical thinking and analytical thinking i kept looking at the data trying to figure out what can we get from this data what can be helpful and more so however i think it would be really helpful if i was working with a team to even if they doesn't really know anything about data analysis to take their opinions suggestions and share findings with them but after all i have finished this project alone as a kind of a challenge for me.
we are going to share this project in the forum of 6 steps which are **ask, prepare, process, anlyze, share, and act**
---
**Ask**
i didn't really had anyone to ask or to speak about my research questions in my mind with so i tried to understand more about the data by googling and using the case study file so i did some research about the health devices the company and some of the data meanings like mets and bmi how these devices work and how people does really use it what are the most things important things at these devices that makes people buy it, and we are going to show the researshs we have done in the last point of acting upon data.
---
**prepare**
after finishing the first step we started to think about the data we have already, how can we prepare it for analysis which program to use and what is the best way or looks to keep the datain.
so first we tried to load all the data into excel but some of the data tables didn't get into excel because it was larger than excel capacity and these data were the minutly data specificly so we loaded those into sql after that i did some grouping so the data would be easier for analysis if i loaded it into excel and if we wanted to visualize it and here is the code i used(i used ssms in this project so this is written in tsql)
`SELECT CAST(Id AS NVARCHAR(MAX)) AS [ID_Clean]
      ,FORMAT([ActivityMinute],'yyyy-MM-dd HH:00:00') AS daily_hours
      ,SUM([METs]) AS hourly_total
FROM [MyDatabase].[dbo].[minuteMETsNarrow_merged]
GROUP BY  CAST(id AS NVARCHAR(MAX)),FORMAT([ActivityMinute], 'yyyy-MM-dd HH:00:00')
ORDER BY hourly_total DESC;`
`SELECT CAST(Id AS NVARCHAR(MAX)) AS [ID_Clean]
      ,FORMAT([Time],'yyyy-MM-dd HH:00:00') AS daily_hours
      ,SUM([Value]) AS hourly_total
FROM [MyDatabase].[dbo].[heartrate_seconds_merged]
GROUP BY  CAST(id AS NVARCHAR(MAX)),FORMAT([Time], 'yyyy-MM-dd HH:00:00')
ORDER BY hourly_total DESC;`
also in the start of this step we had checked the data to see if it is good enough that it doesn't have alot of nulls or weird values and after checking the data by using filters in excel and we didn't check the allow nulls buttone in ssms after that we checked if data is like the desc of the data so we used
`We used =COUNT(UNIQUE(column name))`in excel and `SELECT COUNT(DISTINCT CAST(column name AS VARCHAR(max)))`in sql
---
**organizing and analyzing**
we started analyzing data and gaining insights by using pivot tables in excel and doing some descriptive analysis to find the average, minimum, and maximum of different variables also we have used the group by and xlookup function a couple of times to extract some data for some specific ids those which are in the weight log info table so we can do some more analysis on them and at last if you take a look at the excel sheet [google project](https://github.com/Hassan-Ibrahim07/google-project-bellabeat-/blob/main/google%20capstone%20project.xlsx)you will find all the data  after the anlayzing step.
we have for finding only some descriptive analysis to find the average, minimum, and maximum only because i find sql a bit annoying but i am improving by time.
`SELECT MAX([Steps]) AS max_steps,AVG([Steps]) AS avg_steps, MIN([Steps]) AS minimum_steps
FROM [MyDatabase].[dbo].[minuteStepsNarrow_merged]
WHERE [Steps] > 0;`
here we got the steps avg, min, and max per minute
`SELECT MAX([Value]) AS max_val,AVG([Value]) AS avg_val, MIN([Value]) AS minimum_val
FROM [MyDatabase].[dbo].[heartrate_seconds_merged]
WHERE [Value] > 0;`
and here we got the heart rate avg, min, and max per minute
and also we could use python but i think it was better to stick with excel and sql.
---
**sharing**
after the analyzing steps we could really share this data in alot of ways we could prepare a power point a report or an email but i didnt really share this data with anyone but i am sharing it here so this is where and how i am sharing my data for this project and the last step will be like what would be discussed if i team and were preparing for meating to talk about my final findings so i have prepared my visualization to make the data better understandable because i didnt really understand the realtion ship between the data until i have visualized it.
for visualizing the data we used tabluea and excel and we customized the visualizaion to not look complicated and to reach the point imediately.
---
**acting**
i feel like this point or step is the most important step because we use all the data and all our ideas and findings to find a relationship and a way to reach our goal and make a data driven decision.
so our goal is to create a marketing strategy and here it is:

so i have to marketing ideas the first one is making ads that show people that already intersted in the health care devices why to use our devices.
and we can do that by using the fact that people who are looking to buy these devices mostlly care about monitoring their health and gaining more information about their health and telling them the best ways to stay healthy and we can do that by making our devices use our findings to show the user his stats and compare it wiht the average and also to telling users the best time to go training which we found in here
<img width="873" height="452" alt="image" src="https://github.com/user-attachments/assets/dfeb60f9-55f9-47c2-b4c9-36d9f9c723aa" />
<img width="874" height="452" alt="image" src="https://github.com/user-attachments/assets/9f8e622a-d01f-4dd0-b5c8-f0eb6d4467ba" />
<img width="536" height="575" alt="intensity" src="https://github.com/user-attachments/assets/0eb46d34-fefe-463d-b26b-bec020c72e5f" />

also we giving them numbers of how much calories do people burn in average in this hour with what amount of steps or intensities and to compare the calories that user burnt with average because people always love to compare themselves or what they do with others.
<img width="1247" height="575" alt="mets" src="https://github.com/user-attachments/assets/3916d8fb-5e15-4ea1-9b19-87973a902dc5" />
<img width="536" height="575" alt="intensity" src="https://github.com/user-attachments/assets/ee422378-0e21-4e82-8271-3637f884e4bd" />
<img width="1246" height="493" alt="calories and other aspects" src="https://github.com/user-attachments/assets/26e104ea-50f5-4c11-be9b-bf0e49d56225" />

also we can motivate people to work out or run every day becauese moving every day is better than moving alot in a single day.
<img width="538" height="585" alt="relation between active days and calories" src="https://github.com/user-attachments/assets/ecdacf1d-82ec-47a7-942f-94d46a010468" />
at last this is what people are looking for in healthcare devices and why are they using them.

the second marketing strategy.
our audience in this strategy are people who doesn't do any kind of physical activity becauese they think that it doesn't really matter and that they are gonna stay like they are even after tranining or working out because these are like 22% of overweight people and for this we have data to show that there is really no strong relation between bmi,weight and calories burning,
<img width="1018" height="575" alt="calories,weight and bmi" src="https://github.com/user-attachments/assets/3cf965cd-f2ea-42cb-a0a7-30cb30b18bfc" />

and that with our device monitoring and tech we mentioned earlier we will be helping them getting to the perfect shape.

refrences
[google project](https://www.erieniagaraahec.org/post/healthcare-wearable-devices)
[google project](https://pmc.ncbi.nlm.nih.gov/articles/PMC4737495/)
[google project](https://fitbit.google/enterprise/blog/the-power-of-brand/)
[google project](https://www.researchgate.net/publication/229736091_Too_fat_to_exercise_Obesity_as_a_barrier_to_physical_activity)
[google project](https://www.niddk.nih.gov/health-information/weight-management/adult-overweight-obesity/health-risks)


