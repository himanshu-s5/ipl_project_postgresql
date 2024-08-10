--Number of matches won by each team
SELECT winner, COUNT(*) AS matches_won
FROM ipl_matches
WHERE winner IS NOT NULL
GROUP BY winner
ORDER BY matches_won DESC;

