CREATE DATABASE university;
-- DROP DATABASE IF EXISTS university;
USE university;

CREATE TABLE college(
	name VARCHAR(20),
    id INT PRIMARY KEY,
	age INT NOT NULL
);

INSERT INTO college VALUES("AMAN",1, 20);
INSERT INTO college VALUES("SHIVANI",2, 21);

SELECT * FROM college;