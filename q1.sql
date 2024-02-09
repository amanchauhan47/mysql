CREATE DATABASE XYZ;

USE XYZ;

CREATE TABLE employee(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    salary INT NOT NULL
);
INSERT INTO employee
(id,name,salary)
VALUES
(1, "adam", 25000),
(2, "bob", 30000),
(3, "casey", 40000);

SELECT * FROM employee;

DROP DATABASE XYZ;