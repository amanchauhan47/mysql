CREATE DATABASE IF NOT EXISTS institute;

USE institute;

CREATE TABLE student(
	name VARCHAR(50),
    id INT PRIMARY KEY
);
INSERT INTO student VALUES("aman",147);

SELECT * FROM student;

DROP DATABASE institute;
