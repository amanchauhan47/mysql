create database if not exists temp;
-- create database if not exists temp1;
use temp;
create table if not exists students(
	id int,
    name varchar(30),
    age int check(age>=18),
    primary key(id)
);
insert into students
(id, name, age)
values
(1, "aman", 19),
(2, "akshita", 20),
(3, "deepshika", 21);	
-- drop table students;

create table fees(
	roll int primary key,
    fee int not null,
    constraint check_fee check(fee >= 2000)
);

insert into fees
(roll, fee)
values
(2, 2000);
-- insert into fees values(3, 1800);	this shows error because check constraint is violated.
select * from students;
select * from fees;