use logicfirst;

SELECT * 
from employee;

SELECT jobdes FROM employee;

SELECT distinct jobdes FROM employee;

-- ORDER BY 

SELECT * FROM employee
order by salary,emp_name;


SELECT * FROM employee
where jobdes = 'MANAGER'
order by salary;

SELECT * FROM employee
ORDER BY jobdes;


SELECT * FROM employee
ORDER BY ( CASE jobdes
WHEN 'ADMIN' THEN 1
WHEN 'MANAGER' THEN 2
WHEN 'HR' THEN 3
WHEN 'SALES' THEN 4
WHEN 'ENGNIEER' THEN 5
ELSE 100 END
),EMP_NAME;

SELECT * FROM employee
order by salary desc;

