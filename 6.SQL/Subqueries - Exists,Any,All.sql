use logicfirst;

select * from employee;
select * from branch;


select * from employee
where branch_id = (select branch_id from branch
where br_name = 'chennai');

-- employee with min salary

select * from employee
where salary = (select min(salary) from employee);


-- exists used with subquery
-- branches contating atleast one admin


select branch_id,br_name
from branch
where exists  (
select * from employee
where jobdes = 'admin' and branch.branch_id = employee.branch_id
);


select * from employee
where jobdes = 'admin';




-- ANY 
-- BRANCH INFO IN WHICH ANY EMPLOYEE GETS MORE THAN 25L

SELECT * FROM BRANCH
WHERE BRANCH_ID = ANY(
SELECT BRANCH_ID FROM EMPLOYEE
WHERE SALARY>2500000);


-- ALL 
-- EMPLOYEES NOT WORKING IN CHENNAI OR COIMBATORE

SELECT * FROM EMPLOYEE
WHERE BRANCH_ID <> ALL(
SELECT BRANCH_ID FROM BRANCH
WHERE BR_NAME IN('CHENNAI','COIMBATORE'));


















