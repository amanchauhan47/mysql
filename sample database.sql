CREATE DATABASE IF NOT EXISTS sample;
-- DROP DATABASE sample;
USE sample;

CREATE TABLE student(
	rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);
INSERT INTO student
(rollno, name, marks, grade, city)
VALUES
(101, "anil", 78, "C", "Pune"),
(102, "bhumika", 93, "A", "Mumbai"),
(103, "chetan", 85, "B", "Mumbai"),
(104, "dhruv", 96, "A", "Delhi"),
(105, "emanuel", 12, "F", "Delhi"),
(106, "farah", 82, "B", "Delhi");

-- SELECT * FROM student;
SELECT * FROM student WHERE marks != 82;
SELECT * FROM student LIMIT 3;
SELECT * FROM student WHERE marks > 75 LIMIT 3;
SELECT * FROM student ORDER BY city ASC;
SELECT * FROM student ORDER BY marks DESC;
SELECT * FROM student ORDER BY marks DESC LIMIT 3;


-- Operators: (Most common used) 
SELECT * FROM student WHERE marks > 80 AND city = "delhi";

SELECT * FROM student WHERE marks >= 80 OR city = "Delhi";

SELECT * FROM student WHERE marks BETWEEN 80 AND 90; -- select for a given range.(also 80 and 90 are inclusive means it will marks 80 and 90.)

SELECT * FROM student WHERE city IN ("Delhi","Mumbai","Ghaziabad"); -- match any value in the list.

SELECT * FROM student WHERE city NOT IN ("Delhi", "Mumbai");

SELECT * FROM student ORDER BY marks DESC LIMIT 3 ;