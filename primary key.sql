CREATE DATABASE kv2;

USE kv2;

CREATE TABLE myclass(
	id INT,			
	name VARCHAR(50),
    salary INT,
    PRIMARY KEY (id)	-- second syntax to make any column our primary key
);
INSERT INTO myclass
(id,name,salary)
VALUES
(1,"AFRIN",10000),
(2,"AKSHITA",20000),
(3,"AMAN",30000),
(4,"SHARUF",40000),
(5,"KAPISH",50000),
(6,"PRIYA",60000),
(7,"PIRANJAL",70000);

SELECT * FROM myclass;
