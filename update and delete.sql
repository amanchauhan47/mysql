create database num;
use num;
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

select * from students;

set sql_safe_updates = 0; -- turn off safe mode (or same 1 krne se on hojayega)

update students set name = "aman" where roll = 4;
update students set city = "Ghaziabad" where city = "Delhi";
update students set marks = marks+1;
update students set marks = marks+1 where marks < 100;

-- update students set grade = "B" where marks between 80 and 90;

delete from students where roll = 5;	-- be careful while using delete
delete from students;		-- this will delete whole table's data;