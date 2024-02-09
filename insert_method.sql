CREATE DATABASE IF NOT EXISTS management;

USE management;

CREATE TABLE employee(
	name VARCHAR(50),
    salary INT NOT NULL
);
INSERT INTO employee
(name,salary)
VALUES
("Aman",25000),				-- mostly used for multiple values
("rahul",5000),
("sameer",2000);

INSERT INTO employee VALUES("Ronak",30000); -- mostly used for single values

SELECT * FROM employee;