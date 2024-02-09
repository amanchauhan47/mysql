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
(2, "aman", 74, "A", "lajpat nagar"),
(3, "shivani", 87, "A", "uttarakhand"),
(4, "sharuf", 99, "B", "oximum"),
(5, "pornjal", 54, "B", "karhera");

INSERT INTO students VALUES(6, "visholl", 70, "B", "ifil tower");

-- SELECT * FROM students;
-- SELECT name, marks FROM students;
-- SELECT name, marks FROM students WHERE marks>80;
SELECT DISTINCT grade FROM students; -- duplicate vales ko nahi show krege