create database if not exists temp;
use temp;
create table employee(
	id int primary key,
    name varchar(20),
    manager_id int
);
insert into employee
(id, name, manager_id)
values
(101, "adam", 103),
(102, "bob", 104),
(103, "casey", null),
(104, "donald", 103);

select * from employee;

select a.name as manager_name, b.name -- a ki table ke naam as manager ke naam se ajaye 
from employee as a
join employee as b
on a.id = b.manager_id;


/* -- NOT WORKING (aliases makes table different)
select *
from employee
join employee
on employee.id = employee.manager_id;
*/