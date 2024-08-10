--switch to database
\c ipl_db ipl_user;

-- Create the ipl_matches table

CREATE TABLE ipl_matches (
    id SERIAL PRIMARY KEY,
    season INT,
    city VARCHAR(50),
    date DATE,
    team1 VARCHAR(50),
    team2 VARCHAR(50),
    toss_winner VARCHAR(50),
    dl_applied VARCHAR(50),
    toss_decision VARCHAR(10),
    result VARCHAR(50),
    winner VARCHAR(50),
    win_by_runs INT,
    win_by_wickets INT,
    player_of_match VARCHAR(50),
    venue VARCHAR(100),
    umpire1 VARCHAR(50),
    umpire2 VARCHAR(50),
    umpire3 VARCHAR(50)
);

