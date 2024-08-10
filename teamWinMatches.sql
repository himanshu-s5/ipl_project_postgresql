
-- Number of matches played per year
SELECT season, COUNT(*) AS matches_played
FROM ipl_matches
GROUP BY season
ORDER BY season;

