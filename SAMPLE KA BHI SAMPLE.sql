CREATE DATABASE IF NOT EXISTS github;

USE github;

CREATE TABLE students(
	rollno INT PRIMARY KEY,
    name VARCHAR(20),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);
-- DROP TABLE students;
INSERT INTO students
(rollno,name,marks,grade,city)
VALUES
(1,"aman",82,'B',"Ghaziabad"),
(2,"amit",79,'A',"Delhi");

SELECT * FROM students WHERE marks > 80;