create database test1;
use test1;
create table students(
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

select * from students;
truncate students;
set sql_safe_updates = 0;
delete from students;	-- work like truncate 

select city, max(marks)
from students
group by city
having max(marks) > 90;