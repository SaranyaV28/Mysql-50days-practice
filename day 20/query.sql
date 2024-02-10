Question: Write a query to obtain the month-over-month percentage change in total page views.
WITH MonthlyTraffic AS (  
 SELECT
  EXTRACT(MONTH FROM Date) AS Month,
  SUM(Page_views) AS TotalPageViews
 FROM Web_traffic
 GROUP BY EXTRACT(MONTH FROM Date)
)
SELECT
 Current.Month AS CurrentMonth,
 Current.TotalPageViews AS CurrentPageViews,
 LAG(Current.TotalPageViews) OVER (ORDER BY Current.Month) AS PreviousPageViews,
 (Current.TotalPageViews - LAG(Current.TotalPageViews) OVER (ORDER BY Current.Month)) /
 LAG(Current.TotalPageViews) OVER (ORDER BY Current.Month) * 100 AS MonthOverMonthChange
FROM MonthlyTraffic Current
ORDER BY CurrentMonth;