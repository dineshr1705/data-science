use logicfirst;

drop table employee;

create table employee(
emp_id int primary key auto_increment,
emp_name varchar(20) not null,
jobdes varchar(20)default 'unassigned',
salary int,
pan varchar(10) unique,
check (salary>100000));

show index from employee;

create index name_index on employee(emp_name);

alter table employee
drop index name_index;


alter table employee
add index(emp_name);



























