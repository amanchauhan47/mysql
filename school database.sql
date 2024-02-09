CREATE DATABASE IF NOT EXISTS school;

USE school;

CREATE TABLE student(
	name VARCHAR(50),
    roll INT PRIMARY KEY
);
/*
INSERT INTO student VALUES("AMAN",4);
INSERT INTO student VALUES("AARYAN",5);
*/
INSERT INTO student
(name,roll) 
VALUES
("aman",4),
("kali",7);

SELECT * FROM student;
DROP TABLE student;
DROP DATABASE school;