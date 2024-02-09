create database if not exists nc_coffee;
use nc_coffee;
create table coffee_table(
	id int primary key,
    name varchar(20),
    region varchar(20),
    roast varchar(20)
);
show databases;
show tables;

alter table coffee
rename to coffee_table;

describe coffee_table;

insert into coffee_table
(id, name, region, roast)
values
(1, "default route", "ethiopia", "light");

insert into coffee_table
(id, name, region, roast)
values
(2, "docker run", "mexico", "medium"),
(3, "helpdesk", "honduras", "medium"),
(4, "on-call", "peru", "dark"),
(5, "ifconfig", "tanzania", "blonde"),
(6, "traceroute", "bali", "med-dark");

create table avengers(
	id int,
    first_name varchar(20),
    last_name varchar(20),
    origin varchar(20),
    age int not null,
    alias varchar(20),
    foreign key(id) references coffee_table(id)
);
alter table customer_table
rename to avengers;

insert into avengers
(id, first_name, last_name, origin, age, alias)
values
(1, "thor", "odinson", "asgard", 1500, "strongest avenger"),
(2, "clint", "barton", "earth", 35, "hawkeye"),
(3, "tony", "stark", "earth", 52, "iron man"),
(4, "peter", "parker", "earth", 17, "spider man"),
(5, "groot", "groot", "planet x", 18, "tree");

insert into avengers values (6, "jeff", "smith", "earth", 43, "omni man");

update customer_table
set alias = "i am groot"
where id = 5;

alter table customer_table
rename to avengers;

select * from avengers;
select * from avengers where origin = "earth" or origin = "asgard";
select * from avengers where age < 30;

select * from avengers where not origin = "earth";

set sql_safe_updates = 0;

delete from avengers where first_name = "jeff";

update avengers
set last_name = NULL
where first_name = "groot";

alter table avengers
add column beard varchar(20);

update avengers
set beard = "yes";

select * from avengers order by age asc;

use nc_coffee;

create view view1 as
select id, first_name, alias from avengers;

select * from view1;
drop table avengers;



