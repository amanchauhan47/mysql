create database if not exists htb;

use htb;

create table if not exists user(
	id int primary key,
	name varchar(20),
    number bigint default 0000000000 
);
-- drop table user;

insert into user
(id, name, number)
values
(1, "aman", 1210502055),
-- (2, "amanisher"),
(3, "manish", 7065517618);

select * from user;

