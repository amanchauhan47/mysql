create database if not exists result;
use result;
create table students(
	rollno int primary key,
    name varchar(20),
    marks int not null,
    city varchar(20)
);
drop table students;
insert into students
(rollno, name, marks, city)
values
(101, "anil", 78, "Pune"),
(102, "bhumika", 93, "Mumbai"),
(103, "chetan", 85, "Mumbai"),
(104, "dhruv", 96, "Delhi"),
(105, "emanuel", 92, "Delhi"),
(106, "farah", 82, "Delhi");

insert into students values(107, "aman", 99, "Ghaziabad");

select * from students;

-- example 1
select avg(marks) from students;

select *
from students
where marks > 87.6667;

select *		-- (self created)
from students
where marks > (select avg(marks) from students); 


-- example 2
select rollno, name -- self created
from students
where rollno % 2 =0;

select name 
from students
where rollno in (102, 104, 106);

select name, rollno 
from students
where rollno in (select rollno from students where rollno % 2 = 0);

-- example 3
select max(marks)		-- self created
from students
where city = "Delhi";

select *
from students
where city = "Delhi";

select max(marks)
from (select * from students where city = "Delhi") as temp;

