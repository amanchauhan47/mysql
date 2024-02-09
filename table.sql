CREATE DATABASE IF NOT EXISTS college;

USE college;

CREATE TABLE student(
	username VARCHAR(50),
    pincode INT,
    PRIMARY KEY(username,pincode) -- dono ka combination hamesha unique rhega
);
INSERT INTO student VALUES("amanchauhan@gmail.com",4477);

INSERT INTO student
(username,pincode)
VALUES
("gadgethex@gmail.com",4477),
("amanchauhan@gmail.com",1234);

-- ("amanchauhan@gmail.com",4477) aisa nhi hoga (combination same nhi hoga)

SELECT * FROM student;
-- SHOW DATABASES;
-- SHOW TABLES;
--  DROP DATABASE college;