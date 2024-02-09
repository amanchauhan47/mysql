create database if not exists scholarship;
use scholarship;
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
(4, "dhruv", 96, "Delhi"),
(5, "emanuel", 12, "Delhi"),
(6, "farah", 82, "Delhi");

-- select * from students where city = "delhi"; -- case insensitive while searching
select city from students group by city;
select city, count(name) from students group by city;

select city, name, count(roll) from students group by city, name; -- city or name dono ke basis pr group bana h

select city, avg(marks) from students group by city;

select city, avg(marks) from students group by city order by avg(marks) asc; -- practice question

select city, avg(marks)
from students
group by city
order by city asc;


select city, count(roll) from students group by city;

select * from students order by marks;	-- by default order by clause asc me dikhata hai data;