-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.
--DROP
DROP DATABASE IF EXISTS tournament;
CREATE DATABASE tournament;
\c tournament;
DROP VIEW IF EXISTS Standings;
DROP VIEW IF EXISTS Count;
DROP VIEW IF EXISTS Wins;
DROP TABLE IF EXISTS Match;
DROP TABLE IF EXISTS Players;

-- Players Table 
CREATE TABLE Players 
	(id SERIAL primary key,
	name varchar(255));
-- Match Table
CREATE TABLE Match (
	id SERIAL primary key,
	player int REFERENCES Players(id),
	opponent int REFERENCES Players(id),
	result int);

--Number of wins for each individual player; view wins.
CREATE VIEW Wins AS 
	SELECT Players.id, COUNT(Match.opponent) AS n
	FROM Players
	LEFT JOIN (SELECT * FROM Match WHERE result>0) as Match
	ON Players.id = Match.player
	GROUP BY Players.id;

--Number of matches for each individual player; view count.
CREATE VIEW Count AS
	SELECT players.id, Count(Match.opponent) AS n
	FROM Players 
	LEFT JOIN Match
	ON Players.id = Match.player
	GROUP BY Players.id;

--Number of matches and wins for each individual player;
CREATE VIEW Standings AS
	SELECT Players.id, Players.name, Wins.n as wins, Count.n as matches
	FROM Players, Count, Wins 
	WHERE Players.id = Wins.id and Wins.id =Count.id;