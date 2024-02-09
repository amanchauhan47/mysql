create database test;
use test;
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

truncate table students;	-- delete table's data;
drop table students;		-- delete table completely;

select * from students;

alter table students
change full_name name text;

set sql_safe_updates = 0;

alter table students
add column grade char default "A";

alter table students
change name full_name varchar(20);

-- set sql_safe_updates = 0;
delete from students 
where marks < 80;

alter table students
drop column grade;