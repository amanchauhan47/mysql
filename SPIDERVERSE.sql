CREATE DATABASE IF NOT EXISTS spiderverse;

USE spiderverse;

CREATE TABLE spiderverse(
    id INT PRIMARY KEY,
    name VARCHAR(50),
    earth VARCHAR(50),
    gender TEXT NOT NULL
);

INSERT INTO spiderverse
(id, name, earth, gender)
VALUES
(1, "Miles Morales", "Earth-42 ", "M"),
(2, "Gwen Stacy   ", "Earth-47 ", "F"),
(3, "Peter Parker ", "Earth-616", "M");

INSERT INTO spiderverse VALUES(4, "Norman Osborn", "Earth-616", "M");-- Green Goblin

SELECT * FROM spiderverse;