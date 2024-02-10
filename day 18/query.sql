WITH Visitor_stats AS (
 SELECT 
  visitors_name, 
  visited_floor,
  COUNT(*) AS visit_count
 FROM Building_visits
 GROUP BY visitors_name, visited_floor
),
Max_visits AS 
(
 SELECT
  visitors_name,
  MAX(visit_count) AS max_visits
 FROM Visitor_stats
 GROUP BY visitors_name
 )
 SELECT
 vs.visitors_name,
 (SELECT COUNT(*) FROM Building_visits WHERE visitors_name = vs.visitors_name) AS total_visits,
 vs.visited_floor 
FROM Visitor_stats vs
INNER JOIN Max_visits mv ON vs.visitors_name = mv.visitors_name
AND vs.visit_count = mv.max_visits;

