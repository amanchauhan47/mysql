create database management;
use management;
-- drop table dept;
create table dept(
	id int primary key,
    course varchar(20)
);
create table teacher(
	id int primary key,
    name varchar(20),
    dept_id int,
    foreign key(dept_id) references dept(id)
    on update cascade
    on delete cascade
);
insert into dept
(id, course)
values
(101, "Science"),
(102, "English"),
(103, "Hindi");

insert into teacher
(id, name, dept_id)
values
(101, "Adam", 101),
(102, "Bob", 103),
(103, "Casey", 102),
(104, "Donald", 102);

select * from dept;
select * from teacher;
-- describe teacher;
update dept set course = "Sahitya" where id = 103;
update dept set id = 104 where id = 103;
delete from dept where id = 104;