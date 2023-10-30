-- USE fuction is used for using table
USE logicfirst;
-- CREATE is used for create a table
create table student(
id int primary key,
name varchar(30),
gpa decimal(3,2)
);

-- DESCRIBE is used for to seeing a table rows & cloumns:

describe student;

-- DROP is used for droping cloumns or rows or nothing to you wants

drop table student;

-- ALTER is used for add & drop the tables

alter table student add department varchar(15);
alter table student drop department;

-- INSERT INTO is used to insert values of the cloumns

insert into student values(1,"Dinesh",8.8);
insert into student values(2,"Raja",8.2);
insert into student values(3,"Rajeshwari",9.0);
insert into student values(4,"Dhivya",9.2);

-- or

insert into student values(8,"Dhivya",9.2),(7,"Rajeshwari",9.0),(6,"Raja",8.2),(5,"Dinesh",8.8);


insert into student(id,name) values(9,"Sow");

-- insert into student(name,gpa) values("Dinee",9.9);

-- SELECT is used for to view a table you wants

select * from student;
select id,name from student;




