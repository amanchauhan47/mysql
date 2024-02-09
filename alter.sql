create database changes;
use changes;
create table if not exists students(
	roll int primary key,
    name varchar(20),
    marks int not null,
    city varchar(20)
);
insert into students
(roll, name, marks, city)
values
(1, "anil", 78, "Pune"),
(2, "bhumika", 93, "Mumbai"),
(3, "chetan", 85, "Mumbai"),
(4, "farah", 96, "Delhi"),
(5, "emanuel", 12, "Delhi"),
(6, "farah", 82, "Delhi");

select * from class;

-- ADD COLUMN 
alter table class 
add column grade char;

-- DROP COLUMN
alter table class 
drop column grade;

-- RENAME TABLE
alter table students 
rename to class;

-- CHANGE COLUMN (rename)
alter table student 
change percentage marks int;

-- MODIFY COLUMN
alter table class
modify city text not null;


describe class;
show databases;
show tables;

select * from student;

alter table class
rename to student;
