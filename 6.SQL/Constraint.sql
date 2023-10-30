use logicfirst;

/* constraints means null not taken for the table then using 
		- not null
        - default = 'unassigned'
        - unique
        - check
        
*/
drop table employee;


create table employee(
emp_id int primary key auto_increment,
emp_name varchar(20) not null,
jobdes varchar(20)default 'unassigned',
salary int,
pan varchar(10) unique,
check (salary>100000));


insert into employee(emp_name,salary) values ('SOW',1000000);
insert into employee(emp_name,salary) values ('Dinesh', 500000);

select * from employee;


create table employee(
emp_id int primary key,
emp_name varchar(15),
jobdes varchar(20),
salary int
);

alter table employee
modify emp_name varchar(30) not null;

-- drop not null constraint

alter table employee
modify emp_name varchar(30);

-- add default constraint

alter table employee
alter jobdes set default 'unassigned';

-- drop default constraint

alter table employee
alter jobdes drop default;

-- add check constraint

alter table employee
add constraint chk_salary check (salary>100000);

-- drop check constraint

alter table employee
drop check chk_salary;















