CREATE DATABASE IF NOT EXISTS enemy;

USE enemy;

CREATE TABLE list(
	name VARCHAR(20),
    marks INT NOT NULL,
    age INT CHECK (18 <= age)
);
INSERT INTO 
list(name, marks, age) 
VALUES
("AMAN",88,19),
("anshika",90,18),
("anas",75,20);

SELECT * FROM list WHERE marks > 80 ORDER BY marks DESC LIMIT 3 ;
