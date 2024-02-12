Write a SQL query to calculate the candidate who received the highest number of votes each month.

solution1:
WITH VoteCounts AS (
 SELECT
 CandidateID,date_format(VoteDate, '%Y-%m') AS YearMonth,
 COUNT(*) AS VoteCount
 FROM Election
 GROUP BY 1,2
)
SELECT
 VC.YearMonth, VC.CandidateID, VC.VoteCount
FROM VoteCounts VC
WHERE VC.VoteCount = (
 SELECT MAX(VoteCount) 
 FROM VoteCounts 
 WHERE YearMonth = VC.YearMonth
 );

solution 2:
 
 WITH monthlyVoteCounts AS (
SELECT
 CandidateID,date_format(VoteDate, '%Y-%m') AS YearMonth,
 COUNT(*) AS VoteCount,
 dense_rank() over(partition by month(Votedate) order by count(*) desc) as rn
 FROM Election
 GROUP BY candidateID,yearmonth,MONTH(Votedate)
 )
 select candidateID,yearmonth,votecount
 from monthlyvotecounts 
 where rn=1
 