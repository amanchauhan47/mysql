CREATE DATABASE IF NOT EXISTS xii;

USE xii;

CREATE TABLE IF NOT EXISTS students(
    roll INT PRIMARY KEY,
    name VARCHAR(30),
    marks INT NOT NULL,
    grade TEXT NOT NULL,
    city VARCHAR(30)
);

INSERT INTO students
(roll, name, marks, grade, city)
VALUES
(1, "akshita", 67, "C", "ghaziabad"),
(2, "shivani", 87, "A", "uttarakhand"),
(3, "aman", 74, "A", "ghaziabad"),
(4, "sharuf", 99, "B", "bihar"),
(5, "pornjal", 54, "B", "ghaziabad");

INSERT INTO students VALUES(6, "visholl", 70, "B", "ifil tower");

-- SELECT * FROM students;

-- SELECT * FROM students WHERE marks > 70;
-- SELECT * FROM students WHERE city = "ghaziabad";

SELECT * FROM students WHERE marks > 70 AND city = "ghaziabad";