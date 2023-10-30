
-- function - perform a specific task

select * from employee;

select count(*) total from employee;

select count(*) no_of_manager from employee
where jobdes = 'MANAGER';



select avg(salary) from employee
where jobdes = 'MANAGER';



select sum(salary) from employee
where jobdes = 'MANAGER';



select max(salary) from employee
where jobdes = 'MANAGER';


select min(salary) from employee
where jobdes = 'MANAGER';

-- string

select ucase(emp_name) NAME,salary  -- ALIAS NAME
from employee;

select emp_name,char_length(emp_name) char_count from employee;


select emp_name,concat('RS.',salary)
from employee;


select emp_name,concat('RS.',format(salary,0))
from employee;

select ucase(jobdes) from employee;

select emp_name,left(jobdes,3)
from employee;

-- Date

alter table employee add column hire_date date;

select * from employee;

update employee
set hire_date = '2022-05-27';

update employee
set hire_date = '2023-03-17'
where jobdes = 'SALES';


select now();

select date(now());

select curdate();

select date_format(curdate(),'%d/%m/%Y') date;

select datediff(curdate(),'2022/06/07') difference;

select date_add(curdate(), interval 1 day) 'day after';

select date_add(curdate(), interval 1 week) 'week after';

select curdate() 'start date',
date_add(curdate(), interval 1 day) 'date after',
date_add(curdate(), interval 1 week) 'date week',
date_add(curdate(), interval 1 month) 'date month';








