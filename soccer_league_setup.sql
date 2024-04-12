-- Soccer League Schema Definition (DDL)
CREATE TABLE Team (
    team_id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE Player (
    player_id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    team_id INT NOT NULL,
    FOREIGN KEY (team_id) REFERENCES Team(team_id)
);

CREATE TABLE Match (
    match_id INT PRIMARY KEY,
    date DATE NOT NULL,
    home_team_id INT NOT NULL,
    away_team_id INT NOT NULL,
    referee_id INT NOT NULL,
    FOREIGN KEY (home_team_id) REFERENCES Team(team_id),
    FOREIGN KEY (away_team_id) REFERENCES Team(team_id),
    FOREIGN KEY (referee_id) REFERENCES Referee(referee_id)
);

CREATE TABLE Goal (
    goal_id INT PRIMARY KEY,
    match_id INT NOT NULL,
    player_id INT NOT NULL,
    FOREIGN KEY (match_id) REFERENCES Match(match_id),
    FOREIGN KEY (player_id) REFERENCES Player(player_id)
);

CREATE TABLE Referee (
    referee_id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE Season (
    season_id INT PRIMARY KEY,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL
);

-- Sample Data for Soccer League
INSERT INTO Team (team_id, name)
VALUES (1, 'Team A'),
       (2, 'Team B');

INSERT INTO Player (player_id, name, team_id)
VALUES (1, 'Player 1', 1),
       (2, 'Player 2', 1),
       (3, 'Player 
