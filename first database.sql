create database temp1;
show databases;
use temp1;
create table avengers(
	id int primary key,
    name varchar(20),
    origin varchar(20)
);

insert into avengers
(id, name, origin)
values
(1, "batman", "gotham"),
(2, "superman", "krypton"),
(3, "aquaman", "atlantis");

insert into avengers values(4, "cyborg", "earth-616");

select * from avengers;
