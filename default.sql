create database temp2;

use temp2;

create table emp(
	id int primary key,
    name varchar(20),
    salary float default 25000
);
-- drop table emp;

insert into emp
(id, name, salary)		-- yaha pr hmne define kra ki hm 3 column likhenge
values
(1, "aman", 30000.40),
(2, "shivani", 25000);	-- isliye yaha error ari h 2 likhne pr

insert into emp
(id, name)
values
(3, "pramod");

insert into emp values (4, "batman");

select * from emp;