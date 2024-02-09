CREATE DATABASE IF NOT EXISTS temp1;
-- DROP DATABASE temp1;
USE temp1;

CREATE TABLE city(
	id INT PRIMARY KEY,
    city VARCHAR(50),
    age INT,
    CONSTRAINT age_check CHECK (age >= 18 AND city = "Delhi") -- FIRST SYNTAX FOR CHECK CONSTRAINTS
);
INSERT INTO city(id,city,age) VALUES(1,"Delhi",20);
INSERT INTO city(id,city,age) VALUES(2,"Delhi",36);

SELECT * FROM city;

CREATE TABLE newTab(
	age INT CHECK (age >=18)
);
INSERT INTO newTab(age) VALUES(21);	-- SECOND SYNTAX FOR CHECK CONSTRAINT
INSERT INTO newTab(age) VALUES(15);	-- here condition is false, this will give error

SELECT * FROM newTab;