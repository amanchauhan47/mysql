create database if not exists kv2;
use kv2;
create table students(
	roll int primary key,
    name varchar(30),
    city varchar(20)
);
insert into students
(roll, name, city)
values
(1, "afrin", "bihar"),
(2, "akshita", "uttar pradesh"),
(3, "aman", "uttar pradesh"),
(4, "sharuf", "bihar"),
(5, "piranjal", "uttar pradesh");

-- select * from students where city = "bihar";
-- select * from students where roll > 2;
-- select * from students limit 3;
-- select * from students order by roll asc;
select * from students order by roll desc limit 3;