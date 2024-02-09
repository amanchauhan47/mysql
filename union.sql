create database if not exists tmp;
use tmp;
create table tableA(
	id int primary key,
    name varchar(20)
);
create table tableB(
	id int primary key,
    name varchar(20)
);
insert into tableA
(id, name)
values
(1, "aman"),
(2, "shivani"),
(3, "abhishek");

insert into tableB
(id, name)
values
(1, "aman"),
(2, "ranjani");

select name from tableA
union
select name from tableB;

select name from tableA
union all 			-- return all data from table A and B
select name from tableB;