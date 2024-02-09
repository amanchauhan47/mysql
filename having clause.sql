-- having is similar to where clause but it is used to apply any condition after grouping.
create database sarkari_school;
use sarkari_school;
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
-- drop table students;

select city, count(roll) from students group by city having max(marks) > 90;

select city from students where marks > 85;