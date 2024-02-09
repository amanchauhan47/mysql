create database if not exists res;
use res;
create table students(
	rollno int primary key,
    name varchar(20),
    marks int not null,
    city varchar(20)
);
-- drop table students;
insert into students
(rollno, name, marks, city)
values
(101, "anil", 78, "Pune"),
(102, "bhumika", 93, "Mumbai"),
(103, "chetan", 85, "Mumbai"),
(104, "dhruv", 96, "Delhi"),
(105, "emanuel", 92, "Delhi"),
(106, "farah", 82, "Delhi");

select * from students;

create view view1 as 
select rollno, name, city from students;

-- drop view view1; -- drop or delete a view

select * from view1;

create view view2 as
select * from students
where marks > 90;

select * from view2;
