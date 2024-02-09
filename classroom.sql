CREATE DATABASE college;

USE college;

CREATE TABLE student(
	id INT PRIMARY KEY,
    name VARCHAR(20),
    age INT NOT NULL
);
SHOW TABLES;
INSERT INTO student VALUES(1,"AMAN",20);
INSERT INTO student VALUES(2,"DRONE",20);

SELECT * FROM student;

DROP DATABASE college;