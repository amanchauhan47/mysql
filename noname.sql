CREATE DATABASE IF NOT EXISTS noname;

USE noname;

CREATE TABLE temp1(
	name VARCHAR(50),
	age INT CHECK (age>=18)
);
INSERT INTO temp1(name) VALUES("amanisher");

SELECT * FROM temp1;

-- DROP DATABASE noname;
-- DROP TABLE temp1;