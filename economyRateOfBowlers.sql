SELECT bowler, 
       SUM(runs_conceded) / SUM(overs) AS economy
FROM (
    SELECT bowler, 
           SUM(total_runs - legbye_runs - bye_runs) AS runs_conceded,
           COUNT(ball) / 6.0 AS overs
    FROM ipl_deliveries 
    JOIN ipl_matches 
    ON match_id = id
    WHERE season = 2015
    GROUP BY bowler, match_id
) AS bowler_stats
GROUP BY bowler
ORDER BY economy ASC
LIMIT 10;
