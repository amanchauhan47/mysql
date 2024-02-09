CREATE DATABASE IF NOT EXISTS comics;

USE comics;

CREATE TABLE IF NOT EXISTS avengers(
	id int primary key,
    name varchar(20),
    origin varchar(20)
);

INSERT INTO avengers
(id, name, origin)
VALUES
(1, "ironman", "earth"),
(2, "thor", "argard"),
(3, "captain america", "earth");

-- DESCRIBE avengers;
SELECT name FROM avengers;

-- SHOW DATABASES;
-- SHOW TABLES;