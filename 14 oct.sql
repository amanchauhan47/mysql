CREATE DATABASE IF NOT EXISTS valorant;

USE valorant;

CREATE TABLE players(
	name VARCHAR(20),
    age INT NOT NULL CHECK(age>=18),
    id INT PRIMARY KEY
);
INSERT INTO 
players
(name, age, id)
VALUES
("maro",21,1),
("reyna",23,2),
("wukong",24,3),
("maurice",24,4);
-- DROP TABLE players;

SELECT DISTINCT age FROM players;