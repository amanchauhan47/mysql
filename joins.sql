create database joins;
use joins;
create table student(		-- left table
	student_id int primary key,
    name varchar(20)
);
create table course(		-- right table
	student_id int primary key,
    course varchar(20)
);
insert into student
(student_id, name)
values
(101, "adam"),
(102, "bob"),
(103, "casey");

insert into course
(student_id, course)
values
(102, "english"),
(105, "math"),
(103, "science"),
(107, "computer science");

select * from student;
select * from course;

-- INNER JOIN
select * 
from student as a	-- aliases for student
inner join course as b	-- aliases for course
on a.id = b.id;	-- column name can be different (does not matter)

-- LEFT JOIN
select * from student
left join course
on student.id = course.id;

-- RIGHT JOIN
select * from student
right join course
on student.id = course.id;

-- FULL JOIN
select * from student
left join course
on student.id = course.id
UNION
select * from student
right join course
on student.id = course.id;