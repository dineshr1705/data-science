use logicfirst;

create table branch(
branch_id int primary key,
br_name varchar(30),
addr varchar(200));


alter table branch
modify br_name varchar(30) not null;

create table employee(
emp_id int primary key auto_increment,
emp_name varchar(20) not null,
jobdes varchar(20),
salary int,
branch_id int,
constraint fk_branchid foreign key(branch_id) references branch(branch_id)
);


alter table employee
drop foreign key fk_branchid;

select * from employee;









































