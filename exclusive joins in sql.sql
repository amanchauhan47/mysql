create database if not exists joins;
use joins;
create table student(
	id int primary key,
    name varchar(20)
);
create table course(
	id int primary key,
    course varchar(20)
);
insert into student
(id, name)
values
(101, "adam"),
(102, "bob"),
(103, "casey");

insert into course
(id, course)
values
(102, "english"),
(105, "math"),
(103, "science"),
(107, "computer science");

-- LEFT EXCLUSIVE JOIN	(SELF CREATED) but syntax error
select *
from student
left join course
on student.id = course.id
where course.id is null;

-- RIGHT EXCLUSIVE JOIN
select *
from student
right join course
on student.id = course.id
where student.id is null;