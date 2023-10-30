use logicfirst;

select * 
from employee
order by jobdes;

select jobdes,avg(salary)
from employee
group by jobdes;



select jobdes,count(emp_id) no_of_emp,avg(salary) avg_sal
from employee
group by jobdes;


select jobdes,count(emp_id) no_of_emp,avg(salary) avg_sal
from employee
group by jobdes
having count(emp_id)>1
order by jobdes;

-- where is used for filter the rows
-- having is used for filtering a group by


select jobdes,count(emp_id) no_of_emp,avg(salary) avg_sal
from employee
where salary>150000
group by jobdes
having count(emp_id)>1
order by jobdes;















