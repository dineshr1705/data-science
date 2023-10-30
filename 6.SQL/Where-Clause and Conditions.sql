use logicfirst;

create table employee(
emp_id int primary key,
emp_name varchar(15),
jobdes varchar(20),
salary int
);

INSERT INTO employee VALUES(1,'RAJA','ADMIN',1000000);
INSERT INTO employee VALUES(2,'DINESH','MANAGER',250000);
INSERT INTO employee VALUES(3,'SOW','SALES',200000);
INSERT INTO employee VALUES(4,'DHIVYA','SALES',150000);
INSERT INTO employee VALUES(5,'RAJESHWARI','HR',200000);
INSERT INTO employee VALUES(6,'KAVUSHIKA','GENERAL HEAD',250000);
INSERT INTO employee VALUES(7,'RAGUL','FIELD Manager',260000);
INSERT INTO employee VALUES(8,'VICKY','ENGNIEER',200000);
INSERT INTO employee VALUES(9,'SURYA','FIELD ENGNIEER',250000);
INSERT INTO employee VALUES(10,'SUMAIYA','ANALYST',290000);
INSERT INTO employee VALUES(11,'KAMALU','Manager',250000);
INSERT INTO employee VALUES(12,'DINESH','SALES',220000);
INSERT INTO employee VALUES(13,'GOKUL','MANAGER',350000);
INSERT INTO employee VALUES(14,'SWATHI','Manager',300000); 

select * from employee;

SELECT * FROM employee
where emp_name = 'DINESH';

SELECT * FROM employee
where emp_name <> 'DINESH';

SELECT emp_id,emp_name from employee
where emp_name <> 'DINESH';


SELECT * FROM employee
where salary > 200000; 


SELECT * FROM employee
where salary > 200000 AND jobdes = 'MANAGER'; 

SELECT * FROM employee
where jobdes = 'HR' or jobdes = 'sales';


SELECT * FROM employee
where jobdes in ('HR','SALES');


SELECT * FROM employee
where jobdes NOT in ('CEO','MANAGER');

SELECT * FROM employee
where salary between 200000 AND 300000;

SELECT * FROM employee
LIMIT 5;


-- LIKE
-- WILDCARDS %(ZERO OR MORE CHARACTERS) _ (ONE CHARACTER)

SELECT * FROM employee
where emp_name like 's%';

SELECT * FROM employee
where emp_name not like 's%';

SELECT * FROM employee
where emp_name like 's%w';

SELECT * FROM employee
where emp_name like '%e%';


SELECT * FROM employee
where emp_name like '__n%';

UPDATE employee
SET jobdes = "ANALYST";

UPDATE employee
SET jobdes = 'ANALYST'
WHERE jobdes = 'engnieer';

SELECT * FROM employee;


delete from employee
where emp_id = 14;


