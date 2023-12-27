-- Output the impressions and clicks on new columns based on the date for 1st October 2021 and 2nd October 2021
SELECT DATE,
       SUM(CASE WHEN activity_code = 'Impressions' then value end) AS Impressions,
       SUM(CASE WHEN activity_code = 'Clicks' then value end) AS Clicks
FROM Online_Activity
WHERE DATE BETWEEN '2021-10-01' AND '2021-10-02'
GROUP BY 1
ORDER BY 1;
