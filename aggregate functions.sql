create database if not exists result;
use result;
-- AGGREGATE FUNCTION 

create table if not exists students(
	rollno int primary key,
    name varchar(25),
    marks int not null
);
insert into students
(rollno, name, marks)
values
(21673522, "Aman Chauhan", 85),
(21673532, "Sharuf Alam", 84),
(21673529, "Priya Bisht", 82);

-- select avg(marks) from students;		-- AVG()
-- select max(marks) from students;		-- MAX()
-- select min(marks) from students;		-- MIN()
-- select sum(marks) from students;		-- SUM()
select count(marks) from students;		-- COUNT()

-- select * from students where marks = 85;
