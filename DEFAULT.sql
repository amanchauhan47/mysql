CREATE DATABASE IF NOT EXISTS mnc;

USE mnc;

CREATE TABLE employee(
	name VARCHAR(25),
	salary INT DEFAULT 25000
);
INSERT INTO employee (name) VALUES ("AMAN"); -- By default salary 25000 hojayegi
INSERT INTO employee (name,salary) VALUES ("ANKIT",24000);

SELECT * FROM employee;
-- DROP DATABASE mnc;