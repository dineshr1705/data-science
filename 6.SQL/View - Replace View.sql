use logicfirst;

select * from employee;
select * from branch;

-- view
create or replace view emp_br
as
SELECT employee.emp_id,employee.emp_name,employee.jobdes,branch.br_name 
from employee
INNER JOIN branch           -- inner join & join both are same
on employee.branch_id = branch.branch_id;

select * from emp_br
where jobdes = 'manager';



select * from employee
where jobdes = 'manager';



























